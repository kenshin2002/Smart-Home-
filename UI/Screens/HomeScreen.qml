import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import "../Components"
import SmartHome 1.0
Page{
    padding: 0
    background: null
    anchors.bottom: parent.bottom
    TimeShow {
         id: dateitem
         anchors.left: parent.left
         anchors.leftMargin: 50
         anchors.top:parent.top
         anchors.topMargin: 50
    }
    footer: RowLayout{
        Layout.fillWidth: true
        width: parent.width
        height: 600
        Item{ Layout.preferredWidth: 50 }
        Rectangle {
            width: 325
            height: 500
            color: Style.alphaColor("#000000",0.5)
            border.color: Style.alphaColor("#FFFFFF",0.25)
            radius: 24
            ColumnLayout{
                width: parent.width
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 20
                anchors.bottomMargin: 20
                anchors.leftMargin: 20
                anchors.rightMargin: 20

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Air Conditioner")
                    }

                    PrefsSwitch{
                        checked: true
                    }
                }
                Item{Layout.fillHeight: true}
                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        font.pixelSize: 28
                        text: qsTr("18 °C")
                    }

                    OutLinedLabel{
                        backgroundHeight: 42
                        backgroundWidth: 42
                        radius: 8
                        iconSize: 32
                        icon:'\uf0d8'
                    }
                }
                Item{Layout.fillHeight: true}
                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text:qsTr("Current temparature")
                        font.pixelSize: 16
                    }
                    OutLinedLabel{
                        backgroundHeight: 42
                        backgroundWidth: 42
                        radius: 8
                        iconSize: 32
                        icon:'\uf0d8'
                    }

                }
                Item{Layout.fillHeight: true}
                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Mode")
                    }

                    OutLinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "Cold"
                    }
                }
                Item { Layout.fillHeight: true }

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Auto turn on")
                    }

                    OutLinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "10:00 PM"
                    }
                }
                Item { Layout.fillHeight: true }

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Auto turn off")
                    }

                    OutLinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "4:00 AM"
                    }
                }

                Item { Layout.fillHeight: true }

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Wind")
                    }

                    OutLinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "Medium"
                    }
                }
            }
        }
        Item{Layout.fillWidth: true}
        ColumnLayout{
            spacing:20
            Rectangle{
                width: 325
                height: 124
                color: Style.alphaColor("#000000",0.5)
                border.color: Style.alphaColor("#FFFFFF",0.25)
                radius: 24
                RowLayout{
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20
                    PrefsLabel{
                        text:"Air purifier"
                        Layout.fillWidth: true
                    }
                    PrefsSwitch{
                        checked: true
                    }
                }
            }
            Rectangle{
                width: 325
                height: 200
                color: Style.alphaColor("#000000",0.5)
                border.color: Style.alphaColor("#FFFFFF",0.25)
                radius: 24
                ColumnLayout{
                    width: parent.width
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 20
                    anchors.bottomMargin: 20
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20
                    spacing:20
                    RowLayout{
                        PrefsLabel{
                            Layout.fillWidth: true
                            text:qsTr("Sony Smart TV")
                        }
                        PrefsSwitch{

                        }

                    }
                    Item{Layout.fillHeight: true}
                    RowLayout{
                        width: parent.width
                        ListView{
                            clip: true
                            width: parent.width * 0.53
                            height: 52
                            model: ListModel {
                                ListElement { source: "qrc:/Assets/spotify.png" }
                                ListElement { source: "qrc:/Assets/disc.png" }
                                ListElement { source: "qrc:/Assets/youtube.png" }
                            }
                            orientation: Qt.Horizontal
                            spacing: 10
                            delegate: Image {
                                width: 48
                                height: 48
                                clip: true
                                source: model.source
                            }
                        }
                        Item { Layout.fillWidth: true}
                        OutLinedLabel {
                            icon: '\uf0fe'
                            iconSize: 18
                            backgroundColor: Style.charcoalGrey
                            borderColor: Style.charcoalGrey
                            onClicked: {}
                        }
                    }
                }
            }
            Rectangle{
                width: 325
                height: 124
                color: Style.alphaColor("#000000",0.5)
                border.color: Style.alphaColor("#FFFFFF",0.25)
                radius: 24
                ColumnLayout{
                    width: parent.width
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 20
                    anchors.bottomMargin: 20
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20
                    spacing:10
                    RowLayout{
                        PrefsLabel{
                            Layout.fillWidth: true
                            text:qsTr("Window Curtains")
                        }
                    }
                    Item{Layout.fillHeight: true}
                    RowLayout{
                        spacing: 10
                        PrefsLabel{
                            font.pixelSize: 18
                            text: qsTr("Opened")
                        }
                        PrefsSlider{
                            id:openWindowId
                            Layout.fillWidth: true
                        }
                        PrefsLabel{
                            font.pixelSize: 18
                            text:openWindowId.value.toFixed(0)+"%"
                        }
                    }
                }
            }

        }
        Item{Layout.fillWidth: true}
        Rectangle{
            width: 325
            height: 350
            color: Style.alphaColor("#000000",0.5)
            border.color: Style.alphaColor("#FFFFFF",0.25)
            radius: 24
            Layout.alignment: Qt.AlignBottom
            Layout.bottomMargin: 50
            ColumnLayout{
                width: parent.width
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 20
                anchors.bottomMargin: 20
                anchors.leftMargin: 20
                anchors.rightMargin: 20
                Item{Layout.fillHeight: true}
                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text:qsTr("Mute")
                    }
                    PrefsSwitch{

                    }
                }
                Item{Layout.fillHeight: true}
                PrefsLabel{
                    Layout.fillWidth: true
                    text:qsTr("Now playing")
                }
                Item{Layout.fillHeight: true}
                RowLayout{
                    width: parent.width
                    ListView{
                        clip: true
                        width: parent.width * 0.2
                        height: 52
                        model: ListModel {
                            ListElement { source: "qrc:/Assets/spotify.png" }
                        }
                        orientation: Qt.Horizontal
                        spacing: 10
                        delegate: Image {
                            width: 48
                            height: 48
                            clip: true
                            source: model.source
                        }
                    }
                    Item { Layout.fillWidth: true}
                    PrefsLabel{
                        text:qsTr("Em cua ngay hom qua")
                        Layout.fillWidth: true
                    }
                }
                Item{Layout.fillHeight: true}
                RowLayout{
                    spacing: 10

                    OutLinedLabel {
                        radius: 10
                        backgroundHeight: 42
                        backgroundWidth: 42
                        iconSize: 32
                        icon: '\uf0d9' //caret-left
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        onClicked: {}
                    }

                    OutLinedLabel {
                        radius: 10
                        backgroundHeight: 42
                        backgroundWidth: 42
                        property bool isPlay: false
                        icon: isPlay ? '\uf04b' /* play */ : '\uf04c' /* pause */
                        iconSize: 18
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        onClicked: {}
                    }

                    OutLinedLabel {
                        radius: 10
                        backgroundHeight: 42
                        backgroundWidth: 42
                        iconSize: 32
                        icon: '\uf0da' //caret-right
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        onClicked: {}
                    }
                }
                Item{Layout.fillHeight: true}
                RowLayout{
                    spacing: 10
                    PrefsLabel{
                        font.pixelSize: 18
                        text: qsTr("Volume")
                    }
                    PrefsSlider{
                        id:volumnId
                        Layout.fillWidth: true
                    }
                    PrefsLabel{
                        font.pixelSize: 18
                        text:volumnId.value.toFixed(0)+"%"
                    }
                }

            }
        }
        Item{Layout.fillWidth: true}
        Rectangle {
            width: 325
            height: 500
            color: Style.alphaColor("#000000",0.5)
            border.color: Style.alphaColor("#FFFFFF",0.25)
            radius: 24
            ColumnLayout{
                width: parent.width
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 20
                anchors.bottomMargin: 20
                anchors.leftMargin: 20
                anchors.rightMargin: 20

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Turn Light")
                    }

                    PrefsSwitch{
                        checked: true
                    }
                }
                Item{Layout.fillHeight: true}
                RowLayout{
                    spacing: 10
                    PrefsLabel{
                        font.pixelSize: 18
                        text: qsTr("Brightness")
                    }
                    PrefsSlider{
                        id:lightId
                        Layout.fillWidth: true
                    }
                    PrefsLabel{
                        font.pixelSize: 18
                        text:lightId.value.toFixed(0)+"%"
                    }
                }
                Item{Layout.fillHeight: true}
                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text:qsTr("Colour")

                    }
                    OutLinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "White"
                    }

                }
                Item{Layout.fillHeight: true}
                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Schedule")
                    }

                    OutLinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "Set up"
                    }
                }
                Item { Layout.fillHeight: true }

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Auto turn on")
                    }

                    OutLinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "5:00 PM"
                    }
                }
                Item { Layout.fillHeight: true }

                RowLayout{
                    PrefsLabel{
                        Layout.fillWidth: true
                        text: qsTr("Auto turn off")
                    }

                    OutLinedLabel {
                        backgroundHeight: 42
                        radius: 8
                        backgroundColor: Style.charcoalGrey
                        borderColor: Style.charcoalGrey
                        text : "7:00 AM"
                    }
                }


            }
        }

    }


}

