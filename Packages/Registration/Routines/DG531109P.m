DG531109P ;ALB/JAM - DG*5.3*1109 INSTALL UTILITY;07/12/2021 15:21pm
 ;;5.3;Registration;**1109**;Jan 26 2022;Build 13
 ;
QUIT ;No direct entry
 ;
 ;---------------------------------------------------------------------------
 ;Patch DG*5.3*1109: Environment, Pre-Install, and Post-Install entry points.
 ;---------------------------------------------------------------------------
 ;
 ; Reference to BMES^XPDUTL supported by ICR #10141
 ; Reference to MES^XPDUTL supported by ICR #10141
 ;
ENV ;Main entry point for Environment check
 Q
 ;
PRE ;Main entry point for Pre-Install items
 Q
 ;
POST ;Main entry point for Post-Install items
 ;
 D BMES^XPDUTL(">>> Beginning the DG*5.3*1109 Post-install routine...")
 D POST1
 D BMES^XPDUTL(">>> Patch DG*5.3*1109 - Post-install complete.")
 Q
 ;
POST1 ; Add SERVICE ACT eligibility to ELIGIBILITY CODE (#8) file
 ;
 NEW DGEC,DGPH,DGFDA,DGERR
 S DGEC="SERVICE ACT"
 D BMES^XPDUTL(" o Adding 'SERVICE ACT' to the ELIGIBILITY CODE (#8) file.")
 S DGPH=$$FIND1^DIC(8.1,"","X",DGEC)
 I 'DGPH D  Q
 . D BMES^XPDUTL("*** ERROR! ***")
 . D MES^XPDUTL("  - SERVICE ACT entry missing from MAS ELIGIBILITY CODE (#8.1) file")
 . D MES^XPDUTL("  - Submit a YOUR IT Services ticket with the Enterprise Service Desk")
 . D MES^XPDUTL("    for assistance.")
 I $$FIND1^DIC(8,"","X",DGEC) D  Q
 . D BMES^XPDUTL("*** SERVICE ACT entry already exists... No action required.")
 ; Add entry to file
 S DGFDA(8,"+1,",.01)=DGEC
 S DGFDA(8,"+1,",.12)="0"
 S DGFDA(8,"+1,",1)="B"
 S DGFDA(8,"+1,",2)="SA"
 S DGFDA(8,"+1,",3)=15
 S DGFDA(8,"+1,",4)="Y"
 S DGFDA(8,"+1,",5)=DGEC
 S DGFDA(8,"+1,",6)=""
 S DGFDA(8,"+1,",7)=1
 S DGFDA(8,"+1,",8)=DGEC
 S DGFDA(8,"+1,",9)="VA STANDARD"
 S DGFDA(8,"+1,",11)="VA"
 D UPDATE^DIE("E","DGFDA","","DGERR")
 I '$D(DGERR) D BMES^XPDUTL(" o SERVICE ACT successfully added to ELIGIBILITY CODE (#8) file.")
 I $D(DGERR) D
 . D BMES^XPDUTL("*** ERROR! ***")
 . D MES^XPDUTL("  - SERVICE ACT was NOT successfully added to the ELIGIBILITY CODE (#8) file.")
 . D MES^XPDUTL("  - Submit a YOUR IT Services ticket with the Enterprise Service Desk")
 . D MES^XPDUTL("    for assistance.")
 Q
