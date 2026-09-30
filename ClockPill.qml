import QtQuick 2.15

Rectangle {
    id: clockPill

    width: 120
    height: 50
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

        clockPill.timeText = hours + ":" + (minutes < 10 ? "0" : "") + minutes + " " + suffix
    }

    Component.onCompleted: updateTime()

    Timer {
        interval: 1000
        repeat: true
        running: true
        onTriggered: clockPill.updateTime()
    }

    Text {
        anchors.centerIn: parent
        color: "white"
        font.pixelSize: 20
        font.bold: true
        text: clockPill.timeText
    }
}
