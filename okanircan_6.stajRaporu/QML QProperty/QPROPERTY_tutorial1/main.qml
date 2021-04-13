import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListView{
        anchors.fill: parent
        model:people
        delegate: Rectangle{
            width: parent.width
            height: 30
            RowLayout{
                spacing: 20
                width: parent.width

                height: inc_age_button.height
                Text{

                    text: name
                }
                Text{

                    text: age
                }
                Button{
                    id:inc_age_button
                    text:  "Age +1"
                    onClicked: {
                        age = age+1;
                    }
                }
                Button{
                    id:dec_age_button
                    text:  "Age -1"
                    onClicked: {
                        age = age-1;
                    }
                }
                TextField{
                    id:name_textfield
                    width: root.width /5
                    placeholderText: 'Enter Name'
                    Button{
                        text: "OK"
                        width: parent.width/4
                        anchors{
                            right: parent.right
                            top: parent.top
                            bottom: parent.bottom
                        }
                        onClicked: {
                            name=name_textfield.text
                        }
                    }
                }
            }
        }
    }
}
