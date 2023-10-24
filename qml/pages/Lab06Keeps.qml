import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0

Page {
    property var db: LocalStorage.openDatabaseSync("QDeclarativeExampleDB", "1.0", "The Example QML SQL!", 1000000)
    property var notesModel: []

    Item {
        id: container
        anchors.centerIn: parent
        height: parent.height * 0.5

        Column {
            y: -200
            height: 200
            width: 500
            anchors.horizontalCenter: parent.horizontalCenter

            TextField {
                id: txtfield
                placeholderText: "Текст заметки"
            }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Добавить"
                onClicked: {
                    db.transaction(function(tx) {
                        tx.executeSql("INSERT INTO notes (note_text) VALUES(?);", [txtfield.text]);
                        var rs = tx.executeSql('SELECT * FROM notes');
                        var r = []
                        for (var i = 0; i < rs.rows.length; i++) {
                            r.push(rs.rows.item(i))
                        }
                        container.notesModel = r
                    });
                }
            }
        }
    }
    SilicaListView {
        anchors.fill: parent
        model: container.notesModel
        delegate: Label {
            width: parent.width
            height: 100
            Text {
                text: modelData.note_text
                anchors.centerIn: parent
            }
        }
        spacing: 5
        Component.onCompleted: {
            db.transaction( function(tx) {
                tx.executeSql('DROP TABLE IF EXISTS notes');
                tx.executeSql('CREATE TABLE IF NOT EXISTS notes(note_text TEXT)');
                tx.executeSql('INSERT INTO notes VALUES(?)', [ 'заметка 1' ]);
                var rs = tx.executeSql('SELECT * FROM notes');
                var r = []
                for (var i = 0; i < rs.rows.length; i++) {
                    r.push(rs.rows.item(i))
                }
                container.notesModel = r
            })
        }
    }
}
