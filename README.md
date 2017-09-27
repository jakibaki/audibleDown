# audibleDown
An Application for Sailfish OS that allows you to download AudioBooks from your Audible-Library and converts them to a Talefish-Friendly format.

Talefish doesn't recognize aac-files by default so in order to play the exported audio-books with talefish I recommend applying [this patch](https://coderus.openrepos.net/pm2/project/sailfishos-patch-talefish-allow-aac) using patchmanager 2 until my pull-request gets merged.

This was only tested on an audible.de account but it should work on other regions as well (the Application prompts you in the beginning)

For optaining the decryption key it uses code heavily based on [audible-activator](https://github.com/inAudible-NG/audible-activator) and converting the downloaded aax to aac-files it uses ffmpeg.

To optain the decryption-key for the aax-file the Application pretends to be the audible-desktop app. It is certainly possible to detect this so while I think getting banned is very unlikely, it's a possibility.

Since this tool removes the drm from the aax-files in the process of converting them here's the same Anti-Piracy-Notice as is used on the audible-activator repo.

## Anti-Piracy Notice

Note that this project does NOT 'crack' the DRM. It simplys allows the user to
use their own encryption key (fetched from Audible servers) to decrypt the
audiobook in the same manner that the official audiobook playing software does.

Please only use this application for gaining full access to your own audiobooks
for archiving/converson/convenience. DeDRMed audiobooks should not be uploaded
to open servers, torrents, or other methods of mass distribution. No help will
be given to people doing such things. Authors, retailers, and publishers all
need to make a living, so that they can continue to produce audiobooks for us to
hear, and enjoy. Don’t be a parasite.

This blurb is borrowed from the https://apprenticealf.wordpress.com/ page.
