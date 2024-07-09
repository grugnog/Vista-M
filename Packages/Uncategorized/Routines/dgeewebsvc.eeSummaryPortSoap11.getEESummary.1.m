 ;dgeewebsvc.eeSummaryPortSoap11.getEESummary.1
 ;Generated for class dgeewebsvc.eeSummaryPortSoap11.getEESummary.  Do NOT edit. 01/02/2024 02:40:38PM
 ;;54797650;dgeewebsvc.eeSummaryPortSoap11.getEESummary
 ;
%BindExport(dev,Seen,RegisterOref,AllowedDepth,AllowedCapacity) public {
   i $d(Seen(+$this)) q 1
   Set Seen(+$this)=$this
   s sc = 1
 s proporef=..summary
   d:RegisterOref InitObjVar^%SYS.BINDSRV($this)
   i dev'="" s t=$io u dev i $zobjexport($this_"",3)+$zobjexport($this."%%OID",3)+$zobjexport($this,3)!1 u t
 If AllowedDepth>0 Set AllowedDepth = AllowedDepth - 1
 If AllowedCapacity>0 Set AllowedCapacity = AllowedCapacity - 1/1
 s proporef=..summary
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
   Quit sc }
%ConstructCloneInit(object,deep=0,cloned,location) public {
 Set i%"%%OID"=""
 If deep>0 {
 	If $isobject(..summary)=1 Set r%summary=r%summary.%ConstructClone(1,.cloned),i%summary=""
 }
 Quit 1 }
%NormalizeObject() public {
 If '$system.CLS.GetModified() Quit 1
 If m%%RequestName Set:i%%RequestName'="" i%%RequestName=(..%RequestNameNormalize(i%%RequestName))
 If m%eesVersion Set:i%eesVersion'="" i%eesVersion=(..eesVersionNormalize(i%eesVersion))
 If m%incomeYear Set:i%incomeYear'="" i%incomeYear=(..incomeYearNormalize(i%incomeYear))
 If m%invocationDate Set:i%invocationDate'="" i%invocationDate=(..invocationDateNormalize(i%invocationDate))
 If m%key Set:i%key'="" i%key=(..keyNormalize(i%key))
 If m%keyType Set:i%keyType'="" i%keyType=(..keyTypeNormalize(i%keyType))
 If m%noDataMessage Set:i%noDataMessage'="" i%noDataMessage=(..noDataMessageNormalize(i%noDataMessage))
 If m%requestName Set:i%requestName'="" i%requestName=(..requestNameNormalize(i%requestName))
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
 Set Poref=r%summary If Poref'="",'$data(%objTX(0,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
exit Quit sc }
%ValidateObject(unused=0,checkserial=1) public {
 set sc=1
 If '$system.CLS.GetModified() Quit sc
 If m%%RequestName Set iv=..%RequestName If iv'="" Set rc=(..%RequestNameIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"%RequestName",iv)
 If m%eesVersion Set iv=..eesVersion If iv'="" Set rc=(..eesVersionIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"eesVersion",iv)
 If m%incomeYear Set iv=..incomeYear If iv'="" Set rc=(..incomeYearIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"incomeYear",iv)
 If m%invocationDate Set iv=..invocationDate If iv'="" Set rc=(..invocationDateIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"invocationDate",iv)
 Set iv=..key If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::key("_$this_")"),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
 If m%key Set rc=(..keyIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"key",iv)
 If m%keyType Set iv=..keyType If iv'="" Set rc=(..keyTypeIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"keyType",iv)
 If m%noDataMessage Set iv=..noDataMessage If iv'="" Set rc=(..noDataMessageIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"noDataMessage",iv)
 Set iv=..requestName If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::requestName("_$this_")"),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
 If m%requestName Set rc=(..requestNameIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"requestName",iv)
 Quit sc }
zInvoke(%Client,%Action,key,keyType,requestName,incomeYear,summary,eesVersion,invocationDate,noDataMessage) public {
 Set ..key=$get(key),..keyType=$get(keyType),..requestName=$get(requestName),..incomeYear=$get(incomeYear)
 Do %Client.InvokeClient($this,"getEESummary",%Action)
 Set summary=..summary,eesVersion=..eesVersion,invocationDate=..invocationDate,noDataMessage=..noDataMessage
 Quit }
zReset() public {
 Quit }
zXMLDTD(top,format,input,dtdlist)
 Quit ##class(%XML.Implementation).XMLDTD("dgeewebsvc.eeSummaryPortSoap11.getEESummary",.top,.format,.input,.dtdlist)
zXMLExportInternal()
 New tag,summary,attrsVal,savelocal,aval,k,tmpPrefix,prefixDepth,hasNoContent,hasElement,topAttrs,beginprefix,endprefix,savexsiAttrs,initialxsiAttrs,initlist,initialCR,inlineFlag,popAtEnd,saveTopPrefix,saveTypesPrefix,saveAttrsPrefix,saveUsePrefix
 Set $ztrap="XMLExportInternalTrap",popAtEnd=0
 If encoded Quit $$Error^%apiOBJ(6231,fmt)
 Set summary=summaryArg,initialxsiAttrs=xsiAttrs
 If group Quit $$Error^%apiOBJ(6386,"dgeewebsvc.eeSummaryPortSoap11.getEESummary")
 If indentFlag Set initialCR=($extract(currentIndent,1,2)=$c(13,10))
 Set id=createId
 Set temp=""
 If id'="" {
   If $piece($get(idlist(+$this)),",",2)'="" Quit 1
   Set idlist(+$this)=id_",1"
 }
 If 'nocycle {
   If $data(oreflist($this)) Quit $$Error^%apiOBJ(6296,"dgeewebsvc.eeSummaryPortSoap11.getEESummary")
   Set oreflist($this)=""
 }
 Set tag=$get(topArg)
 Set tmpi=(($get(typeAttr)'="")&&(typeAttr'="dgeewebsvc.eeSummaryPortSoap11.getEESummary"))
 If $IsObject(namespaces) {
   If namespaces.Stable,namespaces.CurrentNamespace="http://jaxws.webservices.esr.domain.ext/schemas",'tmpi||(typesPrefix'="") {
     Set topAttrs=""
   } Else {
     Set popAtEnd=1,saveTopPrefix=topPrefix,saveTypesPrefix=typesPrefix,saveAttrsPrefix=attrsPrefix,saveUsePrefix=usePrefix
     Set sc=namespaces.PushNodeForExport("http://jaxws.webservices.esr.domain.ext/schemas",$get(local,0),tmpi,1,,.topPrefix,.topAttrs,.typesPrefix,.attrsPrefix,.usePrefix)
     If 'sc Quit sc
   }
   Set beginprefix=$select(usePrefix:typesPrefix,1:"")
   If topAttrs'="" Set temp=temp_" "_topAttrs
   If tag="" Set tag="getEESummary"
   Set xsitype=namespaces.OutputTypeAttribute
 } Else {
   Set saveTopPrefix=topPrefix,saveTypesPrefix=typesPrefix,saveAttrsPrefix=attrsPrefix,saveUsePrefix=usePrefix
   Set typesPrefix=namespaces If (typesPrefix'=""),($extract(typesPrefix,*)'=":") Set typesPrefix=typesPrefix_":"
   Set namespaces=""
   Set (topPrefix,attrsPrefix,topAttrs,beginprefix)=""
   If tag="" Set tag=typesPrefix_"getEESummary"
   Set xsitype=0
 }
 Set local=+$get(local),savelocal=local
 Set endprefix="</"_beginprefix,beginprefix="<"_beginprefix
 If tmpi Set temp=temp_" "_xsiPrefix_"type="""_typesPrefix_"getEESummary"""_xsiAttrs,xsiAttrs=""
   If id'="" Set temp=" "_$select($get(soap12):soapPrefix_"id",1:"id")_"=""id"_id_""""_temp
 If indentFlag Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } Set currentIndent=$select(initialCR:"",1:$c(13,10))_currentIndent_indentChars
 If tag[":" Set topPrefix=$piece(tag,":"),tag=$piece(tag,":",2)  If topPrefix'="" Set topPrefix=topPrefix_":"
 Set %xmlmsg="<"_topPrefix_tag_temp if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set attrsVal=attrsArg,attrsArg="" Set %xmlmsg=attrsVal if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set %xmlmsg=">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set val=..key
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"key"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"key>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..keyType
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"keyType"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"keyType>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..requestName
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"requestName"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"requestName>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..incomeYear
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"incomeYear"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"int""",1:"")_">"_val_endprefix_"incomeYear>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 If indentFlag { Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }}
 Set %xmlmsg="</"_topPrefix_tag_">"
 if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } If indentFlag,'initialCR if $data(%xmlBlock) { Set %xmlmsg="" Do xeWriteLine^%occXMLInternal } else { write ! } Set $extract(currentIndent,1,2)=""
 If '$IsObject(namespaces) || (popAtEnd=1) Set topPrefix=saveTopPrefix,typesPrefix=saveTypesPrefix,attrsPrefix=saveAttrsPrefix,usePrefix=saveUsePrefix
 If popAtEnd Do namespaces.PopNode()
   If 'nocycle Kill oreflist($this)
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
 Quit ##class(%XML.Implementation).XMLGetSchemaImports("dgeewebsvc.eeSummaryPortSoap11.getEESummary",.imports,.classes)
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
 If $case($piece(fmt,",",1),"":0,"literal":0,:1) Quit $$Error^%apiOBJ(6231,fmt)
 Set nsIndex=$get(@(tree)@("N","http://jaxws.webservices.esr.domain.ext/schemas"))
 Set node=nodeArg,nodelist=nodeArgChildlist
 If tag'=@(tree)@("d",$zlascii(nodelist,9)) Set inner=node Goto XMLImportMalformed
 If bareProjection Quit $$Error^%apiOBJ(6386,"dgeewebsvc.eeSummaryPortSoap11.getEESummary")
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
 If tag="summary" {
   If $case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   Do XMLImportAttrchild()
   Set class=$select(($zwascii($get(attributeList("type")),9)=1):$case($data(@(tree)@("d",$zlascii(attributeList("type"),13))),1:@(tree)@("d",$zlascii(attributeList("type"),13)),0:"",:##class(%XML.ImportHandler).GetAttribute(tree,attributeList("type"))),1:"")
   If (class="") || (class="eeSummary") {
     Set class="dgeewebsvc.eeSummary"
   } Else {
     If $length(class,":")=2 Set class=$piece(class,":",2)
     Set class=$get(^oddCOM("dgeewebsvc.eeSummary",85,"t",class))_$get(^oddXML("dgeewebsvc.eeSummary","t",class)) If class="" Set class=0
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
   If $isobject(data) Set tag=@(tree)@("d",$zlascii(childlist,9)),nodeArg=child,nodeArgChildlist=childlist,bareProjection=0,summaryArg=0,keynameattr="",sc=data.XMLImportInternal() Goto:('sc) XMLImportExit
   If data'="" Set ..summary=data
   Goto XMLLOOP } }
 If tag="eesVersion" {
   If $case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
   } Else {
           If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
             Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,child,0,0,.data,,,childlist) Goto XMLImportErrchild
           } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
             If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
           If data="" Set data=$c(0)
   }
   Set ..eesVersion=data
   Goto XMLLOOP } }
 If tag="invocationDate" {
   If $case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
   } Else {
           If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
             Set data="" Goto XMLImportErrchild
           } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
             If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
           Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=..invocationDateXSDToLogical(data) Goto:data="" XMLImportErrchild Goto:('..invocationDateIsValid(data)) XMLImportErrchild
   }
   Set ..invocationDate=data
   Goto XMLLOOP } }
 If tag="noDataMessage" {
   If $case($zwascii(childlist,19),0:1,nsIndex:1,:0) {
   If $zboolean(+($zlascii(childlist,13)#16),+1,1) { Set data=""
   } Else {
           If (($length(childlist)-$zwascii(childlist,17)-3)\4)>1 {
             Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,child,0,0,.data,,,childlist) Goto XMLImportErrchild
           } Else { Set descriptor=$zlascii(childlist,$zwascii(childlist,17)) Set data=($zlascii(@(tree)@($piece(child,",",1)),$piece(child,",",2))\16)_","_$zwascii(childlist,17) If (descriptor#16)=3 { If (descriptor\16)'=0 { Set data=##class(%XML.ImportHandler).NextChild(tree,child,.childlist,data,.descriptor) } Else { Set data="" }}
             If data'="" { Goto:(descriptor#16)=0 XMLImportErrchild Set data=@(tree)@("d",(descriptor\16)) }}
           If data="" Set data=$c(0)
   }
   Set ..noDataMessage=data
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
 If ..key'="" Quit 0
 If ..keyType'="" Quit 0
 If ..requestName'="" Quit 0
 If ..incomeYear'="" Quit 0
 If $IsObject(..summary) Quit 0
 If ..eesVersion'="" Quit 0
 If ..invocationDate'="" Quit 0
 If ..noDataMessage'="" Quit 0
 Quit 1
zXMLNew(document,node,containerOref="")
 Quit (##class(dgeewebsvc.eeSummaryPortSoap11.getEESummary).%New())
zXMLSchema(top="",format="",namespacePrefix="",input=0,refOnly=0,schema)
 Quit ##class(%XML.Implementation).XMLSchema("dgeewebsvc.eeSummaryPortSoap11.getEESummary",top,format,namespacePrefix,input,refOnly,.schema)
zincomeYearDisplayToLogical(%val) public {
 Q $select(%val="":"",%val=$c(0)&&$zu(115,13):"",1:$s($in(%val,"","")'="":+$in(%val,"",%val),1:%val)) }
zincomeYearIsValid(%val) public {
 Quit $select(%val=$c(0)&&$zu(115,13):1,$number(%val,"I",-2147483648,2147483647)'="":1,$number(%val,"I")="":$$Error^%apiOBJ(7207,%val),%val<-2147483648:$$Error^%apiOBJ(7204,%val,-2147483648),1:$$Error^%apiOBJ(7203,%val,2147483647)) }
zincomeYearNormalize(%val) public {
 Quit $select(%val=$c(0)&&$zu(115,13):"",1:%val\1) }
zincomeYearXSDToLogical(%val) public {
 Q $s($tr(%val,"Ee(),.")'=%val:"",1:$number(%val,"I",-2147483648,2147483647)) }
zinvocationDateIsValid(%val) public {
 RETURN:$zu(115,13)&&(%val=$c(0)) 1
 Set val=%val,%val=$select(%val=(%val\1):$zdate(%val,3,,,,,0,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3,,,,,0)_" "_%val,$length(%val)=10:%val_" 00:00:00",1:%val)
 Quit:($length(%val)<19||($zdatetimeh(%val,3,,,,,,0,,"")="")) $$Error^%apiOBJ(7208,val)
 Quit 1 }
zinvocationDateLogicalToXSD(%val) public {
 Quit $select(%val="":"",1:$translate(%val," ","T")_"Z") }
zinvocationDateNormalize(%val) public {
 Quit $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",%val=(%val\1):$zdate(%val,3,,,,,-672045,,"error")_" 00:00:00",%val?1.2N1":"2N1":"2N.1(1"."1.N):$zdate($h,3)_" "_$s(+$p(%val,".",2)=0:%val,1:$p(%val,".")_+("."_$e($p(%val,".",2),1,9))),$l(%val)=10:%val_" 00:00:00",$zdatetimeh(%val,3,,,,,,-672045,,"")="":"error",1:$zdatetime($zdatetimeh($p(%val,"."),3,,,,,,-672045,,""),3,,,,,,,-672045)_$s(+$p(%val,".",2)=0:"",1:+("."_$e($p(%val,".",2),1,9)))) }
zinvocationDateOdbcToLogical(%val) public {
 Quit:%val="" ""
 If $zdatetimeh(%val,3,,,,,,-672045,,"")'="" {
 	Set %val=$zdatetime($zdatetimeh(%val,3,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
 } elseif $zdatetimeh(%val,-1,,,,,,-672045,,"")'="" {
 	Set %val=$zdatetime($zdatetimeh(%val,-1,,,,,,-672045),3,,$l($p(%val,".",2)),,,,,-672045)
 }
 Quit $s(%val'[".":%val,1:$zstrip($zstrip(%val,">","0"),">",".")) }
zinvocationDateXSDToLogical(%val) public {
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
zsummaryNewObject() public {
 Set newobject=##class(dgeewebsvc.eeSummary).%New() If newobject="" Quit ""
 Set ..summary=newobject
 Quit newobject }
