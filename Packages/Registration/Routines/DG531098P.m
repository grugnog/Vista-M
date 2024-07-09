DG531098P ;ALB/ARF - DG*5.3*1098 INSTALL UTILITY;07/12/2021 15:21pm
 ;;5.3;Registration;**1098**;Jan 26 2022;Build 13
 ;
QUIT ;No direct entry
 ;
 ;---------------------------------------------------------------------------
 ;Patch DG*5.3*1098: Environment, Pre-Install, and Post-Install entry points.
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
 D BMES^XPDUTL(">>> Beginning the DG*5.3*1098 Post-install routine...")
 D POST1
 D POST2
 D BMES^XPDUTL(">>> Patch DG*5.3*1098 - Post-install complete.")
 Q
 ;
POST1 ; Add WORLD WAR II eligibility to ELIGIBILITY CODE (#8) file
 ;
 NEW DGEC,DGPH,DGFDA,DGERR
 S DGEC="WORLD WAR II"
 D BMES^XPDUTL(" o Adding 'WORLD WAR II' to the ELIGIBILITY CODE (#8) file.")
 S DGPH=$$FIND1^DIC(8.1,"","X",DGEC)
 I 'DGPH D  Q
 . D BMES^XPDUTL("*** ERROR! ***")
 . D MES^XPDUTL("  - WORLD WAR II entry missing from MAS ELIGIBILITY CODE (#8.1) file")
 . D MES^XPDUTL("  - Submit a YOUR IT Services ticket with the Enterprise Service Desk")
 . D MES^XPDUTL("    for assistance.")
 I $$FIND1^DIC(8,"","X",DGEC) D  Q
 . D BMES^XPDUTL("*** WORLD WAR II entry already exists... No action required.")
 ; Add entry to file
 S DGFDA(8,"+1,",.01)=DGEC
 S DGFDA(8,"+1,",.12)="0"
 S DGFDA(8,"+1,",1)="B"
 S DGFDA(8,"+1,",2)="WWII"
 S DGFDA(8,"+1,",3)=2
 S DGFDA(8,"+1,",4)="Y"
 S DGFDA(8,"+1,",5)=DGEC
 S DGFDA(8,"+1,",6)=""
 S DGFDA(8,"+1,",7)=1
 S DGFDA(8,"+1,",8)=DGEC
 S DGFDA(8,"+1,",9)="VA STANDARD"
 S DGFDA(8,"+1,",11)="VA"
 D UPDATE^DIE("E","DGFDA","","DGERR")
 I '$D(DGERR) D BMES^XPDUTL(" o WORLD WAR II successfully added to ELIGIBILITY CODE (#8) file.")
 I $D(DGERR) D
 . D BMES^XPDUTL("*** ERROR! ***")
 . D MES^XPDUTL("  - WORLD WAR II was NOT successfully added to the ELIGIBILITY CODE (#8) file.")
 . D MES^XPDUTL("  - Submit a YOUR IT Services ticket with the Enterprise Service Desk")
 . D MES^XPDUTL("    for assistance.")
 Q
POST2 ; Set WORLD WAR I eligibility code to INACTIVE in the ELIGIBILITY CODE (#8) file
 ;
 NEW DGEC,DGPH,DGFDA,DGERR
 S DGEC="WORLD WAR I"
 D BMES^XPDUTL(" o Setting 'WORLD WAR I' entry in the ELIGIBILITY CODE (#8) file to INACTIVE.")
 S DGPH=$$FIND1^DIC(8,"","X",DGEC)  ;find the IEN of the WORLD WAR I entry in file #8 ELIGIBILITY CODE file
 I 'DGPH D  Q
 . D BMES^XPDUTL("*** ERROR! ***")
 . D MES^XPDUTL("  - WORLD WAR I entry missing from ELIGIBILITY CODE (#8) file")
 . D MES^XPDUTL("  - Submit a YOUR IT Services ticket with the Enterprise Service Desk")
 . D MES^XPDUTL("    for assistance.")
 ; Quit if the INACTIVE field is already set to YES
 I $$GET1^DIQ(8,DGPH,6,"I") D  Q
 . D BMES^XPDUTL("*** WORLD WAR I is already set to INACTIVE...No action required.")
 ; Set the INACTIVE field in the WORLD WAR I entry in the ELIGIBILITY CODE (#8) file
 S DGFDA(8,DGPH_",",6)=1   ;the INACTIVE field (#6) is set to 1-YES
 D UPDATE^DIE("E","DGFDA","","DGERR")
 I '$D(DGERR) D BMES^XPDUTL(" o WORLD WAR I entry successfully set to INACTIVE in ELIGIBILITY CODE (#8) file.")
 I $D(DGERR) D
 . D BMES^XPDUTL("*** ERROR! ***")
 . D MES^XPDUTL("  - WORLD WAR I entry was NOT successfully set to INACTIVE in the ELIGIBILITY CODE (#8) file.")
 . D MES^XPDUTL("  - Submit a YOUR IT Services ticket with the Enterprise Service Desk")
 . D MES^XPDUTL("    for assistance.")
 Q 
