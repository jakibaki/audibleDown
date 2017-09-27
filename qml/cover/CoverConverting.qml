import QtQuick 2.0
import Sailfish.Silica 1.0
import io.thp.pyotherside 1.4

CoverBackground {
    id: cover
    Label {
        id: label
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        text: qsTr("Converting")
    }
    Label {
        id: progress
        anchors.top: label.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        horizontalAlignment: Text.AlignHCenter
        text: "0%"
    }

    CoverActionList {
        id: coverAction
    }

    Python {
        id: python

        Component.onCompleted: {
            setHandler('convertProgress', function(ratio, text) {
                if(cover.status == Cover.Active){
                    progress.text = Math.floor(ratio*100) + "%";
                }
            });
        }
    }
}

