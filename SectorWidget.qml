import QtQuick 2.15
import QtQuick.Shapes 1.15

Item {
    width: 300
    height: 300

    Shape {
        width: 50
        height: 200
        ShapePath {
            fillGradient: LinearGradient {
                x1: 25; y1:   0;
                x2: 25; y2: 200;
                GradientStop { id: gradColor1; position:    0; color: "#ff6833"}
                GradientStop { id: gradColor2; position: 0.25; color: "#ffcc2e"}
                GradientStop { id: gradColor3; position: 0.5 ; color: "#ff6833"}
                GradientStop { id: gradColor4; position: 0.75; color: "#ffcc2e"}
                GradientStop { id: gradColor5; position: 1.0 ; color: "#ff6833"}

//                SequentialAnimation {
//                    running: true

                    ParallelAnimation {
                        running: true

                        ColorAnimation {
                            target: gradColor1
                            from: "#ff6833"
                            to: "#ffcc2e"
                            duration: 200
                        }
                        ColorAnimation {
                            target: gradColor2
                            from: "#ffcc2e"
                            to: "#ff6833"
                            duration: 200
                        }
                        ColorAnimation {
                            target: gradColor3
                            from: "#ff6833"
                            to: "#ffcc2e"
                            duration: 200
                        }
                        ColorAnimation {
                            target: gradColor4
                            from: "#ffcc2e"
                            to: "#ff6833"
                            duration: 200
                        }
                        ColorAnimation {
                            target: gradColor5
                            from: "#ff6833"
                            to: "#ffcc2e"
                            duration: 200
                        }
                    }

//                    ParallelAnimation {
//                        running: true

//                        ColorAnimation {
//                            target: gradColor2
//                            from: "#ff6833"
//                            to: "#ffcc2e"
//                            duration: 200
//                        }
//                        ColorAnimation {
//                            target: gradColor1
//                            from: "#ffcc2e"
//                            to: "#ff6833"
//                            duration: 200
//                        }
//                        ColorAnimation {
//                            target: gradColor4
//                            from: "#ff6833"
//                            to: "#ffcc2e"
//                            duration: 200
//                        }
//                        ColorAnimation {
//                            target: gradColor3
//                            from: "#ffcc2e"
//                            to: "#ff6833"
//                            duration: 200
//                        }
//                        ColorAnimation {
//                            target: gradColor5
//                            from: "#ffcc2e"
//                            to: "#ff6833"
//                            duration: 200
//                        }
//                    }
//                }

            }

            joinStyle: ShapePath.RoundJoin
            capStyle: ShapePath.RoundCap

            startX: 25; startY: 0
//            PathLine {x:  25; y:   0}
//            PathLine {x:  50; y: 100}
//            PathLine {x:  25; y: 200}
//            PathLine {x:   0; y: 100}
            PathArc {
                x: 50;
                y: 100;
                radiusX: 25
                radiusY: 100
            }
            PathArc {
                x: 25;
                y: 200;
                radiusX: 25
                radiusY: 100
            }
            PathArc {
                x: 0;
                y: 100;
                radiusX: 25
                radiusY: 100
            }
            PathArc {
                x: 25;
                y: 0;
                radiusX: 25
                radiusY: 100
            }


        }
    }
}
