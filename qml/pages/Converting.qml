import QtQuick 2.0
import Sailfish.Silica 1.0
import io.thp.pyotherside 1.4


Page {
    id: page
    backNavigation: false
    property bool retry: false

    Component.onCompleted: {
        window.cover = Qt.resolvedUrl("../cover/CoverConverting.qml")
    }

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    ProgressBar {
        id: convProgress
        anchors.centerIn: parent
        width: parent.width
        value: 0
        label: ""
    }


    Python {
        id: python

        Component.onCompleted: {
            setHandler('convertProgress', function(ratio, text) {
                convProgress.value = ratio;
                convProgress.valueText = text;
            });

            call('converter.splitFile', [window.path, window.decryptionKey], function(){
                console.log("Done, cleaning up for next download!")
                window.url = ""
                window.path = ""
                window.cookies = ""
                window.decryptionKey = ""
                window.cover = Qt.resolvedUrl("../cover/CoverIdle.qml")
                var dialog = pageStack.push(Qt.resolvedUrl("DoneDialog.qml"))
            });
        }
    }
}
