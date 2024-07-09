 ;dgeewebsvc.eeSummary.1
 ;Generated for class dgeewebsvc.eeSummary.  Do NOT edit. 01/02/2024 02:40:37PM
 ;;57567474;dgeewebsvc.eeSummary
 ;
%BindExport(dev,Seen,RegisterOref,AllowedDepth,AllowedCapacity) public {
   i $d(Seen(+$this)) q 1
   Set Seen(+$this)=$this
   s sc = 1
 s proporef=..associations
 s proporef=..communityCareEligibilityInfo
 s proporef=..consentInfo
 s proporef=..deathRecond
 s proporef=..demographics
 s proporef=..eligibilityVerificationInfo
 s proporef=..employmentInfo
 s proporef=..enrollmentDeterminationInfo
 s proporef=..feeBasisList
 s proporef=..financialsInfo
 s proporef=..healthBenefitPlans
 s proporef=..incompetenceRulingInfo
 s proporef=..insuranceList
 s proporef=..militaryServiceInfo
 s proporef=..personInfo
 s proporef=..prisonerOfWarInfo
 s proporef=..purpleHeart
 s proporef=..relations
 s proporef=..sensitivityInfo
 s proporef=..spinalCordInjuryInfo
   d:RegisterOref InitObjVar^%SYS.BINDSRV($this)
   i dev'="" s t=$io u dev i $zobjexport($this_"",3)+$zobjexport($this."%%OID",3)+$zobjexport($this,3)!1 u t
 If AllowedDepth>0 Set AllowedDepth = AllowedDepth - 1
 If AllowedCapacity>0 Set AllowedCapacity = AllowedCapacity - 1/20
 s proporef=..associations
       i proporef'="" d
  . s idx="" i proporef'="" f  s elemoref=proporef.GetNext(.idx) q:idx=""  s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=elemoref.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc)
  q:('sc) sc
       i proporef'="",dev'="" s t=$io u dev i $zobjexport(proporef_"",3)+$zobjexport(proporef."%%OID",3)+$zobjexport(proporef,3)!1 u t
       if proporef'="",dev'="" d
       . s t=$io u dev i $zobjexport(3_"",3)!1 u t
       . s t=$io u dev i $zobjexport(proporef.Count()_"",3)!1 u t
     . for i=1:1:proporef.Count()  s t=$io u dev i $zobjexport(proporef.GetAt(i)_"",3)!1 u t
 s proporef=..communityCareEligibilityInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..consentInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..deathRecond
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..demographics
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..eligibilityVerificationInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..employmentInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..enrollmentDeterminationInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..feeBasisList
       i proporef'="" d
  . s idx="" i proporef'="" f  s elemoref=proporef.GetNext(.idx) q:idx=""  s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=elemoref.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc)
  q:('sc) sc
       i proporef'="",dev'="" s t=$io u dev i $zobjexport(proporef_"",3)+$zobjexport(proporef."%%OID",3)+$zobjexport(proporef,3)!1 u t
       if proporef'="",dev'="" d
       . s t=$io u dev i $zobjexport(3_"",3)!1 u t
       . s t=$io u dev i $zobjexport(proporef.Count()_"",3)!1 u t
     . for i=1:1:proporef.Count()  s t=$io u dev i $zobjexport(proporef.GetAt(i)_"",3)!1 u t
 s proporef=..financialsInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..healthBenefitPlans
       i proporef'="" d
  . s idx="" i proporef'="" f  s elemoref=proporef.GetNext(.idx) q:idx=""  s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=elemoref.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc)
  q:('sc) sc
       i proporef'="",dev'="" s t=$io u dev i $zobjexport(proporef_"",3)+$zobjexport(proporef."%%OID",3)+$zobjexport(proporef,3)!1 u t
       if proporef'="",dev'="" d
       . s t=$io u dev i $zobjexport(3_"",3)!1 u t
       . s t=$io u dev i $zobjexport(proporef.Count()_"",3)!1 u t
     . for i=1:1:proporef.Count()  s t=$io u dev i $zobjexport(proporef.GetAt(i)_"",3)!1 u t
 s proporef=..incompetenceRulingInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..insuranceList
       i proporef'="" d
  . s idx="" i proporef'="" f  s elemoref=proporef.GetNext(.idx) q:idx=""  s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=elemoref.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc)
  q:('sc) sc
       i proporef'="",dev'="" s t=$io u dev i $zobjexport(proporef_"",3)+$zobjexport(proporef."%%OID",3)+$zobjexport(proporef,3)!1 u t
       if proporef'="",dev'="" d
       . s t=$io u dev i $zobjexport(3_"",3)!1 u t
       . s t=$io u dev i $zobjexport(proporef.Count()_"",3)!1 u t
     . for i=1:1:proporef.Count()  s t=$io u dev i $zobjexport(proporef.GetAt(i)_"",3)!1 u t
 s proporef=..militaryServiceInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..personInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..prisonerOfWarInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..purpleHeart
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..relations
       i proporef'="" d
  . s idx="" i proporef'="" f  s elemoref=proporef.GetNext(.idx) q:idx=""  s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=elemoref.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc)
  q:('sc) sc
       i proporef'="",dev'="" s t=$io u dev i $zobjexport(proporef_"",3)+$zobjexport(proporef."%%OID",3)+$zobjexport(proporef,3)!1 u t
       if proporef'="",dev'="" d
       . s t=$io u dev i $zobjexport(3_"",3)!1 u t
       . s t=$io u dev i $zobjexport(proporef.Count()_"",3)!1 u t
     . for i=1:1:proporef.Count()  s t=$io u dev i $zobjexport(proporef.GetAt(i)_"",3)!1 u t
 s proporef=..sensitivityInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
 s proporef=..spinalCordInjuryInfo
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
   Quit sc }
%Construct(initvalue) public {
	Set m%associations=0,M%associations=0,m%feeBasisList=0,M%feeBasisList=0,m%healthBenefitPlans=0,M%healthBenefitPlans=0,m%insuranceList=0,M%insuranceList=0
	Set m%relations=0,M%relations=0
	Quit 1 }
%ConstructCloneInit(object,deep=0,cloned,location) public {
	Set i%associations="",r%associations=""
	Set i%feeBasisList="",r%feeBasisList=""
	Set i%healthBenefitPlans="",r%healthBenefitPlans=""
	Set i%insuranceList="",r%insuranceList=""
	Set i%relations="",r%relations=""
	Set i%"%%OID"=""
	If deep>0 {
		Set key="" For  Set value=..associations.GetNext(.key) Quit:key=""  Set r%associations(key)=$select(value="":"",1:value.%ConstructClone(1,.cloned)),i%associations(key)=""
		If $isobject(..communityCareEligibilityInfo)=1 Set r%communityCareEligibilityInfo=r%communityCareEligibilityInfo.%ConstructClone(1,.cloned),i%communityCareEligibilityInfo=""
		If $isobject(..consentInfo)=1 Set r%consentInfo=r%consentInfo.%ConstructClone(1,.cloned),i%consentInfo=""
		If $isobject(..deathRecond)=1 Set r%deathRecond=r%deathRecond.%ConstructClone(1,.cloned),i%deathRecond=""
		If $isobject(..demographics)=1 Set r%demographics=r%demographics.%ConstructClone(1,.cloned),i%demographics=""
		If $isobject(..eligibilityVerificationInfo)=1 Set r%eligibilityVerificationInfo=r%eligibilityVerificationInfo.%ConstructClone(1,.cloned),i%eligibilityVerificationInfo=""
		If $isobject(..employmentInfo)=1 Set r%employmentInfo=r%employmentInfo.%ConstructClone(1,.cloned),i%employmentInfo=""
		If $isobject(..enrollmentDeterminationInfo)=1 Set r%enrollmentDeterminationInfo=r%enrollmentDeterminationInfo.%ConstructClone(1,.cloned),i%enrollmentDeterminationInfo=""
		Set key="" For  Set value=..feeBasisList.GetNext(.key) Quit:key=""  Set r%feeBasisList(key)=$select(value="":"",1:value.%ConstructClone(1,.cloned)),i%feeBasisList(key)=""
		If $isobject(..financialsInfo)=1 Set r%financialsInfo=r%financialsInfo.%ConstructClone(1,.cloned),i%financialsInfo=""
		Set key="" For  Set value=..healthBenefitPlans.GetNext(.key) Quit:key=""  Set r%healthBenefitPlans(key)=$select(value="":"",1:value.%ConstructClone(1,.cloned)),i%healthBenefitPlans(key)=""
		If $isobject(..incompetenceRulingInfo)=1 Set r%incompetenceRulingInfo=r%incompetenceRulingInfo.%ConstructClone(1,.cloned),i%incompetenceRulingInfo=""
		Set key="" For  Set value=..insuranceList.GetNext(.key) Quit:key=""  Set r%insuranceList(key)=$select(value="":"",1:value.%ConstructClone(1,.cloned)),i%insuranceList(key)=""
		If $isobject(..militaryServiceInfo)=1 Set r%militaryServiceInfo=r%militaryServiceInfo.%ConstructClone(1,.cloned),i%militaryServiceInfo=""
		If $isobject(..personInfo)=1 Set r%personInfo=r%personInfo.%ConstructClone(1,.cloned),i%personInfo=""
		If $isobject(..prisonerOfWarInfo)=1 Set r%prisonerOfWarInfo=r%prisonerOfWarInfo.%ConstructClone(1,.cloned),i%prisonerOfWarInfo=""
		If $isobject(..purpleHeart)=1 Set r%purpleHeart=r%purpleHeart.%ConstructClone(1,.cloned),i%purpleHeart=""
		Set key="" For  Set value=..relations.GetNext(.key) Quit:key=""  Set r%relations(key)=$select(value="":"",1:value.%ConstructClone(1,.cloned)),i%relations(key)=""
		If $isobject(..sensitivityInfo)=1 Set r%sensitivityInfo=r%sensitivityInfo.%ConstructClone(1,.cloned),i%sensitivityInfo=""
		If $isobject(..spinalCordInjuryInfo)=1 Set r%spinalCordInjuryInfo=r%spinalCordInjuryInfo.%ConstructClone(1,.cloned),i%spinalCordInjuryInfo=""
	}
	Quit 1 }
%Destruct() public {
	If $isobject($get(r%associations))=1,$zobjcnt(r%associations)>1 Do r%associations.%Disconnect()
	If $isobject($get(r%feeBasisList))=1,$zobjcnt(r%feeBasisList)>1 Do r%feeBasisList.%Disconnect()
	If $isobject($get(r%healthBenefitPlans))=1,$zobjcnt(r%healthBenefitPlans)>1 Do r%healthBenefitPlans.%Disconnect()
	If $isobject($get(r%insuranceList))=1,$zobjcnt(r%insuranceList)>1 Do r%insuranceList.%Disconnect()
	If $isobject($get(r%relations))=1,$zobjcnt(r%relations)>1 Do r%relations.%Disconnect()
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
	Set key=""
	For  {
		Set key=$order(r%associations(key),1,Poref) Quit:key=""
		If $isobject(Poref)=1 Set:'$data(%objTX(0,+Poref)) %objTX(6,$i(%objTX(6)))=Poref
	}
	Set Poref=r%communityCareEligibilityInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%consentInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%deathRecond If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%demographics If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%eligibilityVerificationInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%employmentInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%enrollmentDeterminationInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set key=""
	For  {
		Set key=$order(r%feeBasisList(key),1,Poref) Quit:key=""
		If $isobject(Poref)=1 Set:'$data(%objTX(0,+Poref)) %objTX(6,$i(%objTX(6)))=Poref
	}
	Set Poref=r%financialsInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set key=""
	For  {
		Set key=$order(r%healthBenefitPlans(key),1,Poref) Quit:key=""
		If $isobject(Poref)=1 Set:'$data(%objTX(0,+Poref)) %objTX(6,$i(%objTX(6)))=Poref
	}
	Set Poref=r%incompetenceRulingInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set key=""
	For  {
		Set key=$order(r%insuranceList(key),1,Poref) Quit:key=""
		If $isobject(Poref)=1 Set:'$data(%objTX(0,+Poref)) %objTX(6,$i(%objTX(6)))=Poref
	}
	Set Poref=r%militaryServiceInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%personInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%prisonerOfWarInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%purpleHeart If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set key=""
	For  {
		Set key=$order(r%relations(key),1,Poref) Quit:key=""
		If $isobject(Poref)=1 Set:'$data(%objTX(0,+Poref)) %objTX(6,$i(%objTX(6)))=Poref
	}
	Set Poref=r%sensitivityInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
	Set Poref=r%spinalCordInjuryInfo If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
exit	Quit sc }
zXMLDTD(top,format,input,dtdlist)
 Quit ##class(%XML.Implementation).XMLDTD("dgeewebsvc.eeSummary",.top,.format,.input,.dtdlist)
zXMLExportInternal()
 New tag,summary,attrsVal,savelocal,aval,k,tmpPrefix,prefixDepth,hasNoContent,hasElement,topAttrs,beginprefix,endprefix,savexsiAttrs,initialxsiAttrs,initlist,initialCR,inlineFlag,popAtEnd,saveTopPrefix,saveTypesPrefix,saveAttrsPrefix,saveUsePrefix,initlist
 Set $ztrap="XMLExportInternalTrap",popAtEnd=0
 Set summary=summaryArg,initialxsiAttrs=xsiAttrs
 If group Quit $$Error^%apiOBJ(6386,"dgeewebsvc.eeSummary")
 If indentFlag Set initialCR=($extract(currentIndent,1,2)=$c(13,10))
 Set id=createId
 Set temp=""
 If id'="" {
   If $piece($get(idlist(+$this)),",",2)'="" Quit 1
   Set idlist(+$this)=id_",1"
 }
 If encoded Set initlist=$lb($get(oreflist),inlineFlagArg),oreflist=1,inlineFlag=inlineFlagArg
 If 'nocycle,('encoded||inlineFlag) {
   If $data(oreflist($this)) Quit $$Error^%apiOBJ(6296,"dgeewebsvc.eeSummary")
   Set oreflist($this)=""
 }
 Set tag=$get(topArg)
 Set tmpi=(($get(typeAttr)'="")&&(typeAttr'="dgeewebsvc.eeSummary"))
 If $IsObject(namespaces) {
     Set popAtEnd=1,saveTopPrefix=topPrefix,saveTypesPrefix=typesPrefix,saveAttrsPrefix=attrsPrefix,saveUsePrefix=usePrefix
     Set sc=namespaces.PushNodeForExport("",$get(local,0),(encoded||tmpi),"",,.topPrefix,.topAttrs,.typesPrefix,.attrsPrefix,.usePrefix)
     If 'sc Quit sc
   Set beginprefix=$select(namespaces.ElementQualified&&usePrefix:typesPrefix,1:"")
   If topAttrs'="" Set temp=temp_" "_topAttrs
   If tag="" Set tag="eeSummary"
   Set xsitype=namespaces.OutputTypeAttribute
 } Else {
   Set saveTopPrefix=topPrefix,saveTypesPrefix=typesPrefix,saveAttrsPrefix=attrsPrefix,saveUsePrefix=usePrefix
   Set typesPrefix=namespaces If (typesPrefix'=""),($extract(typesPrefix,*)'=":") Set typesPrefix=typesPrefix_":"
   If 'encoded Set namespaces=""
   Set (topPrefix,attrsPrefix,topAttrs,beginprefix)=""
   If tag="" Set tag=typesPrefix_"eeSummary"
   Set xsitype=0
 }
 Set local=+$get(local),savelocal=local
 Set endprefix="</"_beginprefix,beginprefix="<"_beginprefix
 If tmpi Set temp=temp_" "_xsiPrefix_"type="""_typesPrefix_"eeSummary"""_xsiAttrs,xsiAttrs=""
   If id'="" Set temp=" "_$select($get(soap12):soapPrefix_"id",1:"id")_"=""id"_id_""""_temp
 If encoded Set temp=temp_xsiAttrs,xsiAttrs=""
 If indentFlag Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } Set currentIndent=$select(initialCR:"",1:$c(13,10))_currentIndent_indentChars
 If tag[":" Set topPrefix=$piece(tag,":"),tag=$piece(tag,":",2)  If topPrefix'="" Set topPrefix=topPrefix_":"
 Set %xmlmsg="<"_topPrefix_tag_temp if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set attrsVal=attrsArg,attrsArg="" Set %xmlmsg=attrsVal if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set %xmlmsg=">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set aval=..associations
 Set k="" Set:deepFlag val=aval.GetNext(.k) If k'="" {
   If encoded {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set temp="",temp1=$parameter("dgeewebsvc.associationInfo","NAMESPACE")
     Set temp1=$select((temp1'="")&&$IsObject(namespaces):namespaces.GetNamespacePrefix(temp1,.temp),1:typesPrefix)
     If soap12 { Set %xmlmsg=beginprefix_"associations"_$select(xsitype:"",1:" "_soapPrefix_"itemType="""_temp1_$select($parameter("dgeewebsvc.associationInfo","XMLSUMMARY")'="":"s_associationInfo",1:"associationInfo")_"""")_" "_soapPrefix_"arraySize="""_aval.Count()_""""_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     } Else { Set %xmlmsg=beginprefix_"associations "_$select(xsitype:xsiPrefix_"type="""_soapPrefix_"Array""",1:soapPrefix_"arrayType="""_temp1_$select($parameter("dgeewebsvc.associationInfo","XMLSUMMARY")'="":"s_associationInfo",1:"associationInfo")_"["_aval.Count()_"]""")_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } }
   }
   Else {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set %xmlmsg=beginprefix_"associations>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
   While k'="" {
     If $IsObject(val) {
       Set id=""
       If encoded,'inlineFlag {
         Set temp=$select($parameter("dgeewebsvc.associationInfo","XMLSUMMARY")'="":-1,1:1)
         Set id=+$get(idlist(temp*val))
         If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
       }
       If +id'=0 {
         Set %xmlmsg=currentIndent_beginprefix_"association "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
       } Else { if id=0 Set id=$increment(idlist)
         Set topArg="association",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.associationInfo"),local=1,savexsiAttrs=xsiAttrs
         Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
       }
     } Else {
       Set %xmlmsg=currentIndent_beginprefix_"association "_xsiPrefix_"nil=""true"""_xsiAttrs_"/>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     }
     Set val=aval.GetNext(.k)
   }
   If indentFlag Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   Set %xmlmsg=endprefix_"associations>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..deathRecond
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.deathRecondInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"deathRecond "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="deathRecond",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.deathRecondInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..demographics
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.demographicInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"demographics "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="demographics",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.demographicInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..eligibilityVerificationInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.eligibilityVerificationInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"eligibilityVerificationInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="eligibilityVerificationInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.eligibilityVerificationInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..employmentInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.employmentInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"employmentInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="employmentInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.employmentInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..enrollmentDeterminationInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.enrollmentDeterminationInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"enrollmentDeterminationInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="enrollmentDeterminationInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.enrollmentDeterminationInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set aval=..feeBasisList
 Set k="" Set:deepFlag val=aval.GetNext(.k) If k'="" {
   If encoded {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set temp="",temp1=$parameter("dgeewebsvc.feeBasisInfo","NAMESPACE")
     Set temp1=$select((temp1'="")&&$IsObject(namespaces):namespaces.GetNamespacePrefix(temp1,.temp),1:typesPrefix)
     If soap12 { Set %xmlmsg=beginprefix_"feeBasisList"_$select(xsitype:"",1:" "_soapPrefix_"itemType="""_temp1_$select($parameter("dgeewebsvc.feeBasisInfo","XMLSUMMARY")'="":"s_feeBasisInfo",1:"feeBasisInfo")_"""")_" "_soapPrefix_"arraySize="""_aval.Count()_""""_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     } Else { Set %xmlmsg=beginprefix_"feeBasisList "_$select(xsitype:xsiPrefix_"type="""_soapPrefix_"Array""",1:soapPrefix_"arrayType="""_temp1_$select($parameter("dgeewebsvc.feeBasisInfo","XMLSUMMARY")'="":"s_feeBasisInfo",1:"feeBasisInfo")_"["_aval.Count()_"]""")_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } }
   }
   Else {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set %xmlmsg=beginprefix_"feeBasisList>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
   While k'="" {
     If $IsObject(val) {
       Set id=""
       If encoded,'inlineFlag {
         Set temp=$select($parameter("dgeewebsvc.feeBasisInfo","XMLSUMMARY")'="":-1,1:1)
         Set id=+$get(idlist(temp*val))
         If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
       }
       If +id'=0 {
         Set %xmlmsg=currentIndent_beginprefix_"feeBasis "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
       } Else { if id=0 Set id=$increment(idlist)
         Set topArg="feeBasis",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.feeBasisInfo"),local=1,savexsiAttrs=xsiAttrs
         Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
       }
     } Else {
       Set %xmlmsg=currentIndent_beginprefix_"feeBasis "_xsiPrefix_"nil=""true"""_xsiAttrs_"/>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     }
     Set val=aval.GetNext(.k)
   }
   If indentFlag Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   Set %xmlmsg=endprefix_"feeBasisList>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..financialsInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.financialsInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"financialsInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="financialsInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.financialsInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..incompetenceRulingInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.incompetenceRulingInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"incompetenceRulingInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="incompetenceRulingInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.incompetenceRulingInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set aval=..insuranceList
 Set k="" Set:deepFlag val=aval.GetNext(.k) If k'="" {
   If encoded {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set temp="",temp1=$parameter("dgeewebsvc.insuranceInfo","NAMESPACE")
     Set temp1=$select((temp1'="")&&$IsObject(namespaces):namespaces.GetNamespacePrefix(temp1,.temp),1:typesPrefix)
     If soap12 { Set %xmlmsg=beginprefix_"insuranceList"_$select(xsitype:"",1:" "_soapPrefix_"itemType="""_temp1_$select($parameter("dgeewebsvc.insuranceInfo","XMLSUMMARY")'="":"s_insuranceInfo",1:"insuranceInfo")_"""")_" "_soapPrefix_"arraySize="""_aval.Count()_""""_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     } Else { Set %xmlmsg=beginprefix_"insuranceList "_$select(xsitype:xsiPrefix_"type="""_soapPrefix_"Array""",1:soapPrefix_"arrayType="""_temp1_$select($parameter("dgeewebsvc.insuranceInfo","XMLSUMMARY")'="":"s_insuranceInfo",1:"insuranceInfo")_"["_aval.Count()_"]""")_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } }
   }
   Else {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set %xmlmsg=beginprefix_"insuranceList>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
   While k'="" {
     If $IsObject(val) {
       Set id=""
       If encoded,'inlineFlag {
         Set temp=$select($parameter("dgeewebsvc.insuranceInfo","XMLSUMMARY")'="":-1,1:1)
         Set id=+$get(idlist(temp*val))
         If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
       }
       If +id'=0 {
         Set %xmlmsg=currentIndent_beginprefix_"insurance "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
       } Else { if id=0 Set id=$increment(idlist)
         Set topArg="insurance",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.insuranceInfo"),local=1,savexsiAttrs=xsiAttrs
         Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
       }
     } Else {
       Set %xmlmsg=currentIndent_beginprefix_"insurance "_xsiPrefix_"nil=""true"""_xsiAttrs_"/>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     }
     Set val=aval.GetNext(.k)
   }
   If indentFlag Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   Set %xmlmsg=endprefix_"insuranceList>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..militaryServiceInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.militaryServiceInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"militaryServiceInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="militaryServiceInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.militaryServiceInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..prisonerOfWarInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.prisonerOfWarInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"prisonerOfWarInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="prisonerOfWarInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.prisonerOfWarInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..purpleHeart
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.purpleHeartInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"purpleHeart "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="purpleHeart",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.purpleHeartInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set aval=..relations
 Set k="" Set:deepFlag val=aval.GetNext(.k) If k'="" {
   If encoded {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set temp="",temp1=$parameter("dgeewebsvc.relationInfo","NAMESPACE")
     Set temp1=$select((temp1'="")&&$IsObject(namespaces):namespaces.GetNamespacePrefix(temp1,.temp),1:typesPrefix)
     If soap12 { Set %xmlmsg=beginprefix_"relations"_$select(xsitype:"",1:" "_soapPrefix_"itemType="""_temp1_$select($parameter("dgeewebsvc.relationInfo","XMLSUMMARY")'="":"s_relationInfo",1:"relationInfo")_"""")_" "_soapPrefix_"arraySize="""_aval.Count()_""""_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     } Else { Set %xmlmsg=beginprefix_"relations "_$select(xsitype:xsiPrefix_"type="""_soapPrefix_"Array""",1:soapPrefix_"arrayType="""_temp1_$select($parameter("dgeewebsvc.relationInfo","XMLSUMMARY")'="":"s_relationInfo",1:"relationInfo")_"["_aval.Count()_"]""")_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } }
   }
   Else {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set %xmlmsg=beginprefix_"relations>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
   While k'="" {
     If $IsObject(val) {
       Set id=""
       If encoded,'inlineFlag {
         Set temp=$select($parameter("dgeewebsvc.relationInfo","XMLSUMMARY")'="":-1,1:1)
         Set id=+$get(idlist(temp*val))
         If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
       }
       If +id'=0 {
         Set %xmlmsg=currentIndent_beginprefix_"relation "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
       } Else { if id=0 Set id=$increment(idlist)
         Set topArg="relation",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.relationInfo"),local=1,savexsiAttrs=xsiAttrs
         Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
       }
     } Else {
       Set %xmlmsg=currentIndent_beginprefix_"relation "_xsiPrefix_"nil=""true"""_xsiAttrs_"/>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     }
     Set val=aval.GetNext(.k)
   }
   If indentFlag Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   Set %xmlmsg=endprefix_"relations>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..sensitivityInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.sensitivityInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"sensitivityInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="sensitivityInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.sensitivityInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..spinalCordInjuryInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.spinalCordInjuryInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"spinalCordInjuryInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="spinalCordInjuryInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.spinalCordInjuryInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..personInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.personInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"personInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="personInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.personInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..consentInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.consentInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"consentInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="consentInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.consentInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set val=..communityCareEligibilityInfo
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("dgeewebsvc.communityCareEligibilityInfo","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"communityCareEligibilityInfo "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="communityCareEligibilityInfo",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.communityCareEligibilityInfo"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 Set aval=..healthBenefitPlans
 Set k="" Set:deepFlag val=aval.GetNext(.k) If k'="" {
   If encoded {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set temp="",temp1=$parameter("dgeewebsvc.healthBenefitPlanInfo","NAMESPACE")
     Set temp1=$select((temp1'="")&&$IsObject(namespaces):namespaces.GetNamespacePrefix(temp1,.temp),1:typesPrefix)
     If soap12 { Set %xmlmsg=beginprefix_"healthBenefitPlans"_$select(xsitype:"",1:" "_soapPrefix_"itemType="""_temp1_$select($parameter("dgeewebsvc.healthBenefitPlanInfo","XMLSUMMARY")'="":"s_healthBenefitPlanInfo",1:"healthBenefitPlanInfo")_"""")_" "_soapPrefix_"arraySize="""_aval.Count()_""""_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     } Else { Set %xmlmsg=beginprefix_"healthBenefitPlans "_$select(xsitype:xsiPrefix_"type="""_soapPrefix_"Array""",1:soapPrefix_"arrayType="""_temp1_$select($parameter("dgeewebsvc.healthBenefitPlanInfo","XMLSUMMARY")'="":"s_healthBenefitPlanInfo",1:"healthBenefitPlanInfo")_"["_aval.Count()_"]""")_""_temp_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } }
   }
   Else {
     If indentFlag Set %xmlmsg=currentIndent Set currentIndent=currentIndent_indentChars if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     Set %xmlmsg=beginprefix_"healthBenefitPlans>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
   While k'="" {
     If $IsObject(val) {
       Set id=""
       If encoded,'inlineFlag {
         Set temp=$select($parameter("dgeewebsvc.healthBenefitPlanInfo","XMLSUMMARY")'="":-1,1:1)
         Set id=+$get(idlist(temp*val))
         If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
       }
       If +id'=0 {
         Set %xmlmsg=currentIndent_beginprefix_"healthBenefitPlan "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
       } Else { if id=0 Set id=$increment(idlist)
         Set topArg="healthBenefitPlan",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"dgeewebsvc.healthBenefitPlanInfo"),local=1,savexsiAttrs=xsiAttrs
         Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
       }
     } Else {
       Set %xmlmsg=currentIndent_beginprefix_"healthBenefitPlan "_xsiPrefix_"nil=""true"""_xsiAttrs_"/>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
     }
     Set val=aval.GetNext(.k)
   }
   If indentFlag Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   Set %xmlmsg=endprefix_"healthBenefitPlans>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
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
     If $classname(val)="dgeewebsvc.eeSummary" {
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
 Quit ##class(%XML.Implementation).XMLGetSchemaImports("dgeewebsvc.eeSummary",.imports,.classes)
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
 If bareProjection Quit $$Error^%apiOBJ(6386,"dgeewebsvc.eeSummary")
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
 If tag="associations" {
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
         If 'encoded,(@(tree)@("d",$zlascii(innerlist,9))'="association") Goto XMLImportBadTag
         If ($get(namespace)'=""),'$case($zwascii(innerlist,19),0:1,nsIndex:1,:0) Goto XMLImportNS
         If encoded Set saveinner=inner,saveinnerlist=innerlist
         If encoded,$$XMLImportId() {
           Set data=idlist(inner)
         } Else {
           If 'sc Goto XMLImportExit
           Do XMLImportAttrinner()
           Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
           If (class="") || (class="associationInfo") {
             Set class="dgeewebsvc.associationInfo"
           } Else {
             If $length(class,":")=2 Set class=$piece(class,":",2)
             Set class=$get(^oddCOM("dgeewebsvc.associationInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.associationInfo","s",class)) If class="" Set class=0
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
         If data'="" Do ..associations.Insert(data)
       }
       For  { Set descriptor=$piece(inner,",",2)+4 Set inner=$piece(inner,",",1)_","_descriptor Set descriptor=$zlascii(childlist,descriptor) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set inner=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,inner,.descriptor) } Else {Set inner="" }} Quit:inner=""  Quit:(descriptor#16)'=2  }
     }
     Quit:('sc)
   }
   If encoded Set child=savechild,childlist=savechildlist
   Goto XMLLOOP } }
 If tag="deathRecond" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="deathRecondInfo") {
       Set class="dgeewebsvc.deathRecondInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.deathRecondInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.deathRecondInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..deathRecond=data
   Goto XMLLOOP } }
 If tag="demographics" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="demographicInfo") {
       Set class="dgeewebsvc.demographicInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.demographicInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.demographicInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..demographics=data
   Goto XMLLOOP } }
 If tag="eligibilityVerificationInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="eligibilityVerificationInfo") {
       Set class="dgeewebsvc.eligibilityVerificationInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.eligibilityVerificationInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.eligibilityVerificationInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..eligibilityVerificationInfo=data
   Goto XMLLOOP } }
 If tag="employmentInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="employmentInfo") {
       Set class="dgeewebsvc.employmentInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.employmentInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.employmentInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..employmentInfo=data
   Goto XMLLOOP } }
 If tag="enrollmentDeterminationInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="enrollmentDeterminationInfo") {
       Set class="dgeewebsvc.enrollmentDeterminationInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.enrollmentDeterminationInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.enrollmentDeterminationInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..enrollmentDeterminationInfo=data
   Goto XMLLOOP } }
 If tag="feeBasisList" {
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
         If 'encoded,(@(tree)@("d",$zlascii(innerlist,9))'="feeBasis") Goto XMLImportBadTag
         If ($get(namespace)'=""),'$case($zwascii(innerlist,19),0:1,nsIndex:1,:0) Goto XMLImportNS
         If encoded Set saveinner=inner,saveinnerlist=innerlist
         If encoded,$$XMLImportId() {
           Set data=idlist(inner)
         } Else {
           If 'sc Goto XMLImportExit
           Do XMLImportAttrinner()
           Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
           If (class="") || (class="feeBasisInfo") {
             Set class="dgeewebsvc.feeBasisInfo"
           } Else {
             If $length(class,":")=2 Set class=$piece(class,":",2)
             Set class=$get(^oddCOM("dgeewebsvc.feeBasisInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.feeBasisInfo","s",class)) If class="" Set class=0
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
         If data'="" Do ..feeBasisList.Insert(data)
       }
       For  { Set descriptor=$piece(inner,",",2)+4 Set inner=$piece(inner,",",1)_","_descriptor Set descriptor=$zlascii(childlist,descriptor) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set inner=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,inner,.descriptor) } Else {Set inner="" }} Quit:inner=""  Quit:(descriptor#16)'=2  }
     }
     Quit:('sc)
   }
   If encoded Set child=savechild,childlist=savechildlist
   Goto XMLLOOP } }
 If tag="financialsInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="financialsInfo") {
       Set class="dgeewebsvc.financialsInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.financialsInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.financialsInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..financialsInfo=data
   Goto XMLLOOP } }
 If tag="incompetenceRulingInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="incompetenceRulingInfo") {
       Set class="dgeewebsvc.incompetenceRulingInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.incompetenceRulingInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.incompetenceRulingInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..incompetenceRulingInfo=data
   Goto XMLLOOP } }
 If tag="insuranceList" {
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
         If 'encoded,(@(tree)@("d",$zlascii(innerlist,9))'="insurance") Goto XMLImportBadTag
         If ($get(namespace)'=""),'$case($zwascii(innerlist,19),0:1,nsIndex:1,:0) Goto XMLImportNS
         If encoded Set saveinner=inner,saveinnerlist=innerlist
         If encoded,$$XMLImportId() {
           Set data=idlist(inner)
         } Else {
           If 'sc Goto XMLImportExit
           Do XMLImportAttrinner()
           Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
           If (class="") || (class="insuranceInfo") {
             Set class="dgeewebsvc.insuranceInfo"
           } Else {
             If $length(class,":")=2 Set class=$piece(class,":",2)
             Set class=$get(^oddCOM("dgeewebsvc.insuranceInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.insuranceInfo","s",class)) If class="" Set class=0
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
         If data'="" Do ..insuranceList.Insert(data)
       }
       For  { Set descriptor=$piece(inner,",",2)+4 Set inner=$piece(inner,",",1)_","_descriptor Set descriptor=$zlascii(childlist,descriptor) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set inner=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,inner,.descriptor) } Else {Set inner="" }} Quit:inner=""  Quit:(descriptor#16)'=2  }
     }
     Quit:('sc)
   }
   If encoded Set child=savechild,childlist=savechildlist
   Goto XMLLOOP } }
 If tag="militaryServiceInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="militaryServiceInfo") {
       Set class="dgeewebsvc.militaryServiceInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.militaryServiceInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.militaryServiceInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..militaryServiceInfo=data
   Goto XMLLOOP } }
 If tag="prisonerOfWarInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="prisonerOfWarInfo") {
       Set class="dgeewebsvc.prisonerOfWarInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.prisonerOfWarInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.prisonerOfWarInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..prisonerOfWarInfo=data
   Goto XMLLOOP } }
 If tag="purpleHeart" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="purpleHeartInfo") {
       Set class="dgeewebsvc.purpleHeartInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.purpleHeartInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.purpleHeartInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..purpleHeart=data
   Goto XMLLOOP } }
 If tag="relations" {
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
         If 'encoded,(@(tree)@("d",$zlascii(innerlist,9))'="relation") Goto XMLImportBadTag
         If ($get(namespace)'=""),'$case($zwascii(innerlist,19),0:1,nsIndex:1,:0) Goto XMLImportNS
         If encoded Set saveinner=inner,saveinnerlist=innerlist
         If encoded,$$XMLImportId() {
           Set data=idlist(inner)
         } Else {
           If 'sc Goto XMLImportExit
           Do XMLImportAttrinner()
           Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
           If (class="") || (class="relationInfo") {
             Set class="dgeewebsvc.relationInfo"
           } Else {
             If $length(class,":")=2 Set class=$piece(class,":",2)
             Set class=$get(^oddCOM("dgeewebsvc.relationInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.relationInfo","s",class)) If class="" Set class=0
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
         If data'="" Do ..relations.Insert(data)
       }
       For  { Set descriptor=$piece(inner,",",2)+4 Set inner=$piece(inner,",",1)_","_descriptor Set descriptor=$zlascii(childlist,descriptor) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set inner=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,inner,.descriptor) } Else {Set inner="" }} Quit:inner=""  Quit:(descriptor#16)'=2  }
     }
     Quit:('sc)
   }
   If encoded Set child=savechild,childlist=savechildlist
   Goto XMLLOOP } }
 If tag="sensitivityInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="sensitivityInfo") {
       Set class="dgeewebsvc.sensitivityInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.sensitivityInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.sensitivityInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..sensitivityInfo=data
   Goto XMLLOOP } }
 If tag="spinalCordInjuryInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="spinalCordInjuryInfo") {
       Set class="dgeewebsvc.spinalCordInjuryInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.spinalCordInjuryInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.spinalCordInjuryInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..spinalCordInjuryInfo=data
   Goto XMLLOOP } }
 If tag="personInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="personInfo") {
       Set class="dgeewebsvc.personInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.personInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.personInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..personInfo=data
   Goto XMLLOOP } }
 If tag="consentInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="consentInfo") {
       Set class="dgeewebsvc.consentInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.consentInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.consentInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..consentInfo=data
   Goto XMLLOOP } }
 If tag="communityCareEligibilityInfo" {
   If ($get(namespace)="")||$case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If encoded Set savechild=child,savechildlist=childlist
   If encoded,$$XMLImportIdChild() {
     Set data=idlist(child)
   } Else { Goto:'sc XMLImportExit
     Do XMLImportAttrchild()
     Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
     If (class="") || (class="communityCareEligibilityInfo") {
       Set class="dgeewebsvc.communityCareEligibilityInfo"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("dgeewebsvc.communityCareEligibilityInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.communityCareEligibilityInfo","s",class)) If class="" Set class=0
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
   If data'="" Set ..communityCareEligibilityInfo=data
   Goto XMLLOOP } }
 If tag="healthBenefitPlans" {
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
         If 'encoded,(@(tree)@("d",$zlascii(innerlist,9))'="healthBenefitPlan") Goto XMLImportBadTag
         If ($get(namespace)'=""),'$case($zwascii(innerlist,19),0:1,nsIndex:1,:0) Goto XMLImportNS
         If encoded Set saveinner=inner,saveinnerlist=innerlist
         If encoded,$$XMLImportId() {
           Set data=idlist(inner)
         } Else {
           If 'sc Goto XMLImportExit
           Do XMLImportAttrinner()
           Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
           If (class="") || (class="healthBenefitPlanInfo") {
             Set class="dgeewebsvc.healthBenefitPlanInfo"
           } Else {
             If $length(class,":")=2 Set class=$piece(class,":",2)
             Set class=$get(^oddCOM("dgeewebsvc.healthBenefitPlanInfo",85,"s",class))_$get(^oddXML("dgeewebsvc.healthBenefitPlanInfo","s",class)) If class="" Set class=0
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
         If data'="" Do ..healthBenefitPlans.Insert(data)
       }
       For  { Set descriptor=$piece(inner,",",2)+4 Set inner=$piece(inner,",",1)_","_descriptor Set descriptor=$zlascii(childlist,descriptor) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set inner=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,inner,.descriptor) } Else {Set inner="" }} Quit:inner=""  Quit:(descriptor#16)'=2  }
     }
     Quit:('sc)
   }
   If encoded Set child=savechild,childlist=savechildlist
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
 If ..associations.Count()>0 Quit 0
 If $IsObject(..deathRecond) Quit 0
 If $IsObject(..demographics) Quit 0
 If $IsObject(..eligibilityVerificationInfo) Quit 0
 If $IsObject(..employmentInfo) Quit 0
 If $IsObject(..enrollmentDeterminationInfo) Quit 0
 If ..feeBasisList.Count()>0 Quit 0
 If $IsObject(..financialsInfo) Quit 0
 If $IsObject(..incompetenceRulingInfo) Quit 0
 If ..insuranceList.Count()>0 Quit 0
 If $IsObject(..militaryServiceInfo) Quit 0
 If $IsObject(..prisonerOfWarInfo) Quit 0
 If $IsObject(..purpleHeart) Quit 0
 If ..relations.Count()>0 Quit 0
 If $IsObject(..sensitivityInfo) Quit 0
 If $IsObject(..spinalCordInjuryInfo) Quit 0
 If $IsObject(..personInfo) Quit 0
 If $IsObject(..consentInfo) Quit 0
 If $IsObject(..communityCareEligibilityInfo) Quit 0
 If ..healthBenefitPlans.Count()>0 Quit 0
 Quit 1
zXMLNew(document,node,containerOref="")
	Quit (##class(dgeewebsvc.eeSummary).%New())
zXMLSchema(top="",format="",namespacePrefix="",input=0,refOnly=0,schema)
 Quit ##class(%XML.Implementation).XMLSchema("dgeewebsvc.eeSummary",top,format,namespacePrefix,input,refOnly,.schema)
zassociationsBuildValueArray(value,array) public {
	Quit ##class(%Collection.ListOfObj).BuildValueArray(value,.array)
}
zassociationsCollectionToDispla(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,$select(delim="":$C(13,10),1:delim))
}
zassociationsCollectionToOdbc(val="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,",")
}
zassociationsDisplayToCollectio(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,$select(delim="":$C(13,10),1:delim))
}
zassociationsGetObject(force=0) public {
	Set id=..associations.Serialize(force)
	Quit $select(id="":"",1:$listbuild(id_"")) }
zassociationsGetObjectId(force=0) public {
	Quit $listget(..associationsGetObject(force)) }
zassociationsGetSwizzled(noswizzle=0) public {
	Set oref=##class(%Collection.ListOfObj).%New() If oref="" Quit ""
	Set modstate=$system.CLS.GetModifiedBits() Set r%associations=oref Do $system.CLS.SetModifiedBits(modstate)
	Set oref.ElementType="dgeewebsvc.associationInfo",oref.ElementClassType="",oref.Owner=+$this,oref.Storage=$this."associations%i"(),oref.OrefStorage=oref.Storage+1
	Do $system.CLS.SetModified(oref,0)
	Quit oref }
zassociationsOdbcToCollection(val="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,",")
}
zassociationsSet(newvalue) public {
	If '$isobject(newvalue),newvalue'="" Quit $$Error^%apiOBJ(5807,newvalue)
	If r%associations=newvalue Quit 1
	If newvalue="" Kill i%associations,r%associations Set i%associations="",r%associations="" Quit 1
	Set oref=r%associations Kill i%associations,r%associations Set i%associations="",r%associations=oref
	Set key="" For i=1:1 Set value=newvalue.GetNext(.key) Quit:key=""  Set r%associations(i)=value,i%associations(i)=""
	Quit 1 }
zassociationsSetObject(newvalue) public {
	Set sc=..associations.DeSerialize($listget(newvalue)) If ('sc) Quit sc
	Quit 1 }
zassociationsSetObjectId(newid) public {
	Quit ..associationsSetObject($select(newid="":"",1:$listbuild(newid_""))) }
zcommunityCareEligibilityInfoNe() public {
	Set newobject=##class(dgeewebsvc.communityCareEligibilityInfo).%New() If newobject="" Quit ""
	Set ..communityCareEligibilityInfo=newobject
	Quit newobject }
zconsentInfoNewObject() public {
	Set newobject=##class(dgeewebsvc.consentInfo).%New() If newobject="" Quit ""
	Set ..consentInfo=newobject
	Quit newobject }
zdeathRecondNewObject() public {
	Set newobject=##class(dgeewebsvc.deathRecondInfo).%New() If newobject="" Quit ""
	Set ..deathRecond=newobject
	Quit newobject }
zdemographicsNewObject() public {
	Set newobject=##class(dgeewebsvc.demographicInfo).%New() If newobject="" Quit ""
	Set ..demographics=newobject
	Quit newobject }
zeligibilityVerificationInfoNew() public {
	Set newobject=##class(dgeewebsvc.eligibilityVerificationInfo).%New() If newobject="" Quit ""
	Set ..eligibilityVerificationInfo=newobject
	Quit newobject }
zemploymentInfoNewObject() public {
	Set newobject=##class(dgeewebsvc.employmentInfo).%New() If newobject="" Quit ""
	Set ..employmentInfo=newobject
	Quit newobject }
zenrollmentDeterminationInfoNew() public {
	Set newobject=##class(dgeewebsvc.enrollmentDeterminationInfo).%New() If newobject="" Quit ""
	Set ..enrollmentDeterminationInfo=newobject
	Quit newobject }
zfeeBasisListBuildValueArray(value,array) public {
	Quit ##class(%Collection.ListOfObj).BuildValueArray(value,.array)
}
zfeeBasisListCollectionToDispla(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,$select(delim="":$C(13,10),1:delim))
}
zfeeBasisListCollectionToOdbc(val="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,",")
}
zfeeBasisListDisplayToCollectio(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,$select(delim="":$C(13,10),1:delim))
}
zfeeBasisListGetObject(force=0) public {
	Set id=..feeBasisList.Serialize(force)
	Quit $select(id="":"",1:$listbuild(id_"")) }
zfeeBasisListGetObjectId(force=0) public {
	Quit $listget(..feeBasisListGetObject(force)) }
zfeeBasisListGetSwizzled(noswizzle=0) public {
	Set oref=##class(%Collection.ListOfObj).%New() If oref="" Quit ""
	Set modstate=$system.CLS.GetModifiedBits() Set r%feeBasisList=oref Do $system.CLS.SetModifiedBits(modstate)
	Set oref.ElementType="dgeewebsvc.feeBasisInfo",oref.ElementClassType="",oref.Owner=+$this,oref.Storage=$this."feeBasisList%i"(),oref.OrefStorage=oref.Storage+1
	Do $system.CLS.SetModified(oref,0)
	Quit oref }
zfeeBasisListOdbcToCollection(val="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,",")
}
zfeeBasisListSet(newvalue) public {
	If '$isobject(newvalue),newvalue'="" Quit $$Error^%apiOBJ(5807,newvalue)
	If r%feeBasisList=newvalue Quit 1
	If newvalue="" Kill i%feeBasisList,r%feeBasisList Set i%feeBasisList="",r%feeBasisList="" Quit 1
	Set oref=r%feeBasisList Kill i%feeBasisList,r%feeBasisList Set i%feeBasisList="",r%feeBasisList=oref
	Set key="" For i=1:1 Set value=newvalue.GetNext(.key) Quit:key=""  Set r%feeBasisList(i)=value,i%feeBasisList(i)=""
	Quit 1 }
zfeeBasisListSetObject(newvalue) public {
	Set sc=..feeBasisList.DeSerialize($listget(newvalue)) If ('sc) Quit sc
	Quit 1 }
zfeeBasisListSetObjectId(newid) public {
	Quit ..feeBasisListSetObject($select(newid="":"",1:$listbuild(newid_""))) }
zfinancialsInfoNewObject() public {
	Set newobject=##class(dgeewebsvc.financialsInfo).%New() If newobject="" Quit ""
	Set ..financialsInfo=newobject
	Quit newobject }
zhealthBenefitPlansBuildValueAr(value,array) public {
	Quit ##class(%Collection.ListOfObj).BuildValueArray(value,.array)
}
zhealthBenefitPlansCollectionTo(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,$select(delim="":$C(13,10),1:delim))
}
zhealthBenefitPlansCollectionT2(val="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,",")
}
zhealthBenefitPlansDisplayToCol(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,$select(delim="":$C(13,10),1:delim))
}
zhealthBenefitPlansGetObject(force=0) public {
	Set id=..healthBenefitPlans.Serialize(force)
	Quit $select(id="":"",1:$listbuild(id_"")) }
zhealthBenefitPlansGetObjectId(force=0) public {
	Quit $listget(..healthBenefitPlansGetObject(force)) }
zhealthBenefitPlansGetSwizzled(noswizzle=0) public {
	Set oref=##class(%Collection.ListOfObj).%New() If oref="" Quit ""
	Set modstate=$system.CLS.GetModifiedBits() Set r%healthBenefitPlans=oref Do $system.CLS.SetModifiedBits(modstate)
	Set oref.ElementType="dgeewebsvc.healthBenefitPlanInfo",oref.ElementClassType="",oref.Owner=+$this,oref.Storage=$this."healthBenefitPlans%i"(),oref.OrefStorage=oref.Storage+1
	Do $system.CLS.SetModified(oref,0)
	Quit oref }
zhealthBenefitPlansOdbcToCollec(val="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,",")
}
zhealthBenefitPlansSet(newvalue) public {
	If '$isobject(newvalue),newvalue'="" Quit $$Error^%apiOBJ(5807,newvalue)
	If r%healthBenefitPlans=newvalue Quit 1
	If newvalue="" Kill i%healthBenefitPlans,r%healthBenefitPlans Set i%healthBenefitPlans="",r%healthBenefitPlans="" Quit 1
	Set oref=r%healthBenefitPlans Kill i%healthBenefitPlans,r%healthBenefitPlans Set i%healthBenefitPlans="",r%healthBenefitPlans=oref
	Set key="" For i=1:1 Set value=newvalue.GetNext(.key) Quit:key=""  Set r%healthBenefitPlans(i)=value,i%healthBenefitPlans(i)=""
	Quit 1 }
zhealthBenefitPlansSetObject(newvalue) public {
	Set sc=..healthBenefitPlans.DeSerialize($listget(newvalue)) If ('sc) Quit sc
	Quit 1 }
zhealthBenefitPlansSetObjectId(newid) public {
	Quit ..healthBenefitPlansSetObject($select(newid="":"",1:$listbuild(newid_""))) }
zincompetenceRulingInfoNewObjec() public {
	Set newobject=##class(dgeewebsvc.incompetenceRulingInfo).%New() If newobject="" Quit ""
	Set ..incompetenceRulingInfo=newobject
	Quit newobject }
zinsuranceListBuildValueArray(value,array) public {
	Quit ##class(%Collection.ListOfObj).BuildValueArray(value,.array)
}
zinsuranceListCollectionToDispl(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,$select(delim="":$C(13,10),1:delim))
}
zinsuranceListCollectionToOdbc(val="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,",")
}
zinsuranceListDisplayToCollecti(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,$select(delim="":$C(13,10),1:delim))
}
zinsuranceListGetObject(force=0) public {
	Set id=..insuranceList.Serialize(force)
	Quit $select(id="":"",1:$listbuild(id_"")) }
zinsuranceListGetObjectId(force=0) public {
	Quit $listget(..insuranceListGetObject(force)) }
zinsuranceListGetSwizzled(noswizzle=0) public {
	Set oref=##class(%Collection.ListOfObj).%New() If oref="" Quit ""
	Set modstate=$system.CLS.GetModifiedBits() Set r%insuranceList=oref Do $system.CLS.SetModifiedBits(modstate)
	Set oref.ElementType="dgeewebsvc.insuranceInfo",oref.ElementClassType="",oref.Owner=+$this,oref.Storage=$this."insuranceList%i"(),oref.OrefStorage=oref.Storage+1
	Do $system.CLS.SetModified(oref,0)
	Quit oref }
zinsuranceListOdbcToCollection(val="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,",")
}
zinsuranceListSet(newvalue) public {
	If '$isobject(newvalue),newvalue'="" Quit $$Error^%apiOBJ(5807,newvalue)
	If r%insuranceList=newvalue Quit 1
	If newvalue="" Kill i%insuranceList,r%insuranceList Set i%insuranceList="",r%insuranceList="" Quit 1
	Set oref=r%insuranceList Kill i%insuranceList,r%insuranceList Set i%insuranceList="",r%insuranceList=oref
	Set key="" For i=1:1 Set value=newvalue.GetNext(.key) Quit:key=""  Set r%insuranceList(i)=value,i%insuranceList(i)=""
	Quit 1 }
zinsuranceListSetObject(newvalue) public {
	Set sc=..insuranceList.DeSerialize($listget(newvalue)) If ('sc) Quit sc
	Quit 1 }
zinsuranceListSetObjectId(newid) public {
	Quit ..insuranceListSetObject($select(newid="":"",1:$listbuild(newid_""))) }
zmilitaryServiceInfoNewObject() public {
	Set newobject=##class(dgeewebsvc.militaryServiceInfo).%New() If newobject="" Quit ""
	Set ..militaryServiceInfo=newobject
	Quit newobject }
zpersonInfoNewObject() public {
	Set newobject=##class(dgeewebsvc.personInfo).%New() If newobject="" Quit ""
	Set ..personInfo=newobject
	Quit newobject }
zprisonerOfWarInfoNewObject() public {
	Set newobject=##class(dgeewebsvc.prisonerOfWarInfo).%New() If newobject="" Quit ""
	Set ..prisonerOfWarInfo=newobject
	Quit newobject }
zpurpleHeartNewObject() public {
	Set newobject=##class(dgeewebsvc.purpleHeartInfo).%New() If newobject="" Quit ""
	Set ..purpleHeart=newobject
	Quit newobject }
zrelationsBuildValueArray(value,array) public {
	Quit ##class(%Collection.ListOfObj).BuildValueArray(value,.array)
}
zrelationsCollectionToDisplay(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,$select(delim="":$C(13,10),1:delim))
}
zrelationsCollectionToOdbc(val="") public {
	Quit ##class(%Collection.ListOfObj).LogicalToOdbc(val,",")
}
zrelationsDisplayToCollection(val="",delim="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,$select(delim="":$C(13,10),1:delim))
}
zrelationsGetObject(force=0) public {
	Set id=..relations.Serialize(force)
	Quit $select(id="":"",1:$listbuild(id_"")) }
zrelationsGetObjectId(force=0) public {
	Quit $listget(..relationsGetObject(force)) }
zrelationsGetSwizzled(noswizzle=0) public {
	Set oref=##class(%Collection.ListOfObj).%New() If oref="" Quit ""
	Set modstate=$system.CLS.GetModifiedBits() Set r%relations=oref Do $system.CLS.SetModifiedBits(modstate)
	Set oref.ElementType="dgeewebsvc.relationInfo",oref.ElementClassType="",oref.Owner=+$this,oref.Storage=$this."relations%i"(),oref.OrefStorage=oref.Storage+1
	Do $system.CLS.SetModified(oref,0)
	Quit oref }
zrelationsOdbcToCollection(val="") public {
	Quit ##class(%Collection.ListOfObj).OdbcToLogical(val,",")
}
zrelationsSet(newvalue) public {
	If '$isobject(newvalue),newvalue'="" Quit $$Error^%apiOBJ(5807,newvalue)
	If r%relations=newvalue Quit 1
	If newvalue="" Kill i%relations,r%relations Set i%relations="",r%relations="" Quit 1
	Set oref=r%relations Kill i%relations,r%relations Set i%relations="",r%relations=oref
	Set key="" For i=1:1 Set value=newvalue.GetNext(.key) Quit:key=""  Set r%relations(i)=value,i%relations(i)=""
	Quit 1 }
zrelationsSetObject(newvalue) public {
	Set sc=..relations.DeSerialize($listget(newvalue)) If ('sc) Quit sc
	Quit 1 }
zrelationsSetObjectId(newid) public {
	Quit ..relationsSetObject($select(newid="":"",1:$listbuild(newid_""))) }
zsensitivityInfoNewObject() public {
	Set newobject=##class(dgeewebsvc.sensitivityInfo).%New() If newobject="" Quit ""
	Set ..sensitivityInfo=newobject
	Quit newobject }
zspinalCordInjuryInfoNewObject() public {
	Set newobject=##class(dgeewebsvc.spinalCordInjuryInfo).%New() If newobject="" Quit ""
	Set ..spinalCordInjuryInfo=newobject
	Quit newobject }
