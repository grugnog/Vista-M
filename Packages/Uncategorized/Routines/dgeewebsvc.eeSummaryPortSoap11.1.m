 ;dgeewebsvc.eeSummaryPortSoap11.1
 ;Generated for class dgeewebsvc.eeSummaryPortSoap11.  Do NOT edit. 01/02/2024 02:40:38PM
 ;;39716E6A;dgeewebsvc.eeSummaryPortSoap11
 ;
zgetDeliveryPreference(key,keyType,deliveryPreference,invocationDate,eesVersion,status,message) public {
 Do (..WebMethod("getDeliveryPreference","getDeliveryPreferenceRequest")).Invoke($this,"",.key,.keyType,.deliveryPreference,.invocationDate,.eesVersion,.status,.message) }
zgetEESummary(key,keyType,requestName,incomeYear,summary,eesVersion,invocationDate,noDataMessage) public {
 Do (..WebMethod("getEESummary","getEESummaryRequest")).Invoke($this,"",.key,.keyType,.requestName,.incomeYear,.summary,.eesVersion,.invocationDate,.noDataMessage) }
zgetEESummaryHistory(key,keyType,requestName,categories,summary,eesVersion,invocationDate,noDataMessage) public {
 Do (..WebMethod("getEESummaryHistory","getEESummaryHistoryRequest")).Invoke($this,"",.key,.keyType,.requestName,.categories,.summary,.eesVersion,.invocationDate,.noDataMessage) }
zgetEligibilityDetermination(edstatus,vpid,firstName,lastName,ssn,dob,gender,invocationDate,eesVersion,noDataMessage) public {
 Do (..WebMethod("getEligibilityDetermination","getEligibilityDeterminationRequest")).Invoke($this,"",.edstatus,.vpid,.firstName,.lastName,.ssn,.dob,.gender,.invocationDate,.eesVersion,.noDataMessage) }
zgetIVMLetterStatuses(ivmLetterCandidates,eesVersion,invocationDate) public {
 Do (..WebMethod("getIVMLetterStatuses","getIVMLetterStatusesRequest")).Invoke($this,"",.ivmLetterCandidates,.eesVersion,.invocationDate) }
zgetPersonNotification(notificationType,primaryviewNotification,linkNotification,moveNotification,invocationDate,eesVersion,noDataMessage) public {
 Quit ..WebMethod("getPersonNotification","getPersonNotificationRequest").Invoke($this,"",.notificationType,.primaryviewNotification,.linkNotification,.moveNotification,.invocationDate,.eesVersion,.noDataMessage) }
zretrieveIVMCandidates(lastPolledDateTimeStamp,candidates,numberOfCandidates,eesVersion,invocationDate) public {
 Do (..WebMethod("retrieveIVMCandidates","retrieveIVMCandidatesRequest")).Invoke($this,"",.lastPolledDateTimeStamp,.candidates,.numberOfCandidates,.eesVersion,.invocationDate) }
zsendIVMUpdates(vpid,incomeYear,btFinancialInd,sendIVMInfo,ivmLetterInfo,ivmActionCode,status,invocationDate,eesVersion) public {
 Quit ..WebMethod("sendIVMUpdates","sendIVMUpdatesRequest").Invoke($this,"",.vpid,.incomeYear,.btFinancialInd,.sendIVMInfo,.ivmLetterInfo,.ivmActionCode,.status,.invocationDate,.eesVersion) }
zupdateDeliveryPreference(key,keyType,deliveryPreferenceInfo,updateDeliveryPreference,acknowledgement,status,invocationDate,eesVersion) public {
 Do (..WebMethod("updateDeliveryPreference","updateDeliveryPreferenceRequest")).Invoke($this,"",.key,.keyType,.deliveryPreferenceInfo,.updateDeliveryPreference,.acknowledgement,.status,.invocationDate,.eesVersion) }
zupdateIVMRecordStatus(transactionId,errorText,status,invocationDate,eesVersion) public {
 Quit ..WebMethod("updateIVMRecordStatus","updateIVMRecordStatusRequest").Invoke($this,"",.transactionId,.errorText,.status,.invocationDate,.eesVersion) }
