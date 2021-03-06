// C:\Visual DataFlex Projects\Szallitmanyozas\AppSrc\FuvarlevelEntry.vw
// FuvarlevelEntry
//

Use DFClient.pkg
Use DFEntry.pkg

Use cTermekDataDictionary.dd
Use cSoforDataDictionary.dd
Use cGepkocsiDataDictionary.dd
Use cFuvarlevelDataDictionary.dd

ACTIVATE_VIEW Activate_oFuvarlevelEntry FOR oFuvarlevelEntry
Object oFuvarlevelEntry is a dbView
    Set Location to 5 5
    Set Size to 143 234
    Set Label To "FuvarlevelEntry"
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



    Object oFuvarlevelFuvarszam is a dbForm
        Entry_Item Fuvarlevel.Fuvarszam
        Set Size to 13 42
        Set Location to 5 163
        Set peAnchors to anLeftRight
        Set Label to "Fuvarlev�l sz�ma"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oTermekAzonosito is a dbForm
        Entry_Item Termek.Azonosito
        Set Size to 13 42
        Set Location to 20 163
        Set peAnchors to anLeftRight
        Set Label to "Term�k azonos�t�ja"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oGepkocsiRendszam is a dbForm
        Entry_Item Gepkocsi.Rendszam
        Set Size to 13 42
        Set Location to 35 163
        Set peAnchors to anLeftRight
        Set Label to "G�pkocsi rendsz�ma"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oSoforAzonosito is a dbForm
        Entry_Item Sofor.Azonosito
        Set Size to 13 34
        Set Location to 50 163
        Set peAnchors to anLeftRight
        Set Label to "Sofor azonos�t�ja"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelDatum is a dbForm
        Entry_Item Fuvarlevel.Datum
        Set Size to 13 66
        Set Location to 65 163
        Set peAnchors to anLeftRight
        Set Label to "Fuvar d�tuma"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelTav is a dbForm
        Entry_Item Fuvarlevel.Tav
        Set Size to 13 34
        Set Location to 80 163
        Set peAnchors to anLeftRight
        Set Label to "Fuvar sor�n megtett t�vols�g"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelMunkaido is a dbForm
        Entry_Item Fuvarlevel.Munkaido
        Set Size to 13 34
        Set Location to 95 163
        Set peAnchors to anLeftRight
        Set Label to "Fuvarral elt�lt�tt ido"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelUAMennyiseg is a dbForm
        Entry_Item Fuvarlevel.UAMennyiseg
        Set Size to 13 34
        Set Location to 110 163
        Set peAnchors to anLeftRight
        Set Label to "Fuvar sor�n elfogyasztott uzemanyagmennyiseg"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelUAEgysegar is a dbForm
        Entry_Item Fuvarlevel.UAEgysegar
        Set Size to 13 34
        Set Location to 125 163
        Set peAnchors to anLeftRight
        Set Label to "Fuvar sor�n elhaszn�lt �zemanyag aktu�lis �ra"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 


End_Object 
