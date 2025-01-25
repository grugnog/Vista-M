MAGIP357 ;WOIFO/JSL - Install code for MAG*3.0*357 IMPORTER III ; 05 SEP 2024@12:17:21
 ;;3.0;IMAGING;**357**;Mar 19, 2002;Build 11
 ;; Per VA Directive 6402, this routine should not be modified.
 ;; +---------------------------------------------------------------+
 ;; | Property of the US Government.                                |
 ;; | No permission to copy or redistribute this software is given. |
 ;; | Use of unreleased versions of this software requires the user |
 ;; | to execute a written test agreement with the VistA Imaging    |
 ;; | Development Office of the Department of Veterans Affairs,     |
 ;; | telephone (301) 734-0100.                                     |
 ;; | The Food and Drug Administration classifies this software as  |
 ;; | a medical device.  As such, it may not be changed in any way. |
 ;; | Modifications to this software may result in an adulterated   |
 ;; | medical device under 21CFR820, the use of which is considered |
 ;; | to be a violation of US Federal Statutes.                     |
 ;; +---------------------------------------------------------------+
 ;;
 ; There are no environment checks here but the MAGIP357 has to be
 ; referenced by the "Environment Check Routine" field of the KIDS
 ; build so that entry points of the routine are available to the
 ; KIDS during all installation phases.
 Q
 ;
 ;+++++ INSTALLATION ERROR HANDLING
ERROR ;
 S:$D(XPDNM) XPDABORT=1
 ;--- Display the messages and store them to the INSTALL file
 D DUMP^MAGUERR1(),ABTMSG^MAGKIDS()
 Q
 ;
 ;***** POST-INSTALL CODE
POS ;
 N CALLBACK,CNT,I,J,IEN,TAG,VAL,DIK
 D CLEAR^MAGUERR(1)
 ;
 ;--- Link new remote procedures to the Broker context option.
 S X=$$ADDRPCS("RPCLST^MAGIP357","MAG DICOM VISA")
 ;
 D CLEANUP19("MAG DICOM VISA")  ; Delete dangling RPC pointers for an option
 ;
 ;ReIndex MAG WORK ITEM file#2006.941
 L +^MAGV(2006.941):1999999
 S DIK="^MAGV(2006.941,"
 K ^MAGV(2006.941,"B")
 K ^MAGV(2006.941,"C")
 K ^MAGV(2006.941,"H")
 K ^MAGV(2006.941,"HH")
 K ^MAGV(2006.941,"I")
 K ^MAGV(2006.941,"T")
 D IXALL^DIK
 L -^MAGV(2006.941)
 ;
 ;--- Send the notification e-mail
 D BMES^XPDUTL("Post Install Mail Message: "_$$FMTE^XLFDT($$NOW^XLFDT))
 D INS^MAGQBUT4(XPDNM,DUZ,$$NOW^XLFDT,XPDA)
 Q
 ;
 ;***** PRE-INSTALL CODE
PRE ;
 N OPTNAME,OPTIEN,OPTIEN2,RPCIEN,DIERR,IENS,MAGFDA,NAME,MAGMSG
 ;
 S NAME="MAGV RAD STAT COMPLETE"
 S OPTNAME="MAG DICOM VISA"
 S OPTIEN=$$LKOPT^XPDMENU(OPTNAME)
 I OPTIEN D 
 . S OPTIEN2=$$FIND1^DIC(19.05,","_OPTIEN_",",,NAME,"",,"MAGMSG")
 . I OPTIEN2 D   ; Delete RPC from option file
 . . K MAGFDA,MAGMSG,DIERR
 . . S IENS=OPTIEN2_","_OPTIEN_","
 . . S MAGFDA(19.05,IENS,.01)="@"
 . . D UPDATE^DIE(,"MAGFDA",,"MAGMSG")
 . . I $G(DIERR) W !,"Error removing RPC="_NAME_" from option "_OPTNAME
 . . Q
 . Q
 ;
 S RPCIEN=$$FIND1^DIC(8994,,,NAME,"B",,"MAGMSG")
 I $G(DIERR) Q
 I RPCIEN'>0 Q
 ;--- Remove RPC, will be added later with the updated parameter name
 K MAGFDA,MAGMSG,DIERR
 S IENS=RPCIEN_","
 S MAGFDA(8994,IENS,.01)="@"
 D UPDATE^DIE(,"MAGFDA",,"MAGMSG")
 I $G(DIERR) W !,"Error removing RPC="_NAME
 Q
 ;
ADDRPCS(RPCNAMES,OPTNAME,FLAGS) ;
 N IENS,MAGFDA,MAGMSG,MAGRC,NAME,OPTIEN,RPCIEN,SILENT
 ;
 ;=== Validate and prepare parameters
 S FLAGS=$G(FLAGS),SILENT=(FLAGS["S")
 ;--- Single RPC name or a list?
 I $D(RPCNAMES)<10  Q:$G(RPCNAMES)?." " $$IPVE^MAGUERR("RPCNAMES")  D
 . N I,GET
 . ;--- Get the list from the source code
 . S GET=$P(RPCNAMES,"^")_"+I^"_$P(RPCNAMES,"^",2)
 . S GET="S NAME=$$TRIM^XLFSTR($P($T("_GET_"),"";;"",2))"
 . F I=1:1  X GET  Q:NAME=""  S RPCNAMES(NAME)=""
 . Q
 ;--- Name of the menu option (RPC Broker context)
 S OPTIEN=$$LKOPT^XPDMENU(OPTNAME)
 Q:OPTIEN'>0 $$ERROR^MAGUERR(-44,,OPTNAME)
 ;
 ;=== Add the names to the multiple
 D:'SILENT BMES^MAGKIDS("Attaching RPCs to the '"_OPTNAME_"' option...")
 S NAME="",MAGRC=0
 F  S NAME=$O(RPCNAMES(NAME))  Q:NAME=""  D  Q:MAGRC<0
 . D:'SILENT MES^MAGKIDS(NAME)
 . ;--- Check if the remote procedure exists
 . S RPCIEN=$$FIND1^DIC(8994,,"X",NAME,"B",,"MAGMSG")
 . I $G(DIERR)  S MAGRC=$$DBS^MAGUERR("MAGMSG",8994)  Q
 . I RPCIEN'>0  S MAGRC=$$ERROR^MAGUERR(-45,,NAME)  Q
 . ;--- Add the remote procedure to the multiple
 . S IENS="?+1,"_OPTIEN_","
 . S MAGFDA(19.05,IENS,.01)=RPCIEN
 . D UPDATE^DIE(,"MAGFDA",,"MAGMSG")
 . I $G(DIERR)  S MAGRC=$$DBS^MAGUERR("MAGMSG",19.05,IENS)  Q
 . ;---
 . Q
 I MAGRC<0  D:'SILENT MES^MAGKIDS("ABORTED!")  Q MAGRC
 ;
 ;=== Success
 D:'SILENT MES^MAGKIDS("RPCs have been successfully attached.")
 Q 0
 ;
 ;+++++ LIST OF NEW REMOTE PROCEDURES
RPCLST ;
 ;;MAGV GET WORK ITEM MODALITIES
 ;;MAGV GET WORK ITEM PROCEDURES
 ;;MAGV GET WORK ITEM SOURCES
 ;;MAGV UPDATE WORK ITEM SERVICE
 ;;MAGV RAD STAT COMPLETE
 Q 0
 ;
CLEANUP19(OPTNAME)   ; Delete dangling RPC pointers for an option 
 N IEN,OPTIEN,RPCIEN
 S OPTIEN=$$LKOPT^XPDMENU(OPTNAME)
 Q:'OPTIEN
 S RPCIEN=0
 F  S RPCIEN=$O(^DIC(19,OPTIEN,"RPC","B",RPCIEN)) Q:'RPCIEN  D
 . Q:$D(^XWB(8994,RPCIEN))
 . ; RPC is not found
 . S IEN=$O(^DIC(19,OPTIEN,"RPC","B",RPCIEN,0))
 . K ^DIC(19,OPTIEN,"RPC","B",RPCIEN)
 . K:IEN ^DIC(19,OPTIEN,"RPC",IEN)
 . Q
 Q
