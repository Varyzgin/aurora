import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel { id: dataModel }
    Column {
        width: parent.width;
        spacing: Theme.paddingMedium
        PageHeader { title: "Editable List" }
        Button {
            id: addButton
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Add item"
            onClicked: dataModel.append({ text: "Item #" })
        }
        SilicaListView {
            spacing: Theme.paddingMedium
            width: parent.width; height: parent.height - addButton.height;
            model: dataModel
            delegate: ListItem {
                width: parent.width; height: 70;
                Button {
                    color: "#00FFFF";
                    anchors.centerIn: parent
                    text: model.text + model.index
                    onClicked: {
                        this.visible = false;
                    }
                }
            }
        }
    }
}
