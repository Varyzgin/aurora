import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        id: layout
        spacing: Theme.paddingMedium
        width: parent.width
        height: parent.height
        property double size: parent.width

        PageHeader {
            title: qsTr("5 Squards: Col & Row")
        }

        Rectangle {
            color: "#000000"
            id: rec
            anchors.horizontalCenter: parent.horizontalCenter
            width: layout.size / 2
            height: layout.size / 2
            y: 0
        }
        Button {
            text: "Change"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked:
                ParallelAnimation {
                    PropertyAnimation {
                        target: rec
                        property: "y"
                        from: rec.y; to: layout.height; duration:1000
                        running: false
                    }
                    PropertyAnimation {
                        target: rec
                        property: "width"
                        from: layout.size / 2; to: layout.size; duration: 1000
                        running: false
                    }
                    PropertyAnimation {
                        target: rec
                        property: "height"
                        from: layout.size / 2; to: layout.size; duration: 1000
                        running: false
                    }
                }
        }
    }
}
