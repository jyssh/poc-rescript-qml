import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import "logic.js" as Logic

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var state : ({
        counter: 0
    })

    QtObject {
        id: state2
        property int counter: 0
    }

    //    signal increase(by: int)
    //    signal decrease(by: int)

    //    Component.onCompleted: {
    //        root.increase.connect(Logic.increase)
    //        root.decrease.connect(Logic.decrease)
    //    }

    function increase(by) {
        state = Logic.increase(state, by)

    }

    function decrease(by) {
        state = Logic.decrease(state, by)
    }

    Row {
        Text {
            text: root.state.counter
        }

        Button {
            text: qsTr("Increase")
            onClicked: root.increase(1)
        }
        Button {
            text: qsTr("Decrease")
            onClicked: root.decrease(1)
        }
    }
}
