import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.9
import QtQuick.Window 2.1

Rectangle {
    id: rectangle
    width: 400
    height: 650

    GridLayout {
        id: gridLayout
        x: 0
        y: 0
        width: 400
        height: 650
        rows: 10
        columns: 1

        Text {
            id: text1
            x: 28
            y: 33
            text: qsTr("Title")
            font.pixelSize: 12
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.maximumHeight: 80
            Layout.rowSpan: 1
            Button {
                id: button1
                signal menuClicked
                objectName: "menuBtn"
                x: 333
                y: 7
                width: 57
                height: 32
                text: qsTr("Menu")
                onClicked: {
                    menuClicked()
                }
            }
        }        
        TextEdit {
          id: textEdit
          objectName: "textEdit"
          x: 110
          y: 166
          height: 160
          readOnly: true
          Layout.fillHeight: true
          Layout.fillWidth: true
          Layout.rowSpan: 8
        }
        TextField {
            id: textField
            objectName: "textField"
            Layout.maximumHeight: 80
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.rowSpan: 1
            placeholderText: qsTr("Text Field")
            Button {
                id: button
                signal sendClicked
                objectName: "sendBtn"
                x: 315
                y: 10
                width: 78
                height: 23
                text: "Send"
                onClicked: {
                    sendClicked()
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"e427a05fdd261aa71a5b9017af2ba42d"}D{i:3;uuid:"8983dd2323bade359e1cfd2743795409"}
D{i:2;uuid:"bc13be61490860a4770ab84eea68000c"}D{i:10;uuid:"8f0cff0a8069b7467c88fd2b50706f73"}
D{i:12;uuid:"c23a0e0e7d8433093e01f8746b9fb467"}D{i:13;uuid:"dc16caf4942522b9ad4225fbd5021369"}
D{i:11;uuid:"28d1f74c26dd56cd3f50e5c9207a055f"}D{i:5;uuid:"7420d93697a738a8e58d7341099d637c"}
D{i:6;uuid:"3a62a19bd71db8d21103caa3da4f8c15"}D{i:7;uuid:"570c12d8790385dd56be46b751a22ffa"}
D{i:8;uuid:"ac8626028f6b9545dd8031facaf14432"}D{i:9;uuid:"84aa0e2fda910634bbb5b487a391adc6"}
D{i:4;uuid:"572eb534c29cd57b8b8e18a4bc5f4bd2"}D{i:15;uuid:"800f3d32d65eb7eaf812642bd29c9a59"}
D{i:14;uuid:"01c0740c75b8c58926bbb964197a34ea"}D{i:1;uuid:"c6c8146f4890405e9e034216398f0e78"}
}
##^##*/
