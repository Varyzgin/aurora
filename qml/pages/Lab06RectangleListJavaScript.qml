import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
   property var dataModel: [
       { color: "white", text: "White", textcolor: "black" },
       { color: "black", text: "Black", textcolor: "white" },
       { color: "blue", text: "Blue", textcolor: "red" }
   ]
   SilicaListView {
       anchors.fill: parent
       header: PageHeader { title: "JavaScript List" }
       model: dataModel
       spacing: 10
       delegate: Rectangle {
           width: parent.width
           height: 100
           color: modelData.color
           Text {
               anchors.centerIn: parent
               text: modelData.text || "empty text"
               color: modelData.textcolor
           }
       }
   }
}
