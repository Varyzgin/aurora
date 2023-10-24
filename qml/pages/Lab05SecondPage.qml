import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        width: parent.width
        spacing: Theme.paddingLarge

        PageHeader {
            title: "Page 2"
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
        Button {
            text: "Back"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.navigateBack()
        }
    }
}
