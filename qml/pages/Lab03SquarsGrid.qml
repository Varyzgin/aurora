import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "aboutPage"
    allowedOrientations: Orientation.All

    Column {
        id: layout
        spacing: Theme.paddingMedium
        width: parent.width
        property double size: parent.width / 4

        PageHeader {
            title: qsTr("5 Squards: Grid")
        }

        Rectangle {
            width: parent.width
            height: 2 * parent.width / 3
            color: backgroundColor

            Grid {
                anchors.horizontalCenter: parent.horizontalCenter
                columns: 3
                rows: 2
                spacing: Theme.paddingMedium

                Rectangle {
                    color: "#FF0000"
                    width: layout.size
                    height: layout.size
                }
                Rectangle {
                    color: "#00FF00"
                    width: layout.size
                    height: layout.size
                }
                Rectangle {
                    color: "#0000FF"
                    width: layout.size
                    height: layout.size
                }
                Rectangle {
                    color: "#FF00FF"
                    width: layout.size
                    height: layout.size
                }
                Rectangle {
                    color: backgroundColor
                    width: 1
                    height: 1
                }
                Rectangle {
                    color: "#000000"
                    width: layout.size
                    height: layout.size
                }
            }
        }
    }
}
