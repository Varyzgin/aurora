import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        id: layout
        spacing: Theme.paddingMedium
        width: parent.width

        PageHeader {
            title: qsTr("Lab 07")
        }

        Button {
            text: qsTr("Rectangle list v.1")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab06RectangleListPage.qml"))
        }
    }
}
