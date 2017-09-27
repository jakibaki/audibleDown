import QtQuick 2.0
import Sailfish.Silica 1.0
import io.thp.pyotherside 1.4


Page {
    id: page
    backNavigation: false

    onStatusChanged: {
        if(status == PageStatus.Active && window.path == ""){
            window.cover = Qt.resolvedUrl("../cover/CoverDownloading.qml")
            var cacFileSelect = pageStack.push(Qt.resolvedUrl("cacFileSelect.qml"), {})
            cacFileSelect.accepted.connect(function() {
                window.path = cacFileSelect.selectedFileName
                console.log(window.url)
                python.call("downloader.dlFile", [window.url, window.path], function(){
                    console.log("Download done!")
                    pageStack.replace(Qt.resolvedUrl("Converting.qml"),{})
                });
            });
        }
    }

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    ProgressBar {
        id: dlprogress
        anchors.centerIn: parent
        width: parent.width
        value: 0
        label: "Downloading your audio-book..."
    }

    Python {
        id: python

        Component.onCompleted: {
            setHandler('dlprogress', function(ratio, text) {
                dlprogress.value = ratio;
                dlprogress.valueText = text;
            });
        }
    }
}
