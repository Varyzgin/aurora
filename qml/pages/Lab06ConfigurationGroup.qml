import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    ConfigurationGroup {
        id: settings
        path: "/apps/app_name/settings"
        property var tf: "empty"
        property bool sw: false
    }

    SilicaFlickable {
        anchors.fill: parent
        Column {
            anchors.centerIn: parent
            TextField {
                width: 300
                text: "Текст"
                onTextChanged: {
                    settings.tf = text
                    console.log(settings.tf)
                }
            }

            TextSwitch {
                text: checked ? qsTr("Active") : qsTr("Inactive")
                description: qsTr("Switch with text label")
                onCheckedChanged: {
                    settings.sw = checked
                    console.log(settings.sw)
                }
            }
        }
    }
}
