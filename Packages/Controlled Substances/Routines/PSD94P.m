PSD94P ;DAL/JCH - PSD REMOVE DETOX/X-WAIVER POST INSTALL ; 07/18/23 08:46
 ;;3.0;CONTROLLED SUBSTANCES ;**94**;13 Feb 97;Build 4
 ;
 ; Reference to OUT^XPDMENU in ICR #1157
 ;
 Q
 ;
POST ;The listed option is placed out of order
 D BMES^XPDUTL("...Placing menu options out of order...")
 N PSDOO,AA,I S PSDOO="PLACED OUT OF ORDER BY PSD*3*94"
 F I=1:1:1 S AA=$P($T(OO+I),";;",2) Q:AA=""  D OUT^XPDMENU(AA,PSDOO)
 Q
 ;
 ;
OO ;
 ;;PSD DEA SUBOXONE
