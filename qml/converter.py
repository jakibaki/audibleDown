import os
import sys
from subprocess import Popen, PIPE, STDOUT
import shutil
import pyotherside
import platform
import locale
import unicodedata

ffmpeg = "~/.ffmpeg"

def setDir(dir):
    # TODO: Find out how to do this properly...

    os.chdir(dir[len("file://"):])
    if not os.path.exists(ffmpeg):
        if platform.processor() == 'i386':
            os.system("cp ./ffmpeg.x86 " + ffmpeg)
        else:
            os.system("cp ./ffmpeg.arm " + ffmpeg)
        os.system("chmod +x " + ffmpeg)

def q(str):
    return ('"' + str + '"')

def fixUnicode(input):
    # Yes this is terrible :/ If you can fix this and implement proper unicode-filenames please
    # submit a pull-request (or make an github-issue with a hint and I'll do it).
    # Keep in mind that the pyotherside-python is magic. Just because it works in your python
    # console doesn't mean that it will work here
    repTable = [['\\xc3\\xb6','oe'],['\\xc3\\xa4','ae'],['\\xc3\\xbc','ue'],['\\xc3\\x9f','ss']]
    for t in repTable:
        input = input.replace(t[0],t[1])
    return input

def runCmd(cmd):
    p = Popen(cmd, shell=True, stdin=PIPE, stdout=PIPE, stderr=STDOUT, close_fds=True)
    return str(p.stdout.read())


def splitFile(path, key):
    path = path[len('file://'):]
    inputPath = path + "/dl.aax"

    if not os.path.exists(inputPath):
        pyotherside.send("log", "ERROR: The input-file does not exits!")
        exit(1)

    bookName = fixUnicode(getTitle(inputPath))
    outputPath = path + "/" + bookName
    if(os.path.exists(outputPath)):
        shutil.rmtree(outputPath)
    os.mkdir(outputPath)

    chapters = getChapters(inputPath)
    timeMulti = getTimeMulti(inputPath)
    pyotherside.send("convertProgress", 0, "Writing Cover")
    pyotherside.send("log", "Writing Cover...")
    runCmd(ffmpeg + " -i " + q(inputPath) + " " + q(outputPath + "/" + bookName + ".png"))

    for i, chapter in enumerate(chapters):
        startSec = str(chapter[0]/timeMulti)
        chapterLen = str((chapter[1]-chapter[0])/timeMulti)
        chapterNum = str(i+1).zfill(3)
        chapterOutputPath = outputPath + "/" + bookName + " - " + chapterNum + ".aac"
        pyotherside.send("convertProgress", (i+1)/len(chapters), "Writing Chapter " + str(i+1) + "/" + str(len(chapters)))
        pyotherside.send("log", "Writing " + chapterOutputPath + " ...")
        runCmd(ffmpeg + " -activation_bytes " + key + ' -ss ' + startSec + ' -i ' + q(inputPath) + " -t " + chapterLen + " -acodec copy " + q(chapterOutputPath) )
    os.remove(inputPath)

def getChapters(file):
    a = runCmd(ffmpeg + " -i " + q(file) + " -f ffmetadata -")
    a = a.split("\\n")
    chapters = []
    for i, line in enumerate(a):
        if line.startswith("START="):
            start = int(a[i][len("START="):])
            end = int(a[i+1][len("END="):])
            chapters.append([start,end])
    return chapters

def getTimeMulti(file):
    a = runCmd(ffmpeg + " -i " + q(file) + " -f ffmetadata -")
    a = a.split("\\n")
    for i, line in enumerate(a):
        if line.startswith("TIMEBASE=1/"):
            # We're assuming that the timebase is the same in all chapters.
            return int(line[len("TIMEBASE=1/"):])

def getTitle(file):
    a = runCmd(ffmpeg + " -i " + q(file) + " -f ffmetadata -")
    a = a.split("\\n")
    for i, line in enumerate(a):
        if line.startswith("title="):
            return line[len("title="):].replace('"','')

