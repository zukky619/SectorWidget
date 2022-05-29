import QtQuick 2.15
import QtQuick.Shapes 1.15

Item {
    width: 300
    height: 150

    property int waveAnimationDuration : 200
    property int moveAnimationDuration : 500

    Rectangle {
        id: areaId
        anchors.centerIn: parent
        width: parent.width
        height: parent.width / 2
        color: "green"
    }

    function changeRotation(angle) {
        rotationAnimationId.stop();
        rotationAnimationId.to = angle;
        rotationAnimationId.start();
    }

    property color color1 : "#ff6833"
    property color color2 : "#ff9530"
    property color color3 : "#ffad2f"
    property color color4 : "#ffcc2e"

    Shape {
        id: indicatorId
        width: height * 0.2
        height: parent.height * 0.9
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        transformOrigin: Item.Bottom
        rotation: 0

        PropertyAnimation {
            id: rotationAnimationId
            target: indicatorId
            property: "rotation"
            from: indicatorId.rotation
            to: indicatorId.rotation
            duration: moveAnimationDuration
        }

        ShapePath {
            strokeWidth: 0
            strokeColor: "#ff6833"

            fillGradient: LinearGradient {
                x1: indicatorId.width/2; y1:   0;
                x2: indicatorId.width/2; y2: indicatorId.height;
                GradientStop { id: gradColor1; position:    0; color: color1}
                GradientStop { id: gradColor2; position: 0.25; color: color2}
                GradientStop { id: gradColor3; position: 0.5 ; color: color3}
                GradientStop { id: gradColor4; position: 0.75; color: color4}
                GradientStop { id: gradColor5; position: 1.0 ; color: color3}
            }

            startX: indicatorId.width/2; startY: 0

            PathArc {
                x: indicatorId.width;
                y: indicatorId.height/2;
                radiusX: indicatorId.width/2
                radiusY: indicatorId.height/2
            }
            PathArc {
                x: indicatorId.width/2;
                y: indicatorId.height;
                radiusX: indicatorId.width/2
                radiusY: indicatorId.height/2
            }
            PathArc {
                x: 0;
                y: indicatorId.height/2;
                radiusX: indicatorId.width/2
                radiusY: indicatorId.height/2
            }
            PathArc {
                x: indicatorId.width/2;
                y: 0;
                radiusX: indicatorId.width/2
                radiusY: indicatorId.height/2
            }
        }
    }

    SequentialAnimation {
        running: true
        loops: Animation.Infinite

        ParallelAnimation {
            PropertyAnimation {
                target: gradColor1
                property: "color"
                to: color2
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor2
                property: "color"
                to: color3
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor3
                property: "color"
                to: color4
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor4
                property: "color"
                to: color1
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor5
                property: "color"
                to: color2
                duration: waveAnimationDuration
            }
        }

        ParallelAnimation {
            PropertyAnimation {
                target: gradColor1
                property: "color"
                to: color3
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor2
                property: "color"
                to: color4
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor3
                property: "color"
                to: color1
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor4
                property: "color"
                to: color2
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor5
                property: "color"
                to: color3
                duration: waveAnimationDuration
            }
        }

        ParallelAnimation {
            PropertyAnimation {
                target: gradColor1
                property: "color"
                to: color4
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor2
                property: "color"
                to: color1
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor3
                property: "color"
                to: color2
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor4
                property: "color"
                to: color3
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor5
                property: "color"
                to: color4
                duration: waveAnimationDuration
            }
        }

        ParallelAnimation {
            PropertyAnimation {
                target: gradColor1
                property: "color"
                to: color1
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor2
                property: "color"
                to: color2
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor3
                property: "color"
                to: color3
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor4
                property: "color"
                to: color4
                duration: waveAnimationDuration
            }
            PropertyAnimation {
                target: gradColor5
                property: "color"
                to: color1
                duration: waveAnimationDuration
            }
        }
    }
}
