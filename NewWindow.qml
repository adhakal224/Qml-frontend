import QtQuick 2.0
import QtQuick.Window 2.14
import QtQuick.Layouts 1.3


Window{
    color: "#414442"
    title: "Clickable Images"
    minimumHeight: 600
    minimumWidth: 700
    id: dialogId
    //define the grid layout for the six components
        GridLayout{
            id: gridId
            anchors.fill: parent
            columns: 3
            rowSpacing: 20
            columnSpacing: 20
            y: 10

            Rectangle{
                id: topLeft
                width: 150
                height: width
                color: "blue"
                Layout.fillHeight: true
                Layout.fillWidth: true
                radius: 20

                Image {
                    id: img1
                    source: "images/panda1.jpeg"
                    anchors.fill: parent
                }
                MouseArea{
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        console.log("You clicked image 1")
                    }
                }
            }

            Rectangle{
                id: topCenter
                width: 150
                height: width
                color: "green"
                Layout.fillHeight: true
                Layout.fillWidth: true
                radius: 20

                Image {
                    id: img2
                    source: "images/panda2.jfif"
                    anchors.fill: parent
                }
                MouseArea{
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        console.log("You clicked image 2")
                    }
                }
            }

            Rectangle{
                id: topRight
                width: 150
                height: width
                color: "orange"
                Layout.fillHeight: true
                Layout.fillWidth: true
                radius: 20

                Image {
                    id: img3
                    source: "images/panda3.jpg"
                    anchors.fill: parent
                }
                MouseArea{
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        console.log("You clicked image 3")
                    }
                }
            }


            Rectangle{
                id: bottomLeft
                width: 150
                height: width
                color: "blue"
                Layout.fillHeight: true
                Layout.fillWidth: true
                radius: 20

                Image {
                    id: img4
                    source: "images/panda4.jpg"
                    anchors.fill: parent
                }
                MouseArea{
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        console.log("You clicked image 4")
                    }
                }
            }

            Rectangle{
                id: bottomCenter
                width: 150
                height: width
                color: "green"
                Layout.fillHeight: true
                Layout.fillWidth: true
                radius: 20

                Image {
                    id: img5
                    source: "images/panda5.jpg"
                    anchors.fill: parent
                }

                MouseArea{
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        console.log("You clicked image 5")
                    }
                }
            }

            Rectangle{
                id: bottomRight
                width: 150
                height: width
                color: "orange"
                Layout.fillHeight: true
                Layout.fillWidth: true
                radius: 20
                Image {
                    id: img6
                    source: "images/panda6.jfif"
                    anchors.fill: parent
                }
                MouseArea{
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        console.log("You clicked image 6")
                    }
                }
            }
        }

}
