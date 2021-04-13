import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    width: 800
    height: 800
    visible: true
    title: qsTr("Scroll")

    ScrollView {
        anchors.fill: parent
        ListView {
            id: mylistView
            width: parent.width
            model: ListModel{
                ListElement{
                    name: 'STEEM '
                    name2:'/ETH'
                    hacim: '3682'
                    price : '$9.39'
                    birim: '0.000610'
                    yüzde: '+40.55%'
                    miktar:"12"
                }
                ListElement{
                    name: 'ARK '
                    name2:'/BTC'
                    hacim: '540'
                    price : '$24.51'
                    birim: '0.00004986'
                    yüzde: '+34.36%'
                    miktar:"23"
                }
                ListElement{
                    name: 'ARDR '
                    name2:'/USDT'
                    hacim: '11.12M'
                    price : '$3.37'
                    birim: '0.40293'
                    yüzde: '+29.41%'
                    miktar:"76"
                }
                ListElement{
                    name: 'DENT '
                    name2:'/USDT'
                    hacim: '507.28M'
                    price : '$0.0136618'
                    birim: '0.114235'
                    yüzde: '+28.64%'
                    miktar:"47"
                }
                ListElement{
                    name: 'GTO '
                    name2:'/USDT'
                    hacim: '15.49M'
                    price : '$0.427950'
                    birim: '0.05118'
                    yüzde: '+20.65%'
                    miktar:"89"
                }
                ListElement{
                    name: 'FIL '
                    name2:'/USDT'
                    hacim: '472.50M'
                    price : '$1225.58'
                    birim: '146.5713'
                    yüzde: '+17.07%'
                    miktar:"95"
                }
                ListElement{
                    name: 'ZRX '
                    name2:'/USDT'
                    hacim: '47.16M'
                    price : '$14.70'
                    birim: '1.7577'
                    yüzde: '+14.94%'
                    miktar:"33"
                }
            }
            delegate: Rectangle{
                width: parent.width
                height: 70
                border.width: 2

                border.color: 'white'
                color: 'black'
                Text {
                    id: text1
                    width: 70
                    anchors.left: parent.left
                    anchors.bottomMargin: 10
                    anchors.bottom: hacimtext.top
                    anchors.leftMargin: 10
                    color: 'deeppink'
                    text: name
                    font.pointSize: 12
                    font.bold: true
                }
                Text {
                    id:text2
                    anchors.left: text1.right
                    anchors.bottom: hacimtext.top
                    anchors.bottomMargin: 12
                    width:100
                    text: name2
                    font.pointSize: 8
                    color: 'aquamarine'
                }
                Text {
                    id:hacimtext
                    width: 120
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 10
                    text: '  HACİM = ' + hacim
                    font.pointSize: 8
                    color: 'white'
                    anchors.bottomMargin: 5
                }
                Text {
                    id:birimtext
                    anchors.left: text2.right
                    anchors.bottomMargin: 5
                    text: 'Birim : '+birim
                    font.pointSize: 10
                    color: 'white'
                }
                Text {
                    id: pricetext
                    text: 'Price : ' + price
                    anchors.left: text2.right
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    color: 'white'
                }
                Text {
                    id:miktartext
                    anchors.right: circle.left
                    anchors.verticalCenter: parent.verticalCenter
                    text: 'Miktar :  '
                    color: 'lightcyan'
                    font.bold: true
                    font.pointSize: 13
                }

                Button{
                    id:addbuton
                    anchors.right: parent.right
                    height: 40
                    width: 80
                    anchors.rightMargin: 20
                    anchors.verticalCenter: parent.verticalCenter
                    text: 'ADD'
                    onClicked: {
                        miktar++
                    }
                }
                Button{
                    id:subtructbutton
                    anchors.right: addbuton.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.rightMargin:5
                    height: 40
                    width: 80
                    text: 'SUB'
                    onClicked: {
                        miktar--
                    }
                }
                Rectangle {
                     id: circle
                     width: 50
                     height: 50
                     anchors.right: subtructbutton.left
                     anchors.topMargin: 10
                     anchors.rightMargin: 10
                     anchors.top: parent.top
                     color: 'black'
                     border.color: 'white'
                     border.width: 2
                     radius: width*0.5
                     Text {
                         anchors.centerIn:circle
                         color: 'white'
                         text: miktar
                         font.bold: true
                         font.pointSize: 13

                     }
                }
                Rectangle{
                    id:yüzdetext
                    width: 70
                    height: 30
                    anchors.right: miktartext.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.rightMargin: 10
                    color: 'lavenderblush'
                    Text {
                        anchors.centerIn: parent
                        font.pointSize: 8
                        text: yüzde
                        color: 'indigo'
                        font.bold: true
                    }
                }


            }

            Rectangle {
                id: namerect
                width: 80; x:0
                height: 40
                anchors.bottom: name2rect.top
                anchors.left: parent.left
                border.width: 1
                border.color: 'black'
                Text{
                    id : nametext
                    text: " Coin Name : "
                    anchors.centerIn: parent
                    font.bold: true
                    font.pointSize: 8
                }

            }

            Rectangle{
                id:namerect1
                width: 120; x:80
                height: 40
                anchors.bottom:name2rect1.top
                anchors.left: namerect.right
                border.width: 1
                border.color: 'black'
                TextArea{
                    id:namelist
                    font.bold: true
                    font.pointSize: 8
                }
            }

            Rectangle {
                id: name2rect
                width: 80; x:0
                height: 40
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                border.width: 1
                border.color: 'black'
                Text{
                    id : name2text
                    text: "Parity : "
                    anchors.centerIn: parent
                    font.bold: true
                    font.pointSize: 8
                }

            }

            Rectangle{
                id:name2rect1
                width: 120; x:80
                height: 40
                anchors.bottom: parent.bottom
                anchors.left: name2rect.right
                border.width: 1
                border.color: 'black'
                TextArea{
                    id:name2list
                    font.bold: true
                    font.pointSize: 8

                }
            }
            Rectangle{
                id: name3rect
                width: 80; x:200
                height: 40
                anchors.bottom: parent.bottom
                anchors.left: name2rect1.right
                border.width: 1
                border.color: 'black'
                Text{
                    id : name3text
                    text: "Hacim : "
                    anchors.centerIn: parent
                    font.bold: true
                    font.pointSize: 8
                }

            }
            Rectangle{
                id:name3rect1
                width: 120; x:180
                height: 40
                anchors.bottom: parent.bottom
                anchors.left: name3rect.right
                border.width: 1
                border.color: 'black'
                TextArea{
                    id:name3list
                    font.bold: true
                    font.pointSize: 8

                }
            }
            Rectangle{
                id: name4rect
                width: 80; x:200
                height: 40
                anchors.bottom: name3rect.top
                anchors.left: namerect1.right
                border.width: 1
                border.color: 'black'
                Text{
                    id : name4text
                    text: "Birim : "
                    anchors.centerIn: parent
                    font.bold: true
                    font.pointSize: 8
                }

            }
            Rectangle{
                id:name4rect1
                width: 120; x:180
                height: 40
                anchors.bottom: name3rect1.top
                anchors.left: name4rect.right
                border.width: 1
                border.color: 'black'
                TextArea{
                    id:name4list
                    font.bold: true
                    font.pointSize: 8

                }
            }
            Rectangle{
                id: name5rect
                width: 80
                height: 40
                anchors.bottom: parent.bottom
                anchors.left: name4rect1.right
                border.width: 1
                border.color: 'black'
                Text{
                    id : name5text
                    text: "Yüzde : "
                    anchors.centerIn: parent
                    font.bold: true
                    font.pointSize: 8
                }

            }
            Rectangle{
                id:name5rect1
                width: 120
                height: 40
                anchors.bottom: parent.bottom
                anchors.left: name5rect.right
                border.width: 1
                border.color: 'black'
                TextArea{
                    id:name5list
                    font.bold: true
                    font.pointSize: 8

                }
            }
            Rectangle{
                id: name6rect
                width: 80
                height: 40
                anchors.bottom: name5rect.top
                anchors.left: name4rect1.right
                border.width: 1
                border.color: 'black'
                Text{
                    id : name6text
                    text: "Miktar : "
                    anchors.centerIn: parent
                    font.bold: true
                    font.pointSize: 8
                }

            }
            Rectangle{
                id:name6rect1
                width: 120; x:180
                height: 40
                anchors.bottom: name5rect1.top
                anchors.left: name6rect.right
                border.width: 1
                border.color: 'black'
                TextField{
                    id:name6list
                    font.bold: true
                    font.pointSize: 8

                }
            }
            Button{
                id:addlistview
                width: 150
                height: 80
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                text: "ADD LIST"
                onClicked: {
                    mylistView.model.append({name:namelist.text,name2:name2list.text,hacim:name3list.text,birim:name4list.text,yüzde:name5list.text,miktar:name6list.text})
                    namelist.clear()
                    name2list.clear()
                    name3list.clear()
                    name4list.clear()
                    name5list.clear()
                    name6list.clear()
                }
            }
        }

        }
    }
