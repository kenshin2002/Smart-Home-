import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import "Components"
import "Screens"
import "Model"
ApplicationWindow
{
    width: 1440
    height: 1042
    visible: true
    title: qsTr("Smart Home")
    background: Image {
        anchors.fill: parent
        source: "qrc:/Assets/BackGroundApp.jpg"
        //fillMode: Image.PreserveAspectFit
    }
    property ListModel homeModel: HomeModel{}
    header: Pane
    {
        id: topPane
        width: parent.width
        height: 55
        topPadding: 50
        leftPadding: 50
        rightPadding: 50
        background: null
        RowLayout
        {
            anchors.fill: parent
            OutLinedLabel
            {
                Layout.alignment: Qt.AlignLeft
                icon: '\uf0c9' // menu
                iconSize: 18
                backgroundColor: Style.charcoalGrey
                borderColor: Style.charcoalGrey
                onClicked:
                {}

            }
            Item{Layout.fillWidth: true}
            Pane
            {
                id:middlePaneId
                Layout.alignment: Qt.AlignCenter | Qt.AlignVCenter
                Layout.preferredWidth: topPane.width * 0.66
                Layout.preferredHeight: topPane.height
                background: Rectangle
                {
                    anchors.fill: parent
                    color: Style.alphaColor("#000000",0.5)
                    border.color: Style.alphaColor("#FFFFFF",0.25)
                    radius: 24
                }
                contentItem: Pane
                {
                    padding: 0
                    anchors{
                        left: parent.left
                        right: parent.right
                    }
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20
                    height: parent.height * 0.7
                    anchors.verticalCenter: parent.verticalCenter
                    background:null
                    RowLayout
                    {
                        width: parent.width
                        anchors.centerIn: parent
                        Repeater
                        {
                            id:locationRepeter
                            model:homeModel
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            delegate: Item{
                                id: roomdelegateitem
                                height: 55
                                width: middlePaneId.width / locationRepeter.model.count
                                property string label
                                //property bool isActive: label === activeRoomLabel
                                property alias icon: iconlabel.icon
                                property alias size: iconlabel.size
                                signal clicked()

                                label: model.label
                                icon: model.icon
                                size: model.size
                                // onClicked: activeRoomLabel=label
                                MouseArea{
                                  anchors.fill: parent
                                   onClicked: {
                                     console.log(index)
                                   }
                                }
                                Column {
                                    anchors.fill: parent
                                    spacing: 8
                                    IconLabel {
                                        id: iconlabel
                                        width: parent.height * 0.5
                                        height: width
                                        color: Style.textColor
                                        topPadding: 10
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        horizontalAlignment: IconLabel.AlignHCenter
                                        verticalAlignment: IconLabel.AlignVCenter
                                        opacity: roomdelegateitem.isActive ? 1 : 0.5

                                        Behavior on opacity { NumberAnimation { duration: 300 }}
                                    }
                                    Text {
                                        text: roomdelegateitem.label
                                        font.pixelSize: 12
                                        color: Style.textColor
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        opacity: roomdelegateitem.isActive ? 1 : 0.5

                                        Behavior on opacity { NumberAnimation { duration: 300 }}
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Item{Layout.fillWidth: true}
            OutLinedLabel {
                // Layout.alignment: Qt.AlignRight
                icon: '\uf0f3' // bell
                iconSize: 18
                backgroundColor: Style.charcoalGrey
                borderColor: Style.charcoalGrey
                onClicked: {}
            }

        }
    }
    contentData: Loader {
        id: screenLoader
        anchors.topMargin: topPane.topPadding * 2
        anchors.fill: parent
        sourceComponent: homeScreen
    }
    Component {
        id: homeScreen
        HomeScreen
        {

        }
    }
}
