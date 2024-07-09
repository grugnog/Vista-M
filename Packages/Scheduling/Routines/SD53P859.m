SD53P859 ;BAH/DF,GN - SD*5.3*859 Post Init Routine ;Aug 8, 2023
 ;;5.3;Scheduling;**859**;Aug 13, 1993;Build 10
 ;
 ; load new Stop codes to the SD TELE HEALTH STOP CODE FILE #40.6.
 ; cleanup of the SDEC APPT REQUEST file (#409.85).  
 ; *** post install can be rerun with no harm ***
 ;
 Q
EN ; entry point
 N ERRCNT,FDA,SDIEN,ERR,STP,DA,DIK
 S ERRCNT=0
 D MES^XPDUTL("")
 D MES^XPDUTL("Updating of SD TELE HEALTH STOP CODE FILE...")
 ;Add new codes
 D MES^XPDUTL("") H 1
 F STP=129,569 D
 . I $O(^SD(40.6,"B",STP,"")) D MES^XPDUTL(STP_"    already on file") Q
 . I '$$CHKSTOP^SDTMPEDT(STP) D MES^XPDUTL(STP_"    ** Not added, invalid stop code") Q
 . S FDA(40.6,"+1,",.01)=STP D UPDATE^DIE("","FDA","SDIEN","ERR")
 . D:'$D(ERR) MES^XPDUTL(STP_"    added stop code")
 . I $D(ERR) D MES^XPDUTL(STP_" failed an attempt to add to the file.") S ERRCNT=ERRCNT+1
 . K FDA,SDIEN,ERR
 ;Delete removed codes
 S DIK="^SD(40.6,"
 F STP=290:1:293,296,297,573 D
 . S DA=$O(^SD(40.6,"B",STP,""))
 . I 'DA D MES^XPDUTL(STP_"    already deleted") Q
 . D ^DIK
 . D MES^XPDUTL(STP_"    deleted")
 D MES^XPDUTL("")
 D MES^XPDUTL("Stop Code Update completed. "_ERRCNT_" error(s) found.")
 D MES^XPDUTL("") H 2
 D CLEANUP
 Q
 ;
CLEANUP ; *** Begin cleanup utility ***
 ;  TMP had stored in an IEN in the PARENT REQUEST field (#43.8) and this field is reserved for MRTC appts made by VSE.
 ;  This utility will follow the logic below to find and erase erroneous Parent ptr fields, so VSE can once again Cancel those appointments normally.
 N DFN,PARENT,CHILD,MRTC,FIX,TOT,QQ,RR
 S (FIX,TOT)=0
 D MES^XPDUTL("")
 D MES^XPDUTL("Correcting the SDEC APPT REQUEST file...")
 D MES^XPDUTL("")
 D MES^XPDUTL("   An email with the results of this cleanup will be sent to the installer ")
 D MES^XPDUTL("   Please forward this email to the Schedulers for their awareness.")
 D MES^XPDUTL("") H 4
 ;
 S QQ=$$FMADD^XLFDT(DT,-730)  ;start look back 2 years
 F  S QQ=$O(^SDEC(409.85,"AC",QQ)) Q:'QQ  D
 . F RR=0:0 S RR=$O(^SDEC(409.85,"AC",QQ,RR)) Q:'RR  D
 .. F CHILD=0:0 S CHILD=$O(^SDEC(409.85,"AC",QQ,RR,CHILD)) Q:'CHILD  D
 ... S TOT=TOT+1
 ... S MRTC=$P($G(^SDEC(409.85,CHILD,3)),U)       ;mrtc ind
 ... S PARENT=$P($G(^SDEC(409.85,CHILD,3)),U,5)   ;parent ptr
 ... I 'MRTC,PARENT D                             ;child mrtc ind is 0 and child had parent ptr ?Rec in error?
 .... S DFN=$$GET1^DIQ(409.85,CHILD,.01,"I")
 .... I '$D(^SDEC(409.85,PARENT)) D ERASE               ;error if child points to non-existent parent, erase parent ptr
 .... I $D(^SDEC(409.85,PARENT)) D
 ..... I '$D(^SDEC(409.85,PARENT,2,"B",CHILD)) D ERASE  ;error if child points to an existing parent & parent does not reference child, erase parent ptr
 S ^TMP("SDTMP",$J)=FIX
 D SNDMAIL
 D MES^XPDUTL("")
 D MES^XPDUTL("Update completed. Records examined: "_TOT)
 D MES^XPDUTL("                     Records fixed: "_FIX)
 D MES^XPDUTL("") H 1
 Q
 ;
ERASE ;erase parent ptr field from this rec
 N FDA,LSTNAM1,SSN4,APPDT,CIDDT
 S FIX=FIX+1
 S FDA(409.85,CHILD_",",43.8)="@" D UPDATE^DIE("","FDA","ERR")  ;erase parent field data
 ;build text line for mailman msg
 S LSTNAM1=$E($$GET1^DIQ(2,DFN,"NAME"),1,1)
 S SSN4=$E($$GET1^DIQ(2,DFN,"SSN"),6,9)
 S APPDT=$$GET1^DIQ(409.85,CHILD,"SCHEDULED DATE OF APPT","I")
 S CIDDT=$$GET1^DIQ(409.85,CHILD,"CID/PREFERRED DATE OF APPT","I")
 W !,CHILD,?20,CIDDT
 S ^TMP("SDTMP",$J,FIX+3)="Patient: "_LSTNAM1_SSN4_$S('APPDT:" Req CID: "_$$FMTE^XLFDT(CIDDT),1:" Appt: "_$$FMTE^XLFDT(APPDT))_" has been fixed."
 Q
 ;
SNDMAIL ;send mailman to installer
 N XMSUB,XMY,XMTEXT,XMDUZ
 S ^TMP("SDTMP",$J,1)="Patient appointment date/times that were fixed are now accessible by VSE."
 S ^TMP("SDTMP",$J,3)=""
 I ^TMP("SDTMP",$J)=0 S ^TMP("SDTMP",$J,4)="** No Appointment Request Records found that needed repair."
 S XMSUB="SD TMP cleanup of MRTC parent field in SDEC APPT REQUEST file #409.85"
 S XMDUZ=.5
 S XMTEXT="^TMP(""SDTMP"",$J,"
 S XMY(DUZ)=""
 N DIFROM D ^XMD K ^TMP("SDTMP",$J)
 Q
