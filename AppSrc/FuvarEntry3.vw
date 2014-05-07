// C:\Visual DataFlex Projects\Szallitmanyozas\AppSrc\FuvarEntry3.vw
// FuvarEntry3
//

Use DFClient.pkg
Use DFEntry.pkg
Use DfCEntry.pkg

Use cTermekDataDictionary.dd
Use cSoforDataDictionary.dd
Use cGepkocsiDataDictionary.dd
Use cFuvarlevelDataDictionary.dd

ACTIVATE_VIEW Activate_oFuvarEntry3 FOR oFuvarEntry3
Object oFuvarEntry3 is a dbView
    Set Location to 5 5
    Set Size to 203 534
    Set Label To "FuvarEntry3"
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
        Set Label to "FuvarlevÇl sz†ma"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oTermekAzonosito is a dbForm
        Entry_Item Termek.Azonosito
        Set Size to 13 42
        Set Location to 20 163
        Set peAnchors to anLeftRight
        Set Label to "TermÇk azonos°t¢ja"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oGepkocsiRendszam is a dbComboForm
        Entry_Item Gepkocsi.Rendszam
        Set Size to 13 55
        Set Location to 35 163
        Set peAnchors to anLeftRight
        Set Label to "GÇpkocsi rendsz†ma"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oSoforAzonosito is a dbForm
        Entry_Item Sofor.Azonosito
        Set Size to 13 34
        Set Location to 50 163
        Set peAnchors to anLeftRight
        Set Label to "Sofor azonos°t¢ja"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelDatum is a dbForm
        Entry_Item Fuvarlevel.Datum
        Set Size to 13 66
        Set Location to 65 163
        Set peAnchors to anLeftRight
        Set Label to "Fuvar d†tuma"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelTav is a dbForm
        Entry_Item Fuvarlevel.Tav
        Set Size to 13 34
        Set Location to 80 163
        Set peAnchors to anLeftRight
        Set Label to "Fuvar sor†n megtett t†vols†g"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelMunkaido is a dbForm
        Entry_Item Fuvarlevel.Munkaido
        Set Size to 13 34
        Set Location to 95 163
        Set peAnchors to anLeftRight
        Set Label to "Fuvarral eltîltîtt ido"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelUAMennyiseg is a dbForm
        Entry_Item Fuvarlevel.UAMennyiseg
        Set Size to 13 34
        Set Location to 110 163
        Set peAnchors to anLeftRight
        Set Label to "Fuvar sor†n elfogyasztott uzemanyagmennyiseg"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oFuvarlevelUAEgysegar is a dbForm
        Entry_Item Fuvarlevel.UAEgysegar
        Set Size to 13 34
        Set Location to 125 163
        Set peAnchors to anLeftRight
        Set Label to "Fuvar sor†n elhaszn†lt Åzemanyag aktu†lis †ra"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oGepkocsiTipus is a dbForm
        Entry_Item Gepkocsi.Tipus
        Set Size to 13 186
        Set Location to 140 163
        Set peAnchors to anLeftRight
        Set Label to "J†rmu t°pusa"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oSoforNev is a dbForm
        Entry_Item Sofor.Nev
        Set Size to 13 366
        Set Location to 155 163
        Set peAnchors to anLeftRight
        Set Label to "Sofor neve"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oTermekMegnevezes is a dbForm
        Entry_Item Termek.Megnevezes
        Set Size to 13 186
        Set Location to 170 163
        Set peAnchors to anLeftRight
        Set Label to "TermÇk megnevezÇse"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 

    Object oTermekEgysegar is a dbForm
        Entry_Item Termek.Egysegar
        Set Size to 13 54
        Set Location to 185 163
        Set peAnchors to anLeftRight
        Set Label to "TermÇk egysÇg†ra"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 158
        Set Label_row_Offset to 0
    End_Object 


End_Object 
