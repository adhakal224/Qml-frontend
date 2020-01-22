import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.4
import QtQuick.Controls 2.4
import QtMultimedia 5.14

    //This whole file contains all the toolbar desisgns and features
        Rectangle{
            property var toolsBg: "#212529"
            property var toolFont: "Helvetica"
            property var toolTextColor : "white"
            property var toolFrameColor: "white"

            id: toolsId
            Layout.fillHeight: true
            width: rootId.width/4
            color: toolsBg
            Layout.fillWidth: true

                //rectangle containing the text "Camera Tools"
                Rectangle{
                    id: toolNameId
                    radius: 40
                    anchors.horizontalCenter: toolsId.horizontalCenter
                    y: 50
                    width: toolsId.width/1.5
                    height: 50
                    border.color: toolFrameColor
                    border.width: 3
                    color: toolsBg


                Label{
                    anchors.centerIn: parent
                    wrapMode: "Wrap"
                    id: tooltextId
                    text: "Camera Tools"
                    color: toolTextColor
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
                    border.color: toolFrameColor
                    border.width: 2
                    color: toolsBg


                        //rectangle with text zoomin
                        Label{
                            id: zoomTextId
                            x: 30
                            y: 30
                            text: "Zoom In"
                            color: toolTextColor
                            font.pointSize: 12
                            font.family: toolFont

                        }


                        //Rectangle containing the zoom slider
                        Rectangle{
                            id: zoomSliderId
                            color: toolsBg
                            anchors.left: zoomTextId.left
                            anchors.top: zoomTextId.bottom
                            anchors.topMargin: 15
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


                        //Horizontal line under zoom
                        Rectangle{
                            id: zoomLineId
                            height: 2
                            width: featuresRectId.width/1.2
                            color: toolFrameColor
                            anchors.top: zoomSliderId.bottom
                            anchors.left: zoomTextId.left
                            anchors.topMargin: 30
                        }

                        //Text for "Brightness"
                        Text{
                            id: brightTextId
                            anchors.top: zoomLineId.bottom
                            anchors.left: zoomLineId.left
                            anchors.topMargin: 30
                            font.pointSize: 12
                            text: "Brightness"
                            font.family: toolFont
                            color: toolTextColor
                        }

                        //Rectangle for Dial Control
                        Rectangle{
                            id: brightDialId
                            color: toolsBg
                            anchors.left: brightTextId.left
                            anchors.top: brightTextId.bottom
                            anchors.topMargin: 20
                            height: 150
                            width: featuresRectId.width / 1.25
                            Dial{
                               anchors.fill: parent
                               from: 1
                               to: 10
                               onMoved: {
                                   console.log(Math.floor(value))
                               }

                            }
                        }

                        //Horizontal Line after brightness
                        Rectangle{
                            id: brightLineId
                            height: 2
                            width: featuresRectId.width/1.2
                            color: toolFrameColor
                            anchors.top: brightDialId.bottom
                            anchors.left: brightDialId.left
                            anchors.topMargin: 30
                        }



                 }

                Rectangle{
                    height: 100
                    width: timeId.implicitWidth
                    anchors.top: featuresRectId.bottom
                    anchors.horizontalCenter: featuresRectId.horizontalCenter
                    color: toolsBg
                    anchors.topMargin: 40

                    Text{
                        id: timeId
                        textFormat: Text.RichText
                        anchors.fill: parent
                        height: parent.height
//                        text: Qt.formatTime(new Date(), "hh:m ") + "AM"
                        text: "10:33" + "<sup><font size = 1>AM</font></sup>"
                        anchors.centerIn: parent
                        font.pointSize: 45
                        color: toolTextColor
                        font.family: toolFont

                    }
                }



        }


