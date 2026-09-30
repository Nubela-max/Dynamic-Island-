import QtQuick
import QtQuick.Controls
import QtQuick.Shapes

Rectangle {
    id: clockPill
    
    // Pill dimensions
    width: 120
    height: 50
    radius: height / 2
    color: "#1a1a1a"
    border.color: "#333333"
    border.width: 2
    
    // Drop shadow effect
    layer.enabled: true
    layer.effect: Item {
        DropShadow {
            anchors.fill: parent
            color: "#00000040"
            radius: 8
            samples: 17
        }
    }
    
    // Timer to update clock
    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: timeDisplay.text = getCurrentTime()
    }
    
    // Text display for 12-hour clock
    Text {
        id: timeDisplay
        anchors.centerIn: parent
        font.pixelSize: 24
        font.weight: Font.Bold
        color: "#ffffff"
        text: getCurrentTime()
    }
    
    // Function to get current time in 12-hour format
    function getCurrentTime() {
        const now = new Date();
        let hours = now.getHours();
        const minutes = now.getMinutes();
        const ampm = hours >= 12 ? 'PM' : 'AM';
        
        // Convert to 12-hour format
        hours = hours % 12;
        hours = hours ? hours : 12;
        
        // Format with leading zeros
        const timeString = String(hours).padStart(2, ' ') + ':' + 
                          String(minutes).padStart(2, '0');
        
        return timeString;
    }
}
