import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Assignment 30.03")

    Rectangle {
        id: rect
        x: parent.width / 2 - width / 2
        y: parent.height / 2 - height / 2
        height: 100
        width: 100
        radius: 15
        color: "red"
    }

    MyButton {
        id: leftButton
        text: "Left"
        onClick: rect.x -= 5
    }

    MyButton {
        id: rightButton
        anchors {
            left: leftButton.right
            leftMargin: 5
        }
        text: "Right"
        onClick: rect.x += 5
    }

    MyButton {
        id: upButton
        anchors {
            left: leftButton.left
            top: leftButton.bottom
            topMargin: 5
        }
        text: "Up"
        onClick: rect.y -= 5
    }

    MyButton {
        id: downButton
        anchors {
            top: upButton.top
            left: upButton.right
            leftMargin: 5
        }
        text: "Down"
        onClick: rect.y += 5
    }

    MyButton {
        id: counterCockWiseButton
        anchors {
            left: upButton.left
            top: upButton.bottom
            topMargin: 5
        }
        text: "Rotate <br>Counterclockwise"
        onClick: rect.rotation -= 5
    }

    MyButton {
        id: clockWiseButton
        anchors {
            left: counterCockWiseButton.right
            top: counterCockWiseButton.top
            leftMargin: 5
        }
        text: "Rotate <br>Clockwise"
        onClick: rect.rotation += 5
    }
}
