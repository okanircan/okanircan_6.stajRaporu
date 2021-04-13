import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button{
        id:button
        x:47
        y:229
        text: "Button1"
        antialiasing: true
        scale: 1.3
        onClicked: back.changeValue(1);
    }
    Button{
        id:button1
        x:163
        y:229
        text: "Button2"
        antialiasing: true
        scale: 1.3
        onClicked: back.changeValue(2);
    }
    Button{
        id:button2
        x:279
        y:229
        text: "Button3"
        antialiasing: true
        scale: 1.3
        onClicked: back.changeValue(3);
    }
    Label{
        id:label
        x:23
        y:88
        width: 355
        height: 62
        text: "Label"
        horizontalAlignment: Text.AlignHCenter
        elide: Text.ElideMiddle
        font.capitalization: Font.MixedCase
        font.family: "Arial"
        font.pointSize: 20
        Connections{
            target:back
            onValueChanged:label.text = s;
    }
}
}
