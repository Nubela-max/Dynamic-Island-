# Dynamic Island - CachyOS Clock Pill Widget

A simple, minimal 12-hour clock widget for CachyOS built with QML. Displays the current time in a sleek pill-shaped interface.

## Features

- 12-hour clock format
- Minimal pill-shaped design
- Dark theme with a subtle border
- Real-time updates every second

## Download

Download the QML file directly:

[Download ClockPill.qml](https://raw.githubusercontent.com/Nubela-max/Dynamic-Island-/main/ClockPill.qml)

Or clone the repository:

```bash
git clone https://github.com/Nubela-max/Dynamic-Island-.git
cd Dynamic-Island-
```

## Run it

Install Qt 6 QML support if needed, then run:

```bash
qml6 ClockPill.qml
```

If your system provides `qmlscene` instead:

```bash
qmlscene ClockPill.qml
```

You can also open `ClockPill.qml` from the repository page and choose **Raw**, then save the file.

## Use in another QML application

```qml
import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 300
    height: 150

    ClockPill {
        anchors.centerIn: parent
    }
}
```

Place `ClockPill.qml` beside your application’s main QML file. The widget displays the current local time in a 12-hour format.

## Customize

Edit `ClockPill.qml` to change the pill dimensions, background color, border, font size, and text color.
