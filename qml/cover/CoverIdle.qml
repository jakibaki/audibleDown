import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    Label {
        id: label
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        text: qsTr("Audible\nDownloader")
    }

    CoverActionList {
        id: coverAction
    }
}

