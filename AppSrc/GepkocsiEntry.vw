// C:\Visual DataFlex Projects\Szallitmanyozas\AppSrc\GepkocsiEntry.vw
// GepkocsiEntry
//

Use DFClient.pkg
Use DFEntry.pkg

Use cGepkocsiDataDictionary.dd

ACTIVATE_VIEW Activate_oGepkocsiEntry FOR oGepkocsiEntry
Object oGepkocsiEntry is a dbView
    Set Location to 5 5
    Set Size to 38 265
    Set Label To "GepkocsiEntry"
    Set Border_Style to Border_Thick


    Object oGepkocsi_DD is a cGepkocsiDataDictionary
    End_Object 

    Set Main_DD To oGepkocsi_DD
    Set Server  To oGepkocsi_DD



    Object oGepkocsiRendszam is a dbForm
        Entry_Item Gepkocsi.Rendszam
        Set Size to 13 75
        Set Location to 5 74
        Set peAnchors to anLeftRight
        Set Label to "G‚pj rmu rendsz ma"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 69
        Set Label_row_Offset to 0
    End_Object 

    Object oGepkocsiTipus is a dbForm
        Entry_Item Gepkocsi.Tipus
        Set Size to 13 186
        Set Location to 20 74
        Set peAnchors to anLeftRight
        Set Label to "J rmu t¡pusa"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 69
        Set Label_row_Offset to 0
    End_Object 


End_Object 
