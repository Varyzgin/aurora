import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        id: layout
        spacing: Theme.paddingMedium
        width: parent.width

        PageHeader {
            title: qsTr("Lab 02")
        }

        Label {
            id: labelcount
            anchors.horizontalCenter: parent.horizontalCenter
            color: palette.highlightColor
            font.pixelSize: Theme.fontSizeHuge
            textFormat: Text.RichText
            wrapMode: Text.WordWrap
            property int count: 0
            text: count
        }
        Button{
            text: qsTr("Increase")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: { labelcount.count++ }
        }
    }
}
