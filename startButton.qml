import QtQuick 2.0

Item {
    Rectangle{
        id: startId
        color: "#42BF70"
        anchors.top: viewerId.bottom
        anchors.topMargin: 40
        anchors.horizontalCenter: viewerId.horizontalCenter
        width: 250
        height: 60
        radius: 40
        Text{
            anchors.centerIn: parent
            text: "Start"
            font.pointSize: 30
            font.family: "Arial"

        }
    }
}
