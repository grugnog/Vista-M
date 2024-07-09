PSS1P261 ;WILM/BDB - Patch PSS*1*261 Post init ;08/04/23
 ;;1.0;PHARMACY DATA MANAGEMENT;**261**;9/30/97;Build 3
 ;Per VHA Directive 2004-038 this routine should not be modified.
 ;
 Q
POST ;
 ;Place the PSS option out of order
 D BMES^XPDUTL("...Placing PSS BUPRENORPHINE VAPRODS menu option out of order...")
 D OUT^XPDMENU("PSS BUPRENORPHINE VAPRODS"," PLACED OUT OF ORDER BY PSS*1*261")
 D BMES^XPDUTL("...Out of order task complete...")
 Q
 ;
