import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: window

    width: 140
    height: 60
    visible: true
    color: "transparent"
    flags: Qt.FramelessWindowHint | Qt.WindowStaysOnTopHint | Qt.Tool

    Rectangle {
        id: pill
        anchors.fill: parent
        anchors.margins: 2
        radius: height / 2
        color: "#1a1a1a"
        border.color: "#333333"
        border.width: 2

        property string timeText: ""

        function updateTime() {
            var now = new Date()
            var hours = now.getHours()
            var minutes = now.getMinutes()
            var suffix = hours >= 12 ? "PM" : "AM"

            hours = hours % 12
            if (hours === 0) {
                hours = 12
            }

            pill.timeText = hours + ":" + (minutes < 10 ? "0" : "") + minutes + " " + suffix
        }

        Component.onCompleted: updateTime()

        Timer {
            interval: 1000
            repeat: true
            running: true
            onTriggered: pill.updateTime()
        }

        Text {
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 20
            font.bold: true
            text: pill.timeText
        }
    }
}
