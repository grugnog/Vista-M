MDPOST83 ;HPS/JEL - MD*1*83 Post Installation Routine ; 8/4/23 2:53pm
 ;;1.0;CLINICAL PROCEDURES;**83**;Apr 01, 2004;Build 3
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
 ; This routine uses the following IAs:
 ; #10141 - MES^XPDUTL Kernel (supported)
 ; #2263 - EN^XPAR Kernel (supported)
 ;
 Q
EN ;
 ; Installing commands in the command file...
 D MES^XPDUTL(" Post install starting....updating Parameters...")
 ;
 ; CP Hemodialysis
 ; Deactivate all previous versions from XPAR
 D GETLST^XPAR(.MDKLST,"SYS","MDK GUI VERSION")
 F MDK=0:0 S MDK=$O(MDKLST(MDK)) Q:'MDK  D
 .D EN^XPAR("SYS","MDK GUI VERSION",$P(MDKLST(MDK),"^",1),0)
 ; Add and/or activate current client versions
 ; Update MD PARAMETERS with new build numbers for executables. 
 D EN^XPAR("SYS","MDK GUI VERSION","HEMODIALYSIS.EXE:1.0.83.1",1)
 ;
 D MES^XPDUTL(" MD*1.0*83 Post Init complete")
 ;
 Q
ROLLBACK ;
 D MES^XPDUTL(" Rollback starting....updating Parameters...")
 ;
 ; CP Hemodialysis
 ; Deactivate all previous versions from XPAR
 D GETLST^XPAR(.MDKLST,"SYS","MDK GUI VERSION")
 F MDK=0:0 S MDK=$O(MDKLST(MDK)) Q:'MDK  D
 .D EN^XPAR("SYS","MDK GUI VERSION",$P(MDKLST(MDK),"^",1),0)
 ; Add and/or activate previous client version
 ; Update MD PARAMETERS with new build numbers for executables. 
 D EN^XPAR("SYS","MDK GUI VERSION","HEMODIALYSIS.EXE:1.0.75.1",1)
 ;
 D MES^XPDUTL(" MD*1.0*75 Rollback complete")
 ;
 Q
