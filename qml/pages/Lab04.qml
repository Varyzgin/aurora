import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        id: layout
        spacing: Theme.paddingMedium
        width: parent.width

        PageHeader {
            title: qsTr("Lab 04")
        }

        TextField {
            width: parent.width
            inputMethodHints: Qt.ImhDialableCharactersOnly
            label: "Input num"
            placeholderText: label
            placeholderColor: Theme.highlightColor
            color: Theme.highlightColor
        }
        Button {
            id: pressed_but
            text: qsTr("Button")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                if (pressed_but.down == false) {
                    pressed_but.down = true
                    indicator.text = "Pressed"
                }
                else {
                    pressed_but.down = false
                    indicator.text = "Not pressed"
                }
            }
        }
        Text {
            id: indicator
            anchors.horizontalCenter: parent.horizontalCenter
            color: palette.highlightColor
            font.pixelSize: Theme.fontSizeSmall
            textFormat: Text.RichText
            wrapMode: Text.WordWrap
            text: "Not pressed"
        }
        ValueButton {
            label: "Counter"
            description: "Counts taps"
            anchors.horizontalCenter: parent.horizontalCenter
            value: "0"
            property int count: 0
            onClicked: {
                count++
                value = count
            }
        }
        ComboBox {
            label: "Question"
            description: "Cat or Dog?"
            menu: ContextMenu {
                MenuItem { text: "Cat" }
                MenuItem { text: "Dog" }
            }
        }
        TextSwitch {
            id: tab_switch
            text: "Off"
            property bool flag: false
            onClicked: {
                if (tab_switch.flag == false) {
                    tab_switch.flag = true
                    tab_switch.text = "On"
                }
                else {
                    tab_switch.flag = false
                    tab_switch.text = "Off"
                }
            }
        }
        Slider {
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            label: "Current choise: " + value
            minimumValue: 0
            maximumValue: 100
            value: 50
            stepSize: 1
        }
        Button {
            text: qsTr("Date & Time")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab04DateTime.qml"))
        }
    }
}
