XM8P52 ;BP/BDT - set locks for options; Feb 21, 2024@07:35:55
 ;;8.0;MAILMAN;**52**;Jul 10, 1995;Build 1
 ;Per VA Directive 6402, this routine should not be modified.
 ;Post routine for XM*8*52
 Q
 ;
POST ; Post rouitne for XM*8*52
 D SETAUDTS
 D SETLOCKS("XUPROG")
 Q
 ;
BACKOUT ; backout patch section. This wil be rollback the original data before the patch.
 D BACKOUTF
 D SETLOCKS("@")
 Q
 ;
SETAUDTS ; set AUDIT for FILES/FIELDS
 N XUI S XUI=""
 K ^XTMP("XM52 MAILMAN PATCH FILES")
 F XUI=1:1:100 S XUFILE=$T(FILES+XUI) Q:$P(XUFILE,";;",2)="$$END"  D
 . D SETAUDT($P(XUFILE,";;",2),$P(XUFILE,";;",3),"y")
 . Q
 Q
 ;
SETAUDT(XUFILE,XUFIELD,KFL) ;set Audit for a field
 ;XUFILE = file number
 ;XUIELD = field number
 ;---------------------
 N XUI,XUY,XUF S XUI=""
 F XUI=1:1:100 S XUF=$P(XUFIELD,";",XUI) Q:XUF=""  D
 . S ^XTMP("XM52 MAILMAN PATCH FILES",$J,XUFILE,XUF)=$G(^DD(XUFILE,XUF,"AUDIT"),"n")
 . DO TURNON^DIAUTL(XUFILE,XUF,KFL)
 . Q
 Q
 ;
BACKOUTF ; backout Audit fields
 N XUI S XUI=""
 K ^XTMP("XM52 MAILMAN PATCH FILES")
 F XUI=1:1:100 S XUFILE=$T(FILES+XUI) Q:$P(XUFILE,";;",2)="$$END"  D
 . D SETAUDT($P(XUFILE,";;",2),$P(XUFILE,";;",3),"n")
 . Q
 Q
 ;
PRINTFLS ;backing up patch data for the listed AUDIT files/fields
 N XUI,XUY,XUFILE S XUI=""
 F XUI=1:1:100 S XUFILE=$T(FILES+XUI) Q:$P(XUFILE,";;",2)="$$END"  D
 . D PRINTFL($P(XUFILE,";;",2),$P(XUFILE,";;",3))
 Q
 ;
PRINTFL(XUFILE,XUFIELDS) ;backing up patch data for a AUDIT single file/fields
 N XUI,XUY S XUY=""
 F XUI=1:1:100 S XUFIELD=$P(XUFIELDS,";",XUI) Q:XUFIELD=""  D
 . W !,"FILE:  ",?8,XUFILE,?15," FIELD  :",XUFIELD
 . W ?30,"AUDIT SET: ",$G(^DD(XUFILE,XUFIELD,"AUDIT"),"n")
 Q
 ;
FILES ; List files and field to set AUDIT
 ;;4.3;;.01;1;217
 ;;$$END;;
 ;
SETLOCKS(XULOCK) ; set LOCK for OPTIONS
 N XUI,XUOPTION S XUI=""
 K ^XTMP("XM52 MAILMAN PATCH FILES")
 F XUI=1:1:100 S XUOPTION=$T(OPTIONS+XUI) Q:$P(XUOPTION,";;",2)="$$END"  D
 . S XUOPTION=$P(XUOPTION,"[",2)
 . S XUOPTION=$P(XUOPTION,"]",1)
 . D SETLOCK(XUOPTION,XULOCK)
 . Q
 Q
 ;
SETLOCK(XUOP,XULOCK) ; set LOCK for OPTION
 N XUIEN,IENS
 S XUIEN="",XUOP=$G(XUOP)
 I XUOP="" Q
 S XUIEN=$O(^DIC(19,"B",XUOP,0))
 I $G(XUIEN)'>0 Q
 S IENS=XUIEN_","
 S XULOCK=$G(XULOCK,"XUPROG")
 K FDA S FDA(19,IENS,3)=XULOCK D FILE^DIE("E","FDA","ERR")
 Q
 ;
LISTLOCKS ;
 N XUI,XUOPTION S XUI=""
 K ^XTMP("XM52 MAILMAN PATCH FILES")
 F XUI=1:1:100 S XUOPTION=$T(OPTIONS+XUI) Q:$P(XUOPTION,";;",2)="$$END"  D
 . S XUOPTION=$P(XUOPTION,"[",2)
 . S XUOPTION=$P(XUOPTION,"]",1)
 . D LISTLOCK(XUOPTION)
 . Q
 Q
 ;
LISTLOCK(XUOP) ; LOCK for OPTION
 N XUIEN,IENS
 S XUIEN="",XUOP=$G(XUOP)
 I XUOP="" Q
 S XUIEN=$O(^DIC(19,"B",XUOP,0))
 I $G(XUIEN)'>0 Q
 W !,XUOP,"   ",?32,$P($G(^DIC(19,XUIEN,0)),"^",6)
 Q
 ;
OPTIONS ; lock for options
 ;;MailMan Site Parameters [XMKSP]
 ;;Manage Mailman ... [XMMGR]
 ;;AI x-Ref Purge of Received Network Messages [XMMGR-PURGE-AI-XREF]
 ;;IN Basket Purge [XMMGR-IN-BASKET-PURGE]
 ;;Purge a message [XMMGR-PURGE-MESSAGE]
 ;;Purge Messages by Origination Date [XMPURGE-BY-DATE]
 ;;Purge Unreferenced Messages [XMPURGE]
 ;;Terminate many mail users [XMMGR-TERMINATE-MANY]
 ;;Terminate one mail user [XMMGR-TERMINATE-ONE]
 ;;START background filer [XMMGR-START-BACKGROUND-FILER]
 ;;STOP background filer [XMMGR-STOP-BACKGROUND-FILER]"
 ;;Christen a domain [XMCHRIS]
 ;;Edit a script [XMSCRIPTEDIT]
 ;;Receive Messages from Another UCI [XMR-UCI-RCV]
 ;;Send Messages to Another UCI [XMR-UCI-SEND]
 ;;Sequential Media Message Reception [XMR-SEQ-RECEIVE]
 ;;Sequential Media Queue Transmission [XMS-SEQ-TRANSMIT]
 ;;Subroutine editor [XMSUBEDIT]
 ;;Toggle a script out of service [XMSCRIPTOUT]
 ;;Validation Number Edit [XMEDIT-DOMAIN-VALIDATION#]
 ;;Site Parameters [XMSITE]
 ;;Enter/Edit Directory Request Flags by Group [XMMGR-DIRECTORY-EDITGRP]
 ;;Enter/Edit Remote User [XMEDIT-REMOTE-USER]
 ;;Request Mail Directory From a Single Domain Server [XMMGR-DIRECTORY-SINGLE]
 ;;Load Remote VACO (Wang/Noava) Directory [XMMGR-DIRECTORY-VACO]
 ;;Send a TWIX via PCTS [XMNET-TWIX-SEND]
 ;;Transmit TWIX's [XMNET-TWIX-TRANSMIT]
 ;;$$END;;
