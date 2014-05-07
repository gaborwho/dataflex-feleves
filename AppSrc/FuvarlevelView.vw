// C:\Visual DataFlex Projects\Szallitmanyozas\AppSrc\FuvarlevelView.vw
// FuvarlevelView
//

Use DFClient.pkg
Use DFEntry.pkg

Use cTermekDataDictionary.dd
Use cSoforDataDictionary.dd
Use cGepkocsiDataDictionary.dd
Use cFuvarlevelDataDictionary.dd

ACTIVATE_VIEW Activate_oFuvarlevelView FOR oFuvarlevelView
Object oFuvarlevelView is a dbView
    Set Location to 5 5
    Set Size to 158 421
    Set Label To "FuvarlevelView"
    Set Border_Style to Border_Thick


    Object oTermek_DD is a cTermekDataDictionary
    End_Object 

    Object oSofor_DD is a cSoforDataDictionary
    End_Object 

    Object oGepkocsi_DD is a cGepkocsiDataDictionary
    End_Object 

    Object oFuvarlevel_DD is a cFuvarlevelDataDictionary
        Set DDO_Server To oSofor_DD
        Set DDO_Server To oTermek_DD
        Set DDO_Server To oGepkocsi_DD
    End_Object 

    Set Main_DD To oFuvarlevel_DD
    Set Server  To oFuvarlevel_DD



    Object oTermekMegnevezes is a dbForm
        Entry_Item Termek.Megnevezes
        Set Size to 13 186
        Set Location to 5 50
        Set peAnchors to anLeftRight
        Set Label to "Megnevezes"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 

    Object oTermekEgysegar is a dbForm
        Entry_Item Termek.Egysegar
        Set Size to 13 54
        Set Location to 20 50
        Set peAnchors to anLeftRight
        Set Label to "Egysegar"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelDatum is a dbForm
        Entry_Item Fuvarlevel.Datum
        Set Size to 13 66
        Set Location to 35 50
        Set peAnchors to anLeftRight
        Set Label to "Datum"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 

    Object oGepkocsiRendszam is a dbForm
        Entry_Item Gepkocsi.Rendszam
        Set Size to 13 42
        Set Location to 50 50
        Set peAnchors to anLeftRight
        Set Label to "Rendszam"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 

    Object oGepkocsiTipus is a dbForm
        Entry_Item Gepkocsi.Tipus
        Set Size to 13 186
        Set Location to 65 50
        Set peAnchors to anLeftRight
        Set Label to "Tipus"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelTav is a dbForm
        Entry_Item Fuvarlevel.Tav
        Set Size to 13 34
        Set Location to 80 50
        Set peAnchors to anLeftRight
        Set Label to "Tav"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelUAMennyiseg is a dbForm
        Entry_Item Fuvarlevel.UAMennyiseg
        Set Size to 13 34
        Set Location to 95 50
        Set peAnchors to anLeftRight
        Set Label to "UAMennyiseg"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelUAEgysegar is a dbForm
        Entry_Item Fuvarlevel.UAEgysegar
        Set Size to 13 34
        Set Location to 110 50
        Set peAnchors to anLeftRight
        Set Label to "UAEgysegar"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 

    Object oSoforNev is a dbForm
        Entry_Item Sofor.Nev
        Set Size to 13 366
        Set Location to 125 50
        Set peAnchors to anLeftRight
        Set Label to "Nev"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelMunkaido is a dbForm
        Entry_Item Fuvarlevel.Munkaido
        Set Size to 13 34
        Set Location to 140 50
        Set peAnchors to anLeftRight
        Set Label to "Munkaido"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 


End_Object 
