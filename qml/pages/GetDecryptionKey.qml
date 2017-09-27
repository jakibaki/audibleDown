import QtQuick 2.0
import Sailfish.Silica 1.0
import io.thp.pyotherside 1.4

Page {
    backNavigation: false

    // This is basically doing what https://github.com/inAudible-NG/audible-activator is doing using selenium.
    // The python files referenced from this are heavily based on audible-activator too.
    id: page
    property string playerID: "2jmj7l5rSw0yVb/vlWAYkK/YBwk="
    //result of base64.encodestring(hashlib.sha1("").digest()).rstrip() from audibleActivator, probably could be a lot of other things ¯\_(ツ)_/¯

    property string gotoUrl: "https://www.audible." + window.audibleReg  + "/player-auth-token?playerType=software&bp_ua=y&playerModel=Desktop&playerId=%s&playerManufacturer=Audible&serial=" + playerID

    Component.onCompleted: {
        console.log(gotoUrl)
    }

    SilicaWebView {
        id: webView
        url: page.gotoUrl
        anchors.fill: parent

        onLoadingChanged: {
            console.log(url)
        }
    }

}
