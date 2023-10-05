import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        id: layout
        spacing: Theme.paddingMedium
        width: parent.width

        PageHeader {
            title: qsTr("Lab 03")
        }

        Button {
            text: qsTr("3 Squards")         
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab2Sq3Page.qml"))
        }

        Button {
            text: qsTr("5 Squards: Col & Row")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab2Sq5Page.qml"))
        }

        Button {
            text: qsTr("5 Squards: Grid")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab2Sq5GridPage.qml"))
        }

        Button {
            text: qsTr("Transformation")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab2TranPage.qml"))
        }
        Button {
            text: qsTr("Animation")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab2AnimPage.qml"))
        }
        Button {
            text: qsTr("Dialog")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab2DialPage.qml"))
        }
    }
}



