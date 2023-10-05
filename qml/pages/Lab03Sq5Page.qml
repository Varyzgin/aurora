import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        id: layout
        spacing: Theme.paddingMedium
        width: parent.width
        property double size: parent.width / 4

        PageHeader {
            id: pageheader
            title: qsTr("5 Squards: Col & Row")
        }

        Row {
            spacing: Theme.paddingMedium
            anchors { top: pageheader.bottom; topMargin: 10; horizontalCenter: parent.horizontalCenter }
            Column {
                spacing: Theme.paddingMedium
                Rectangle {
                    color: "#FF0000"
                    width: layout.size
                    height: layout.size
                }
                Rectangle {
                    color: "#FF00FF"
                    width: layout.size
                    height: layout.size
                }
            }
            Column {
                spacing: Theme.paddingMedium
                Rectangle {
                    color: "#00FF00"
                    width: layout.size
                    height: layout.size
                }
            }
            Column {
                spacing: Theme.paddingMedium
                Rectangle {
                    color: "#0000FF"
                    width: layout.size
                    height: layout.size
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
