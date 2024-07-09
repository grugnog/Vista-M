MAGJENCK ;ISI/JHC - Environment check ep; 10/17/2022
 ;;3.0;IMAGING;**341**;Dec 21, 2022;Build 28
 ;; Per VHA Directive 2004-038, this routine should not be modified.
 ;; +---------------------------------------------------------------+
 ;; | Property of the US Government.                                |
 ;; | No permission to copy or redistribute this software is given. |
 ;; | Use of unreleased versions of this software requires the user |
 ;; | to execute a written test agreement with the VistA Imaging    |
 ;; | Development Office of the Department of Veterans Affairs,     |
 ;; | telephone (301) 734-0100.                                     |
 ;; | The Food and Drug Administration classifies this software as  |
 ;; | a medical device.  As such, it may not be changed in any way. |
 ;; | Modifications to this software may result in an adulterated   |
 ;; | medical device under 21CFR820, the use of which is considered |
 ;; | to be a violation of US Federal Statutes.                     |
 ;; +---------------------------------------------------------------+
 ;;
 ;; ISI IMAGING;**110**
ENVCHK ; "Environment Check" for KIDS Install
 I 'XPDENV Q  ; Proceed only if in Install phase
 N MAGJKIDS S MAGJKIDS=1
 D BGCSTOP^MAGJMN1
 Q
 ;
