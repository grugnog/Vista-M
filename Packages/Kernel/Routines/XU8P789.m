XU8P789 ;VISS/BT - Post-Install for XU*8*789 ; Oct 17, 2023@04:58:13
 ;;8.0;KERNEL;**789**;Jul 10, 1995;Build 15
 ;Per VA Directive 6402, this routine should not be modified.
 Q
 ;
POST ; Build new cross-reference in the COMPONENT file (#20)
 N XUXR,XURES,XUOUT
 S XUXR("FILE")=20
 S XUXR("NAME")="ASIG"
 S XUXR("TYPE")="MU"
 S XUXR("USE")="A"
 S XUXR("EXECUTION")="R"
 s XUXR("ACTIVITY")="IR"
 S XUXR("SHORT DESCR")="Update the SIGNATURE BLOCK PRINTED NAME in the New Person file, if necessary."
 S XUXR("DESCR",1)="If this entry in the Name Components file corresponds to an "
 S XUXR("DESCR",2)="entry in the New Person file, this MUMPS cross-reference "
 S XUXR("DESCR",3)="updates the SIGNATURE BLOCK PRINTED NAME field (#20.2) in "
 S XUXR("DESCR",4)="the New Person file when the Family Name, Given Name, "
 S XUXR("DESCR",5)="Middle Name, and/or Suffix are changed."
 S XUXR("SET")="I '$G(XUNOSIGT),X(1)=200,X(2)=.01 N COMP,DIERR,FDA,MSG,SIG,XUNOSIGT"
 S XUXR("SET")=XUXR("SET")_" S XUNOSIGT=1,COMP(""FAMILY"")=X(4),COMP(""GIVEN"")=X(5),COMP(""MIDDLE"")=X(6),"
 S XUXR("SET")=XUXR("SET")_"COMP(""SUFFIX"")=X(7),FDA(200,X(3),20.2)=$$NAMEFMT^XLFNAME(.COMP,""G"") D FILE^DIE("""",""FDA"",""MSG"")"
 S XUXR("KILL")="Q"
 S XUXR("VAL",1)=.01
 S XUXR("VAL",1,"COLLATION")="F"
 S XUXR("VAL",2)=.02
 S XUXR("VAL",2,"COLLATION")="F"
 S XUXR("VAL",3)=.03
 S XUXR("VAL",3,"COLLATION")="F"
 S XUXR("VAL",4)=1
 S XUXR("VAL",4,"COLLATION")="F"
 S XUXR("VAL",5)=2
 S XUXR("VAL",5,"COLLATION")="F"
 S XUXR("VAL",6)=3
 S XUXR("VAL",6,"COLLATION")="F"
 S XUXR("VAL",7)=5
 S XUXR("VAL",7,"COLLATION")="F"
 D CREIXN^DDMOD(.XUXR,"k",.XURES,"XUOUT")
 Q
