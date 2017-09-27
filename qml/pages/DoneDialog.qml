import QtQuick 2.2
import Sailfish.Silica 1.0

Dialog {
    property string name
    acceptDestination : Qt.resolvedUrl("Login.qml")
    acceptDestinationAction : PageStackAction.Replace

    Column {
        id: col
        spacing: Theme.paddingLarge
        width: parent.width

        DialogHeader {
            acceptText: qsTr("New Download")
            cancelText: qsTr("Quit")
        }

        Label {
            text: qsTr("Your book was successfully downloaded! Do you want to download an other book from your library?")
            color: Theme.highlightColor
            wrapMode: Text.Wrap
            width: parent.width - 2*x
        }


    }

    onRejected: {
        Qt.quit()
    }

}
