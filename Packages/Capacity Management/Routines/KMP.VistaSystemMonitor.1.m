 ;KMP.VistaSystemMonitor.1
 ;Generated for class KMP.VistaSystemMonitor.  Do NOT edit. 01/25/2024 11:55:46AM
 ;;36533663;KMP.VistaSystemMonitor
 ;
zDispatchMap(pIndex) public {
 If pIndex=1 Quit $ListBuild("R","/GetNode","GET","GetNodeG","false")
 If pIndex=2 Quit $ListBuild("R","/GetConfiguration","GET","GetConfigurationG","false")
 If pIndex=3 Quit $ListBuild("R","/GetHttpMetrics","GET","GetHttpMetricsG","false")
 If pIndex=4 Quit $ListBuild("R","/KillData","GET","KillDataG","false")
 If pIndex=5 Quit $ListBuild("R","/StartMonitor","GET","StartMonitorG","false")
 If pIndex=6 Quit $ListBuild("R","/StopMonitor","GET","StopMonitorG","false")
 If pIndex=7 Quit $ListBuild("R","/GetRetryData","GET","GetRetryDataG","false")
 If pIndex=8 Quit $ListBuild("R","/GetGlobuff","GET","GetGlobuffG","false")
 If pIndex=9 Quit $ListBuild("R","/GetConfig","POST","GetConfigP","false")
 If pIndex=10 Quit $ListBuild("R","/SetConfig","POST","SetConfigP","false")
 If pIndex=11 Quit $ListBuild("R","/GetError","POST","GetErrorP","false")
 If pIndex=12 Quit $ListBuild("R","/GetCtmLog","POST","GetCtmLogP","false")
 If pIndex=13 Quit $ListBuild("R","/GetPatientList","POST","GetPatientListP","false")
 If pIndex=14 Quit $ListBuild("R","/Retry","POST","RetryP","false")
 If pIndex=15 Quit $ListBuild("R","/GetPackages","POST","GetPackagesP","false")
 If pIndex=16 Quit $ListBuild("R","/GetHttpMetrics","POST","GetHttpMetricsP","false")
 If pIndex=17 Quit $ListBuild("R","/ImAlive","POST","ImAliveP","false")
 If pIndex=18 Quit $ListBuild("R","/SynthRcmd","POST","SynthRcmdP","false")
 If pIndex=19 Quit $ListBuild("R","/SynthFile","POST","SynthFileP","false")
 If pIndex=20 Quit $ListBuild("R","/SynthVpr","POST","SynthVprP","false")
 Quit "" }
zGetConfigP() public {
    TRY {
        D RU^%ZOSVKR("KMP GetConfigPEvent")
        Do %response.SetHeader("Access-Control-Allow-Origin","*")
        Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
        S KMPRET=##class(%Library.DynamicObject).%New()
        S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
        I KMPREQ.Function'="GetConfig" D  Return 1
        .S KMPRET.ResultText="Incorrect Function Type"
        .W KMPRET.%ToJSON()
        D SITE^KMPUTLW(KMPRET)
        D CPF^KMPUTLW(KMPRET)
        D MON^KMPUTLW(KMPRET)
        S KMPRET.ResultText="OK"
        S KMPRET.Function=KMPREQ.Function
        W KMPRET.%ToJSON()
        D RU^%ZOSVKR("KMP GetConfigPHandler")
        Return 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zGetConfigurationG() public {
    TRY {
        D RU^%ZOSVKR("KMP GetConfigGEvent")
        S KMPRET=##class(%Library.DynamicObject).%New()
        D SITE^KMPUTLW(KMPRET)
        D CPF^KMPUTLW(KMPRET)
        D MON^KMPUTLW(KMPRET)
        W "<H1>Site</H1>"
        S KMPITER=KMPRET.Site.%GetIterator()
        WHILE KMPITER.%GetNext(.KMPKEY,.KMPVALUE) {
          W KMPKEY_": "_KMPVALUE_"<BR>"
        }
        W "<H1>CPF</H1>"
        W "<H2>CPF Startup</H2>"
        S KMPITER=KMPRET.CPF.Startup.%GetIterator()
        WHILE KMPITER.%GetNext(.KMPKEY,.KMPVALUE) {
          W KMPKEY_": "_KMPVALUE_"<BR>"
        }
        W "<H2>CPF Mirror</H2>"
        S KMPITER=KMPRET.CPF.MirrorMember.%GetIterator()
        WHILE KMPITER.%GetNext(.KMPKEY,.KMPVALUE) {
          W KMPKEY_": "_KMPVALUE_"<BR>"
        }
        W "<H2>CPF Config</H2>"
        S KMPITER=KMPRET.CPF.Config.%GetIterator()
        WHILE KMPITER.%GetNext(.KMPKEY,.KMPVALUE) {
          W KMPKEY_": "_KMPVALUE_"<BR>"
        }
        W "<H1>Monitors</H1>"
        S KMPITER=KMPRET.MonCFG.%GetIterator()
        while KMPITER.%GetNext(.KMPKEY,.KMPLINE) {
            W "<H3>"_KMPLINE.Monitor_"</H3>"
            S KMPITER2 = KMPLINE.%GetIterator()
            while KMPITER2.%GetNext(.KMPKEY2, .KMPLINE2) {
              I KMPKEY2'="ApiKey" W KMPKEY2_": "_KMPLINE2_"<BR>"
            }
        }
        D RU^%ZOSVKR("KMP GetConfigGHandler")
        Return 1
    } CATCH KMPERR {
        Return ..Http500(kmperr)
    } }
zGetCtmLogP() public {
    TRY {
        D RU^%ZOSVKR("KMP GetCtmLogPEvent")
        Do %response.SetHeader("Access-Control-Allow-Origin","*")
        Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
        S KMPRET=##class(%Library.DynamicObject).%New()
        S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
        I KMPREQ.Function'="GetCtmLog" D  Return 1
        .S KMPRET.ResultText="Incorrect Function Type"
        .W KMPRET.%ToJSON()
        D SITE^KMPUTLW(KMPRET)
        D CTMLOG^KMPUTLW(KMPRET)
        S KMPRET.ResultText="OK"
        S KMPRET.Function=KMPREQ.Function
        W KMPRET.%ToJSON()
        D RU^%ZOSVKR("KMP GetCtmLogPHandler")
        Return 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zGetErrorP() public {
    TRY {
        D RU^%ZOSVKR("KMP GetErrorPEvent")
        Do %response.SetHeader("Access-Control-Allow-Origin","*")
        Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
        S KMPRET=##class(%Library.DynamicObject).%New()
        S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
        I KMPREQ.Function'="GetError" D  Return 1
        .S KMPRET.ResultText="Incorrect Function Type"
        .W KMPRET.%ToJSON()
        D GETERR^KMPUTLW2(KMPRET,KMPREQ)
        D SITE^KMPUTLW(KMPRET)
        S KMPRET.ResultText="OK"
        S KMPRET.Function=KMPREQ.Function
        W KMPRET.%ToJSON()
        D RU^%ZOSVKR("KMP GetErrorPHandler")
        Return 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zGetGlobuffG() public {
    TRY {
      D RU^%ZOSVKR("KMP GetGlobuffEvent")
      S KMPRNS=$NAMESPACE
      S $NAMESPACE="%SYS"
      S KMPTBUFF=$V($ZU(40,2,17),-2,$ZU(40,0,1))
      S KMPBUFF=1
      D display^GLOBUFF(3000,.KMPBUFF)
      S $NAMESPACE=KMPRNS
      W "total_buffers "_KMPTBUFF
      S KMPI=0
      F  S KMPI=$O(KMPBUFF(KMPI)) Q:KMPI=""  D
      .S KMPL=KMPBUFF(KMPI)
      .W "<BR>percent_buffers{global="""_$LISTGET(KMPL,1)_""",database="""_$LISTGET(KMPL,2)_"""} "_$LISTGET(KMPL,3)
      D RU^%ZOSVKR("KMP GetGlobuffHandler")
      Return 1
    } CATCH KMPERR{
      Return ..Http500(KMPERR)
    } }
zGetHttpMetricsG() public {
    TRY {
        D RU^%ZOSVKR("KMP GetHttpMetricsGEvent")
        S KMPRET=##class(%Library.DynamicObject).%New()
        D SITE^KMPUTLW(KMPRET)
        W "<H1>Site</H1>"
        S KMPITER = KMPRET.Site.%GetIterator()
        WHILE KMPITER.%GetNext(.KEY,.KMPVALUE) {
          W KEY_": "_KMPVALUE_"<BR>"
        }
        S KMPMCHK=%request.Get("MONTYPE")
        I KMPMCHK="" S KMPMCHK="ALL"
        S KMPDATE=%request.Get("DATE")
        I KMPDATE'="" S KMPDCHK="3"_KMPDATE
        E  S KMPDCHK="ALL"
        S KMPSUB="KMP"
        F  S KMPSUB=$O(^XTMP(KMPSUB)) Q:$E(KMPSUB,1,3)'="KMP"  D
        .S KMPDAY=$P(KMPSUB," ",2)
        .Q:(KMPDCHK'=KMPDAY)&&(KMPDCHK'="ALL")
        .W "<H2>"_$P(^XTMP(KMPSUB,0),"^",3)_"</H2>"
        .S KMPMTYP=0
        .F  S KMPMTYP=$O(^XTMP(KMPSUB,KMPMTYP)) Q:KMPMTYP=""  D
        ..Q:(KMPMTYP'[KMPMCHK)&&(KMPMCHK'="ALL")
        ..S KMPNODE=""
        ..F  S KMPNODE=$O(^XTMP(KMPSUB,KMPMTYP,"HTTP",KMPNODE)) Q:KMPNODE=""  D
        ...W "<H3>"_KMPMTYP_" : "_KMPNODE_"</H3>"
        ...S KMPT=""
        ...F  S KMPT=$O(^XTMP(KMPSUB,KMPMTYP,"HTTP",KMPNODE,KMPT)) Q:KMPT=""  D
        ....S KMPTIME=$ZT(KMPT)
        ....S KMPDATA=^XTMP(KMPSUB,KMPMTYP,"HTTP",KMPNODE,KMPT)
        ....W "<pre>"_KMPMTYP_" - "_KMPTIME_" - "_KMPDATA_"</pre>"
        D RU^%ZOSVKR("KMP GetHttpMetricsGHandler")
        Return 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zGetHttpMetricsP() public {
    TRY {
        D RU^%ZOSVKR("KMP GetHttpMetricsPEvent")
        Do %response.SetHeader("Access-Control-Allow-Origin","*")
        Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
        S KMPRET=##class(%Library.DynamicObject).%New()
        S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
        I KMPREQ.Function'="HttpMetrics" D  Return 1
        .S KMPRET.ResultText="Incorrect Function Type"
        .W KMPRET.%ToJSON()
        D SITE^KMPUTLW(KMPRET)
        S KMPMCHK=KMPREQ.Montype
        I KMPMCHK="" S KMPMCHK="ALL"
        S KMPDATE=KMPREQ.Date
        ; parse odbc date format into fileman data format
        S KMPDCHK="3"_$E(KMPDATE,3,4)_$P(KMPDATE,"-",2)_$P(KMPDATE,"-",3)
        S KMPRET.Date=KMPDATE
        S KMPMLIST=##class(%Library.DynamicArray).%New()
        S KMPSUB="KMP"
        F  S KMPSUB=$O(^XTMP(KMPSUB)) Q:$E(KMPSUB,1,3)'="KMP"  D
        .S KMPDAY=$P(KMPSUB," ",2)
        .Q:KMPDCHK'=KMPDAY
        .S KMPMTYP=0
        .F  S KMPMTYP=$O(^XTMP(KMPSUB,KMPMTYP)) Q:KMPMTYP=""  D
        ..Q:(KMPMCHK'[KMPMTYP)&&(KMPMCHK'="ALL")
        ..S KMPMOBJ=##class(%Library.DynamicObject).%New()
        ..S KMPMOBJ.Monitor=KMPMTYP
        ..S KMPDARR=##class(%Library.DynamicArray).%New()
        ..S KMPNODE=""
        ..F  S KMPNODE=$O(^XTMP(KMPSUB,KMPMTYP,"HTTP",KMPNODE)) Q:KMPNODE=""  D
        ...S KMPT=""
        ...F  S KMPT=$O(^XTMP(KMPSUB,KMPMTYP,"HTTP",KMPNODE,KMPT)) Q:KMPT=""  D
        ....S KMPTIME=$ZT(KMPT)
        ....S KMPDATA=^XTMP(KMPSUB,KMPMTYP,"HTTP",KMPNODE,KMPT)
        ....S KMPDATA=KMPTIME_"^"_KMPNODE_"^"_KMPDATA
        ....D KMPDARR.%Push(KMPDATA)
        ..S KMPMOBJ.Data=KMPDARR
        ..D KMPMLIST.%Push(KMPMOBJ)
        S KMPRET.Monitors=KMPMLIST
        S KMPRET.Function=KMPREQ.Function
        S KMPRET.ResultText="OK"
        W KMPRET.%ToJSON()
        D RU^%ZOSVKR("KMP GetHttpMetricsPHandler")
        Return 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zGetNodeG() public {
    TRY {
        W "<H>"_##class(%SYS.System).GetNodeName(1)_"</H>"
        Return 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zGetPackagesP() public {
    TRY {
        D RU^%ZOSVKR("KMP GetPackagesPEvent")
        Do %response.SetHeader("Access-Control-Allow-Origin","*")
        Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
        S KMPRET=##class(%Library.DynamicObject).%New()
        S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
        I KMPREQ.Function'="GetPackages" D  Return 1
        .S KMPRET.ResultText="Incorrect Function Type"
        .W KMPRET.%ToJSON()
        D SITE^KMPUTLW(KMPRET)
        D PACKAGES^KMPUTLW(KMPRET)
        S KMPRET.ResultText="OK"
        S KMPRET.Function=KMPREQ.Function
        W KMPRET.%ToJSON()
        D RU^%ZOSVKR("KMP GetPackagesPHandler")
        Return 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zGetPatientListP() public {
    TRY {
        D RU^%ZOSVKR("KMP GetPatientListPEvent")
        Do %response.SetHeader("Access-Control-Allow-Origin","*")
        Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
        S KMPRET=##class(%Library.DynamicObject).%New()
        S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
        I KMPREQ.Function'="GetPatientList" D  Return 1
        .S KMPRET.ResultText="Incorrect Function Type"
        .W KMPRET.%ToJSON()
        D SITE^KMPUTLW(KMPRET)
        D PATLIST^KMPSYNTH(KMPRET,KMPREQ.Count)
        S KMPRET.Function=KMPREQ.Function
        W KMPRET.%ToJSON()
        D RU^%ZOSVKR("KMP GetPatientListPHandler")
        Return 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zGetRetryDataG() public {
    TRY {
        D RU^%ZOSVKR("KMP GetRetryDataGEvent")
        S KMPRET=##class(%Library.DynamicObject).%New()
        D SITE^KMPUTLW(KMPRET)
        W "<H1>Site</H1>"
        S KMPITER = KMPRET.Site.%GetIterator()
        WHILE KMPITER.%GetNext(.KEY,.KMPVALUE) {
          W KEY_": "_KMPVALUE_"<BR>"
        }
        S KMPMCHK=%request.Get("MONTYPE")
        I KMPMCHK="ALL" S KMPMCHK="VBEM:VCSM:VETM:VHLM:VMCM:VSTM:VTCM"
        F KMPI=1:1:$L(KMPMCHK,":") D
        .S KMPVMKEY=$P(KMPMCHK,":",KMPI)
        .W "<H3>Monitor:"_KMPVMKEY_"</H3>"
        .S KMPVNODE=""
        .F  S KMPVNODE=$O(^KMPTMP("KMPV",KMPVMKEY,"RETRY",KMPVNODE)) Q:KMPVNODE=""  D
        ..S KMPDAY=""
        ..F  S KMPDAY=$O(^KMPTMP("KMPV",KMPVMKEY,"RETRY",KMPVNODE,KMPDAY)) Q:KMPDAY=""  D
        ...S HOROLOG=""
        ...F  S HOROLOG=$O(^KMPTMP("KMPV",KMPVMKEY,"RETRY",KMPVNODE,KMPDAY,HOROLOG)) Q:HOROLOG=""  D
        ....S KMPJDAY=$ZD(KMPDAY)
        ....S KMPJTIME=$ZT($P(HOROLOG,",",2))
        ....S KMPDATA=KMPVMKEY_"^"_KMPVNODE_"^"_KMPJDAY_"^"_KMPJTIME
        ....W "<BR>Data:"_KMPDATA
        D RU^%ZOSVKR("KMP GetRetryDataGHandler")
        RETURN 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zImAliveP() public {
    TRY {
      D RU^%ZOSVKR("KMP SynthImAliveEvent")
      Do %response.SetHeader("Access-Control-Allow-Origin","*")
      Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
      S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
      S KMPRET=##class(%Library.DynamicObject).%New()
      S KMPINST=##class(%SYS.System).GetInstanceName(),KMPNDTYP=$$NODETYPE^KMPUTLW(KMPINST)
      I KMPNDTYP="BE",##CLASS(%SYSTEM.Mirror).IsPrimary()=0,##CLASS(%SYSTEM.Mirror).GetStatus()'="NOTINIT"  D  Return 1
      .S KMPRET.ResultText="Not Primary Backend"
      .D RU^%ZOSVKR("KMP SynthImAliveHandler")
      .W KMPRET.%ToJSON()
      I KMPREQ.Function'="ImAlive" D  Return 1
      .S KMPRET.ResultText="Incorrect Function Type"
      .D RU^%ZOSVKR("KMP SynthImAliveHandler")
      .W KMPRET.%ToJSON()
      D SITE^KMPUTLW(KMPRET)
      S KMPRET.Function=KMPREQ.Function
      S KMPRET.ResultText="OK"
      W KMPRET.%ToJSON()
      D RU^%ZOSVKR("KMP SynthImAliveHandler")
      Return 1
    } CATCH KMPERR {
      Return ..Http500(KMPERR)
    } }
zKillDataG() public {
    TRY {
        D RU^%ZOSVKR("KMP GetKillDataGEvent")
        S KMPRET=##class(%Library.DynamicObject).%New()
        D SITE^KMPUTLW(KMPRET)
        W "<H1>Site</H1>"
        S KMPITER = KMPRET.Site.%GetIterator()
        WHILE KMPITER.%GetNext(.KEY,.KMPVALUE) {
          W KEY_": "_KMPVALUE_"<BR>"
        }
        S KMPMCHK=%request.Get("MONTYPE")
        S KMPMCHK=$REPLACE(KMPMCHK,"""","")
        I KMPMCHK="" S KMPMCHK="VBEM:VCSM:VETM:VHLM:VMCM:VSTM:VTCM"
        S KMPL=$L(KMPMCHK,":")
        F KMPI=1:1:KMPL D
        .S KMPMTYP=$P(KMPMCHK,":",KMPI)
        .K ^KMPTMP("KMPV",KMPMTYP)
        .W "<BR>Data deleted: ",KMPMTYP
        .D STOPMON^KMPVCBG(KMPMTYP,1,0)
        .W "<BR>Monitor stopped: ",KMPMTYP
        D RU^%ZOSVKR("KMP GetKillDataGHandler")
        Return 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zRetryP() public {
    TRY {
        D RU^%ZOSVKR("KMP RetryPEvent")
        Do %response.SetHeader("Access-Control-Allow-Origin","*")
        Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
        S KMPRET=##class(%Library.DynamicObject).%New()
        S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
        I KMPREQ.Function'="Retry" D  Return 1
        .S KMPRET.ResultText="Incorrect Function Type"
        .W KMPRET.%ToJSON()
        S KMPRET.ResultText=$$RETRY^KMPUTLW(KMPREQ)
        D SITE^KMPUTLW(KMPRET)
        S KMPRET.Function=KMPREQ.Function
        W KMPRET.%ToJSON()
        D RU^%ZOSVKR("KMP RetryPHandler")
        Return 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zSetConfigP() public {
    TRY {
        D RU^%ZOSVKR("KMP SetConfigPEvent")
        Do %response.SetHeader("Access-Control-Allow-Origin","*")
        Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
        S KMPRET=##class(%Library.DynamicObject).%New()
        S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
        I KMPREQ.Function'="SetConfig" D  Return 1
        .S KMPRET.ResultText="Incorrect Function Type"
        .W KMPRET.%ToJSON()
        S KMPRET.ResultText=$$SETCFG^KMPUTLW2(KMPREQ)
        D SITE^KMPUTLW(KMPRET)
        D CPF^KMPUTLW(KMPRET)
        D MON^KMPUTLW(KMPRET)
        S KMPRET.Function=KMPREQ.Function
        D RU^%ZOSVKR("KMP SetConfigPHandler")
        W KMPRET.%ToJSON()
        Return 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zStartMonitorG() public {
    TRY {
        D RU^%ZOSVKR("KMP GetStartMonitorGEvent")
        S KMPRET=##class(%Library.DynamicObject).%New()
        D SITE^KMPUTLW(KMPRET)
        W "<H1>Site</H1>"
        S KMPITER = KMPRET.Site.%GetIterator()
        WHILE KMPITER.%GetNext(.KEY,.KMPVALUE) {
          W KEY_": "_KMPVALUE_"<BR>"
        }
        S KMPMCHK=%request.Get("MONTYPE")
        I KMPMCHK="ALL" S KMPMCHK="VBEM:VCSM:VETM:VHLM:VMCM:VSTM:VTCM"
        F KMPI=1:1:$L(KMPMCHK,":") D
        .S KMPQUIT=0
        .S KMPVMKEY=$P(KMPMCHK,":",KMPI)
        .W "<H3>"_KMPVMKEY_"</H3>"
        .I '$D(^KMPV(8969,"B",KMPVMKEY)) D
        ..W "&nbsp;&nbsp;&nbsp;&nbsp;"_KMPVMKEY_" not a valid monitor"
        ..S KMPQUIT=1
        .S KMPVROUT=$$GETVAL^KMPVCCFG(KMPVMKEY,"CACHE DAILY TASK",8969)
        .I KMPVROUT="" D
        ..W "&nbsp;&nbsp;&nbsp;&nbsp;"_KMPVMKEY_" has no run routine"
        ..S KMPQUIT=1
        .I $$ROUTCHK^KMPVCBG(KMPVROUT)=1 D
        ..W "&nbsp;&nbsp;&nbsp;&nbsp;"_KMPVMKEY_" already running"
        ..S KMPQUIT=1
        .I KMPQUIT=0 D
        ..D STARTMON^KMPVCBG(KMPVMKEY,1,1)
        ..S KMPVTASK="RUN^"_KMPVROUT J @KMPVTASK
        ..W !,"&nbsp;&nbsp;&nbsp;&nbsp;"_KMPVMKEY_" Started"
        D RU^%ZOSVKR("KMP GetStartMonitorGHandler")
        RETURN 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zStopMonitorG() public {
    TRY {
        D RU^%ZOSVKR("KMP GetStartMonitorGEvent")
        S KMPRET=##class(%Library.DynamicObject).%New()
        D SITE^KMPUTLW(KMPRET)
        W "<H1>Site</H1>"
        S KMPITER = KMPRET.Site.%GetIterator()
        WHILE KMPITER.%GetNext(.KEY,.KMPVALUE) {
            W KEY_": "_KMPVALUE_"<BR>"
        }
        S KMPMCHK=%request.Get("MONTYPE")
        I KMPMCHK="ALL" S KMPMCHK="VBEM:VCSM:VETM:VHLM:VMCM:VSTM:VTCM"
        F KMPI=1:1:$L(KMPMCHK,":") D
        .S KMPQUIT=0
        .S KMPVMKEY=$P(KMPMCHK,":",KMPI)
        .W "<H3>"_KMPVMKEY_"</H3>"
        .I '$D(^KMPV(8969,"B",KMPVMKEY)) D  Q:KMPQUIT
        ..W "&nbsp;&nbsp;&nbsp;&nbsp;"_KMPVMKEY_" not a valid monitor"
        ..S KMPQUIT=1
        .D STOPMON^KMPVCBG(KMPVMKEY,1,1)
        .W !,"&nbsp;&nbsp;&nbsp;&nbsp;"_KMPVMKEY_" Stopped"
        D RU^%ZOSVKR("KMP GetStartMonitorGHandler")
        RETURN 1
    } CATCH KMPERR {
        Return ..Http500(KMPERR)
    } }
zSupportedVerbs(pUrl,pVerbs) public {
 Set pVerbs="",tSC=1
 Do {
   Set tSC=..ResolveTarget(pUrl,.tTargetUrl,.tTargetClass)
   If ('tSC)||((tTargetUrl="")&&(tTargetClass="")) Quit
   If (tTargetUrl'=pUrl)&&(tTargetClass'=$classname()) {
       Set tSC=$zobjclassmethod(tTargetClass,"SupportedVerbs",tTargetUrl,.pVerbs)
       Quit
   }
   If ##class(%Regex.Matcher).%New("/GetConfig").Match(pUrl) Set pVerbs="POST,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/GetConfiguration").Match(pUrl) Set pVerbs="GET,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/GetCtmLog").Match(pUrl) Set pVerbs="POST,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/GetError").Match(pUrl) Set pVerbs="POST,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/GetGlobuff").Match(pUrl) Set pVerbs="GET,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/GetHttpMetrics").Match(pUrl) Set pVerbs="GET,POST,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/GetNode").Match(pUrl) Set pVerbs="GET,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/GetPackages").Match(pUrl) Set pVerbs="POST,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/GetPatientList").Match(pUrl) Set pVerbs="POST,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/GetRetryData").Match(pUrl) Set pVerbs="GET,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/ImAlive").Match(pUrl) Set pVerbs="POST,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/KillData").Match(pUrl) Set pVerbs="GET,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/Retry").Match(pUrl) Set pVerbs="POST,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/SetConfig").Match(pUrl) Set pVerbs="POST,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/StartMonitor").Match(pUrl) Set pVerbs="GET,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/StopMonitor").Match(pUrl) Set pVerbs="GET,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/SynthFile").Match(pUrl) Set pVerbs="POST,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/SynthRcmd").Match(pUrl) Set pVerbs="POST,OPTIONS" Quit
   If ##class(%Regex.Matcher).%New("/SynthVpr").Match(pUrl) Set pVerbs="POST,OPTIONS" Quit
 } while 0
 Quit tSC }
zSynthFileP() public {
    TRY {
      D RU^%ZOSVKR("KMP SynthFileEvent")
      Do %response.SetHeader("Access-Control-Allow-Origin","*")
      Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
      S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
      S KMPRET=##class(%Library.DynamicObject).%New()
      S KMPINST=##class(%SYS.System).GetInstanceName(),KMPNDTYP=$$NODETYPE^KMPUTLW(KMPINST)
      I KMPNDTYP="BE",##CLASS(%SYSTEM.Mirror).IsPrimary()=0,##CLASS(%SYSTEM.Mirror).GetStatus()'="NOTINIT"  D  Return 1
      .S KMPRET.ResultText="Not Primary Backend"
      .D RU^%ZOSVKR("KMP SynthFileHandler")
      .W KMPRET.%ToJSON()
      I KMPREQ.Function'="SynthFile" D  Return 1
      .S KMPRET.ResultText="Incorrect Function Type"
      .D RU^%ZOSVKR("KMP SynthFileHandler")
      .W KMPRET.%ToJSON()
      D SITE^KMPUTLW(KMPRET)
      D SYNFILE^KMPSYNTH(KMPRET)
      S KMPRET.Function=KMPREQ.Function
      S KMPRET.ResultText="OK"
      W KMPRET.%ToJSON()
      D RU^%ZOSVKR("KMP SynthFileHandler")
      Return 1
    } CATCH KMPERR{
      Return ..Http500(KMPERR)
    } }
zSynthRcmdP() public {
    TRY {
      D RU^%ZOSVKR("KMP SynthRcmdEvent")
      Do %response.SetHeader("Access-Control-Allow-Origin","*")
      Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
      S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
      S KMPRET=##class(%Library.DynamicObject).%New()
      S KMPINST=##class(%SYS.System).GetInstanceName(),KMPNDTYP=$$NODETYPE^KMPUTLW(KMPINST)
      I KMPNDTYP="BE",##CLASS(%SYSTEM.Mirror).IsPrimary()=0,##CLASS(%SYSTEM.Mirror).GetStatus()'="NOTINIT"  D  Return 1
      .S KMPRET.ResultText="Not Primary Backend"
      .D RU^%ZOSVKR("KMP SynthRcmdHandler")
      .W KMPRET.%ToJSON()
      I KMPREQ.Function'="SynthRcmd" D  Return 1
      .S KMPRET.ResultText="Incorrect Function Type"
      .D RU^%ZOSVKR("KMP SynthRcmdHandler")
      .W KMPRET.%ToJSON()
      D SITE^KMPUTLW(KMPRET)
      D SYNRCMD^KMPSYNTH(KMPRET)
      S KMPRET.Function=KMPREQ.Function
      S KMPRET.ResultText="OK"
      W KMPRET.%ToJSON()
      D RU^%ZOSVKR("KMP SynthRcmdHandler")
      Return 1
    } CATCH KMPERR{
      Return ..Http500(KMPERR)
    } }
zSynthVprP() public {
    TRY {
      ;demographics;reactions;problems;vitals;labs;meds;immunizations;observation;visits;appointments;documents;procedures;consults;flags;factors;skinTests;exams;education;insurance
      D RU^%ZOSVKR("KMP SynthVprEvent")
      Do %response.SetHeader("Access-Control-Allow-Origin","*")
      Do %response.SetHeader("Allow","HEAD,GET,POST,PUT,DELETE,OPTIONS")
      S KMPREQ=##class(%Library.DynamicAbstractObject).%FromJSON(%request.Content)
      S KMPRET=##class(%Library.DynamicObject).%New()
      S KMPINST=##class(%SYS.System).GetInstanceName(),KMPNDTYP=$$NODETYPE^KMPUTLW(KMPINST)
      I KMPNDTYP="BE",##CLASS(%SYSTEM.Mirror).IsPrimary()=0,##CLASS(%SYSTEM.Mirror).GetStatus()'="NOTINIT"  D  Return 1
      .S KMPRET.ResultText="Not Primary Backend"
      .D RU^%ZOSVKR("KMP SynthVprHandler")
      .W KMPRET.%ToJSON()
      I KMPREQ.Function'="SynthVpr" D  Return 1
      .S KMPRET.ResultText="Incorrect Function Type"
      .D RU^%ZOSVKR("KMP SynthVprHandler")
      .W KMPRET.%ToJSON()
      D SITE^KMPUTLW(KMPRET)
      D SYNVPR^KMPSYNTH(KMPRET,KMPREQ.PatientDfn,KMPREQ.ClinicalDomains)
      S KMPRET.Function=KMPREQ.Function
      S KMPRET.ResultText="OK"
      W KMPRET.%ToJSON()
      D RU^%ZOSVKR("KMP SynthVprHandler")
      Return 1
    } CATCH KMPERR{
      Return ..Http500(KMPERR)
    } }
