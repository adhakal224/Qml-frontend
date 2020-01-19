import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.4
import QtQuick.Controls 2.4
import QtMultimedia 5.14

Window {
    id: rootId
    visible: true
    width: 940
    height: 780
    title: qsTr("Camera Project4")

    //defining necessary variables
    property color toolsBg: "#262827"
    property color startBg: "#282828"
    Component.onCompleted: {

    }


    color: startBg

    //Laying out the two main content rows (One for the tools and another for the Camera
    RowLayout{
        anchors.fill: parent
        spacing: 0

      //rectangle for all tools
      Rectangle{
          id: toolsId
          color: toolsBg
          Layout.fillHeight: true
          width: rootId.width/4
          Layout.fillWidth: true

          Rectangle{
              radius: 40
              anchors.horizontalCenter: parent.horizontalCenter
              y: 50
              width: parent.width/1.5
              height: 40
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

          Container{
              Label{
                  text: "Zoom In"
                  color: "white"
                  font.family: "helvetica"

              }
          }


      }

      ColumnLayout{
        spacing: 0
        //Rectangle for the camera viewer
      Rectangle{
          id: camviewId
          color: "green"
          //Layout.fillHeight: true
          width: rootId.width * 3 / 4
          height: roodId.height / 1.5
          Layout.fillHeight: true
          Layout.fillWidth: true

          // Added Camera to the rectangle
          Camera{
              id: camId
              imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceFlash

              exposure{
                  exposureCompensation: -1.0
                  exposureMode: Camera.ExposurePortrait
              }
          }

          VideoOutput{
              source: camId
              anchors.fill: parent
              focus: visible
              fillMode: VideoOutput.Stretch
          }
      }
        //Rectangle for start button
      Rectangle{
          id: starterId
          color: startBg
          width: rootId.width * 3 / 4
          height: rootId.height * (1 - 1/1.5)
//          Layout.fillWidth: true
//          Layout.fillHeight: true



        }

        }

    }
}
