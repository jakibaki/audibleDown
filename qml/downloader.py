import pyotherside
import requests

def dlProgress(count, blockSize, totalSize):
    pyotherside.send("dlprogress", count*blockSize/totalSize,
        str(int(count*blockSize/1024/1024)) + "mb / " +
        str(int(totalSize/1024/1024)) + "mb")



def dlFile(url, path):
    realPath = path[len("file://"):] + "/dl.aax"
    r = requests.get(url, stream=True)
    f = open(realPath, 'wb')
    file_size = int(r.headers['Content-Length'])
    chunkSize = 1024 * 16

    #numChunks = file_size / chunkSize
    i = 0
    u = 0
    for chunk in r.iter_content(chunkSize):
        f.write(chunk)
        i+=1
        u += 1
        if u == 100:
            dlProgress(i, chunkSize, file_size)
            u = 0
