import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        id: layout
        spacing: Theme.paddingMedium
        width: parent.width
        property double size: parent.width

        PageHeader {
            id: pageheader
            title: qsTr("5 Squards: Col & Row")
        }

        Rectangle {
            color: "#000000"
            id: rec
            anchors { horizontalCenter: parent.horizontalCenter; top: pageheader.bottom; topMargin: 10 }
            width: layout.size / 2
            height: layout.size / 2
        }
        Rectangle {
            color: "#000000"
            anchors { horizontalCenter: parent.horizontalCenter; top: rec.bottom; topMargin: 30 }
            width: layout.size / 2
            height: layout.size / 2
            transform : [
                Scale { xScale: 0.5; yScale: 1 },
                Rotation { angle: 45 },
                Translate { x: layout.size / 3 }
            ]
        }
    }
}
