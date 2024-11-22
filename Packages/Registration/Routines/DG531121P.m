DG531121P ;ALB/JDB - DG*5.3*1121 INSTALL UTILITY;04/10/2024 15:21pm
 ;;5.3;Registration;**1121**;Apr 10 2024;Build 14
 ;
QUIT ;No direct entry
 ;
 ;---------------------------------------------------------------------------
 ;Patch DG*5.3*1121: Environment, Pre-Install, and Post-Install entry points.
 ;---------------------------------------------------------------------------
 ;
 ; Reference to BMES^XPDUTL supported by ICR #10141
 ; Reference to MES^XPDUTL supported by ICR #10141
 ; Reference to DIEZ^DIKCUTL3 supported by ICR #3352
 ;
ENV ;Main entry point for Environment check
 Q
 ;
PRE ;Main entry point for Pre-Install items
 ;
 Q
 ;
POST ;Main entry point for Post-Install items
 ;
 D BMES^XPDUTL(">>> Beginning the DG*5.3*1121 Post-install routine...")
 D POST1
 D BMES^XPDUTL(">>> Patch DG*5.3*1121 - Post-install complete.")
 Q
 ;
POST1 ;Recompile all compiled input templates
 ;Recompile all compiled input templates that contain specific fields.
 ;This is needed because the data dictionary definition of these fields
 ;has changed and they are being exported via KIDS.
 ;
 N DGFLD
 ;
 D BMES^XPDUTL(">>> Recompile all compiled input templates that contain the following fields:")
 ;
 D BMES^XPDUTL(" o PHONE NUMBER [WORK] (#.132) field in the PATIENT (#2) file")
 ; Build array of file and field numbers for top-level file and fields being exported
 ; array format: DGFLD(file#,field)=""
 S DGFLD(2,.132)=""  ;PHONE NUMBER [WORK] (#.132) field
 ; Recompile all compiled input templates that contain the fields in the DGLFD array passed by reference 
 ; The output of the template compile utility (template and routine names) may differ at each site installing
 ; the patch. The templates and routine names listed will not be captured in the INSTALL file (#9.7).
 D DIEZ^DIKCUTL3(2,.DGFLD)
 ;
 D BMES^XPDUTL(">>> Re-compile completed.")
 ;
 Q
