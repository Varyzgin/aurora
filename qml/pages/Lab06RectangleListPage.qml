import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: dataModel
        ListElement { color: "white"; text: "White"; textColor: "black" }
        ListElement { color: "black"; text: "Black"; textColor: "white" }
        ListElement { color: "blue"; text: "Blue"; textColor: "red" }
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "Simple List" }
        model: dataModel
        spacing: Theme.paddingLarge
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: model.color
            Text {
                anchors.centerIn: parent
                text: model.text
                color: model.textColor
            }
        }
    }
}
