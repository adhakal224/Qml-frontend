import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.4
import QtQuick.Controls 2.4
import QtMultimedia 5.14


    Rectangle{
        id: toolsId
        color: toolsBg
        Layout.fillHeight: true
        width: rootId.width/4
        Layout.fillWidth: true
            //rectangle containing the text "Camera Tools"
            Rectangle{
                id: toolNameId
                radius: 40
                anchors.horizontalCenter: toolsId.horizontalCenter
                y: 50
                width: toolsId.width/1.5
                height: 50
                border.color: "white"
                border.width: 3
                color: parent.color


            Label{
                anchors.centerIn: parent
                wrapMode: "Wrap"
                id: tooltextId
                text: "Camera Tools"
                color: "white"
                font.pointSize: 12
                font.family: "helvetica"

            }
            }
            //Rectangle that has the features like zoom in, filters etc
            Rectangle{
                id: featuresRectId
                radius: 10
                anchors.horizontalCenter: toolsId.horizontalCenter
                anchors.top: toolNameId.bottom
                anchors.topMargin: 40
                width: toolsId.width / 1.2
                height: toolsId.height - 300
                border.color: "white"
                border.width: 2
                color: toolsId.color


                    //rectangle with text zoomin
                    Label{
                        id: zoomTextId
                        x: 30
                        y: 30
                        text: "Zoom In"
                        color: "white"
                        font.pointSize: 12
                        font.family: "Helvetica"

                    }

                    Rectangle{
                        color: featuresRectId.color
                        anchors.left: zoomTextId.left
                        anchors.top: zoomTextId.bottom
                        anchors.topMargin: 20
                        height: 50
                        width: featuresRectId.width / 1.25
                        Slider{
                            anchors.fill: parent
                           from: 1
                           value: 0
                           to: 10
                           onMoved: {
                               console.log("Current Value is: " + Math.floor(value));
                           }
                        }
                    }

             }

    }
