import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        id: layout
        spacing: Theme.paddingLarge

        PageHeader {
            title: "Lab 05"
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: Theme.paddingLarge
            Button {
                text: "Next Page"
                onClicked: pageStack.push(Qt.resolvedUrl("Lab05.qml"))
            }
            Button {
                text: "Previous Page"
                onClicked: pageStack.pop()
            }
        }
        Text {
            anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
            color: palette.highlightColor
            textFormat: Text.RichText
            wrapMode: Text.WordWrap
            text: "Stack depth: " + pageStack.depth
        }
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: Theme.paddingLarge
            Button {
                text: "Pin Page"
                onClicked: pageStack.pushAttached(Qt.resolvedUrl("Lab05SecondPage.qml"))
            }
            Button {
                text: "Unpin Page"
                onClicked: pageStack.popAttached()
            }
        }

        Rectangle {
            width: parent.width
            height: 2 * parent.width / 3
            color: backgroundColor
            anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
            Grid {
                anchors{fill:parent; horizontalCenter: parent.horizontalCenter}
                columns: 2
                rows: 4
                spacing: Theme.paddingLarge

                Button {
                    text: qsTr("Write text")
                    color: Theme.primaryColor
                    onClicked: textDialog.open()
                }
                Text {
                    id: textRes
                    text: "Your text will be here"
                    color: palette.highlightColor
                    textFormat: Text.RichText
                    wrapMode: Text.WordWrap
                }

                Button {
                    text: qsTr("Choose date")
                    color: Theme.primaryColor
                    onClicked: {
                        var dialog = pageStack.push("Sailfish.Silica.DatePickerDialog",
                                                    {date: new Date()});
                        dialog.accepted.connect(function() {
                            dateRes.text = dialog.dateText;
                        });
                    }
                }
                Text {
                    id: dateRes
                    text: "Your date will be here"
                    color: palette.highlightColor
                    textFormat: Text.RichText
                    wrapMode: Text.WordWrap
                }

                Button {
                    text: qsTr("Choose time")
                    color: Theme.primaryColor
                    onClicked: {
                        var dialog = pageStack.push("Sailfish.Silica.TimePickerDialog");
                        dialog.accepted.connect(function() {
                            timeRes.text = dialog.timeText;
                        });
                    }
                }
                Text {
                    id: timeRes
                    text: "Your time will be here"
                    color: palette.highlightColor
                    textFormat: Text.RichText
                    wrapMode: Text.WordWrap
                }

                Button {
                    text: qsTr("Week Plan")
                    color: Theme.primaryColor
                    onClicked: pageStack.push(Qt.resolvedUrl("Lab05WeekPlan.qml"))
                }
                Button {
                    text: qsTr("Week Plan Show")
                    color: Theme.primaryColor
                    onClicked: pageStack.push(Qt.resolvedUrl("Lab05WeekPlanSlides.qml"))
                }
            }
        }

        Button {
            text: qsTr("Website")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab05Web.qml"))
        }
        Button {
            text: qsTr("Menu types")
            color: Theme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Lab05MenusTypes.qml"))
        }

        Dialog {
            id: textDialog
            DialogHeader {
                id: dialogHeader
                title: ""
            }
            TextField {
                id: textField
                label: "Input here"
                anchors.top: dialogHeader.bottom
            }
            onAccepted: {
                textRes.text = textField.text
                textField.focus = false
            }
        }
    }
}
