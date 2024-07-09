DI222P25 ;OAKFO/REM - Post Install for patch 24 ; FEB 05, 2023@13:20:47
 ;;22.2;VA FileMan;**25**;Jan 05, 2016;Build 6
 ;Per VA Directive 6402, this routine should not be modified.
 ;
EN ; clean up AUDIT File #1.1
 D BMES^XPDUTL("   ** The post routine will check the Audit File (#1.1) for corruption. **")
 D MES^XPDUTL("    ** This might take awhile. **")
 N X,DA,DIA,DIK
 S DIK="^DIA("
 S X=0 F  S X=$O(^DIA(X)) Q:'X  I '$D(^DIC(X,0)) D
 .S (DIA,DA)=X D ^DIK
 Q
