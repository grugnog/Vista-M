PSO7P735 ;DAL/JCH - Post Install routine for patch PSO*7*735 ;8/9/2023
 ;;7.0;OUTPATIENT PHARMACY;**735**;DEC 1997;Build 6
 ;
 Q
 ;
POST ; Post Install Entry Point
 N DIFROM,DUZ
 S:'$G(DUZ) DUZ=.5
 ; Attach RPCs to menu
 D UPDVER("2.2.1.0")
 D RPCTOMENU
 Q
 ;
RPCTOMENU ; Add new PSO EPCS CRED RPC to PSO EPCS GUI CONTEXT menu.
 D ADDRPC("PSO EPCS CRED","PSO EPCS GUI CONTEXT")
 Q
 ;
UPDVER(GUIVER) ; Update EPCS GUI version in the PSO EPCS GUI CONTEXT option file (#19) entry
 N EPOPIENS,PSOFDA,PSOERR
 S:'$L(GUIVER) GUIVER="2.2.1.0"
 S EPOPIENS=$$FIND1^DIC(19,"","X","PSO EPCS GUI CONTEXT")
 S PSOFDA(19,EPOPIENS_",",1)="EPCS GUI Context version "_GUIVER
 D FILE^DIE(,"PSOFDA","PSOERR")
 S PSOERR=$G(PSOERR("DIERR",1,"TEXT",1)) I $L(PSOERR) D BMES^XPDUTL(PSOERR)
 Q
 ;
ADDRPC(RPCNAME,OPTNAME) ; Add RPCs
 N DA,DIC
 S DIC="^DIC(19,",DIC(0)="",X=OPTNAME D ^DIC
 I Y<0 D  Q
 . D MES^XPDUTL("Cannot add RPC: """_RPCNAME_""" to Option: """_OPTNAME_""".")
 . D MES^XPDUTL("Cannot find Option: """_OPTNAME_""".")
 . Q
 I '$D(^XWB(8994,"B",RPCNAME)) D  Q
 . D MES^XPDUTL("Cannot add RPC: """_RPCNAME_""" to Option: """_OPTNAME_""".")
 . D MES^XPDUTL("Cannot find RPC: """_RPCNAME_""".")
 . Q
 S DA(1)=+Y
 S DIC=DIC_DA(1)_",""RPC"","
 S DIC(0)="L" ; LAYGO should be allowed here
 S X=RPCNAME
 D ^DIC
 I Y<0 D  Q
 . D MES^XPDUTL("Error Adding RPC: """_RPCNAME_""" to Option: """_OPTNAME_""".")
 . Q
 Q
