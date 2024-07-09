 ;dgeewebsvc.registrationInfo.1
 ;Generated for class dgeewebsvc.registrationInfo.  Do NOT edit. 01/02/2024 02:40:37PM
 ;;4B6B5164;dgeewebsvc.registrationInfo
 ;
%NormalizeObject() public {
	If '$system.CLS.GetModified() Quit 1
	If m%date Set:i%date'="" i%date=(..dateNormalize(i%date))
	If m%doYouWishToEnroll Set:i%doYouWishToEnroll'="" i%doYouWishToEnroll=(..doYouWishToEnrollNormalize(i%doYouWishToEnroll))
	If m%facility Set:i%facility'="" i%facility=(..facilityNormalize(i%facility))
	If m%reason Set:i%reason'="" i%reason=(..reasonNormalize(i%reason))
	If m%source Set:i%source'="" i%source=(..sourceNormalize(i%source))
	Quit 1 }
%ValidateObject(unused=0,checkserial=1) public {
	set sc=1
	If '$system.CLS.GetModified() Quit sc
	If m%date Set iv=..date If iv'="" Set rc=(..dateIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"date",iv)
	If m%doYouWishToEnroll Set iv=..doYouWishToEnroll If iv'="" Set rc=(..doYouWishToEnrollIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"doYouWishToEnroll",iv)
	If m%facility Set iv=..facility If iv'="" Set rc=(..facilityIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"facility",iv)
	If m%reason Set iv=..reason If iv'="" Set rc=(..reasonIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"reason",iv)
	If m%source Set iv=..source If iv'="" Set rc=(..sourceIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"source",iv)
	Quit sc }
zXMLDTD(top,format,input,dtdlist)
 Quit ##class(%XML.Implementation).XMLDTD("dgeewebsvc.registrationInfo",.top,.format,.input,.dtdlist)
zXMLExportInternal()
 New tag,summary,attrsVal,savelocal,aval,k,tmpPrefix,prefixDepth,hasNoContent,hasElement,topAttrs,beginprefix,endprefix,savexsiAttrs,initialxsiAttrs,initlist,initialCR,inlineFlag,popAtEnd,saveTopPrefix,saveTypesPrefix,saveAttrsPrefix,saveUsePrefix,initlist
 Set $ztrap="XMLExportInternalTrap",popAtEnd=0
 Set summary=summaryArg,initialxsiAttrs=xsiAttrs
 If group Quit $$Error^%apiOBJ(6386,"dgeewebsvc.registrationInfo")
 If indentFlag Set initialCR=($extract(currentIndent,1,2)=$c(13,10))
 Set id=createId
 Set temp=""
 If id'="" {
   If $piece($get(idlist(+$this)),",",2)'="" Quit 1
   Set idlist(+$this)=id_",1"
 }
 If encoded Set initlist=$lb($get(oreflist),inlineFlagArg),oreflist=1,inlineFlag=inlineFlagArg
 If 'nocycle,('encoded||inlineFlag) {
   If $data(oreflist($this)) Quit $$Error^%apiOBJ(6296,"dgeewebsvc.registrationInfo")
   Set oreflist($this)=""
 }
 Set tag=$get(topArg)
 Set tmpi=(($get(typeAttr)'="")&&(typeAttr'="dgeewebsvc.registrationInfo"))
 If $IsObject(namespaces) {
     Set popAtEnd=1,saveTopPrefix=topPrefix,saveTypesPrefix=typesPrefix,saveAttrsPrefix=attrsPrefix,saveUsePrefix=usePrefix
     Set sc=namespaces.PushNodeForExport("",$get(local,0),(encoded||tmpi),"",,.topPrefix,.topAttrs,.typesPrefix,.attrsPrefix,.usePrefix)
     If 'sc Quit sc
   Set beginprefix=$select(namespaces.ElementQualified&&usePrefix:typesPrefix,1:"")
   If topAttrs'="" Set temp=temp_" "_topAttrs
   If tag="" Set tag="registrationInfo"
   Set xsitype=namespaces.OutputTypeAttribute
 } Else {
   Set saveTopPrefix=topPrefix,saveTypesPrefix=typesPrefix,saveAttrsPrefix=attrsPrefix,saveUsePrefix=usePrefix
   Set typesPrefix=namespaces If (typesPrefix'=""),($extract(typesPrefix,*)'=":") Set typesPrefix=typesPrefix_":"
   If 'encoded Set namespaces=""
   Set (topPrefix,attrsPrefix,topAttrs,beginprefix)=""
   If tag="" Set tag=typesPrefix_"registrationInfo"
   Set xsitype=0
 }
 Set local=+$get(local),savelocal=local
 Set endprefix="</"_beginprefix,beginprefix="<"_beginprefix
 If tmpi Set temp=temp_" "_xsiPrefix_"type="""_typesPrefix_"registrationInfo"""_xsiAttrs,xsiAttrs=""
   If id'="" Set temp=" "_$select($get(soap12):soapPrefix_"id",1:"id")_"=""id"_id_""""_temp
 If encoded Set temp=temp_xsiAttrs,xsiAttrs=""
 If indentFlag Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } Set currentIndent=$select(initialCR:"",1:$c(13,10))_currentIndent_indentChars
 If tag[":" Set topPrefix=$piece(tag,":"),tag=$piece(tag,":",2)  If topPrefix'="" Set topPrefix=topPrefix_":"
 Set %xmlmsg="<"_topPrefix_tag_temp if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set attrsVal=attrsArg,attrsArg="" Set %xmlmsg=attrsVal if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set %xmlmsg=">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set val=..facility
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"facility"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"facility>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..reason
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"reason"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"reason>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..source
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"source"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"source>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..doYouWishToEnroll
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"doYouWishToEnroll"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"doYouWishToEnroll>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..date
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"date"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"dateTime""",1:"")_">"_$select(val="":"",1:$translate(val," ","T")_"Z")_endprefix_"date>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 If indentFlag { Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }}
 Set %xmlmsg="</"_topPrefix_tag_">"
 if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } If indentFlag,'initialCR if $data(%xmlBlock) { Set %xmlmsg="" Do xeWriteLine^%occXMLInternal } else { write ! } Set $extract(currentIndent,1,2)=""
 If '$IsObject(namespaces) || (popAtEnd=1) Set topPrefix=saveTopPrefix,typesPrefix=saveTypesPrefix,attrsPrefix=saveAttrsPrefix,usePrefix=saveUsePrefix
 If popAtEnd Do namespaces.PopNode()
 If encoded Set oreflist=$list(initlist),inlineFlag=$list(initlist,2)
 If 'encoded||inlineFlag {
   If 'nocycle Kill oreflist($this)
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
 Quit ##class(%XML.Implementation).XMLGetSchemaImports("dgeewebsvc.registrationInfo",.imports,.classes)
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
 If bareProjection Quit $$Error^%apiOBJ(6386,"dgeewebsvc.registrationInfo")
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
 If tag="facility" {
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
   Set ..facility=data
   Goto XMLLOOP } }
 If tag="reason" {
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
             If data'="" Goto:('$s(data'[","&&(",C&P Disability Benefits Exam,Active Duty,Service Connected Only,Exposure Registry Exam,Research,Humanitarian/Emergency,Employee,Beneficiary,Other than Honorable (OTH),Marriage/Family Counseling,Collateral (Other),ART/IVF,Newborn,Legislative Mandate,Unanswered,VHA Transplant Program,North Chicago Active Duty,Other,Caregiver,4th Mission,Clinical Determination,HUD-VASH,Immunization,"[(","_$select(data=$c(0):"",1:data)_",")):1,1:$$Error^%apiOBJ(7205,data,",C&P Disability Benefits Exam,Active Duty,Service Connected Only,Exposure Registry Exam,Research,Humanitarian/Emergency,Employee,Beneficiary,Other than Honorable (OTH),Marriage/Family Counseling,Collateral (Other),ART/IVF,Newborn,Legislative Mandate,Unanswered,VHA Transplant Program,North Chicago Active Duty,Other,Caregiver,4th Mission,Clinical Determination,HUD-VASH,Immunization"))) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..reason=data
   Goto XMLLOOP } }
 If tag="source" {
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
             If data'="" Goto:('$s(data'[","&&(",CAPRI,USVOA,USVAHEC,USVAMC,OTHER,"[(","_$select(data=$c(0):"",1:data)_",")):1,1:$$Error^%apiOBJ(7205,data,",CAPRI,USVOA,USVAHEC,USVAMC,OTHER"))) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..source=data
   Goto XMLLOOP } }
 If tag="doYouWishToEnroll" {
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
   Set ..doYouWishToEnroll=data
   Goto XMLLOOP } }
 If tag="date" {
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
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=..dateXSDToLogical(data) Goto:data="" XMLImportErrchild Goto:('..dateIsValid(data)) XMLImportErrchild
     }
     If encoded Do XMLImportAttrchild() If $data(attributeList("id")) Set idlist(child)=data
   }
   If encoded Set child=savechild,childlist=savechildlist
   Set ..date=data
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
 If ..facility'="" Quit 0
 If ..reason'="" Quit 0
 If ..source'="" Quit 0
 If ..doYouWishToEnroll'="" Quit 0
 If ..date'="" Quit 0
 Quit 1
zXMLNew(document,node,containerOref="")
	Quit (##class(dgeewebsvc.registrationInfo).%New())
zXMLSchema(top="",format="",namespacePrefix="",input=0,refOnly=0,schema)
 Quit ##class(%XML.Implementation).XMLSchema("dgeewebsvc.registrationInfo",top,format,namespacePrefix,input,refOnly,.schema)
zdateIsValid(%val) public {
	RETURN:$zu(115,13)&&(%val=$c(0)) 1
	Set val=%val,%val=$select(%val=(%val\1):$zdate(%val,3,,,,,0,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3,,,,,0)_" "_%val,$length(%val)=10:%val_" 00:00:00",1:%val)
	Quit:($length(%val)<19||($zdatetimeh(%val,3,,,,,,0,,"")="")) $$Error^%apiOBJ(7208,val)
	Quit 1 }
zdateLogicalToXSD(%val) public {
	Quit $select(%val="":"",1:$translate(%val," ","T")_"Z") }
zdateNormalize(%val) public {
	Quit $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",%val=(%val\1):$zdate(%val,3,,,,,-672045,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3)_" "_$s(+$p(%val,".",2)=0:%val,1:$p(%val,".")_+("."_$e($p(%val,".",2),1,9))),$l(%val)=10:%val_" 00:00:00",$zdatetimeh(%val,3,,,,,,-672045,,"")="":"error",1:$zdatetime($zdatetimeh($p(%val,"."),3,,,,,,-672045,,""),3,,,,,,,-672045)_$s(+$p(%val,".",2)=0:"",1:+("."_$e($p(%val,".",2),1,9)))) }
zdateOdbcToLogical(%val) public {
	Quit:%val="" ""
	If $zdatetimeh(%val,3,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,3,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	} elseif $zdatetimeh(%val,-1,,,,,,-672045,,"")'="" {
		Set %val=$zdatetime($zdatetimeh(%val,-1,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
	}
	Quit $s(%val'[".":%val,1:$zstrip($zstrip(%val,">","0"),">",".")) }
zdateXSDToLogical(%val) public {
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
zreasonIsValid(%val) public {
	Q $s(%val'[","&&(",C&P Disability Benefits Exam,Active Duty,Service Connected Only,Exposure Registry Exam,Research,Humanitarian/Emergency,Employee,Beneficiary,Other than Honorable (OTH),Marriage/Family Counseling,Collateral (Other),ART/IVF,Newborn,Legislative Mandate,Unanswered,VHA Transplant Program,North Chicago Active Duty,Other,Caregiver,4th Mission,Clinical Determination,HUD-VASH,Immunization,"[(","_$select(%val=$c(0):"",1:%val)_",")):1,1:$$Error^%apiOBJ(7205,%val,",C&P Disability Benefits Exam,Active Duty,Service Connected Only,Exposure Registry Exam,Research,Humanitarian/Emergency,Employee,Beneficiary,Other than Honorable (OTH),Marriage/Family Counseling,Collateral (Other),ART/IVF,Newborn,Legislative Mandate,Unanswered,VHA Transplant Program,North Chicago Active Duty,Other,Caregiver,4th Mission,Clinical Determination,HUD-VASH,Immunization")) }
zsourceIsValid(%val) public {
	Q $s(%val'[","&&(",CAPRI,USVOA,USVAHEC,USVAMC,OTHER,"[(","_$select(%val=$c(0):"",1:%val)_",")):1,1:$$Error^%apiOBJ(7205,%val,",CAPRI,USVOA,USVAHEC,USVAMC,OTHER")) }
