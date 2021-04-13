import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        id:firsCol
        Text {
            id: txtCount
            text: datastore.message
        }
        Button{
            id:btnUpdate

            text:"Just Click Me"
            onClicked:datastore.callMeFromQml()
        }
    }

    Column{
        anchors.left: firsCol.right
        Button{
            text: "Click Me"
            onClicked: {
                var result = datastore.qInvokeExample("I pass whatever i want");
            }

        }
    }
}
