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
            onClicked: pageStack.push(Qt.resolvedUrl("Lab03Squars.qml"))
        }
        Button {
            text: qsTr("5 Squards: Col & Row")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab03SquarsRowsColumns.qml"))
        }
        Button {
            text: qsTr("5 Squards: Grid")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab03SquarsGrid.qml"))
        }
        Button {
            text: qsTr("Transformation")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab03Transform.qml"))
        }
        Button {
            text: qsTr("Animation")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab03Animation.qml"))
        }
        Button {
            text: qsTr("Dialog")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab03Dialog.qml"))
        }
    }
}



