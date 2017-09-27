import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    SilicaFlickable {
        anchors.fill: parent
        contentWidth: parent.width
        contentHeight: col.height + Theme.paddingLarge

        VerticalScrollDecorator {}

        Column {
            id: col
            spacing: Theme.paddingLarge
            x: Theme.paddingLarge
            width: parent.width - 2*x

            PageHeader {
                title: qsTr("Welcome!")
            }



            Label {
                text: qsTr("This tool allows you to download audio-books from your Audible-Library in an Talefish-friendly format. Please enter the top-level-domain-name of your audible-region. So if you're (for example) accessing audible via \"www.audible.de\" enter \"de\".\n" +
                           "A webview will pop-up that will ask you to login into your amazon-account. After that the script obtains the decryption-key and redirects you to your audible-library. Click download on the audio-book that you want to download and select the folder in which you want to save it.\n" +
                           "The converting-process requires no further user-input so you can savely use other applications while the application is working.")
                color: Theme.highlightColor
                wrapMode: Text.Wrap
                width: parent.width
            }


            TextField {
                id: textField
                focus: true
                placeholderText: "de"
                label: "   "
                font.capitalization : Font.AllLowercase
                EnterKey.iconSource: "image://theme/icon-m-enter-next"
                EnterKey.onClicked: {
                    window.audibleReg = text.toLowerCase();
                    pageStack.replace(Qt.resolvedUrl("Login.qml"))
                }

            }

        }

    }
}
