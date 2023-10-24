import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        id: layout
        spacing: Theme.paddingMedium
        width: parent.width

        PageHeader {
            title: qsTr("Lab 06")
        }

        Button {
            text: qsTr("Rectangle list v.1")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab06RectangleListPage.qml"))
        }
        Button {
            text: qsTr("Button list")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab06RectangleEditingList.qml"))
        }
        Button {
            text: qsTr("Rectangle list v.2")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab06RectangleListJavaScript.qml"))
        }
        Button {
            text: qsTr("Exchange rate v.1")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab06HttpRequest.qml"))
        }
        Button {
            text: qsTr("Exchange rate v.2")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab06XMLHttpRequest.qml"))
        }
        Button {
            text: qsTr("Keeps")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab06Keeps.qml"))
        }
        Button {
            text: qsTr("ConfigurationValue")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab06ConfigurationValue.qml"))
        }
        Button {
            text: qsTr("ConfigurationGroup")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab06ConfigurationGroup.qml"))
        }
    }
}
