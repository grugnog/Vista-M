 ;dgeewebsvc.enrollmentDeterminationInfo.1
 ;Generated for class dgeewebsvc.enrollmentDeterminationInfo.  Do NOT edit. 01/02/2024 02:40:37PM
 ;;5A317757;dgeewebsvc.enrollmentDeterminationInfo
 ;
%BindExport(dev,Seen,RegisterOref,AllowedDepth,AllowedCapacity) public {
   i $d(Seen(+$this)) q 1
   Set Seen(+$this)=$this
   s sc = 1
 s proporef=..cancelDeclineInfo
 s proporef=..catastrophicDisabilityInfo
 s proporef=..ineligibilityFactor
 s proporef=..militarySexualTraumaInfo
 s proporef=..monetaryBenefitAwardInfo
 s proporef=..noseThroatRadiumInfo
 s proporef=..otherEligibilities
 s proporef=..presumptivePsychosisInfo
 s proporef=..primaryEligibility
 s proporef=..registrationInfo
 s proporef=..secondaryEligibilities
 s proporef=..serviceConnectionAward
 s proporef=..specialFactors
   d:RegisterOref InitObjVar^%SYS.BINDSRV($this)
   i dev'="" s t=$io u dev i $zobjexport($this_"",3)+$zobjexport($this."%%OID",3)+$zobjexport($this,3)!1 u t
 If AllowedDepth>0 Set AllowedDepth = AllowedDepth - 1
 If AllowedCapacity>0 Set AllowedCapacity = AllowedCapacity - 1/13
 s proporef=..cancelDeclineInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..catastrophicDisabilityInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..ineligibilityFactor
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..militarySexualTraumaInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..monetaryBenefitAwardInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..noseThroatRadiumInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..otherEligibilities
       i proporef'="" d
  . s idx="" i proporef'="" f  s elemoref=proporef.GetNext(.idx) q:idx=""  s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=elemoref.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc)
  q:('sc) sc
       i proporef'="",dev'="" s t=$io u dev i $zobjexport(proporef_"",3)+$zobjexport(proporef."%%OID",3)+$zobjexport(proporef,3)!1 u t
       if proporef'="",dev'="" d
       . s t=$io u dev i $zobjexport(3_"",3)!1 u t
       . s t=$io u dev i $zobjexport(proporef.Count()_"",3)!1 u t
     . for i=1:1:proporef.Count()  s t=$io u dev i $zobjexport(proporef.GetAt(i)_"",3)!1 u t
 s proporef=..presumptivePsychosisInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..primaryEligibility
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..registrationInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..secondaryEligibilities
       i proporef'="" d
  . s idx="" i proporef'="" f  s elemoref=proporef.GetNext(.idx) q:idx=""  s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=elemoref.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc)
  q:('sc) sc
       i proporef'="",dev'="" s t=$io u dev i $zobjexport(proporef_"",3)+$zobjexport(proporef."%%OID",3)+$zobjexport(proporef,3)!1 u t
       if proporef'="",dev'="" d
       . s t=$io u dev i $zobjexport(3_"",3)!1 u t
       . s t=$io u dev i $zobjexport(proporef.Count()_"",3)!1 u t
     . for i=1:1:proporef.Count()  s t=$io u dev i $zobjexport(proporef.GetAt(i)_"",3)!1 u t
 s proporef=..serviceConnectionAward
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..specialFactors
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
   Quit sc }
%Construct(initvalue) public {
	Set m%otherEligibilities=0,M%otherEligibilities=0,m%secondaryEligibilities=0,M%secondaryEligibilities=0
	Quit 1 }
%ConstructCloneInit(object,deep=0,cloned,location) public {
	Set i%otherEligibilities="",r%otherEligibilities=""
	Set i%secondaryEligibilities="",r%secondaryEligibilities=""
	Set i%"%%OID"=""
	If deep>0 {
		If $isobject(..cancelDeclineInfo)=1 Set r%cancelDeclineInfo=r%cancelDeclineInfo.%ConstructClone(1,.cloned),i%cancelDeclineInfo=""
		If $isobject(..catastrophicDisabilityInfo)=1 Set r%catastrophicDisabilityInfo=r%catastrophicDisabilityInfo.%ConstructClone(1,.cloned),i%catastrophicDisabilityInfo=""
		If $isobject(..ineligibilityFactor)=1 Set r%ineligibilityFactor=r%ineligibilityFactor.%ConstructClone(1,.cloned),i%ineligibilityFactor=""
		If $isobject(..militarySexualTraumaInfo)=1 Set r%militarySexualTraumaInfo=r%militarySexualTraumaInfo.%ConstructClone(1,.cloned),i%militarySexualTraumaInfo=""
		If $isobject(..monetaryBenefitAwardInfo)=1 Set r%monetaryBenefitAwardInfo=r%monetaryBenefitAwardInfo.%ConstructClone(1,.cloned),i%monetaryBenefitAwardInfo=""
		If $isobject(..noseThroatRadiumInfo)=1 Set r%noseThroatRadiumInfo=r%noseThroatRadiumInfo.%ConstructClone(1,.cloned),i%noseThroatRadiumInfo=""
		Set key="" For  Set value=..otherEligibilities.GetNext(.key) Quit:key=""  Set r%otherEligibilities(key)=$select(value="":"",1:value.%ConstructClone(1,.cloned)),i%otherEligibilities(key)=""
		If $isobject(..presumptivePsychosisInfo)=1 Set r%presumptivePsychosisInfo=r%presumptivePsychosisInfo.%ConstructClone(1,.cloned),i%presumptivePsychosisInfo=""
		If $isobject(..primaryEligibility)=1 Set r%primaryEligibility=r%primaryEligibility.%ConstructClone(1,.cloned),i%primaryEligibility=""
		If $isobject(..registrationInfo)=1 Set r%registrationInfo=r%registrationInfo.%ConstructClone(1,.cloned),i%registrationInfo=""
		Set key="" For  Set value=..secondaryEligibilities.GetNext(.key) Quit:key=""  Set r%secondaryEligibilities(key)=$select(value="":"",1:value.%ConstructClone(1,.cloned)),i%secondaryEligibilities(key)=""
		If $isobject(..serviceConnectionAward)=1 Set r%serviceConnectionAward=r%serviceConnectionAward.%ConstructClone(1,.cloned),i%serviceConnectionAward=""
		If $isobject(..specialFactors)=1 Set r%specialFactors=r%specialFactors.%ConstructClone(1,.cloned),i%specialFactors=""
	}
	Quit 1 }
%Destruct() public {
	If $isobject($get(r%otherEligibilities))=1,$zobjcnt(r%otherEligibilities)>1 Do r%otherEligibilities.%Disconnect()
	If $isobject($get(r%secondaryEligibilities))=1,$zobjcnt(r%secondaryEligibilities)>1 Do r%secondaryEligibilities.%Disconnect()
	Quit 1 }
%NormalizeObject() public {
	If '$system.CLS.GetModified() Quit 1
	If m%applicationDate Set:i%applicationDate'="" i%applicationDate=(..applicationDateNormalize(i%applicationDate))
	If m%calculationSource Set:i%calculationSource'="" i%calculationSource=(..calculationSourceNormalize(i%calculationSource))
	If m%compactActIndicator Set:i%compactActIndicator'="" i%compactActIndicator=(..compactActIndicatorNormalize(i%compactActIndicator))
	If m%effectiveDate Set:i%effectiveDate'="" i%effectiveDate=(..effectiveDateNormalize(i%effectiveDate))
	If m%eligibleForMedicaid Set:i%eligibleForMedicaid'="" i%eligibleForMedicaid=(..eligibleForMedicaidNormalize(i%eligibleForMedicaid))
	If m%endDate Set:i%endDate'="" i%endDate=(..endDateNormalize(i%endDate))
	If m%enrollmentCategoryName Set:i%enrollmentCategoryName'="" i%enrollmentCategoryName=(..enrollmentCategoryNameNormalize(i%enrollmentCategoryName))
	If m%enrollmentDate Set:i%enrollmentDate'="" i%enrollmentDate=(..enrollmentDateNormalize(i%enrollmentDate))
	If m%enrollmentStatus Set:i%enrollmentStatus'="" i%enrollmentStatus=(..enrollmentStatusNormalize(i%enrollmentStatus))
	If m%facilityReceived Set:i%facilityReceived'="" i%facilityReceived=(..facilityReceivedNormalize(i%facilityReceived))
	If m%medicaidLastModifiedDate Set:i%medicaidLastModifiedDate'="" i%medicaidLastModifiedDate=(..medicaidLastModifiedDateNormalize(i%medicaidLastModifiedDate))
	If m%priorityGroup Set:i%priorityGroup'="" i%priorityGroup=(..priorityGroupNormalize(i%priorityGroup))
	If m%prioritySubGroup Set:i%prioritySubGroup'="" i%prioritySubGroup=(..prioritySubGroupNormalize(i%prioritySubGroup))
	If m%recordCreatedDate Set:i%recordCreatedDate'="" i%recordCreatedDate=(..recordCreatedDateNormalize(i%recordCreatedDate))
	If m%recordModifiedDate Set:i%recordModifiedDate'="" i%recordModifiedDate=(..recordModifiedDateNormalize(i%recordModifiedDate))
	If m%userEnrolleeSite Set:i%userEnrolleeSite'="" i%userEnrolleeSite=(..userEnrolleeSiteNormalize(i%userEnrolleeSite))
	If m%userEnrolleeValidThrough Set:i%userEnrolleeValidThrough'="" i%userEnrolleeValidThrough=(..userEnrolleeValidThroughNormalize(i%userEnrolleeValidThrough))
	If m%veteran Set:i%veteran'="" i%veteran=(..veteranNormalize(i%veteran))
	Quit 1 }
%SerializeObject(serial,partial=0) public {
	try {
		Set sc=..%ValidateObject(,0) Throw:('sc) ##class(%Exception.StatusException).ThrowIfInterrupt(sc)
		Set sc=..%NormalizeObject() Throw:('sc) ##class(%Exception.StatusException).ThrowIfInterrupt(sc)
		set sc=1
	}
	catch tException {
		set sc = tException.AsStatus()
	}
	Quit sc }
%AddToSaveSet(depth=3,refresh=0) public {
	Set sc=1,intOref=+$this
	If $data(%objTX(0,intOref),index) {
		If 'refresh RETURN 1
		Set intPoref="" For  Set intPoref=$order(%objTX(1,index,2,intPoref)) Quit:intPoref=""  Kill %objTX(1,%objTX(0,intPoref),3,index),%objTX(1,index,2,%objTX(0,intPoref))
	}
	Set:'$d(index) (index,%objTX(0,intOref))=$i(%objTX(1)),%objTX(1,index)=$this Set %objTX(1,index,1)=-1
	Set Poref=r%cancelDeclineInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%catastrophicDisabilityInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%ineligibilityFactor If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%militarySexualTraumaInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%monetaryBenefitAwardInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%noseThroatRadiumInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set key=""
	For  {
		Set key=$order(r%otherEligibilities(key),1,Poref) Quit:key=""
		If $isobject(Poref)=1 Set:'$data(%objTX(0,+Poref)) %objTX(6,$i(%objTX(6)))=Poref
	}
	Set Poref=r%presumptivePsychosisInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%primaryEligibility If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%registrationInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set key=""
	For  {
		Set key=$order(r%secondaryEligibilities(key),1,Poref) Quit:key=""
		If $isobject(Poref)=1 Set:'$data(%objTX(0,+Poref)) %objTX(6,$i(%objTX(6)))=Poref
	}
	Set Poref=r%serviceConnectionAward If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%specialFactors If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
exit	Quit sc }
%ValidateObject(unused=0,checkserial=1) public {
	set sc=1
	If '$system.CLS.GetModified() Quit sc
	If m%applicationDate Set iv=..applicationDate If iv'="" Set rc=(..applicationDateIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"applicationDate",iv)
	If m%calculationSource Set iv=..calculationSource If iv'="" Set rc=(..calculationSourceIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"calculationSource",iv)
	If m%compactActIndicator Set iv=..compactActIndicator If iv'="" Set rc=(..compactActIndicatorIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"compactActIndicator",iv)
	If m%effectiveDate Set iv=..effectiveDate If iv'="" Set rc=(..effectiveDateIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"effectiveDate",iv)
	If m%eligibleForMedicaid Set iv=..eligibleForMedicaid If iv'="" Set rc=(..eligibleForMedicaidIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"eligibleForMedicaid",iv)
	If m%endDate Set iv=..endDate If iv'="" Set rc=(..endDateIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"endDate",iv)
	If m%enrollmentCategoryName Set iv=..enrollmentCategoryName If iv'="" Set rc=(..enrollmentCategoryNameIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"enrollmentCategoryName",iv)
	If m%enrollmentDate Set iv=..enrollmentDate If iv'="" Set rc=(..enrollmentDateIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"enrollmentDate",iv)
	If m%enrollmentStatus Set iv=..enrollmentStatus If iv'="" Set rc=(..enrollmentStatusIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"enrollmentStatus",iv)
	If m%facilityReceived Set iv=..facilityReceived If iv'="" Set rc=(..facilityReceivedIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"facilityReceived",iv)
	If m%medicaidLastModifiedDate Set iv=..medicaidLastModifiedDate If iv'="" Set rc=(..medicaidLastModifiedDateIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"medicaidLastModifiedDate",iv)
	If m%priorityGroup Set iv=..priorityGroup If iv'="" Set rc=(..priorityGroupIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"priorityGroup",iv)
	If m%prioritySubGroup Set iv=..prioritySubGroup If iv'="" Set rc=(..prioritySubGroupIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"prioritySubGroup",iv)
	If m%recordCreatedDate Set iv=..recordCreatedDate If iv'="" Set rc=(..recordCreatedDateIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"recordCreatedDate",iv)
	If m%recordModifiedDate Set iv=..recordModifiedDate If iv'="" Set rc=(..recordModifiedDateIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"recordModifiedDate",iv)
	If m%userEnrolleeSite Set iv=..userEnrolleeSite If iv'="" Set rc=(..userEnrolleeSiteIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"userEnrolleeSite",iv)
	If m%userEnrolleeValidThrough Set iv=..userEnrolleeValidThrough If iv'="" Set rc=(..userEnrolleeValidThroughIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"userEnrolleeValidThrough",iv)
	If m%veteran Set iv=..veteran If iv'="" Set rc=(..veteranIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"veteran",iv)
	Quit sc }
zXMLDTD(top,format,input,dtdlist)
 Quit ##class(%XML.Implementation).XMLDTD("dgeewebsvc.enrollmentDeterminationInfo",.top,.format,.input,.dtdlist)
zXMLExportInternal()
 New tag,summary,attrsVal,savelocal,aval,k,tmpPrefix,prefixDepth,hasNoContent,hasElement,topAttrs,beginprefix,endprefix,savexsiAttrs,initialxsiAttrs,initlist,initialCR,inlineFlag,popAtEnd,saveTopPrefix,saveTypesPrefix,saveAttrsPrefix,saveUsePrefix,initlist
 Set $ztrap="XMLExportInternalTrap",popAtEnd=0
 Set summary=summaryArg,initialxsiAttrs=xsiAttrs
 If group Quit $$Error^%apiOBJ(6386,"dgeewebsvc.enrollmentDeterminationInfo")
 If indentFlag Set initialCR=($extract(currentIndent,1,2)=$c(13,10))
 Set id=createId
 Set temp=""
 If id'="" {
   If $piece($get(idlist(+$this)),",",2)'="" Quit 1
   Set idlist(+$this)=id_",1"
 }
 If encoded Set initlist=$lb($get(oreflist),inlineFlagArg),oreflist=1,inlineFlag=inlineFlagArg
 If 'nocycle,('encoded||inlineFlag) {
   If $data(oreflist($this)) Quit $$Error^%apiOBJ(6296,"dgeewebsvc.enrollmentDeterminationInfo")
   Set oreflist($this)=""
 }
 Set tag=$get(topArg)
 Set tmpi=(($get(typeAttr)'="")&&(typeAttr'="dgeewebsvc.enrollmentDeterminationInfo"))
 If $IsObject(namespaces) {
     Set popAtEnd=1,saveTopPrefix=topPrefix,saveTypesPrefix=typesPrefix,saveAttrsPrefix=attrsPrefix,saveUsePrefix=usePrefix
     Set sc=namespaces.PushNodeForExport("",$get(local,0),(encoded||tmpi),"",,.topPrefix,.topAttrs,.typesPrefix,.attrsPrefix,.usePrefix)
     If 'sc Quit sc
   Set beginprefix=$select(namespaces.ElementQualified&&usePrefix:typesPrefix,1:"")
   If topAttrs'="" Set temp=temp_" "_topAttrs
   If tag="" Set tag="enrollmentDeterminationInfo"
   Set xsitype=namespaces.OutputTypeAttribute
 } Else {
   Set saveTopPrefix=topPrefix,saveTypesPrefix=typesPrefix,saveAttrsPrefix=attrsPrefix,saveUsePrefix=usePrefix
   Set typesPrefix=namespaces If (typesPrefix'=""),($extract(typesPrefix,*)'=":") Set typesPrefix=typesPrefix_":"
   If 'encoded Set namespaces=""
   Set (topPrefix,attrsPrefix,topAttrs,beginprefix)=""
   If tag="" Set tag=typesPrefix_"enrollmentDeterminationInfo"
   Set xsitype=0
 }
 Set local=+$get(local),savelocal=local
 Set endprefix="</"_beginprefix,beginprefix="<"_beginprefix
 If tmpi Set temp=temp_" "_xsiPrefix_"type="""_typesPrefix_"enrollmentDeterminationInfo"""_xsiAttrs,xsiAttrs=""
   If id'="" Set temp=" "_$select($get(soap12):soapPrefix_"id",1:"id")_"=""id"_id_""""_temp
 If encoded Set temp=temp_xsiAttrs,xsiAttrs=""
 If indentFlag Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } Set currentIndent=$select(initialCR:"",1:$c(13,10))_currentIndent_indentChars
 If tag[":" Set topPrefix=$piece(tag,":"),tag=$piece(tag,":",2)  If topPrefix'="" Set topPrefix=topPrefix_":"
 Set %xmlmsg="<"_topPrefix_tag_temp if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set attrsVal=attrsArg,attrsArg="" Set %xmlmsg=attrsVal if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set %xmlmsg=">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set val=..applicationDate
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"applicationDate"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"dateTime""",1:"")_">"_$select(val="":"",1:$translate(val," ","T")_"Z")_endprefix_"applicationDate>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..calculationSource
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"calculationSource"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"calculationSource>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..cancelDeclineInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.cancelDeclineInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"cancelDeclineInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="cancelDeclineInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.cancelDeclineInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..catastrophicDisabilityInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.catastrophicDisabilityInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"catastrophicDisabilityInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="catastrophicDisabilityInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.catastrophicDisabilityInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..effectiveDate
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"effectiveDate"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"dateTime""",1:"")_">"_$select(val="":"",1:$translate(val," ","T")_"Z")_endprefix_"effectiveDate>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..eligibleForMedicaid
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"eligibleForMedicaid"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"boolean""",1:"")_">"_$s(val:"true",1:"false")_endprefix_"eligibleForMedicaid>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..medicaidLastModifiedDate
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"medicaidLastModifiedDate"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"dateTime""",1:"")_">"_$select(val="":"",1:$translate(val," ","T")_"Z")_endprefix_"medicaidLastModifiedDate>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..endDate
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"endDate"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"dateTime""",1:"")_">"_$select(val="":"",1:$translate(val," ","T")_"Z")_endprefix_"endDate>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..enrollmentDate
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"enrollmentDate"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"dateTime""",1:"")_">"_$select(val="":"",1:$translate(val," ","T")_"Z")_endprefix_"enrollmentDate>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..enrollmentStatus
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"enrollmentStatus"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"enrollmentStatus>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..facilityReceived
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"facilityReceived"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"facilityReceived>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..enrollmentCategoryName
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"enrollmentCategoryName"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"enrollmentCategoryName>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..ineligibilityFactor
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.ineligibilityFactorInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"ineligibilityFactor "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="ineligibilityFactor",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.ineligibilityFactorInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..militarySexualTraumaInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.militarySexualTraumaInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"militarySexualTraumaInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="militarySexualTraumaInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.militarySexualTraumaInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..presumptivePsychosisInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.presumptivePsychosisInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"presumptivePsychosisInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="presumptivePsychosisInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.presumptivePsychosisInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..monetaryBenefitAwardInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.monetaryBenefitAwardInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"monetaryBenefitAwardInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="monetaryBenefitAwardInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.monetaryBenefitAwardInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..noseThroatRadiumInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.noseThroatRadiumInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"noseThroatRadiumInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="noseThroatRadiumInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.noseThroatRadiumInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set aval=..otherEligibilities
 Set k="" Set:deepFlag val=aval.GetNext(.k) If k'="" {
   If encoded {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set temp="",temp1=$parameter("dgeewebsvc.eligibilityInfo","NAMESPACE")
     Set temp1=$select((temp1'="")&&$IsObject(namespaces):namespaces.GetNamespacePrefix(temp1,.temp),1:typesPrefix)
     If soap12 { Set %xmlmsg=beginprefix_"otherEligibilities"_$select(xsitype:"",1:" "_soapPrefix_"itemType="""_temp1_$select($parameter("dgeewebsvc.eligibilityInfo","XMLSUMMARY")'="":"s_eligibilityInfo",1:"eligibilityInfo")_"""")_" "_soapPrefix_"arraySize="""_aval.Count()_""""_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     } Else { Set %xmlmsg=beginprefix_"otherEligibilities "_$select(xsitype:xsiPrefix_"type="""_soapPrefix_"Array""",1:soapPrefix_"arrayType="""_temp1_$select($parameter("dgeewebsvc.eligibilityInfo","XMLSUMMARY")'="":"s_eligibilityInfo",1:"eligibilityInfo")_"["_aval.Count()_"]""")_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } }
   }
   Else {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set %xmlmsg=beginprefix_"otherEligibilities>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
   While k'="" {
     If $IsObject(val) {
       Set id=""
       If encoded,'inlineFlag {
         Set temp=$select($parameter("dgeewebsvc.eligibilityInfo","XMLSUMMARY")'="":-1,1:1)
         Set id=+$get(idlist(temp*val))
         If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
       }
       If +id'=0 {
         Set %xmlmsg=currentIndent_beginprefix_"eligibility "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
       } Else { if id=0 Set id=$increment(idlist)
         Set topArg="eligibility",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.eligibilityInfo"),local=1,savexsiAttrs=xsiAttrs
         Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
       }
     } Else {
       Set %xmlmsg=currentIndent_beginprefix_"eligibility "_xsiPrefix_"nil=""true"""_xsiAttrs_"/>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     }
     Set val=aval.GetNext(.k)
   }
   If indentFlag Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   Set %xmlmsg=endprefix_"otherEligibilities>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..primaryEligibility
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.eligibilityInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"primaryEligibility "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="primaryEligibility",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.eligibilityInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..registrationInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.registrationInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"registrationInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="registrationInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.registrationInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..compactActIndicator
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"compactActIndicator"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"compactActIndicator>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..priorityGroup
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"priorityGroup"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"priorityGroup>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..prioritySubGroup
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"prioritySubGroup"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"prioritySubGroup>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set aval=..secondaryEligibilities
 Set k="" Set:deepFlag val=aval.GetNext(.k) If k'="" {
   If encoded {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set temp="",temp1=$parameter("dgeewebsvc.eligibilityInfo","NAMESPACE")
     Set temp1=$select((temp1'="")&&$IsObject(namespaces):namespaces.GetNamespacePrefix(temp1,.temp),1:typesPrefix)
     If soap12 { Set %xmlmsg=beginprefix_"secondaryEligibilities"_$select(xsitype:"",1:" "_soapPrefix_"itemType="""_temp1_$select($parameter("dgeewebsvc.eligibilityInfo","XMLSUMMARY")'="":"s_eligibilityInfo",1:"eligibilityInfo")_"""")_" "_soapPrefix_"arraySize="""_aval.Count()_""""_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     } Else { Set %xmlmsg=beginprefix_"secondaryEligibilities "_$select(xsitype:xsiPrefix_"type="""_soapPrefix_"Array""",1:soapPrefix_"arrayType="""_temp1_$select($parameter("dgeewebsvc.eligibilityInfo","XMLSUMMARY")'="":"s_eligibilityInfo",1:"eligibilityInfo")_"["_aval.Count()_"]""")_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } }
   }
   Else {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set %xmlmsg=beginprefix_"secondaryEligibilities>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
   While k'="" {
     If $IsObject(val) {
       Set id=""
       If encoded,'inlineFlag {
         Set temp=$select($parameter("dgeewebsvc.eligibilityInfo","XMLSUMMARY")'="":-1,1:1)
         Set id=+$get(idlist(temp*val))
         If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
       }
       If +id'=0 {
         Set %xmlmsg=currentIndent_beginprefix_"eligibility "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
       } Else { if id=0 Set id=$increment(idlist)
         Set topArg="eligibility",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.eligibilityInfo"),local=1,savexsiAttrs=xsiAttrs
         Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
       }
     } Else {
       Set %xmlmsg=currentIndent_beginprefix_"eligibility "_xsiPrefix_"nil=""true"""_xsiAttrs_"/>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     }
     Set val=aval.GetNext(.k)
   }
   If indentFlag Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   Set %xmlmsg=endprefix_"secondaryEligibilities>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..serviceConnectionAward
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.serviceConnectionAwardInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"serviceConnectionAward "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="serviceConnectionAward",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.serviceConnectionAwardInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..specialFactors
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.specialFactorsInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"specialFactors "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="specialFactors",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.specialFactorsInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..userEnrolleeSite
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"userEnrolleeSite"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"userEnrolleeSite>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..userEnrolleeValidThrough
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"userEnrolleeValidThrough"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"int""",1:"")_">"_val_endprefix_"userEnrolleeValidThrough>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..veteran
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"veteran"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"boolean""",1:"")_">"_$s(val:"true",1:"false")_endprefix_"veteran>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..recordCreatedDate
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"recordCreatedDate"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"dateTime""",1:"")_">"_$select(val="":"",1:$translate(val," ","T")_"Z")_endprefix_"recordCreatedDate>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..recordModifiedDate
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"recordModifiedDate"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"dateTime""",1:"")_">"_$select(val="":"",1:$translate(val," ","T")_"Z")_endprefix_"recordModifiedDate>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 If indentFlag { Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }}
 Set %xmlmsg="</"_topPrefix_tag_">"
 if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } If indentFlag,'initialCR if $data(%xmlBlock) { Set %xmlmsg="" Do xeWriteLine^%occXMLInternal } else { write ! } Set $extract(currentIndent,1,2)=""
 If '$IsObject(namespaces) || (popAtEnd=1) Set topPrefix=saveTopPrefix,typesPrefix=saveTypesPrefix,attrsPrefix=saveAttrsPrefix,usePrefix=saveUsePrefix
 If popAtEnd Do namespaces.PopNode()
 If encoded Set oreflist=$list(initlist),inlineFlag=$list(initlist,2)
 If 'encoded||inlineFlag {
   If 'nocycle Kill oreflist($this)
 } ElseIf $get(oreflist)'=1 {
   Set oreflist=1
   Set id=$order(oreflist(""))
   While id'="" {
     Set val=oreflist(id)
     Kill oreflist(id)
     Set group=0,createId=$zabs(id),typeAttr="*",local=savelocal,xsiAttrs=initialxsiAttrs
     If $classname(val)="dgeewebsvc.enrollmentDeterminationInfo" {
       Set attrsArg=attrsVal
       Set topArg=tag,summaryArg=0
       Set sc=val.XMLExportInternal()
     } Else {
       Set topArg="",summaryArg=(id<0)
       Set sc=val.XMLExportInternal()
     }
     If 'sc Quit
     Set id=$order(oreflist(""))
   }
   Kill oreflist
 }
 Quit sc
XMLExportInternalTrap Set $ztrap=""
 If $data(val) , $IsObject(val) , ($piece($ze,">",1)="<METHOD DOES NOT EXIST") {
   Set sc=$$Error^%apiOBJ(6249,$classname(val))
 } Else {
   Set sc=$$Error^%apiOBJ(5002,$ze)
 }
XMLExportExit 
 If '$IsObject(namespaces) || (popAtEnd=1) Set topPrefix=saveTopPrefix,typesPrefix=saveTypesPrefix,attrsPrefix=saveAttrsPrefix,usePrefix=saveUsePrefix
 If popAtEnd Do namespaces.PopNode()
 Quit sc
zXMLGetSchemaImports(imports,classes)
 Quit ##class(%XML.Implementation).XMLGetSchemaImports("dgeewebsvc.enrollmentDeterminationInfo",.imports,.classes)
zXMLImportAttributes()
 ;
 Quit 1
XMLImportAttrErr Quit $$Error^%apiOBJ(6260,ref,$get(@(tree)@("d",$zlascii(attributeList(ref),13))),@(tree)@("d",$zlascii(nodelist,9))_$$XMLImportAttrLocation(nodelist))
XMLImportFixedAttrErr Quit $$Error^%apiOBJ(6320,ref,$get(@(tree)@("d",$zlascii(attributeList(ref),13))),@(tree)@("d",$zlascii(nodelist,9))_$$XMLImportAttrLocation(nodelist))
XMLImportAttrLocation(nodelist) new msg,loc
 Set loc=$lb($zlascii(nodelist,21),$zlascii(nodelist,25))
 If loc="" Quit ""
 Set msg=$get(^%qMsg("%ObjectErrors",$s(""'="":$zcvt("","L"),1:$s($mvv(58)="":"en",1:$mvv(58))),"XMLImportLocation")," (%1,%2)")
 Quit $$FormatText^%occMessages(msg,$listget(loc,1),$listget(loc,2))
zXMLImportInternal()
 New child,childlist,node,nodelist,inner,innerlist,data,encodedArray,key,nsIndex,savechild,savechildlist,saveinner,saveinnnerlist,exists
 Set $ztrap="XMLImportInternalTrap"
 Set encoded=$case($piece(fmt,",",1),"":0,"literal":0,"encoded":1,"encoded12":1,:"")
 If encoded="" Quit $$Error^%apiOBJ(6231,fmt)
 Set nsIndex=$select($get(namespace)="":"",1:$get(@(tree)@("N",namespace)))
 Set node=nodeArg,nodelist=nodeArgChildlist
 If tag'=@(tree)@("d",$zlascii(nodelist,9)) Set inner=node Goto XMLImportMalformed
 If bareProjection Quit $$Error^%apiOBJ(6386,"dgeewebsvc.enrollmentDeterminationInfo")
 If encoded {
   Do XMLImportAttrnode() If $data(attributeList("id")) Set idlist(node)=$this
 }
 If $zboolean(+($zlascii(nodelist,13)#16),+1,1) Quit 1
 Set sc=$$XMLImportElements()
XMLImportExit Quit sc
XMLImportElements() ;
XMLLOOP1 Set descriptor=$zlascii(nodelist,$zwascii(nodelist,17)) Set child=($zlascii(@(tree)@($piece(node,",",1)),$piece(node,",",2))\16)_","_$zwascii(nodelist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set child=##class(%XML.ImportHandler).NextChild(tree,node,.nodelist,child,.descriptor) } Else { Set child="" }} For { Quit:child=""  Quit:(descriptor#16)'=2  Set descriptor=$piece(child,",",2)+4 Set child=$piece(child,",",1)_","_descriptor Set descriptor=$zlascii(nodelist,descriptor) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set child=##class(%XML.ImportHandler).NextChild(tree,node,.nodelist,child,.descriptor) } Else {Set child="" }} } Goto XMLLOOP2
XMLLOOP For  { Set descriptor=$piece(child,",",2)+4 Set child=$piece(child,",",1)_","_descriptor Set descriptor=$zlascii(nodelist,descriptor) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set child=##class(%XML.ImportHandler).NextChild(tree,node,.nodelist,child,.descriptor) } Else {Set child="" }} Quit:child=""  Quit:(descriptor#16)'=2  }
XMLLOOP2 If child="" Quit sc
 If (descriptor#16)'=0 Set inner=child Goto XMLImportMalformedNoTag
 Set childlist=@(tree)@((descriptor\16))
 Set tag=@(tree)@("d",$zlascii(childlist,9))
 If tag="applicationDate" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=..applicationDateXSDToLogical(data) Goto:data="" XMLImportErrchild Goto:('..applicationDateIsValid(data)) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..applicationDate=data
   Goto XMLLOOP } }
 If tag="calculationSource" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,child,0,0,.data,,,childlist) Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             If data="" Set data=$c(0)
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..calculationSource=data
   Goto XMLLOOP } }
 If tag="cancelDeclineInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="cancelDeclineInfo") {
       Set class="dgeewebsvc.cancelDeclineInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.cancelDeclineInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.cancelDeclineInfo","s",class)) If class="" Set class=0
       Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,child,$this)
     If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   If data'="" Set ..cancelDeclineInfo=data
   Goto XMLLOOP } }
 If tag="catastrophicDisabilityInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="catastrophicDisabilityInfo") {
       Set class="dgeewebsvc.catastrophicDisabilityInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.catastrophicDisabilityInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.catastrophicDisabilityInfo","s",class)) If class="" Set class=0
       Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,child,$this)
     If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   If data'="" Set ..catastrophicDisabilityInfo=data
   Goto XMLLOOP } }
 If tag="effectiveDate" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=..effectiveDateXSDToLogical(data) Goto:data="" XMLImportErrchild Goto:('..effectiveDateIsValid(data)) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..effectiveDate=data
   Goto XMLLOOP } }
 If tag="eligibleForMedicaid" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$case(data,"true":1,"false":0,1:1,0:0,:"") Goto:data="" XMLImportErrchild Goto:('$case(data,"":1,1:1,0:1,:$$Error^%apiOBJ(7206,data))) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..eligibleForMedicaid=data
   Goto XMLLOOP } }
 If tag="medicaidLastModifiedDate" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=..medicaidLastModifiedDateXSDToLogical(data) Goto:data="" XMLImportErrchild Goto:('..medicaidLastModifiedDateIsValid(data)) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..medicaidLastModifiedDate=data
   Goto XMLLOOP } }
 If tag="endDate" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=..endDateXSDToLogical(data) Goto:data="" XMLImportErrchild Goto:('..endDateIsValid(data)) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..endDate=data
   Goto XMLLOOP } }
 If tag="enrollmentDate" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=..enrollmentDateXSDToLogical(data) Goto:data="" XMLImportErrchild Goto:('..enrollmentDateIsValid(data)) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..enrollmentDate=data
   Goto XMLLOOP } }
 If tag="enrollmentStatus" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,child,0,0,.data,,,childlist) Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             If data="" Set data=$c(0)
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..enrollmentStatus=data
   Goto XMLLOOP } }
 If tag="facilityReceived" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,child,0,0,.data,,,childlist) Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             If data="" Set data=$c(0)
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..facilityReceived=data
   Goto XMLLOOP } }
 If tag="enrollmentCategoryName" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,child,0,0,.data,,,childlist) Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             If data="" Set data=$c(0)
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..enrollmentCategoryName=data
   Goto XMLLOOP } }
 If tag="ineligibilityFactor" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="ineligibilityFactorInfo") {
       Set class="dgeewebsvc.ineligibilityFactorInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.ineligibilityFactorInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.ineligibilityFactorInfo","s",class)) If class="" Set class=0
       Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,child,$this)
     If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   If data'="" Set ..ineligibilityFactor=data
   Goto XMLLOOP } }
 If tag="militarySexualTraumaInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="militarySexualTraumaInfo") {
       Set class="dgeewebsvc.militarySexualTraumaInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.militarySexualTraumaInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.militarySexualTraumaInfo","s",class)) If class="" Set class=0
       Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,child,$this)
     If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   If data'="" Set ..militarySexualTraumaInfo=data
   Goto XMLLOOP } }
 If tag="presumptivePsychosisInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="presumptivePsychosisInfo") {
       Set class="dgeewebsvc.presumptivePsychosisInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.presumptivePsychosisInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.presumptivePsychosisInfo","s",class)) If class="" Set class=0
       Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,child,$this)
     If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   If data'="" Set ..presumptivePsychosisInfo=data
   Goto XMLLOOP } }
 If tag="monetaryBenefitAwardInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="monetaryBenefitAwardInfo") {
       Set class="dgeewebsvc.monetaryBenefitAwardInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.monetaryBenefitAwardInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.monetaryBenefitAwardInfo","s",class)) If class="" Set class=0
       Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,child,$this)
     If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   If data'="" Set ..monetaryBenefitAwardInfo=data
   Goto XMLLOOP } }
 If tag="noseThroatRadiumInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="noseThroatRadiumInfo") {
       Set class="dgeewebsvc.noseThroatRadiumInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.noseThroatRadiumInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.noseThroatRadiumInfo","s",class)) If class="" Set class=0
       Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,child,$this)
     If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   If data'="" Set ..noseThroatRadiumInfo=data
   Goto XMLLOOP } }
 If tag="otherEligibilities" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else {
     If 'sc Goto XMLImportExit
     Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set inner=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set inner=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,inner,.descriptor) } Else { Set inner="" }} For { Quit:inner=""  Quit:(descriptor#16)'=2  Set descriptor=$piece(inner,",",2)+4 Set inner=$piece(inner,",",1)_","_descriptor Set descriptor=$zlascii(childlist,descriptor) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set inner=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,inner,.descriptor) } Else {Set inner="" }} }
     While inner'="" {
       If (descriptor#16)'=2 {
         Set innerlist=@(tree)@((descriptor\16))
         If 'encoded,(@(tree)@("d",$zlascii(innerlist,9))'="eligibility") Goto XMLImportBadTag
         If ($get(namespace)'=""),'$case($zwascii(innerlist,19),0:1,nsIndex:1,:0) Goto XMLImportNS
         If encoded Set saveinner=inner,saveinnerlist=innerlist
         If encoded,$$XMLImportId() {
           Set data=idlist(inner)
         } Else {
           If 'sc Goto XMLImportExit
           Do XMLImportAttrinner()
           Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
           If (class="") || (class="eligibilityInfo") {
             Set class="dgeewebsvc.eligibilityInfo"
           } Else {
             If $length(class,":")=2 Set class=$piece(class,":",2)
             Set class=$get(^oddCOM("dgeewebsvc.eligibilityInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.eligibilityInfo","s",class)) If class="" Set class=0
             Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
             If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadType
             If $listlength(class)>1 {
               For tmpi=1:1:$listlength(class) {
                 If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
               }
               If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadType
             } Else { Set class=$list(class) }
           }
           Set data=$classmethod(class,"XMLNew",handler,inner,$this)
           If $isobject(data) Set tag=@(tree)@("d",$zlascii(innerlist,9)),nodeArg=inner,nodeArgChildlist=innerlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
           If encoded Do XMLImportAttrinner() If $data(attributeList("id")) Set idlist(inner)=data
         }
         If encoded Set inner=saveinner,innerlist=saveinnerlist
         If data'="" Do ..otherEligibilities.Insert(data)
       }
       For  { Set descriptor=$piece(inner,",",2)+4 Set inner=$piece(inner,",",1)_","_descriptor Set descriptor=$zlascii(childlist,descriptor) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set inner=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,inner,.descriptor) } Else {Set inner="" }} Quit:inner=""  Quit:(descriptor#16)'=2  }
     }
     Quit:('sc)
   }
   If encoded Set child=savechild,childlist=savechildlist
   Goto XMLLOOP } }
 If tag="primaryEligibility" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="eligibilityInfo") {
       Set class="dgeewebsvc.eligibilityInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.eligibilityInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.eligibilityInfo","s",class)) If class="" Set class=0
       Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,child,$this)
     If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   If data'="" Set ..primaryEligibility=data
   Goto XMLLOOP } }
 If tag="registrationInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="registrationInfo") {
       Set class="dgeewebsvc.registrationInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.registrationInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.registrationInfo","s",class)) If class="" Set class=0
       Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,child,$this)
     If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   If data'="" Set ..registrationInfo=data
   Goto XMLLOOP } }
 If tag="compactActIndicator" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,child,0,0,.data,,,childlist) Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             If data="" Set data=$c(0)
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..compactActIndicator=data
   Goto XMLLOOP } }
 If tag="priorityGroup" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,child,0,0,.data,,,childlist) Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             If data="" Set data=$c(0)
             If data'="" Goto:('$s(data'[","&&(",Group 1,Group 2,Group 3,Group 4,Group 5,Group 6,Group 7,Group 8,"[(","_$select(data=$c(0):"",1:data)_",")):1,1:$$Error^%apiOBJ(7205,data,",Group 1,Group 2,Group 3,Group 4,Group 5,Group 6,Group 7,Group 8"))) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..priorityGroup=data
   Goto XMLLOOP } }
 If tag="prioritySubGroup" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,child,0,0,.data,,,childlist) Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             If data="" Set data=$c(0)
             If data'="" Goto:('$s(data'[","&&(",a,c,e,g,b,d,"[(","_$select(data=$c(0):"",1:data)_",")):1,1:$$Error^%apiOBJ(7205,data,",a,c,e,g,b,d"))) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..prioritySubGroup=data
   Goto XMLLOOP } }
 If tag="secondaryEligibilities" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else {
     If 'sc Goto XMLImportExit
     Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set inner=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set inner=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,inner,.descriptor) } Else { Set inner="" }} For { Quit:inner=""  Quit:(descriptor#16)'=2  Set descriptor=$piece(inner,",",2)+4 Set inner=$piece(inner,",",1)_","_descriptor Set descriptor=$zlascii(childlist,descriptor) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set inner=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,inner,.descriptor) } Else {Set inner="" }} }
     While inner'="" {
       If (descriptor#16)'=2 {
         Set innerlist=@(tree)@((descriptor\16))
         If 'encoded,(@(tree)@("d",$zlascii(innerlist,9))'="eligibility") Goto XMLImportBadTag
         If ($get(namespace)'=""),'$case($zwascii(innerlist,19),0:1,nsIndex:1,:0) Goto XMLImportNS
         If encoded Set saveinner=inner,saveinnerlist=innerlist
         If encoded,$$XMLImportId() {
           Set data=idlist(inner)
         } Else {
           If 'sc Goto XMLImportExit
           Do XMLImportAttrinner()
           Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
           If (class="") || (class="eligibilityInfo") {
             Set class="dgeewebsvc.eligibilityInfo"
           } Else {
             If $length(class,":")=2 Set class=$piece(class,":",2)
             Set class=$get(^oddCOM("dgeewebsvc.eligibilityInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.eligibilityInfo","s",class)) If class="" Set class=0
             Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
             If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadType
             If $listlength(class)>1 {
               For tmpi=1:1:$listlength(class) {
                 If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
               }
               If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadType
             } Else { Set class=$list(class) }
           }
           Set data=$classmethod(class,"XMLNew",handler,inner,$this)
           If $isobject(data) Set tag=@(tree)@("d",$zlascii(innerlist,9)),nodeArg=inner,nodeArgChildlist=innerlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
           If encoded Do XMLImportAttrinner() If $data(attributeList("id")) Set idlist(inner)=data
         }
         If encoded Set inner=saveinner,innerlist=saveinnerlist
         If data'="" Do ..secondaryEligibilities.Insert(data)
       }
       For  { Set descriptor=$piece(inner,",",2)+4 Set inner=$piece(inner,",",1)_","_descriptor Set descriptor=$zlascii(childlist,descriptor) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set inner=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,inner,.descriptor) } Else {Set inner="" }} Quit:inner=""  Quit:(descriptor#16)'=2  }
     }
     Quit:('sc)
   }
   If encoded Set child=savechild,childlist=savechildlist
   Goto XMLLOOP } }
 If tag="serviceConnectionAward" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="serviceConnectionAwardInfo") {
       Set class="dgeewebsvc.serviceConnectionAwardInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.serviceConnectionAwardInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.serviceConnectionAwardInfo","s",class)) If class="" Set class=0
       Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,child,$this)
     If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   If data'="" Set ..serviceConnectionAward=data
   Goto XMLLOOP } }
 If tag="specialFactors" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="specialFactorsInfo") {
       Set class="dgeewebsvc.specialFactorsInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.specialFactorsInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.specialFactorsInfo","s",class)) If class="" Set class=0
       Set tmp=$get(@(tree)@("n",$zwascii(attributeList("type"),11)))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))) Goto XMLImportBadTypechild
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,child,$this)
     If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   If data'="" Set ..specialFactors=data
   Goto XMLLOOP } }
 If tag="userEnrolleeSite" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,child,0,0,.data,,,childlist) Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             If data="" Set data=$c(0)
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..userEnrolleeSite=data
   Goto XMLLOOP } }
 If tag="userEnrolleeValidThrough" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$s($tr(data,"Ee(),.")'=data:"",1:$number(data,"I",-2147483648,2147483647)) Goto:data="" XMLImportErrchild Goto:('$select(data=$c(0)&&$zu(115,13):1,$number(data,"I",-2147483648,2147483647)'="":1,$number(data,"I")="":$$Error^%apiOBJ(7207,data),data<-2147483648:$$Error^%apiOBJ(7204,data,-2147483648),1:$$Error^%apiOBJ(7203,data,2147483647))) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..userEnrolleeValidThrough=data
   Goto XMLLOOP } }
 If tag="veteran" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$case(data,"true":1,"false":0,1:1,0:0,:"") Goto:data="" XMLImportErrchild Goto:('$case(data,"":1,1:1,0:1,:$$Error^%apiOBJ(7206,data))) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..veteran=data
   Goto XMLLOOP } }
 If tag="recordCreatedDate" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=..recordCreatedDateXSDToLogical(data) Goto:data="" XMLImportErrchild Goto:('..recordCreatedDateIsValid(data)) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..recordCreatedDate=data
   Goto XMLLOOP } }
 If tag="recordModifiedDate" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
     } Else {
             If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
               Set data="" Goto XMLImportErrchild
             } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
               If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=..recordModifiedDateXSDToLogical(data) Goto:data="" XMLImportErrchild Goto:('..recordModifiedDateIsValid(data)) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..recordModifiedDate=data
   Goto XMLLOOP } }
 Goto XMLImportBadTagchild
XMLImportBadTagchild Set inner=child
XMLImportBadTag Quit $$Error^%apiOBJ(6237,tag_$$XMLImportLocation(inner))
XMLImportBadTypenode Set inner=node Goto XMLImportBadType
XMLImportBadTypechild Set inner=child
XMLImportBadType Quit $$Error^%apiOBJ(6277,class,$select(($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))#16)=0:@(tree)@("d",$zlascii(@(tree)@(($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))\16)),9)),1:@(tree)@("d",($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))\16)))_$$XMLImportLocation(inner))
XMLImportErrnode Set inner=node Goto XMLImportErr
XMLImportErrchild Set inner=child
XMLImportErr
 Set data=##class(%XML.ImportHandler).GetNextChild(tree,inner,"")
 If (data'="") {
   If ($zlascii(@(tree)@($piece(data,",",1)),$piece(data,",",2))#16)'=0 {
     Quit $$Error^%apiOBJ(6232,@(tree)@("d",$zlascii(@(tree)@(($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))\16)),9))_$$XMLImportLocation(inner),$extract(@(tree)@("d",($zlascii(@(tree)@($piece(data,",",1)),$piece(data,",",2))\16)),1,200))
   } Else {
     Quit $$Error^%apiOBJ(6253,@(tree)@("d",$zlascii(@(tree)@(($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))\16)),9))_$$XMLImportLocation(inner),@(tree)@("d",$zlascii(@(tree)@(($zlascii(@(tree)@($piece(data,",",1)),$piece(data,",",2))\16)),9)))
   }
 } Else {
   Quit $$Error^%apiOBJ(6252,@(tree)@("d",$zlascii(@(tree)@(($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))\16)),9))_$$XMLImportLocation(inner))
 }
XMLImportIdErr Set sc=$$Error^%apiOBJ(6236,id,@(tree)@("d",$zlascii(@(tree)@(($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))\16)),9))_$$XMLImportLocation(inner)) Quit sc
XMLImportMalformed Set sc=$$Error^%apiOBJ(6233,$select(($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))#16)=0:@(tree)@("d",$zlascii(@(tree)@(($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))\16)),9)),1:@(tree)@("d",($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))\16)))_$$XMLImportLocation(inner)) Quit sc
XMLImportMalformedNoTag Set node=$select($piece(inner,",",1)<=0:0,1:$zlascii(@(tree)@($piece(inner,",",1)),1)_","_$zlascii(@(tree)@($piece(inner,",",1)),5)),sc=$$Error^%apiOBJ(6254,$select(($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))#16)=0:@(tree)@("d",$zlascii(@(tree)@(($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))\16)),9)),1:@(tree)@("d",($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))\16))),$select(($zlascii(@(tree)@($piece(node,",",1)),$piece(node,",",2))#16)=0:@(tree)@("d",$zlascii(@(tree)@(($zlascii(@(tree)@($piece(node,",",1)),$piece(node,",",2))\16)),9)),1:@(tree)@("d",($zlascii(@(tree)@($piece(node,",",1)),$piece(node,",",2))\16)))_$$XMLImportLocation(node)) Quit sc
XMLImportNSchild Set inner=child
XMLImportNS Set sc=$$Error^%apiOBJ(6235,@(tree)@("d",$zlascii(@(tree)@(($zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2))\16)),9))_$$XMLImportLocation(inner)) Quit sc
XMLImportLocation(node) new msg,loc
 Set loc=$lb($zlascii(@(tree)@(($zlascii(@(tree)@($piece(node,",",1)),$piece(node,",",2))\16)),21),$zlascii(@(tree)@(($zlascii(@(tree)@($piece(node,",",1)),$piece(node,",",2))\16)),25))
 If loc="" Quit ""
 Set msg=$get(^%qMsg("%ObjectErrors",$s(""'="":$zcvt("","L"),1:$s($mvv(58)="":"en",1:$mvv(58))),"XMLImportLocation")," (%1,%2)")
 Quit $$FormatText^%occMessages(msg,$listget(loc,1),$listget(loc,2))
XMLImportInternalTrap Set $ztrap=""
 Set loc=$select($ZE["<CLASS DOES NOT EXIST>":" for element "_tag_$$XMLImportLocation(child),1:"")
 Quit $$Error^%apiOBJ(5002,$ZE_loc)
XMLImportIdChild() Set inner=child,innerlist=childlist,tmp=$$XMLImportId(),child=inner,childlist=innerlist Quit tmp
XMLImportId() ;
 Do XMLImportAttrinner()
 If $data(attributeList("href")) {
   Set id=$case($data(@(tree)@("d",$zlascii(attributeList("href"),13))),1:@(tree)@("d",$zlascii(attributeList("href"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("href")))
   If $extract(id)="#" {
     Set tmp=$select($get(@(tree)@("i",$extract(id,2,*)))="":"",1:$piece(@(tree)@("i",$extract(id,2,*)),",",1)_","_$piece(@(tree)@("i",$extract(id,2,*)),",",2)) If tmp="" Goto XMLImportIdErr
     Set inner=tmp
     Set descriptor=$zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2)) Set innerlist=@(tree)@((descriptor\16))
   }
 } ElseIf $data(attributeList("ref")),($get(@(tree)@("n",$zwascii(attributeList("ref"),9)))="http://www.w3.org/2003/05/soap-encoding") {
   Set id=$case($data(@(tree)@("d",$zlascii(attributeList("ref"),13))),1:@(tree)@("d",$zlascii(attributeList("ref"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("ref")))
   Set tmp=$select($get(@(tree)@("i",id))="":"",1:$piece(@(tree)@("i",id),",",1)_","_$piece(@(tree)@("i",id),",",2)) If tmp="" Goto XMLImportIdErr
   Set inner=tmp
   Set descriptor=$zlascii(@(tree)@($piece(inner,",",1)),$piece(inner,",",2)) Set innerlist=@(tree)@((descriptor\16))
 } ElseIf '$data(attributeList("id")) {
   Quit 0
 }
 Quit $data(idlist(inner))
XMLImportAttrnode()
 If $get(attributeList)=node Quit
 Kill attributeList
 Set attributeList=node
 Set offset=29 While offset<$zwascii(nodelist,17) { Set attribute=$extract(nodelist,offset,offset+15)
    Set attrname=@(tree)@("d",$zlascii(attribute,1))
    Set attributeList(attrname)=attribute
 Set offset=offset+16 }
 Quit
XMLImportAttrchild()
 If $get(attributeList)=child Quit
 Kill attributeList
 Set attributeList=child
 Set offset=29 While offset<$zwascii(childlist,17) { Set attribute=$extract(childlist,offset,offset+15)
    Set attrname=@(tree)@("d",$zlascii(attribute,1))
    Set attributeList(attrname)=attribute
 Set offset=offset+16 }
 Quit
XMLImportAttrinner()
 If $get(attributeList)=inner Quit
 Kill attributeList
 Set attributeList=inner
 Set offset=29 While offset<$zwascii(innerlist,17) { Set attribute=$extract(innerlist,offset,offset+15)
    Set attrname=@(tree)@("d",$zlascii(attribute,1))
    Set attributeList(attrname)=attribute
 Set offset=offset+16 }
 Quit
zXMLIsObjectEmpty(ignoreNull)
 If ..applicationDate'="" Quit 0
 If ..calculationSource'="" Quit 0
 If $IsObject(..cancelDeclineInfo) Quit 0
 If $IsObject(..catastrophicDisabilityInfo) Quit 0
 If ..effectiveDate'="" Quit 0
 If ..eligibleForMedicaid'="" Quit 0
 If ..medicaidLastModifiedDate'="" Quit 0
 If ..endDate'="" Quit 0
 If ..enrollmentDate'="" Quit 0
 If ..enrollmentStatus'="" Quit 0
 If ..facilityReceived'="" Quit 0
 If ..enrollmentCategoryName'="" Quit 0
 If $IsObject(..ineligibilityFactor) Quit 0
 If $IsObject(..militarySexualTraumaInfo) Quit 0
 If $IsObject(..presumptivePsychosisInfo) Quit 0
 If $IsObject(..monetaryBenefitAwardInfo) Quit 0
 If $IsObject(..noseThroatRadiumInfo) Quit 0
 If ..otherEligibilities.Count()>0 Quit 0
 If $IsObject(..primaryEligibility) Quit 0
 If $IsObject(..registrationInfo) Quit 0
 If ..compactActIndicator'="" Quit 0
 If ..priorityGroup'="" Quit 0
 If ..prioritySubGroup'="" Quit 0
 If ..secondaryEligibilities.Count()>0 Quit 0
 If $IsObject(..serviceConnectionAward) Quit 0
 If $IsObject(..specialFactors) Quit 0
 If ..userEnrolleeSite'="" Quit 0
 If ..userEnrolleeValidThrough'="" Quit 0
 If ..veteran'="" Quit 0
 If ..recordCreatedDate'="" Quit 0
 If ..recordModifiedDate'="" Quit 0
 Quit 1
zXMLNew(document,node,containerOref="")
	Quit (##class(dgeewebsvc.enrollmentDeterminationInfo).%New())
zXMLSchema(top="",format="",namespacePrefix="",input=0,refOnly=0,schema)
 Quit ##class(%XML.Implementation).XMLSchema("dgeewebsvc.enrollmentDeterminationInfo",top,format,namespacePrefix,input,refOnly,.schema)
zapplicationDateIsValid(%val) public {
	RETURN:$zu(115,13)&&(%val=$c(0)) 1
	Set val=%val,%val=$select(%val=(%val\1):$zdate(%val,3,,,,,0,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3,,,,,0)_" "_%val,$length(%val)=10:%val_" 00:00:00",1:%val)
	Quit:($length(%val)<19||($zdatetimeh(%val,3,,,,,,0,,"")="")) $$Error^%apiOBJ(7208,val)
	Quit 1 }
zapplicationDateLogicalToXSD(%val) public {
	Quit $select(%val="":"",1:$translate(%val," ","T")_"Z") }
zapplicationDateNormalize(%val) public {
	Quit $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",%val=(%val\1):$zdate(%val,3,,,,,-672045,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3)_" "_$s(+$p(%val,".",2)=0:%val,1:$p(%val,".")_+("."_$e($p(%val,".",2),1,9))),$l(%val)=10:%val_" 00:00:00",$zdatetimeh(%val,3,,,,,,-672045,,"")="":"error",1:$zdatetime($zdatetimeh($p(%val,"."),3,,,,,,-672045,,""),3,,,,,,,-672045)_$s(+$p(%val,".",2)=0:"",1:+("."_$e($p(%val,".",2),1,9)))) }
zapplicationDateOdbcToLogical(%val) public {
	Quit:%val="" ""
	If $zdatetimeh(%val,3,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,3,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	} elseif $zdatetimeh(%val,-1,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,-1,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	}
	Quit $s(%val'[".":%val,1:$zstrip($zstrip(%val,">","0"),">",".")) }
zapplicationDateXSDToLogical(%val) public {
	If $length($get(%val),"T")'=2 Quit ""
	Set dt=$translate(%val,"T"," ")
	Set len=$length(%val)
	If $extract(%val,len)="Z" {
		Set dt=$extract(dt,1,len-1)
	} ElseIf $case($extract(%val,len-5),"+":1,"-":1,:0) {
		If $extract(%val,len-2)'=":" Quit ""
		Set dt=$extract(dt,1,len-6)
		Set f=$piece(dt,".",2) If f'="" Set f="."_f,dt=$piece(dt,".")
		Set t=$zdatetimeh(dt,3,1,,,,,0,,"") If t="" Quit ""
		Set d=$piece(t,",")
		Set s=$piece(t,",",2)
		Set z=($extract(%val,len-4,len-3)*60+$extract(%val,len-1,len))*60
		If $extract(%val,len-5)="-" {
			Set s=s+z
			If s>=(24*60*60) Set d=d+1,s=s-(24*60*60)
		} Else {
			Set s=s-z
			If s<0 Set d=d-1,s=s+(24*60*60)
		}
		Set dt=$zdatetime(d_","_s,3,1,0,,,,,0,,"")
		Quit $select(dt="":"",1:dt_f)
	}
	If $zdatetimeh(dt,3,1,,,,,0,,"")="" Quit ""
	Quit dt }
zcancelDeclineInfoNewObject() public {
	Set newobject=##class(dgeewebsvc.cancelDeclineInfo).%New() If newobject="" Quit ""
	Set ..cancelDeclineInfo=newobject
	Quit newobject }
zcatastrophicDisabilityInfoNewO() public {
	Set newobject=##class(dgeewebsvc.catastrophicDisabilityInfo).%New() If newobject="" Quit ""
	Set ..catastrophicDisabilityInfo=newobject
	Quit newobject }
zeffectiveDateIsValid(%val) public {
	RETURN:$zu(115,13)&&(%val=$c(0)) 1
	Set val=%val,%val=$select(%val=(%val\1):$zdate(%val,3,,,,,0,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3,,,,,0)_" "_%val,$length(%val)=10:%val_" 00:00:00",1:%val)
	Quit:($length(%val)<19||($zdatetimeh(%val,3,,,,,,0,,"")="")) $$Error^%apiOBJ(7208,val)
	Quit 1 }
zeffectiveDateLogicalToXSD(%val) public {
	Quit $select(%val="":"",1:$translate(%val," ","T")_"Z") }
zeffectiveDateNormalize(%val) public {
	Quit $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",%val=(%val\1):$zdate(%val,3,,,,,-672045,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3)_" "_$s(+$p(%val,".",2)=0:%val,1:$p(%val,".")_+("."_$e($p(%val,".",2),1,9))),$l(%val)=10:%val_" 00:00:00",$zdatetimeh(%val,3,,,,,,-672045,,"")="":"error",1:$zdatetime($zdatetimeh($p(%val,"."),3,,,,,,-672045,,""),3,,,,,,,-672045)_$s(+$p(%val,".",2)=0:"",1:+("."_$e($p(%val,".",2),1,9)))) }
zeffectiveDateOdbcToLogical(%val) public {
	Quit:%val="" ""
	If $zdatetimeh(%val,3,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,3,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	} elseif $zdatetimeh(%val,-1,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,-1,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	}
	Quit $s(%val'[".":%val,1:$zstrip($zstrip(%val,">","0"),">",".")) }
zeffectiveDateXSDToLogical(%val) public {
	If $length($get(%val),"T")'=2 Quit ""
	Set dt=$translate(%val,"T"," ")
	Set len=$length(%val)
	If $extract(%val,len)="Z" {
		Set dt=$extract(dt,1,len-1)
	} ElseIf $case($extract(%val,len-5),"+":1,"-":1,:0) {
		If $extract(%val,len-2)'=":" Quit ""
		Set dt=$extract(dt,1,len-6)
		Set f=$piece(dt,".",2) If f'="" Set f="."_f,dt=$piece(dt,".")
		Set t=$zdatetimeh(dt,3,1,,,,,0,,"") If t="" Quit ""
		Set d=$piece(t,",")
		Set s=$piece(t,",",2)
		Set z=($extract(%val,len-4,len-3)*60+$extract(%val,len-1,len))*60
		If $extract(%val,len-5)="-" {
			Set s=s+z
			If s>=(24*60*60) Set d=d+1,s=s-(24*60*60)
		} Else {
			Set s=s-z
			If s<0 Set d=d-1,s=s+(24*60*60)
		}
		Set dt=$zdatetime(d_","_s,3,1,0,,,,,0,,"")
		Quit $select(dt="":"",1:dt_f)
	}
	If $zdatetimeh(dt,3,1,,,,,0,,"")="" Quit ""
	Quit dt }
zeligibleForMedicaidDisplayToLo(%val) public {
	Quit $s(%val="":"",1:''%val) }
zeligibleForMedicaidIsValid(%val="") public {
	Quit $case(%val,"":1,1:1,0:1,:$$Error^%apiOBJ(7206,%val)) }
zeligibleForMedicaidLogicalToXS(%val) public {
	Q $s(%val:"true",1:"false") }
zeligibleForMedicaidNormalize(%val) public {
	Quit $s(%val="":"",1:%val\1) }
zeligibleForMedicaidXSDToLogica(%val) public {
	Q $case(%val,"true":1,"false":0,1:1,0:0,:"") }
zendDateIsValid(%val) public {
	RETURN:$zu(115,13)&&(%val=$c(0)) 1
	Set val=%val,%val=$select(%val=(%val\1):$zdate(%val,3,,,,,0,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3,,,,,0)_" "_%val,$length(%val)=10:%val_" 00:00:00",1:%val)
	Quit:($length(%val)<19||($zdatetimeh(%val,3,,,,,,0,,"")="")) $$Error^%apiOBJ(7208,val)
	Quit 1 }
zendDateLogicalToXSD(%val) public {
	Quit $select(%val="":"",1:$translate(%val," ","T")_"Z") }
zendDateNormalize(%val) public {
	Quit $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",%val=(%val\1):$zdate(%val,3,,,,,-672045,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3)_" "_$s(+$p(%val,".",2)=0:%val,1:$p(%val,".")_+("."_$e($p(%val,".",2),1,9))),$l(%val)=10:%val_" 00:00:00",$zdatetimeh(%val,3,,,,,,-672045,,"")="":"error",1:$zdatetime($zdatetimeh($p(%val,"."),3,,,,,,-672045,,""),3,,,,,,,-672045)_$s(+$p(%val,".",2)=0:"",1:+("."_$e($p(%val,".",2),1,9)))) }
zendDateOdbcToLogical(%val) public {
	Quit:%val="" ""
	If $zdatetimeh(%val,3,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,3,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	} elseif $zdatetimeh(%val,-1,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,-1,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	}
	Quit $s(%val'[".":%val,1:$zstrip($zstrip(%val,">","0"),">",".")) }
zendDateXSDToLogical(%val) public {
	If $length($get(%val),"T")'=2 Quit ""
	Set dt=$translate(%val,"T"," ")
	Set len=$length(%val)
	If $extract(%val,len)="Z" {
		Set dt=$extract(dt,1,len-1)
	} ElseIf $case($extract(%val,len-5),"+":1,"-":1,:0) {
		If $extract(%val,len-2)'=":" Quit ""
		Set dt=$extract(dt,1,len-6)
		Set f=$piece(dt,".",2) If f'="" Set f="."_f,dt=$piece(dt,".")
		Set t=$zdatetimeh(dt,3,1,,,,,0,,"") If t="" Quit ""
		Set d=$piece(t,",")
		Set s=$piece(t,",",2)
		Set z=($extract(%val,len-4,len-3)*60+$extract(%val,len-1,len))*60
		If $extract(%val,len-5)="-" {
			Set s=s+z
			If s>=(24*60*60) Set d=d+1,s=s-(24*60*60)
		} Else {
			Set s=s-z
			If s<0 Set d=d-1,s=s+(24*60*60)
		}
		Set dt=$zdatetime(d_","_s,3,1,0,,,,,0,,"")
		Quit $select(dt="":"",1:dt_f)
	}
	If $zdatetimeh(dt,3,1,,,,,0,,"")="" Quit ""
	Quit dt }
zenrollmentDateIsValid(%val) public {
	RETURN:$zu(115,13)&&(%val=$c(0)) 1
	Set val=%val,%val=$select(%val=(%val\1):$zdate(%val,3,,,,,0,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3,,,,,0)_" "_%val,$length(%val)=10:%val_" 00:00:00",1:%val)
	Quit:($length(%val)<19||($zdatetimeh(%val,3,,,,,,0,,"")="")) $$Error^%apiOBJ(7208,val)
	Quit 1 }
zenrollmentDateLogicalToXSD(%val) public {
	Quit $select(%val="":"",1:$translate(%val," ","T")_"Z") }
zenrollmentDateNormalize(%val) public {
	Quit $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",%val=(%val\1):$zdate(%val,3,,,,,-672045,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3)_" "_$s(+$p(%val,".",2)=0:%val,1:$p(%val,".")_+("."_$e($p(%val,".",2),1,9))),$l(%val)=10:%val_" 00:00:00",$zdatetimeh(%val,3,,,,,,-672045,,"")="":"error",1:$zdatetime($zdatetimeh($p(%val,"."),3,,,,,,-672045,,""),3,,,,,,,-672045)_$s(+$p(%val,".",2)=0:"",1:+("."_$e($p(%val,".",2),1,9)))) }
zenrollmentDateOdbcToLogical(%val) public {
	Quit:%val="" ""
	If $zdatetimeh(%val,3,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,3,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	} elseif $zdatetimeh(%val,-1,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,-1,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	}
	Quit $s(%val'[".":%val,1:$zstrip($zstrip(%val,">","0"),">",".")) }
zenrollmentDateXSDToLogical(%val) public {
	If $length($get(%val),"T")'=2 Quit ""
	Set dt=$translate(%val,"T"," ")
	Set len=$length(%val)
	If $extract(%val,len)="Z" {
		Set dt=$extract(dt,1,len-1)
	} ElseIf $case($extract(%val,len-5),"+":1,"-":1,:0) {
		If $extract(%val,len-2)'=":" Quit ""
		Set dt=$extract(dt,1,len-6)
		Set f=$piece(dt,".",2) If f'="" Set f="."_f,dt=$piece(dt,".")
		Set t=$zdatetimeh(dt,3,1,,,,,0,,"") If t="" Quit ""
		Set d=$piece(t,",")
		Set s=$piece(t,",",2)
		Set z=($extract(%val,len-4,len-3)*60+$extract(%val,len-1,len))*60
		If $extract(%val,len-5)="-" {
			Set s=s+z
			If s>=(24*60*60) Set d=d+1,s=s-(24*60*60)
		} Else {
			Set s=s-z
			If s<0 Set d=d-1,s=s+(24*60*60)
		}
		Set dt=$zdatetime(d_","_s,3,1,0,,,,,0,,"")
		Quit $select(dt="":"",1:dt_f)
	}
	If $zdatetimeh(dt,3,1,,,,,0,,"")="" Quit ""
	Quit dt }
zineligibilityFactorNewObject() public {
	Set newobject=##class(dgeewebsvc.ineligibilityFactorInfo).%New() If newobject="" Quit ""
	Set ..ineligibilityFactor=newobject
	Quit newobject }
zmedicaidLastModifiedDateIsVali(%val) public {
	RETURN:$zu(115,13)&&(%val=$c(0)) 1
	Set val=%val,%val=$select(%val=(%val\1):$zdate(%val,3,,,,,0,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3,,,,,0)_" "_%val,$length(%val)=10:%val_" 00:00:00",1:%val)
	Quit:($length(%val)<19||($zdatetimeh(%val,3,,,,,,0,,"")="")) $$Error^%apiOBJ(7208,val)
	Quit 1 }
zmedicaidLastModifiedDateLogic2(%val) public {
	Quit $select(%val="":"",1:$translate(%val," ","T")_"Z") }
zmedicaidLastModifiedDateNormal(%val) public {
	Quit $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",%val=(%val\1):$zdate(%val,3,,,,,-672045,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3)_" "_$s(+$p(%val,".",2)=0:%val,1:$p(%val,".")_+("."_$e($p(%val,".",2),1,9))),$l(%val)=10:%val_" 00:00:00",$zdatetimeh(%val,3,,,,,,-672045,,"")="":"error",1:$zdatetime($zdatetimeh($p(%val,"."),3,,,,,,-672045,,""),3,,,,,,,-672045)_$s(+$p(%val,".",2)=0:"",1:+("."_$e($p(%val,".",2),1,9)))) }
zmedicaidLastModifiedDateOdbcTo(%val) public {
	Quit:%val="" ""
	If $zdatetimeh(%val,3,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,3,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	} elseif $zdatetimeh(%val,-1,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,-1,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	}
	Quit $s(%val'[".":%val,1:$zstrip($zstrip(%val,">","0"),">",".")) }
zmedicaidLastModifiedDateXSDToL(%val) public {
	If $length($get(%val),"T")'=2 Quit ""
	Set dt=$translate(%val,"T"," ")
	Set len=$length(%val)
	If $extract(%val,len)="Z" {
		Set dt=$extract(dt,1,len-1)
	} ElseIf $case($extract(%val,len-5),"+":1,"-":1,:0) {
		If $extract(%val,len-2)'=":" Quit ""
		Set dt=$extract(dt,1,len-6)
		Set f=$piece(dt,".",2) If f'="" Set f="."_f,dt=$piece(dt,".")
		Set t=$zdatetimeh(dt,3,1,,,,,0,,"") If t="" Quit ""
		Set d=$piece(t,",")
		Set s=$piece(t,",",2)
		Set z=($extract(%val,len-4,len-3)*60+$extract(%val,len-1,len))*60
		If $extract(%val,len-5)="-" {
			Set s=s+z
			If s>=(24*60*60) Set d=d+1,s=s-(24*60*60)
		} Else {
			Set s=s-z
			If s<0 Set d=d-1,s=s+(24*60*60)
		}
		Set dt=$zdatetime(d_","_s,3,1,0,,,,,0,,"")
		Quit $select(dt="":"",1:dt_f)
	}
	If $zdatetimeh(dt,3,1,,,,,0,,"")="" Quit ""
	Quit dt }
zmilitarySexualTraumaInfoNewObj() public {
	Set newobject=##class(dgeewebsvc.militarySexualTraumaInfo).%New() If newobject="" Quit ""
	Set ..militarySexualTraumaInfo=newobject
	Quit newobject }
zmonetaryBenefitAwardInfoNewObj() public {
	Set newobject=##class(dgeewebsvc.monetaryBenefitAwardInfo).%New() If newobject="" Quit ""
	Set ..monetaryBenefitAwardInfo=newobject
	Quit newobject }
znoseThroatRadiumInfoNewObject() public {
	Set newobject=##class(dgeewebsvc.noseThroatRadiumInfo).%New() If newobject="" Quit ""
	Set ..noseThroatRadiumInfo=newobject
	Quit newobject }
zotherEligibilitiesBuildValueAr(value,array) public {
	Quit ##class(%Collection.ListOfObj).BuildValueArray(value,.array)
}
zotherEligibilitiesCollectionTo(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,$select(delim="":$C(13,10),1:delim))
}
zotherEligibilitiesCollectionT2(val="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,",")
}
zotherEligibilitiesDisplayToCol(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,$select(delim="":$C(13,10),1:delim))
}
zotherEligibilitiesGetObject(force=0) public {
	Set id=..otherEligibilities.Serialize(force)
	Quit $select(id="":"",1:$listbuild(id_"")) }
zotherEligibilitiesGetObjectId(force=0) public {
	Quit $listget(..otherEligibilitiesGetObject(force)) }
zotherEligibilitiesGetSwizzled(noswizzle=0) public {
	Set oref=##class(%Collection.ListOfObj).%New() If oref="" Quit ""
	Set modstate=$system.CLS.GetModifiedBits() Set r%otherEligibilities=oref Do $system.CLS.SetModifiedBits(modstate)
	Set oref.ElementType="dgeewebsvc.eligibilityInfo",oref.ElementClassType="",oref.Owner=+$this,oref.Storage=$this."otherEligibilities%i"(),oref.OrefStorage=oref.Storage+1
	Do $system.CLS.SetModified(oref,0)
	Quit oref }
zotherEligibilitiesOdbcToCollec(val="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,",")
}
zotherEligibilitiesSet(newvalue) public {
	If '$isobject(newvalue),newvalue'="" Quit $$Error^%apiOBJ(5807,newvalue)
	If r%otherEligibilities=newvalue Quit 1
	If newvalue="" Kill i%otherEligibilities,r%otherEligibilities Set i%otherEligibilities="",r%otherEligibilities="" Quit 1
	Set oref=r%otherEligibilities Kill i%otherEligibilities,r%otherEligibilities Set i%otherEligibilities="",r%otherEligibilities=oref
	Set key="" For i=1:1 Set value=newvalue.GetNext(.key) Quit:key=""  Set r%otherEligibilities(i)=value,i%otherEligibilities(i)=""
	Quit 1 }
zotherEligibilitiesSetObject(newvalue) public {
	Set sc=..otherEligibilities.DeSerialize($listget(newvalue)) If ('sc) Quit sc
	Quit 1 }
zotherEligibilitiesSetObjectId(newid) public {
	Quit ..otherEligibilitiesSetObject($select(newid="":"",1:$listbuild(newid_""))) }
zpresumptivePsychosisInfoNewObj() public {
	Set newobject=##class(dgeewebsvc.presumptivePsychosisInfo).%New() If newobject="" Quit ""
	Set ..presumptivePsychosisInfo=newobject
	Quit newobject }
zprimaryEligibilityNewObject() public {
	Set newobject=##class(dgeewebsvc.eligibilityInfo).%New() If newobject="" Quit ""
	Set ..primaryEligibility=newobject
	Quit newobject }
zpriorityGroupIsValid(%val) public {
	Q $s(%val'[","&&(",Group 1,Group 2,Group 3,Group 4,Group 5,Group 6,Group 7,Group 8,"[(","_$select(%val=$c(0):"",1:%val)_",")):1,1:$$Error^%apiOBJ(7205,%val,",Group 1,Group 2,Group 3,Group 4,Group 5,Group 6,Group 7,Group 8")) }
zprioritySubGroupIsValid(%val) public {
	Q $s(%val'[","&&(",a,c,e,g,b,d,"[(","_$select(%val=$c(0):"",1:%val)_",")):1,1:$$Error^%apiOBJ(7205,%val,",a,c,e,g,b,d")) }
zrecordCreatedDateIsValid(%val) public {
	RETURN:$zu(115,13)&&(%val=$c(0)) 1
	Set val=%val,%val=$select(%val=(%val\1):$zdate(%val,3,,,,,0,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3,,,,,0)_" "_%val,$length(%val)=10:%val_" 00:00:00",1:%val)
	Quit:($length(%val)<19||($zdatetimeh(%val,3,,,,,,0,,"")="")) $$Error^%apiOBJ(7208,val)
	Quit 1 }
zrecordCreatedDateLogicalToXSD(%val) public {
	Quit $select(%val="":"",1:$translate(%val," ","T")_"Z") }
zrecordCreatedDateNormalize(%val) public {
	Quit $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",%val=(%val\1):$zdate(%val,3,,,,,-672045,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3)_" "_$s(+$p(%val,".",2)=0:%val,1:$p(%val,".")_+("."_$e($p(%val,".",2),1,9))),$l(%val)=10:%val_" 00:00:00",$zdatetimeh(%val,3,,,,,,-672045,,"")="":"error",1:$zdatetime($zdatetimeh($p(%val,"."),3,,,,,,-672045,,""),3,,,,,,,-672045)_$s(+$p(%val,".",2)=0:"",1:+("."_$e($p(%val,".",2),1,9)))) }
zrecordCreatedDateOdbcToLogical(%val) public {
	Quit:%val="" ""
	If $zdatetimeh(%val,3,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,3,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	} elseif $zdatetimeh(%val,-1,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,-1,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	}
	Quit $s(%val'[".":%val,1:$zstrip($zstrip(%val,">","0"),">",".")) }
zrecordCreatedDateXSDToLogical(%val) public {
	If $length($get(%val),"T")'=2 Quit ""
	Set dt=$translate(%val,"T"," ")
	Set len=$length(%val)
	If $extract(%val,len)="Z" {
		Set dt=$extract(dt,1,len-1)
	} ElseIf $case($extract(%val,len-5),"+":1,"-":1,:0) {
		If $extract(%val,len-2)'=":" Quit ""
		Set dt=$extract(dt,1,len-6)
		Set f=$piece(dt,".",2) If f'="" Set f="."_f,dt=$piece(dt,".")
		Set t=$zdatetimeh(dt,3,1,,,,,0,,"") If t="" Quit ""
		Set d=$piece(t,",")
		Set s=$piece(t,",",2)
		Set z=($extract(%val,len-4,len-3)*60+$extract(%val,len-1,len))*60
		If $extract(%val,len-5)="-" {
			Set s=s+z
			If s>=(24*60*60) Set d=d+1,s=s-(24*60*60)
		} Else {
			Set s=s-z
			If s<0 Set d=d-1,s=s+(24*60*60)
		}
		Set dt=$zdatetime(d_","_s,3,1,0,,,,,0,,"")
		Quit $select(dt="":"",1:dt_f)
	}
	If $zdatetimeh(dt,3,1,,,,,0,,"")="" Quit ""
	Quit dt }
zrecordModifiedDateIsValid(%val) public {
	RETURN:$zu(115,13)&&(%val=$c(0)) 1
	Set val=%val,%val=$select(%val=(%val\1):$zdate(%val,3,,,,,0,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3,,,,,0)_" "_%val,$length(%val)=10:%val_" 00:00:00",1:%val)
	Quit:($length(%val)<19||($zdatetimeh(%val,3,,,,,,0,,"")="")) $$Error^%apiOBJ(7208,val)
	Quit 1 }
zrecordModifiedDateLogicalToXSD(%val) public {
	Quit $select(%val="":"",1:$translate(%val," ","T")_"Z") }
zrecordModifiedDateNormalize(%val) public {
	Quit $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",%val=(%val\1):$zdate(%val,3,,,,,-672045,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3)_" "_$s(+$p(%val,".",2)=0:%val,1:$p(%val,".")_+("."_$e($p(%val,".",2),1,9))),$l(%val)=10:%val_" 00:00:00",$zdatetimeh(%val,3,,,,,,-672045,,"")="":"error",1:$zdatetime($zdatetimeh($p(%val,"."),3,,,,,,-672045,,""),3,,,,,,,-672045)_$s(+$p(%val,".",2)=0:"",1:+("."_$e($p(%val,".",2),1,9)))) }
zrecordModifiedDateOdbcToLogica(%val) public {
	Quit:%val="" ""
	If $zdatetimeh(%val,3,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,3,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	} elseif $zdatetimeh(%val,-1,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,-1,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	}
	Quit $s(%val'[".":%val,1:$zstrip($zstrip(%val,">","0"),">",".")) }
zrecordModifiedDateXSDToLogical(%val) public {
	If $length($get(%val),"T")'=2 Quit ""
	Set dt=$translate(%val,"T"," ")
	Set len=$length(%val)
	If $extract(%val,len)="Z" {
		Set dt=$extract(dt,1,len-1)
	} ElseIf $case($extract(%val,len-5),"+":1,"-":1,:0) {
		If $extract(%val,len-2)'=":" Quit ""
		Set dt=$extract(dt,1,len-6)
		Set f=$piece(dt,".",2) If f'="" Set f="."_f,dt=$piece(dt,".")
		Set t=$zdatetimeh(dt,3,1,,,,,0,,"") If t="" Quit ""
		Set d=$piece(t,",")
		Set s=$piece(t,",",2)
		Set z=($extract(%val,len-4,len-3)*60+$extract(%val,len-1,len))*60
		If $extract(%val,len-5)="-" {
			Set s=s+z
			If s>=(24*60*60) Set d=d+1,s=s-(24*60*60)
		} Else {
			Set s=s-z
			If s<0 Set d=d-1,s=s+(24*60*60)
		}
		Set dt=$zdatetime(d_","_s,3,1,0,,,,,0,,"")
		Quit $select(dt="":"",1:dt_f)
	}
	If $zdatetimeh(dt,3,1,,,,,0,,"")="" Quit ""
	Quit dt }
zregistrationInfoNewObject() public {
	Set newobject=##class(dgeewebsvc.registrationInfo).%New() If newobject="" Quit ""
	Set ..registrationInfo=newobject
	Quit newobject }
zsecondaryEligibilitiesBuildVal(value,array) public {
	Quit ##class(%Collection.ListOfObj).BuildValueArray(value,.array)
}
zsecondaryEligibilitiesCollecti(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,$select(delim="":$C(13,10),1:delim))
}
zsecondaryEligibilitiesCollect2(val="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,",")
}
zsecondaryEligibilitiesDisplayT(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,$select(delim="":$C(13,10),1:delim))
}
zsecondaryEligibilitiesGetObjec(force=0) public {
	Set id=..secondaryEligibilities.Serialize(force)
	Quit $select(id="":"",1:$listbuild(id_"")) }
zsecondaryEligibilitiesGetObje2(force=0) public {
	Quit $listget(..secondaryEligibilitiesGetObject(force)) }
zsecondaryEligibilitiesGetSwizz(noswizzle=0) public {
	Set oref=##class(%Collection.ListOfObj).%New() If oref="" Quit ""
	Set modstate=$system.CLS.GetModifiedBits() Set r%secondaryEligibilities=oref Do $system.CLS.SetModifiedBits(modstate)
	Set oref.ElementType="dgeewebsvc.eligibilityInfo",oref.ElementClassType="",oref.Owner=+$this,oref.Storage=$this."secondaryEligibilities%i"(),oref.OrefStorage=oref.Storage+1
	Do $system.CLS.SetModified(oref,0)
	Quit oref }
zsecondaryEligibilitiesOdbcToCo(val="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,",")
}
zsecondaryEligibilitiesSet(newvalue) public {
	If '$isobject(newvalue),newvalue'="" Quit $$Error^%apiOBJ(5807,newvalue)
	If r%secondaryEligibilities=newvalue Quit 1
	If newvalue="" Kill i%secondaryEligibilities,r%secondaryEligibilities Set i%secondaryEligibilities="",r%secondaryEligibilities="" Quit 1
	Set oref=r%secondaryEligibilities Kill i%secondaryEligibilities,r%secondaryEligibilities Set i%secondaryEligibilities="",r%secondaryEligibilities=oref
	Set key="" For i=1:1 Set value=newvalue.GetNext(.key) Quit:key=""  Set r%secondaryEligibilities(i)=value,i%secondaryEligibilities(i)=""
	Quit 1 }
zsecondaryEligibilitiesSetObjec(newvalue) public {
	Set sc=..secondaryEligibilities.DeSerialize($listget(newvalue)) If ('sc) Quit sc
	Quit 1 }
zsecondaryEligibilitiesSetObje2(newid) public {
	Quit ..secondaryEligibilitiesSetObject($select(newid="":"",1:$listbuild(newid_""))) }
zserviceConnectionAwardNewObjec() public {
	Set newobject=##class(dgeewebsvc.serviceConnectionAwardInfo).%New() If newobject="" Quit ""
	Set ..serviceConnectionAward=newobject
	Quit newobject }
zspecialFactorsNewObject() public {
	Set newobject=##class(dgeewebsvc.specialFactorsInfo).%New() If newobject="" Quit ""
	Set ..specialFactors=newobject
	Quit newobject }
zuserEnrolleeValidThroughDispla(%val) public {
	Q $select(%val="":"",%val=$c(0)&&$zu(115,13):"",1:$s($in(%val,"","")'="":+$in(%val,"",%val),1:%val)) }
zuserEnrolleeValidThroughIsVali(%val) public {
	Quit $select(%val=$c(0)&&$zu(115,13):1,$number(%val,"I",-2147483648,2147483647)'="":1,$number(%val,"I")="":$$Error^%apiOBJ(7207,%val),%val<-2147483648:$$Error^%apiOBJ(7204,%val,-2147483648),1:$$Error^%apiOBJ(7203,%val,2147483647)) }
zuserEnrolleeValidThroughNormal(%val) public {
	Quit $select(%val=$c(0)&&$zu(115,13):"",1:%val\1) }
zuserEnrolleeValidThroughXSDToL(%val) public {
	Q $s($tr(%val,"Ee(),.")'=%val:"",1:$number(%val,"I",-2147483648,2147483647)) }
zveteranDisplayToLogical(%val) public {
	Quit $s(%val="":"",1:''%val) }
zveteranIsValid(%val="") public {
	Quit $case(%val,"":1,1:1,0:1,:$$Error^%apiOBJ(7206,%val)) }
zveteranLogicalToXSD(%val) public {
	Q $s(%val:"true",1:"false") }
zveteranNormalize(%val) public {
	Quit $s(%val="":"",1:%val\1) }
zveteranXSDToLogical(%val) public {
	Q $case(%val,"true":1,"false":0,1:1,0:0,:"") }
