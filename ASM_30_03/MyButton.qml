import QtQuick 2.15

Rectangle {
    id: root
    property string colorNormal: "green"
    property string colorClicked: "dark green"
    property alias text: text.text
    height: 40
    width: 125
    radius: height / 5
    color: colorNormal

    signal click

    Text {
        id: text
        anchors.centerIn: parent
        text: "Button"
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
    }

    MouseArea {
        anchors.fill: parent
        onPressed: {
            click()
            root.color = colorClicked
        }

        onReleased: root.color = colorNormal
    }
}
