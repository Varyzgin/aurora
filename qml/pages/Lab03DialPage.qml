import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
   id: dialog
   Column {
       anchors.fill: parent
       width: parent.width
       //spacing: Theme.paddingMedium
       DialogHeader { }
       Label {
           x: Theme.paddingLarge
           text: "Введите текст"
       }
       TextField {
           id: int1
           width: parent.width
       }
       Label {
                  x: Theme.paddingLarge
                  text: "Введите текст"
              }
       TextField {
           id: int2
           width: parent.width
       }
   }

   onAccepted: {
       var sum = parseFloat(int1.text) + parseFloat(int2.text);
       console.log( sum )
   }
}

