import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        id: layout
        spacing: Theme.paddingMedium
        width: parent.width
        property double size: parent.width / 3

        PageHeader {
            title: qsTr("3 Squards")
        }

        Rectangle {
            height: layout.size
            width: layout.size
            x: layout.size / 5
            color: "#FF0000"

            Rectangle {
                height: layout.size
                width: layout.size
                x: layout.size
                y: layout.size / 2
                color: "#00FF00"
            }
            Rectangle {
                height: layout.size
                width: layout.size
                x: 1.5 * layout.size
                color: "#0000FF"

                Text {
                    color: "#FFFFFF"
                    anchors.centerIn: parent
                    text: qsTr("Квадрат")
                }
            }
        }
    }
}
