import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3

/* Notify an invalid input */
Dialog {

    id: invalidInputDialog
    title: i18n.tr("Operation Result")

    /* the message to display passed as parameter  */
    property string msg;

    Label{
        text: i18n.tr("Attention")+": " +msg
        color: UbuntuColors.red
    }

    Button {
        text: i18n.tr("Close")
        onClicked:
            PopupUtils.close(invalidInputDialog)
    }

}
