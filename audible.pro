# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = audible

CONFIG += sailfishapp

SOURCES += src/audible.cpp

OTHER_FILES += qml/audible.qml \
    rpm/audible.changes.in \
    rpm/audible.spec \
    rpm/audible.yaml \
    translations/*.ts \
    audible.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 256x256

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/audible-de.ts

DISTFILES += \
    qml/pages/Login.qml \
    qml/pages/cacFileSelect.qml \
    qml/downloader.py \
    qml/requests/README.rst \
    qml/pages/Download.qml \
    qml/cover/CoverIdle.qml \
    qml/cover/CoverDownloading.qml \
    qml/curl/pycurl.tar.gz \
    qml/certifi/__pycache__/__init__.cpython-34.pyc \
    qml/certifi/__pycache__/__init__.cpython-36.pyc \
    qml/certifi/__pycache__/core.cpython-34.pyc \
    qml/certifi/__pycache__/core.cpython-36.pyc \
    qml/chardet/__pycache__/__init__.cpython-34.pyc \
    qml/chardet/__pycache__/__init__.cpython-36.pyc \
    qml/chardet/__pycache__/big5freq.cpython-34.pyc \
    qml/chardet/__pycache__/big5freq.cpython-36.pyc \
    qml/chardet/__pycache__/big5prober.cpython-34.pyc \
    qml/chardet/__pycache__/big5prober.cpython-36.pyc \
    qml/chardet/__pycache__/chardistribution.cpython-34.pyc \
    qml/chardet/__pycache__/chardistribution.cpython-36.pyc \
    qml/chardet/__pycache__/charsetgroupprober.cpython-34.pyc \
    qml/chardet/__pycache__/charsetgroupprober.cpython-36.pyc \
    qml/chardet/__pycache__/charsetprober.cpython-34.pyc \
    qml/chardet/__pycache__/charsetprober.cpython-36.pyc \
    qml/chardet/__pycache__/codingstatemachine.cpython-34.pyc \
    qml/chardet/__pycache__/codingstatemachine.cpython-36.pyc \
    qml/chardet/__pycache__/compat.cpython-34.pyc \
    qml/chardet/__pycache__/compat.cpython-36.pyc \
    qml/chardet/__pycache__/cp949prober.cpython-34.pyc \
    qml/chardet/__pycache__/cp949prober.cpython-36.pyc \
    qml/chardet/__pycache__/enums.cpython-34.pyc \
    qml/chardet/__pycache__/enums.cpython-36.pyc \
    qml/chardet/__pycache__/escprober.cpython-34.pyc \
    qml/chardet/__pycache__/escprober.cpython-36.pyc \
    qml/chardet/__pycache__/escsm.cpython-34.pyc \
    qml/chardet/__pycache__/escsm.cpython-36.pyc \
    qml/chardet/__pycache__/eucjpprober.cpython-34.pyc \
    qml/chardet/__pycache__/eucjpprober.cpython-36.pyc \
    qml/chardet/__pycache__/euckrfreq.cpython-34.pyc \
    qml/chardet/__pycache__/euckrfreq.cpython-36.pyc \
    qml/chardet/__pycache__/euckrprober.cpython-34.pyc \
    qml/chardet/__pycache__/euckrprober.cpython-36.pyc \
    qml/chardet/__pycache__/euctwfreq.cpython-34.pyc \
    qml/chardet/__pycache__/euctwfreq.cpython-36.pyc \
    qml/chardet/__pycache__/euctwprober.cpython-34.pyc \
    qml/chardet/__pycache__/euctwprober.cpython-36.pyc \
    qml/chardet/__pycache__/gb2312freq.cpython-34.pyc \
    qml/chardet/__pycache__/gb2312freq.cpython-36.pyc \
    qml/chardet/__pycache__/gb2312prober.cpython-34.pyc \
    qml/chardet/__pycache__/gb2312prober.cpython-36.pyc \
    qml/chardet/__pycache__/hebrewprober.cpython-34.pyc \
    qml/chardet/__pycache__/hebrewprober.cpython-36.pyc \
    qml/chardet/__pycache__/jisfreq.cpython-34.pyc \
    qml/chardet/__pycache__/jisfreq.cpython-36.pyc \
    qml/chardet/__pycache__/jpcntx.cpython-34.pyc \
    qml/chardet/__pycache__/jpcntx.cpython-36.pyc \
    qml/chardet/__pycache__/langbulgarianmodel.cpython-34.pyc \
    qml/chardet/__pycache__/langbulgarianmodel.cpython-36.pyc \
    qml/chardet/__pycache__/langgreekmodel.cpython-34.pyc \
    qml/chardet/__pycache__/langgreekmodel.cpython-36.pyc \
    qml/chardet/__pycache__/langhebrewmodel.cpython-34.pyc \
    qml/chardet/__pycache__/langhebrewmodel.cpython-36.pyc \
    qml/chardet/__pycache__/langrussianmodel.cpython-34.pyc \
    qml/chardet/__pycache__/langrussianmodel.cpython-36.pyc \
    qml/chardet/__pycache__/langthaimodel.cpython-34.pyc \
    qml/chardet/__pycache__/langthaimodel.cpython-36.pyc \
    qml/chardet/__pycache__/langturkishmodel.cpython-34.pyc \
    qml/chardet/__pycache__/langturkishmodel.cpython-36.pyc \
    qml/chardet/__pycache__/latin1prober.cpython-34.pyc \
    qml/chardet/__pycache__/latin1prober.cpython-36.pyc \
    qml/chardet/__pycache__/mbcharsetprober.cpython-34.pyc \
    qml/chardet/__pycache__/mbcharsetprober.cpython-36.pyc \
    qml/chardet/__pycache__/mbcsgroupprober.cpython-34.pyc \
    qml/chardet/__pycache__/mbcsgroupprober.cpython-36.pyc \
    qml/chardet/__pycache__/mbcssm.cpython-34.pyc \
    qml/chardet/__pycache__/mbcssm.cpython-36.pyc \
    qml/chardet/__pycache__/sbcharsetprober.cpython-34.pyc \
    qml/chardet/__pycache__/sbcharsetprober.cpython-36.pyc \
    qml/chardet/__pycache__/sbcsgroupprober.cpython-34.pyc \
    qml/chardet/__pycache__/sbcsgroupprober.cpython-36.pyc \
    qml/chardet/__pycache__/sjisprober.cpython-34.pyc \
    qml/chardet/__pycache__/sjisprober.cpython-36.pyc \
    qml/chardet/__pycache__/universaldetector.cpython-34.pyc \
    qml/chardet/__pycache__/universaldetector.cpython-36.pyc \
    qml/chardet/__pycache__/utf8prober.cpython-34.pyc \
    qml/chardet/__pycache__/utf8prober.cpython-36.pyc \
    qml/chardet/__pycache__/version.cpython-34.pyc \
    qml/chardet/__pycache__/version.cpython-36.pyc \
    qml/idna/__pycache__/__init__.cpython-34.pyc \
    qml/idna/__pycache__/__init__.cpython-36.pyc \
    qml/idna/__pycache__/core.cpython-34.pyc \
    qml/idna/__pycache__/core.cpython-36.pyc \
    qml/idna/__pycache__/idnadata.cpython-34.pyc \
    qml/idna/__pycache__/idnadata.cpython-36.pyc \
    qml/idna/__pycache__/intranges.cpython-34.pyc \
    qml/idna/__pycache__/intranges.cpython-36.pyc \
    qml/idna/__pycache__/package_data.cpython-34.pyc \
    qml/idna/__pycache__/package_data.cpython-36.pyc \
    qml/requests/__pycache__/__init__.cpython-34.pyc \
    qml/requests/__pycache__/__init__.cpython-36.pyc \
    qml/requests/__pycache__/__version__.cpython-34.pyc \
    qml/requests/__pycache__/__version__.cpython-36.pyc \
    qml/requests/__pycache__/_internal_utils.cpython-34.pyc \
    qml/requests/__pycache__/_internal_utils.cpython-36.pyc \
    qml/requests/__pycache__/adapters.cpython-34.pyc \
    qml/requests/__pycache__/adapters.cpython-36.pyc \
    qml/requests/__pycache__/api.cpython-34.pyc \
    qml/requests/__pycache__/api.cpython-36.pyc \
    qml/requests/__pycache__/auth.cpython-34.pyc \
    qml/requests/__pycache__/auth.cpython-36.pyc \
    qml/requests/__pycache__/certs.cpython-34.pyc \
    qml/requests/__pycache__/certs.cpython-36.pyc \
    qml/requests/__pycache__/compat.cpython-34.pyc \
    qml/requests/__pycache__/compat.cpython-36.pyc \
    qml/requests/__pycache__/cookies.cpython-34.pyc \
    qml/requests/__pycache__/cookies.cpython-36.pyc \
    qml/requests/__pycache__/exceptions.cpython-34.pyc \
    qml/requests/__pycache__/exceptions.cpython-36.pyc \
    qml/requests/__pycache__/hooks.cpython-34.pyc \
    qml/requests/__pycache__/hooks.cpython-36.pyc \
    qml/requests/__pycache__/models.cpython-34.pyc \
    qml/requests/__pycache__/models.cpython-36.pyc \
    qml/requests/__pycache__/packages.cpython-34.pyc \
    qml/requests/__pycache__/packages.cpython-36.pyc \
    qml/requests/__pycache__/sessions.cpython-34.pyc \
    qml/requests/__pycache__/sessions.cpython-36.pyc \
    qml/requests/__pycache__/status_codes.cpython-34.pyc \
    qml/requests/__pycache__/status_codes.cpython-36.pyc \
    qml/requests/__pycache__/structures.cpython-34.pyc \
    qml/requests/__pycache__/structures.cpython-36.pyc \
    qml/requests/__pycache__/utils.cpython-34.pyc \
    qml/requests/__pycache__/utils.cpython-36.pyc \
    qml/urllib3/__pycache__/__init__.cpython-34.pyc \
    qml/urllib3/__pycache__/__init__.cpython-36.pyc \
    qml/urllib3/__pycache__/_collections.cpython-34.pyc \
    qml/urllib3/__pycache__/_collections.cpython-36.pyc \
    qml/urllib3/__pycache__/connection.cpython-34.pyc \
    qml/urllib3/__pycache__/connection.cpython-36.pyc \
    qml/urllib3/__pycache__/connectionpool.cpython-34.pyc \
    qml/urllib3/__pycache__/connectionpool.cpython-36.pyc \
    qml/urllib3/__pycache__/exceptions.cpython-34.pyc \
    qml/urllib3/__pycache__/exceptions.cpython-36.pyc \
    qml/urllib3/__pycache__/fields.cpython-34.pyc \
    qml/urllib3/__pycache__/fields.cpython-36.pyc \
    qml/urllib3/__pycache__/filepost.cpython-34.pyc \
    qml/urllib3/__pycache__/filepost.cpython-36.pyc \
    qml/urllib3/__pycache__/poolmanager.cpython-34.pyc \
    qml/urllib3/__pycache__/poolmanager.cpython-36.pyc \
    qml/urllib3/__pycache__/request.cpython-34.pyc \
    qml/urllib3/__pycache__/request.cpython-36.pyc \
    qml/urllib3/__pycache__/response.cpython-34.pyc \
    qml/urllib3/__pycache__/response.cpython-36.pyc \
    qml/urllib3/contrib/__pycache__/__init__.cpython-34.pyc \
    qml/urllib3/contrib/__pycache__/__init__.cpython-36.pyc \
    qml/urllib3/contrib/__pycache__/pyopenssl.cpython-34.pyc \
    qml/urllib3/contrib/__pycache__/pyopenssl.cpython-36.pyc \
    qml/urllib3/contrib/__pycache__/socks.cpython-34.pyc \
    qml/urllib3/contrib/__pycache__/socks.cpython-36.pyc \
    qml/urllib3/packages/__pycache__/__init__.cpython-34.pyc \
    qml/urllib3/packages/__pycache__/__init__.cpython-36.pyc \
    qml/urllib3/packages/__pycache__/six.cpython-34.pyc \
    qml/urllib3/packages/__pycache__/six.cpython-36.pyc \
    qml/urllib3/packages/ssl_match_hostname/__pycache__/__init__.cpython-34.pyc \
    qml/urllib3/packages/ssl_match_hostname/__pycache__/__init__.cpython-36.pyc \
    qml/urllib3/packages/ssl_match_hostname/__pycache__/_implementation.cpython-34.pyc \
    qml/urllib3/util/__pycache__/__init__.cpython-34.pyc \
    qml/urllib3/util/__pycache__/__init__.cpython-36.pyc \
    qml/urllib3/util/__pycache__/connection.cpython-34.pyc \
    qml/urllib3/util/__pycache__/connection.cpython-36.pyc \
    qml/urllib3/util/__pycache__/request.cpython-34.pyc \
    qml/urllib3/util/__pycache__/request.cpython-36.pyc \
    qml/urllib3/util/__pycache__/response.cpython-34.pyc \
    qml/urllib3/util/__pycache__/response.cpython-36.pyc \
    qml/urllib3/util/__pycache__/retry.cpython-34.pyc \
    qml/urllib3/util/__pycache__/retry.cpython-36.pyc \
    qml/urllib3/util/__pycache__/selectors.cpython-34.pyc \
    qml/urllib3/util/__pycache__/selectors.cpython-36.pyc \
    qml/urllib3/util/__pycache__/ssl_.cpython-34.pyc \
    qml/urllib3/util/__pycache__/ssl_.cpython-36.pyc \
    qml/urllib3/util/__pycache__/timeout.cpython-34.pyc \
    qml/urllib3/util/__pycache__/timeout.cpython-36.pyc \
    qml/urllib3/util/__pycache__/url.cpython-34.pyc \
    qml/urllib3/util/__pycache__/url.cpython-36.pyc \
    qml/urllib3/util/__pycache__/wait.cpython-34.pyc \
    qml/urllib3/util/__pycache__/wait.cpython-36.pyc \
    qml/certifi/cacert.pem \
    qml/certifi/old_root.pem \
    qml/certifi/weak.pem \
    qml/certifi/__init__.py \
    qml/certifi/__main__.py \
    qml/certifi/core.py \
    qml/chardet/cli/__init__.py \
    qml/chardet/cli/chardetect.py \
    qml/chardet/metadata/__init__.py \
    qml/chardet/metadata/languages.py \
    qml/chardet/__init__.py \
    qml/chardet/big5freq.py \
    qml/chardet/big5prober.py \
    qml/chardet/chardistribution.py \
    qml/chardet/charsetgroupprober.py \
    qml/chardet/charsetprober.py \
    qml/chardet/codingstatemachine.py \
    qml/chardet/compat.py \
    qml/chardet/cp949prober.py \
    qml/chardet/enums.py \
    qml/chardet/escprober.py \
    qml/chardet/escsm.py \
    qml/chardet/eucjpprober.py \
    qml/chardet/euckrfreq.py \
    qml/chardet/euckrprober.py \
    qml/chardet/euctwfreq.py \
    qml/chardet/euctwprober.py \
    qml/chardet/gb2312freq.py \
    qml/chardet/gb2312prober.py \
    qml/chardet/hebrewprober.py \
    qml/chardet/jisfreq.py \
    qml/chardet/jpcntx.py \
    qml/chardet/langbulgarianmodel.py \
    qml/chardet/langgreekmodel.py \
    qml/chardet/langhebrewmodel.py \
    qml/chardet/langhungarianmodel.py \
    qml/chardet/langrussianmodel.py \
    qml/chardet/langthaimodel.py \
    qml/chardet/langturkishmodel.py \
    qml/chardet/latin1prober.py \
    qml/chardet/mbcharsetprober.py \
    qml/chardet/mbcsgroupprober.py \
    qml/chardet/mbcssm.py \
    qml/chardet/sbcharsetprober.py \
    qml/chardet/sbcsgroupprober.py \
    qml/chardet/sjisprober.py \
    qml/chardet/universaldetector.py \
    qml/chardet/utf8prober.py \
    qml/chardet/version.py \
    qml/idna/__init__.py \
    qml/idna/codec.py \
    qml/idna/compat.py \
    qml/idna/core.py \
    qml/idna/idnadata.py \
    qml/idna/intranges.py \
    qml/idna/package_data.py \
    qml/idna/uts46data.py \
    qml/requests/__init__.py \
    qml/requests/__version__.py \
    qml/requests/_internal_utils.py \
    qml/requests/adapters.py \
    qml/requests/api.py \
    qml/requests/auth.py \
    qml/requests/certs.py \
    qml/requests/compat.py \
    qml/requests/cookies.py \
    qml/requests/exceptions.py \
    qml/requests/help.py \
    qml/requests/hooks.py \
    qml/requests/models.py \
    qml/requests/packages.py \
    qml/requests/sessions.py \
    qml/requests/status_codes.py \
    qml/requests/structures.py \
    qml/requests/utils.py \
    qml/urllib3/contrib/_securetransport/__init__.py \
    qml/urllib3/contrib/_securetransport/bindings.py \
    qml/urllib3/contrib/_securetransport/low_level.py \
    qml/urllib3/contrib/__init__.py \
    qml/urllib3/contrib/appengine.py \
    qml/urllib3/contrib/ntlmpool.py \
    qml/urllib3/contrib/pyopenssl.py \
    qml/urllib3/contrib/securetransport.py \
    qml/urllib3/contrib/socks.py \
    qml/urllib3/packages/backports/__init__.py \
    qml/urllib3/packages/backports/makefile.py \
    qml/urllib3/packages/ssl_match_hostname/__init__.py \
    qml/urllib3/packages/ssl_match_hostname/_implementation.py \
    qml/urllib3/packages/__init__.py \
    qml/urllib3/packages/ordered_dict.py \
    qml/urllib3/packages/six.py \
    qml/urllib3/util/__init__.py \
    qml/urllib3/util/connection.py \
    qml/urllib3/util/request.py \
    qml/urllib3/util/response.py \
    qml/urllib3/util/retry.py \
    qml/urllib3/util/selectors.py \
    qml/urllib3/util/ssl_.py \
    qml/urllib3/util/timeout.py \
    qml/urllib3/util/url.py \
    qml/urllib3/util/wait.py \
    qml/urllib3/__init__.py \
    qml/urllib3/_collections.py \
    qml/urllib3/connection.py \
    qml/urllib3/connectionpool.py \
    qml/urllib3/exceptions.py \
    qml/urllib3/fields.py \
    qml/urllib3/filepost.py \
    qml/urllib3/poolmanager.py \
    qml/urllib3/request.py \
    qml/urllib3/response.py \
    qml/audibleActivator.py \
    qml/common.py \
    qml/converter.py \
    qml/ffmpeg.arm \
    qml/ffmpeg.x86 \
    qml/pages/Welcome.qml \
    qml/pages/Converting.qml \
    qml/pages/DoneDialog.qml \
    qml/cover/CoverConverting.qml
