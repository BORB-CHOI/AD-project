import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.9
import QtQuick.Window 2.1

Rectangle {
    id: rectangle
    width: 400
    height: 650
    color: "#ffffff"
    property int mListClickIndex : 0//클릭한 리스트의 index를 담는 전역 변수    
    
    GridLayout {
        id: gridLayout
        x: 0
        y: 0
        width: 400
        height: 650
        rows: 10
        columns: 3
        Item {
            id: item
            Layout.maximumWidth: 70
            Layout.minimumWidth: 40
            Layout.columnSpan: 1
            Layout.rowSpan: 10
            Layout.fillWidth: true
            Layout.fillHeight: true
            Button {
                id: button
                text: qsTr("더미")
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: button1
                text: qsTr("더미")
                anchors.top: parent.top
                anchors.topMargin: 50
                flat: false
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        Item {
            id: item1
            Layout.maximumHeight: 60
            Layout.columnSpan: 2
            Layout.rowSpan: 2
            Layout.fillWidth: true
            Layout.fillHeight: true

            Button {
                id: button2
                signal openBtnClicked                
                objectName: "openBtn"
                text: qsTr("더미")
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenterOffset: 20
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    openBtnClicked()
                }
            }

            Button {
                id: button3
                signal generalBtnClicked
                objectName: "generalBtn"
                text: qsTr("더미")                
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenterOffset: 120
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    generalBtnClicked()
                }
            }
        }
        Frame {
            id: frame
            Layout.maximumWidth: 320
            Layout.maximumHeight: 60
            Layout.columnSpan: 2
            Layout.rowSpan: 2
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                id: text1
                text: qsTr("text")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 30
            }
            MouseArea {
                id: mouseArea
                signal mouseAreaClicked
                objectName: "mouseArea"
                anchors.fill: parent
                onClicked: {
                    mouseAreaClicked()
                }
            }
        }
        Frame {
            id: frame1
            Layout.maximumWidth: 320
            Layout.maximumHeight: 60
            Layout.columnSpan: 2
            Layout.rowSpan: 2
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                id: text2                
                text: qsTr("text")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 30
            }
            MouseArea {
                id: mouseArea1
                signal mouseAreaClicked1
                objectName: "mouseArea1"
                anchors.fill: parent
                onClicked: {
                    mouseAreaClicked1()
                }
            }
        }
        Frame {
            id: frame2
            Layout.maximumWidth: 320
            Layout.maximumHeight: 60
            Layout.columnSpan: 2
            Layout.rowSpan: 2
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                id: text3
                text: qsTr("text")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 30
            }
            MouseArea {
                id: mouseArea2
                signal mouseAreaClicked2
                objectName: "mouseArea2"
                anchors.fill: parent
                onClicked: {
                    mouseAreaClicked2()
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"0c93d4c6442008ef43ab2bf3cac06d2b"}D{i:3;uuid:"1fa1c9b5539740061cd7886de954aafe"}
D{i:4;uuid:"b91f76259cb8b1761db0cfeae9f5fb53"}D{i:2;uuid:"71049f636c9fab83358e844cd6867afd"}
D{i:6;uuid:"f1653cec75775b64e9a58704b84c269f"}D{i:7;uuid:"02f566f9933db2f484500d4d7d6bcd96"}
D{i:5;uuid:"c7a675ec1c2b33574e60112f3ed801eb"}D{i:14;uuid:"ee1b3a91ea5255e5245337b149cb0e7d"}
D{i:16;uuid:"46f43e38194ab76d03176a2e5ac54af5"}D{i:17;uuid:"05a451c10faaf884d6bbf6ca4a5e0a85"}
D{i:15;uuid:"7e657a4ba733fb59212fc6760c44d18b"}D{i:9;uuid:"d5ef3d94eecdc1d55e341c9efc13b67e"}
D{i:10;uuid:"fb4646711c5c2ab3421b8fe75f532ab1"}D{i:11;uuid:"bd80c163517d9ca58b126264a0a8d6eb"}
D{i:12;uuid:"22f0b7d5f6a7a42711c9b38903ab7efe"}D{i:13;uuid:"1b96c7404c83da7029f98a9fd2625f13"}
D{i:8;uuid:"6cd10799fa37cf7ba48663b77f295135"}D{i:1;uuid:"b17e1c2e2963012f3deb5bf0a0aa06cd"}
}
##^##*/
