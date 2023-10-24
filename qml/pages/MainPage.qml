import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        id: layout
        spacing: Theme.paddingMedium
        width: parent.width

        PageHeader {
            title: qsTr("Home")
            extraContent.children: [
                IconButton {
                    objectName: "aboutButton"
                    icon.source: "image://theme/icon-m-about"
                    anchors.verticalCenter: parent.verticalCenter
                    onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
                }
            ]
        }

        Label {
            anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
            color: palette.highlightColor
            font.pixelSize: Theme.fontSizeSmall
            textFormat: Text.RichText
            wrapMode: Text.WordWrap
            text: qsTr("Click to choose lab pages bellow:")
        }
        Button {
            text: qsTr("Lab 02")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab02.qml"))
        }
        Button {
            text: qsTr("Lab 03")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab03.qml"))
        }
        Button {
            text: qsTr("Lab 04")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab04.qml"))
        }
        Button {
            text: qsTr("Lab 05")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab05.qml"))
        }
        Button {
            text: qsTr("Lab 06")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab06.qml"))
        }
        Button {
            text: qsTr("Lab 07")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab07.qml"))
        }
        Label {
            anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
            color: palette.highlightColor
            font.pixelSize: Theme.fontSizeSmall
            textFormat: Text.RichText
            wrapMode: Text.WordWrap
            text: qsTr("Thanks")
        }
    }
}
