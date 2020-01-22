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
    property color toolsBg: "#212529"
    property color bgcolor: Qt.rgba(0.2, 0.3, 0.4, 0.95)
    color: bgcolor

    //Laying out the two main content rows (One for the tools and another for the Camera Viewer)
    RowLayout{
        anchors.fill: parent
        spacing: 0
       Toolfeatures{
          width: rootId.width/4
          Layout.fillHeight: true
          Layout.fillWidth: true

       }

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
        //Rectangle for start button area
      Rectangle{
          id: starterId
          color: bgcolor
          width: rootId.width * 3 / 4
          height: rootId.height * (1 - 1/1.25)
          Layout.fillHeight: true

          //this links to the ButtonStart file
          ButtonStart{
              anchors.horizontalCenter: parent.horizontalCenter
              y: 40
              MouseArea{
                  id: mouseId
                  anchors.fill: parent

                  //defines what to do on a click
                  onClicked: {
                    popupWindowId.show()
                  }

                  hoverEnabled: true
                  cursorShape: Qt.PointingHandCursor
                  }
          }

          //This links to the new window file
          NewWindow{
              id: popupWindowId
              color: toolsBg
          }

        }

        }

    }
}
