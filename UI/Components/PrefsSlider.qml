import QtQuick
import QtQuick.Controls.impl
import QtQuick.Templates as T
import SmartHome 1.0
import Qt5Compat.GraphicalEffects
import QtQuick.Controls

T.Slider {
    id: control
    from: 0
    to: 100
    value:50
    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitHandleWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitHandleHeight + topPadding + bottomPadding)

    padding: 6

    handle: Rectangle {
        id: handler
        x: control.leftPadding + (control.horizontal ? control.visualPosition * (control.availableWidth - width) : (control.availableWidth - width) / 2)
        y: control.topPadding + (control.horizontal ? (control.availableHeight - height) / 2 : control.visualPosition * (control.availableHeight - height))
        implicitWidth: 24
        implicitHeight: 24
        radius: width / 2
        color: "#FFFFFF"
        border.width: 4
        border.color: "#FFA500"

    }

    RectangularGlow {
        id: effect
        anchors.fill: handler
        glowRadius: 10
        spread: 0.1
        color: Style.alphaColor("#D99315",0.5)
        cornerRadius: handler.radius + glowRadius
    }

    background: Rectangle {
        x: control.leftPadding + (control.horizontal ? 0 : (control.availableWidth - width) / 2)
        y: control.topPadding + (control.horizontal ? (control.availableHeight - height) / 2 : 0)
        implicitWidth: control.horizontal ? 200 : 6
        implicitHeight: control.horizontal ? 6 : 200
        width: control.horizontal ? control.availableWidth : implicitWidth
        height: control.horizontal ? implicitHeight : control.availableHeight
        radius: 3
        color: control.palette.dark
        scale: control.horizontal && control.mirrored ? -1 : 1

        Rectangle {
            y: control.horizontal ? 0 : control.visualPosition * parent.height
            width: control.horizontal ? control.position * parent.width : 6
            height: control.horizontal ? 6 : control.position * parent.height

            radius: 3
            color: "#FFA500"
        }
    }
}
