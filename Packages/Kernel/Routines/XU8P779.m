XU8P779 ;ISF/CLG - Post-Install for 779 ;10/25/22  12:20
 ;;8.0;KERNEL;**779**;Jul 10, 1995;Build 5
 ;Per VA Directive 6402, this routine should not be modified.
 ;  Post Installation Routine for patch XU*8.0*779
 ;
 ;  Removes entries from the REMOTE APPLICATION file (#8994.5)
 ;
 ;
 ;  EXTERNAL REFERENCES
 ;  $$FIND1^DIC       (ICR# 2051)
 ;  CLEAN^DILF        (ICR# 2054)
 ;  ^DIK              (ICR# 10013)
 ;  DELIX^DDMOD       (ICR# 2916)
 ;  CREIXN^DDMOD      (ICR# 2916)
 ;  BMES^XPDUTL       (ICR# 10141)
 ;  MES^XPDUTL        (ICR# 10141)
 ;
MAIN ; Control subroutine
 D BMES^XPDUTL("  Starting X-Ref Update on File #8994.5...")
 D XREF
 D BMES^XPDUTL("  Starting Removal of File #8994.5 entries added by XU*8.0*780...")
 D REMAPP
 Q
XREF ;Remove old Traditional Style "ACODE" X-Ref and create New Style "ACODE" X-Ref on #8994.5
 ;Fixes bug where original X-Ref was limited to 30 characters, which truncated X-Ref for some entries
 D MES^XPDUTL("  Removing ""ACODE"" Traditional Style Index in File #8994.5...")
 D DELIX^DDMOD(8994.5,.03,1,"K")
 S XU779MSG=$S('+$D(^XWB(8994.5,"ACODE")):"  Index Removed Successfully!",1:"  Index Removal Failed!")
 D MES^XPDUTL(XU779MSG)
 S XU779X("FILE")=8994.5
 S XU779X("NAME")="ACODE"
 S XU779X("USE")="S"
 S XU779X("TYPE")="R"
 S XU779X("SHORT DESCR")="Hashed value for an application's security phrase."
 S XU779X("DESCR",1)="This is the hashed value for an application's security phrase, which is"
 S XU779X("DESCR",2)="the application's entry into the REMOTE APPLICATION file (#8994.5) for"
 S XU779X("DESCR",3)="accessing the information necessary to permit the application to enroll"
 S XU779X("DESCR",4)="a remote user."
 S XU779X("VAL",1)=.03
 S XU779X("VAL",1,"SUBSCRIPT")=1
 D BMES^XPDUTL("  Creating ""ACODE"" New Style Index in File #8994.5...")
 D CREIXN^DDMOD(.XU779X,"S",.XU779RES)
 S XU779MSG=$S(+XU779RES>0:"  Index Created Successfully!",1:"  Index Creation Failed!")
 D MES^XPDUTL(XU779MSG)
 K XU779X,XU779MSG,XU779RES
 Q
REMAPP ; Remote Application removal of temporary entries added by XU*8.0*780
 N XU8ERRX,XU8DATA
 ;
 ; "NUMI VDIF" created with Patch XU*8.0*780, being removed with XU*8.0*779
 K XU8DATA
 S XU8DATA(1)="NUMI VDIF" ; Name
 S XU8ERRX=$$CLNUP(.XU8DATA) ; Remove REMOTE APPLICATION
 D MES^XPDUTL(XU8ERRX) ; XU8ERRX is "Removal success message" or "Blank if no entry exists"
 ;
 ; "BMS VDIF" created with Patch XU*8.0*780, being removed with XU*8.0*779
 K XU8DATA
 S XU8DATA(1)="BMS VDIF" ; Name
 S XU8ERRX=$$CLNUP(.XU8DATA) ; Remove REMOTE APPLICATION
 D MES^XPDUTL(XU8ERRX) ; XU8ERRX is "Removal success message" or "Blank if no entry exists"
 ;
 Q
 ;
CLNUP(XU8DATA) ; Clean up REMOTE APPLICATION entries from Patch XU*8.0*780 (if they exist)
 N XU8ERR,XU8IEN,DA,DIK
 S XU8ERR="  REMOTE APPLICATION not found: "_XU8DATA(1)
 S XU8IEN=$$FIND1^DIC(8994.5,"","X",XU8DATA(1),"B")
 I $G(XU8IEN)>0 D
 . S DIK="^XWB(8994.5,",DA=XU8IEN
 . D ^DIK
 . S XU8ERR="  REMOTE APPLICATION entry removed: "_XU8DATA(1)
 . K XU8IEN
 D CLEAN^DILF
 Q XU8ERR
