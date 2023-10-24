import QtQuick 2.0
import Sailfish.Silica 1.0
Page {

    ListModel {
        id: tasks
        ListElement { name: "Do task"; date: "17.02.2017"}
        ListElement { name: "Enjoy yourself"; date: "17.02.2017"}
        ListElement { name: "Read a book"; date: "16.02.2017"}
        ListElement { name: "Go study"; date: "15.02.2017"}
    }
    SlideshowView {
        id: view
        model: tasks
        anchors.centerIn: parent
        height: width
        itemHeight: width; itemWidth: width;
        delegate: Rectangle {
            width: view.itemWidth;
            height: view.itemHeight;
            SectionHeader {
                text: date
            }
            Text {
                anchors.centerIn: parent
                text: name
            }
        }
    }
//    SilicaListView {
//        anchors { fill: parent; margins: Theme.horizontalPageMargin }
//        model: tasks
//        header: PageHeader { title: "Tasks" }
//        section {
//            property: 'date'
//            delegate: SectionHeader { text: section }
//        }
//        delegate: Text { text: name }
//    }
}
