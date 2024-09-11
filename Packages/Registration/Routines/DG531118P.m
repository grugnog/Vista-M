DG531118P ;ALB/JDB - DG*5.3*1118 INSTALL UTILITY;04/10/2024 15:21pm
 ;;5.3;Registration;**1118**;Apr 10 2024;Build 7
 ;
QUIT ;No direct entry
 ;
 ;---------------------------------------------------------------------------
 ;Patch DG*5.3*1118: Environment, Pre-Install, and Post-Install entry points.
 ;---------------------------------------------------------------------------
 ;
 ; Reference to BMES^XPDUTL supported by ICR #10141
 ; Reference to MES^XPDUTL supported by ICR #10141
 ;
ENV ;Main entry point for Environment check
 Q
 ;
PRE ;Main entry point for Pre-Install items
 ;
 D BMES^XPDUTL(">>> Beginning the DG*5.3*1118 Pre-install routine...")
 D PRE1
 D BMES^XPDUTL(">>> Patch DG*5.3*1118 - Pre-install complete.")
 Q
 ;
PRE1 ; find entries in INCONSISTENT DATA ELEMENTS 49 and 50 and check their names
 ;
 N DGNDX,DGOUT
 S DGOUT=0
 F DGNDX=49,50 D PRE2(DGNDX) Q:DGOUT
 Q
 ; 
PRE2(DGNDX) ; Find and compare NAME (Field #.01) in INCONSISTENT DATA ELEMENTS to gold standard
 ; and reset if it doesn't match
 ;
 N DGFDA,DGNM,DGXNM
 I DGNDX=49 S DGNM="INSURANCE YES BUT NONE ACTIVE"
 I DGNDX=50 S DGNM="INSUR. NOT YES BUT SOME ACTIVE"
 D BMES^XPDUTL(" o Finding entry "_DGNM_" in INCONSISTENT")
 D MES^XPDUTL("   DATA ELEMENTS (#38.6) file.")
 ;NOTE:  REGULAR FILENAME LOOKUP VIA FIND1^DIC WON'T WORK IF THE NAME DOESN'T MATCH
 i DGNM=$P($G(^DGIN(38.6,DGNDX,0)),"^",1) D  Q                         ; names match, move on
 . D BMES^XPDUTL(" o Entry "_DGNM_" did not need to be reset.")
 ;
 ; NAME does not match
 S DGFDA(38.6,DGNDX_",",.01)=DGNM
 D UPDATE^DIE("E","DGFDA","","DGERR")
 I '$D(DGERR) D  Q
 .  D BMES^XPDUTL(" o "_DGNM_" entry NAME field (#.01) reset successfully.")
 ;
 S DGOUT=1
 D BMES^XPDUTL("*** ERROR! ***")
 D BMES^XPDUTL(" o There is a problem with the NAME field (#.01) for entry "_DGNDX_" in the")
 D MES^XPDUTL("   INCONSISTENT DATA ELEMENTS file (#38.6) that could not be reconciled.")
 D MES^XPDUTL("  - Submit a YOUR IT Services ticket with the Enterprise Service Desk")
 D MES^XPDUTL("    for assistance.")
 ;
 Q
 ;
POST ;Main entry point for Post-Install items
 ;
 D BMES^XPDUTL(">>> Beginning the DG*5.3*1118 Post-install routine...")
 D POST1
 D POST2
 D BMES^XPDUTL(">>> Patch DG*5.3*1118 - Post-install complete.")
 Q
 ;
POST1 ; Update PERIOD OF SERVICE File (#21) entry for POST-KOREAN
 ; END DATE Field (#.05) will be set to "OCT 31, 1955"
 ; BRIEF DESCRIPTION Field (#20) will be set to "2/1/1955-10/31/1955"
 ;
 N DGEC,DGPH,DGFDA,DGERR
 S DGEC="POST-KOREAN"
 D BMES^XPDUTL(" o Finding entry POST-KOREAN in PERIOD OF SERVICE (#21) file.")
 S DGPH=$$FIND1^DIC(21,"","X",DGEC)
 I 'DGPH D  Q
 . D BMES^XPDUTL("*** ERROR! ***")
 . D MES^XPDUTL("  - POST-KOREAN entry missing from PERIOD OF SERVICE (#21) file.")
 . D MES^XPDUTL("  - Submit a YOUR IT Services ticket with the Enterprise Service Desk")
 . D MES^XPDUTL("    for assistance.")
 S DGFDA(21,DGPH_",",.05)="OCT 31, 1955"              ; resetting END DATE field (#.05)
 S DGFDA(21,DGPH_",",20)="(2/1/1955-10/31/1955)"      ; resetting BRIEF DESCRIPTION field (#20)
 D UPDATE^DIE("E","DGFDA","","DGERR")
 I '$D(DGERR) D 
 . D BMES^XPDUTL(" o POST-KOREAN entry END DATE field (#.05) and BRIEF DESCRIPTION field (#20)")
 . D MES^XPDUTL("   reset successfully.")
 I $D(DGERR) D
 . D BMES^XPDUTL("*** ERROR! ***")
 . D MES^XPDUTL("  - POST-KOREA: END DATE field (#.05) and BRIEF DESCRIPTION field (#20)")
 . D MES^XPDUTL("    reset **FAILED**.")
 . D MES^XPDUTL("  - Submit a YOUR IT Services ticket with the Enterprise Service Desk")
 . D MES^XPDUTL("    for assistance.")
 Q
 ;
POST2 ; Update PERIOD OF SERVICE File (#21) entry for VIETNAM ERA
 ; BEGIN DATE Field (#.04) will be set to "NOV 01, 1995"
 ; BRIEF DESCRIPTION Field (#20) will be set to "11/1/1955-5/7/1975"
 ;
 N DGEC,DGPH,DGFDA,DGERR
 S DGEC="VIETNAM ERA"
 D BMES^XPDUTL(" o Finding entry VIETNAM ERA in PERIOD OF SERVICE (#21) file.")
 S DGPH=$$FIND1^DIC(21,"","X",DGEC)
 I 'DGPH D  Q
 . D BMES^XPDUTL("*** ERROR! ***")
 . D MES^XPDUTL("  - VIETNAM ERA entry missing from PERIOD OF SERVICE (#21) file.")
 . D MES^XPDUTL("  - Submit a YOUR IT Services ticket with the Enterprise Service Desk")
 . D MES^XPDUTL("    for assistance.")
 S DGFDA(21,DGPH_",",.04)="NOV 01, 1955"             ; resetting BEGIN DATE field (#.04)
 S DGFDA(21,DGPH_",",20)="(11/1/1955-5/7/1975)"      ; resetting BRIEF DESCRIPTION field (#20)
 D UPDATE^DIE("E","DGFDA","","DGERR")
 I '$D(DGERR) D
 . D BMES^XPDUTL(" o VIETNAM ERA entry BEGIN DATE field (#.04) and BRIEF DESCRIPTION field (#20)")
 . D MES^XPDUTL("   reset successfully.")
 I $D(DGERR) D
 . D BMES^XPDUTL("*** ERROR! ***")
 . D MES^XPDUTL("  - VIETNAM ERA: BEGIN DATE field (#.04) and BRIEF DESCRIPTION field (#20)")
 . D MES^XPDUTL("    reset **FAILED**.")
 . D MES^XPDUTL("  - Submit a YOUR IT Services ticket with the Enterprise Service Desk")
 . D MES^XPDUTL("    for assistance.")
 Q
