// C:\Visual DataFlex Projects\Szallitmanyozas\AppSrc\SoforEntry.vw
// SoforEntry
//

Use DFClient.pkg
Use DFEntry.pkg

Use cSoforDataDictionary.dd

ACTIVATE_VIEW Activate_oSoforEntry FOR oSoforEntry
Object oSoforEntry is a dbView
    Set Location to 5 5
    Set Size to 38 268
    Set Label To "SoforEntry"
    Set Border_Style to Border_Thick


    Object oSofor_DD is a cSoforDataDictionary
    End_Object 

    Set Main_DD To oSofor_DD
    Set Server  To oSofor_DD



    Object oSoforAzonosito is a dbForm
        Entry_Item Sofor.Azonosito
        Set Size to 13 49
        Set Location to 5 38
        Set peAnchors to anLeftRight
        Set Label to "Azonosito"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 33
        Set Label_row_Offset to 0
    End_Object 

    Object oSoforNev is a dbForm
        Entry_Item Sofor.Nev
        Set Size to 13 225
        Set Location to 20 38
        Set peAnchors to anLeftRight
        Set Label to "Nev"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 33
        Set Label_row_Offset to 0
    End_Object 


End_Object 
