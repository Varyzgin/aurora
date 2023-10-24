import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: "Up 2"
                onClicked: console.log("Up 2 clicked")
            }
            MenuItem {
                text: "Up 1"
                onClicked: console.log("Up 1 is clicked")
            }
            MenuLabel { text: qsTr("Up menu") }
        }
        PushUpMenu {
                MenuLabel { text: qsTr("Down menu") }
                MenuItem {
                    text: "Down 1"
                    onClicked: console.log("Down 1 clicked")
                }
                MenuItem {
                    text: "Down 2"
                    onClicked: console.log("Down 2 clicked")
                }
            }
        header: PageHeader { title: "Menues" }
        anchors.fill: parent
        model: 11
        delegate: ListItem {
            id: delegate
            Label {
                x: Theme.paddingLarge
                text: "List Item #" + index
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            menu: ContextMenu {
                MenuLabel { text: "Context Menu" }
                MenuItem {
                    text: "Context item 1"
                    onClicked: console.log("Context item 1 clicked")
                }
                MenuItem {
                    text: "Context item 2"
                    onClicked: console.log("Context item 2 clicked")
                }
            }
        }
    }
}
