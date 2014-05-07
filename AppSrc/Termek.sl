// Termek.sl
// Termek Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cTermekDataDictionary.dd

CD_Popup_Object Termek_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 211
    Set Label To "Termek Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oTermek_DD is a cTermekDataDictionary
    End_Object 

    Set Main_DD To oTermek_DD
    Set Server  To oTermek_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 201
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Termek_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oTermek_Azonosito is a cDbCJGridColumn
            Entry_Item Termek.Azonosito
            Set piWidth to 61
            Set psCaption to "Azonos¡t¢"
        End_Object 

        Object oTermek_Megnevezes is a cDbCJGridColumn
            Entry_Item Termek.Megnevezes
            Set piWidth to 225
            Set psCaption to "Megnevez‚s"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 48
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 102
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 156
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Termek_sl
