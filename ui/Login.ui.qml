import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.9
import QtQuick.Window 2.1

Rectangle {
    id: rectangle
    width: 400
    height: 650
    color: "#ffea00"

    GridLayout {
        id: gridLayout
        width: 250
        height: 250
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        rowSpacing: 5
        columnSpacing: 2
        columns: 1
        rows: 3

        Item {
            id: item
            Layout.fillHeight: true
            Layout.fillWidth: true
            Text {
                id: text1
                text: qsTr("Your KokoaTalk PC is locked")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 12
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        Item {
            id: item1
            Layout.fillHeight: true
            Layout.fillWidth: true
            TextField {
                id: textField
                objectName: "textField"
                width: 250
                height: 50
                opacity: 1
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                placeholderText: qsTr("UserName")
            }
        }
        Item {
            id: item2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Button {
                signal buttonClicked
                objectName: "myButton"
                id: button
                width: 250
                height: 50                
                text: qsTr("OK")
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter                
                onClicked: buttonClicked()
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"13d3e7c9412291b8099704cf8e03f232"}D{i:3;uuid:"65802cdc6eb165cf9856afef15f03334"}
D{i:2;uuid:"21f4e34f89953ca53d81b1233cf60760"}D{i:5;uuid:"9d2d9f93a2d86a0afbc7d44c99ff0df8"}
D{i:4;uuid:"7527bf387a2a3926e594471749217be5"}D{i:7;uuid:"8b971a07095f2c39944f4ef48ed2e154"}
D{i:6;uuid:"a29df5d28138f228ece6a5617bffde37"}D{i:1;uuid:"f20c2dedd4350564ae6174b43548eb8e"}
}
##^##*/
