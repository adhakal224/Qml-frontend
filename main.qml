import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.4
import QtQuick.Controls 2.4
import QtMultimedia 5.14

Window {
    id: rootId
    visible: true
    width: 1200
    height: 880
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
       Toolfeatures{
          width: rootId.width/4
          Layout.fillHeight: true
          Layout.fillWidth: true
       }

      //rectangle for all tools
        //rectangle for all tools




      ColumnLayout{
        spacing: 0
        //Rectangle for the camera viewer
      Rectangle{
          id: camviewId
          color: "green"
          //Layout.fillHeight: true
          width: rootId.width * 3 / 4
          height: rootId.height / 1.25
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
          height: rootId.height * (1 - 1/1.25)

        }

        }

    }
}
