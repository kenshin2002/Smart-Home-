import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import "Components"
import "Screens"
ApplicationWindow  {
    width: 1440
    height: 1042
    visible: true
    title: qsTr("Smart Home")
    background: Image {
        anchors.fill: parent
        source: "qrc:/Assets/BackGroundApp.jpg"
        //fillMode: Image.PreserveAspectFit
    }
    HomeScreen{

    }
}
