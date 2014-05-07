// Gepkocsi.sl
// Gepkocsi Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cGepkocsiDataDictionary.dd

CD_Popup_Object Gepkocsi_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 213
    Set Label To "Gepkocsi Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oGepkocsi_DD is a cGepkocsiDataDictionary
    End_Object 

    Set Main_DD To oGepkocsi_DD
    Set Server  To oGepkocsi_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 203
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Gepkocsi_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oGepkocsi_Rendszam is a cDbCJGridColumn
            Entry_Item Gepkocsi.Rendszam
            Set piWidth to 64
            Set psCaption to "Rendsz m"
        End_Object 

        Object oGepkocsi_Tipus is a cDbCJGridColumn
            Entry_Item Gepkocsi.Tipus
            Set piWidth to 225
            Set psCaption to "T¡pus"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 50
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 104
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 158
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Gepkocsi_sl
