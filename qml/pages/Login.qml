import QtQuick 2.0
import Sailfish.Silica 1.0
import io.thp.pyotherside 1.4


Page {
    SilicaWebView {
        id: webView
        property string playerID: "2jmj7l5rSw0yVb/vlWAYkK/YBwk="
        //result of base64.encodestring(hashlib.sha1("").digest()).rstrip() from audibleActivator, probably could be a lot of other things ¯\_(ツ)_/¯

        property string keyUrl: "https://www.audible." + window.audibleReg  + "/player-auth-token?ipRedirectOverride=true&playerType=software&bp_ua=y&playerModel=Desktop&playerId=" + playerID + "&playerManufacturer=Audible&serial="

        property string libUrl: "https://www.audible." + window.audibleReg + "/lib?ipRedirectOverride=true"

        anchors.fill: parent


        PullDownMenu {
            visible: webView.enabled
            MenuItem {
                text: qsTr("Go to last page")
                onClicked: webView.goBack()
            }

            MenuItem {
                visible: window.decryptionKey != ""
                text: qsTr("Return to Library")
                onClicked: webView.url = webView.libUrl
            }

        }

        //url: libUrl
        url: keyUrl
        header: PageHeader { title: qsTr("Sign in + Start Download") }

        onLoadingChanged: {
            //For some reason the webview is unable to select stuff on audibles drop-down-menu so this
            //makes the library show all books instead of only those that were bought in the last 6 months
            experimental.evaluateJavaScript("jQuery('#ddDeliverFC select').val ('all').trigger ('change')");
            if(window.decryptionKey == "" && String(url).indexOf("playerToken") != -1){
                console.log("Got player-token, obtaining decryption-key now")
                webView.enabled = false
                var playerTokenUrl = String(url)
                experimental.evaluateJavaScript("document.title = document.cookie", function(){
                    // Extremely dirty hack to get the cookies from the webview by setting the title to the cookie.
                    python.call('audibleActivator.fetch_activation_bytes',[window.audibleReg, playerTokenUrl, webView.title, webView.playerID], function(key) {
                        console.log("We got the key!: " + key)
                        window.decryptionKey = key
                        webView.url = webView.libUrl
                        webView.enabled = true
                    });
                });

            }
        }

        experimental.onDownloadRequested: {
            window.url = downloadItem.url.toString()
            console.log("Got download-url")
            webView.url = keyUrl
            pageStack.replace(Qt.resolvedUrl("Download.qml"),{})
        }
    }

    Python {
        id: python

        Component.onCompleted: {

        }
    }
}
