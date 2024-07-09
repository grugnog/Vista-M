DI222P26 ;OAKFO/RSD - Post Install for patch 26 ; Aug 01, 2023@13:13:01
 ;;22.2;VA FileMan;**26**;Jan 05, 2016;Build 1
 ;Per VA Directive 6402, this routine should not be modified.
 ;
EN ; clean up LANGUAGE File "D: cross reference
 N C,X,Y,Z,DIK
 S X(1)="   ** The post routine will check the LANGUAGE File (#.85) for corruption. **",X(2)=" "
 D BMES^XPDUTL(.X)
 ;Kill current cross reference
 K ^DI(.85,"D")
 S DIK="^DI(.85,",DIK(1)=".03^D"
 ;re-index THREE LETTER CODE field (#.03)
 D ENALL^DIK
 ;Check all entries for ALTERNATE THREE LETTER CODE field (#05) 
 S C=0 F  S C=$O(^DI(.85,C)) Q:'C  S Z=$G(^(C,0)),X=$P(Z,U,3),Y=$P(Z,U,5) D:Y]""
 .;check for duplicate, if not set "D" cross ref as mnemonic
 . I X'=Y S ^DI(.85,"D",Y,C)=1 Q
 .;remove duplicate and save
 . S $P(Z,U,5)="",^DI(.85,C,0)=Z
 . Q
 Q
