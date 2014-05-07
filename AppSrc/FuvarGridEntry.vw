// C:\Visual DataFlex Projects\Szallitmanyozas\AppSrc\FuvarGridEntry.vw
// FuvarGridEntry
//

Use DFClient.pkg
Use DFEntry.pkg
Use cDbCJGrid.pkg
Use cDbCJGridColumn.pkg

Use cTermekDataDictionary.dd
Use cSoforDataDictionary.dd
Use cGepkocsiDataDictionary.dd
Use cFuvarlevelDataDictionary.dd

ACTIVATE_VIEW Activate_oFuvarGridEntry FOR oFuvarGridEntry
Object oFuvarGridEntry is a dbView
    Set Location to 5 5
    Set Size to 114 409
    Set Label To "FuvarGridEntry"
    Set Border_Style to Border_Thick


    Object oTermek_DD is a cTermekDataDictionary
    End_Object 

    Object oSofor_DD is a cSoforDataDictionary
        // this lets you save a new parent DD from within child DD
        Set Allow_Foreign_New_Save_State to True
    End_Object 

    Object oGepkocsi_DD is a cGepkocsiDataDictionary
    End_Object 

    Object oFuvarlevel_DD is a cFuvarlevelDataDictionary
        Set DDO_Server To oSofor_DD
        Set DDO_Server To oTermek_DD
        Set DDO_Server To oGepkocsi_DD
        Set Constrain_File To Sofor.File_Number
    End_Object 

    Set Main_DD To oSofor_DD
    Set Server  To oSofor_DD



    Object oSoforAzonosito is a dbForm
        Entry_Item Sofor.Azonosito
        Set Size to 13 42
        Set Location to 5 38
        Set peAnchors to anLeftRight
        Set Label to "Azonosito"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 33
        Set Label_row_Offset to 0
    End_Object 

    Object oSoforNev is a dbForm
        Entry_Item Sofor.Nev
        Set Size to 13 366
        Set Location to 20 38
        Set peAnchors to anLeftRight
        Set Label to "Nev"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 33
        Set Label_row_Offset to 0
    End_Object 

    Object oDetailGrid is a cDbCJGrid
        Set Size to 66 395
        Set Location to 43 5
        Set Server to oFuvarlevel_DD
        Set Ordering to 4
        Set peAnchors to anAll
        Set psLayoutSection to "oFuvarGridEntry_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True

        Object oFuvarlevel_Fuvarszam is a cDbCJGridColumn
            Entry_Item Fuvarlevel.Fuvarszam
            Set piWidth to 67
            Set psCaption to "Fuvarszam"
        End_Object 

        Object oTermek_Azonosito is a cDbCJGridColumn
            Entry_Item Termek.Azonosito
            Set piWidth to 54
            Set psCaption to "Termek"
        End_Object 

        Object oGepkocsi_Rendszam is a cDbCJGridColumn
            Entry_Item Gepkocsi.Rendszam
            Set piWidth to 57
            Set psCaption to "Gepkocsi"
        End_Object 

        Object oSofor_Azonosito is a cDbCJGridColumn
            Entry_Item Sofor.Azonosito
            Set piWidth to 54
            Set psCaption to "Sofor"
        End_Object 

        Object oFuvarlevel_Datum is a cDbCJGridColumn
            Entry_Item Fuvarlevel.Datum
            Set piWidth to 90
            Set psCaption to "Datum"
        End_Object 

        Object oFuvarlevel_Tav is a cDbCJGridColumn
            Entry_Item Fuvarlevel.Tav
            Set piWidth to 42
            Set psCaption to "Tav"
        End_Object 

        Object oFuvarlevel_Munkaido is a cDbCJGridColumn
            Entry_Item Fuvarlevel.Munkaido
            Set piWidth to 60
            Set psCaption to "Munkaido"
        End_Object 

        Object oFuvarlevel_UAMennyiseg is a cDbCJGridColumn
            Entry_Item Fuvarlevel.UAMennyiseg
            Set piWidth to 79
            Set psCaption to "UAMennyiseg"
        End_Object 

        Object oFuvarlevel_UAEgysegar is a cDbCJGridColumn
            Entry_Item Fuvarlevel.UAEgysegar
            Set piWidth to 73
            Set psCaption to "UAEgysegar"
        End_Object 

    End_Object 

    //-----------------------------------------------------------------------
    // Create custom confirmation messages for save and delete
    // We must create the new functions and assign verify messages
    // to them.
    //-----------------------------------------------------------------------

    Function ConfirmDeleteHeader Returns Boolean
        Boolean bFail
        Get Confirm "Delete Entire Header and all detail?" to bFail
        Function_Return bFail
    End_Function 

    // Only confirm on the saving of new records
    Function ConfirmSaveHeader Returns Boolean
        Boolean bNoSave bHasRecord
        Handle  hoSrvr
        Get Server to hoSrvr
        Get HasRecord of hoSrvr to bHasRecord
        If not bHasRecord Begin
            Get Confirm "Save this NEW header?" to bNoSave
        End
        Function_Return bNoSave
    End_Function 

    // Define alternate confirmation Messages
    Set Verify_Save_MSG       to (RefFunc(ConfirmSaveHeader))
    Set Verify_Delete_MSG     to (RefFunc(ConfirmDeleteHeader))
    // Saves in header should not clear the view
    Set Auto_Clear_Deo_State to False


End_Object 
