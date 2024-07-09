SRAENV10 ;HPS/DSK - KIDS ENVIRONMENT CHECK FOR RISK ASSESSMENT DB ENVIRONMENT; Aug 18, 2023@16:00
 ;;3.0;SURGERY RISK ASSESSMENT;**10**;23 Sep 91;Build 7
 W @IOF
 W !!,"Checking for Risk Assessment database environment",!
 I '$D(^SRA(0)) D
 . W !!,$C(7),">> This patch is only installed in the Surgery Risk Assessment Database."
 . W !,"It cannot be installed at a VA Medical Center."
 . S XPDABORT=1
 Q
