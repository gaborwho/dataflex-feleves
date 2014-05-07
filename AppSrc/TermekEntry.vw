// C:\Visual DataFlex Projects\Szallitmanyozas\AppSrc\TermekEntry.vw
// TermekEntry
//

Use DFClient.pkg
Use DFEntry.pkg

Use cTermekDataDictionary.dd

ACTIVATE_VIEW Activate_oTermekEntry FOR oTermekEntry
Object oTermekEntry is a dbView
    Set Location to 5 5
    Set Size to 53 267
    Set Label To "TermekEntry"
    Set Border_Style to Border_Thick


    Object oTermek_DD is a cTermekDataDictionary
    End_Object 

    Set Main_DD To oTermek_DD
    Set Server  To oTermek_DD



    Object oTermekAzonosito is a dbForm
        Entry_Item Termek.Azonosito
        Set Size to 13 59
        Set Location to 5 76
        Set peAnchors to anLeftRight
        Set Label to "Term‚k azonos¡t¢ja"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 71
        Set Label_row_Offset to 0
    End_Object 

    Object oTermekMegnevezes is a dbForm
        Entry_Item Termek.Megnevezes
        Set Size to 13 186
        Set Location to 20 76
        Set peAnchors to anLeftRight
        Set Label to "Term‚k megnevez‚se"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 71
        Set Label_row_Offset to 0
    End_Object 

    Object oTermekEgysegar is a dbForm
        Entry_Item Termek.Egysegar
        Set Size to 13 58
        Set Location to 35 76
        Set peAnchors to anLeftRight
        Set Label to "Term‚k egys‚g ra"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 71
        Set Label_row_Offset to 0
    End_Object 


End_Object 
