import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: layout.height + Theme.paddingLarge

        Column {
            id: layout
            spacing: Theme.paddingMedium
            width: parent.width

            PageHeader {
                title: qsTr("Date & Time")
            }

            TimePicker {
                id: timePicker
                anchors.horizontalCenter: parent.horizontalCenter
                onTimeChanged: {
                    console.log(timePicker.time)
                }
                Label {
                    anchors {
                        horizontalCenter: parent.horizontalCenter;
                        verticalCenter: parent.verticalCenter
                    }
                    text: timePicker.timeText
                    font.pixelSize: Theme.fontSizeExtraLarge
                }

            }
            DatePicker {
                daysVisible: true
                id: date_picker
                onDayChanged: {
                    console.log(date_picker.date)
                }
            }
        }
    }
}
