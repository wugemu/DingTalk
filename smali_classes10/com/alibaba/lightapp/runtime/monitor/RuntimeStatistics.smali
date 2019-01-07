.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;
.super Ljava/lang/Object;
.source "RuntimeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;,
        Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;,
        Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppJsError;,
        Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;,
        Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;,
        Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceResourceTiming;,
        Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;,
        Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;,
        Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;
    }
.end annotation


# static fields
.field public static final DIMENSION_ACCURACY:Ljava/lang/String; = "accuracy"

.field public static final DIMENSION_ACCURACY_DEFAULT_VALUE:Ljava/lang/String; = "0.0"

.field public static final DIMENSION_AGENT_ID_KEY:Ljava/lang/String; = "agentId"

.field public static final DIMENSION_APP_ID_KEY:Ljava/lang/String; = "dingtalkAppId"

.field public static final DIMENSION_APP_PREPARE_DATA_COMBO_MODE:Ljava/lang/String; = "combo"

.field public static final DIMENSION_APP_PREPARE_DATA_ERROR_CODE:Ljava/lang/String; = "err"

.field public static final DIMENSION_APP_PREPARE_DATA_OFFLINE_MODE:Ljava/lang/String; = "off"

.field public static final DIMENSION_APP_PREPARE_DATA_PAGE_STATUS:Ljava/lang/String; = "page"

.field public static final DIMENSION_APP_PREPARE_DATA_REQ_MODE:Ljava/lang/String; = "req"

.field public static final DIMENSION_CHECK_TIMES:Ljava/lang/String; = "checkTimes"

.field public static final DIMENSION_CHECK_TIMES_DEFAULT_VALUE:Ljava/lang/String; = "-1"

.field public static final DIMENSION_CORE_TYPE_KEY:Ljava/lang/String; = "coreType"

.field public static final DIMENSION_CORE_VERSION_KEY:Ljava/lang/String; = "coreVersion"

.field public static final DIMENSION_CORP_ID_KEY:Ljava/lang/String; = "corpId"

.field public static final DIMENSION_DISTANCE:Ljava/lang/String; = "distance"

.field public static final DIMENSION_DISTANCE_DEFAULT_VALUE:Ljava/lang/String; = "-1"

.field public static final DIMENSION_ERROR_CODE:Ljava/lang/String; = "dtErrorCode"

.field public static final DIMENSION_ERROR_CODE_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final DIMENSION_ERR_URL_KEY:Ljava/lang/String; = "errorUrl"

.field public static final DIMENSION_FROMTYPE_KEY:Ljava/lang/String; = "fromType"

.field public static final DIMENSION_FUZZY_MATCH:Ljava/lang/String; = "fuzzyMatch"

.field public static final DIMENSION_FUZZY_MATCH_DEFAULT_VALUE:Ljava/lang/String; = "-1"

.field public static final DIMENSION_HAS_FUZZY_MATCHED:Ljava/lang/String; = "hasFuzzyMatched"

.field public static final DIMENSION_HAS_FUZZY_MATCHED_DEFAULT_VALUE:Ljava/lang/String; = "-1"

.field public static final DIMENSION_HAS_MATCHED:Ljava/lang/String; = "hasMatched"

.field public static final DIMENSION_HAS_MATCHED_DEFAULT_VALUE:Ljava/lang/String; = "-1"

.field public static final DIMENSION_HOST_KEY:Ljava/lang/String; = "host"

.field public static final DIMENSION_HPM_VERSION:Ljava/lang/String; = "hpmAppVersion"

.field public static final DIMENSION_HTTPCODE_KEY:Ljava/lang/String; = "httpCode"

.field public static final DIMENSION_ISCUSTOMIZED:Ljava/lang/String; = "isCustomized"

.field public static final DIMENSION_ISFINISHED_KEY:Ljava/lang/String; = "isFinished"

.field public static final DIMENSION_ISPAGE_KEY:Ljava/lang/String; = "isPage"

.field public static final DIMENSION_IS_APP_SAFE_PATH:Ljava/lang/String; = "isAppSafePath"

.field public static final DIMENSION_IS_MATCH_HPM:Ljava/lang/String; = "isMatchHpm"

.field public static final DIMENSION_IS_SUCCESS:Ljava/lang/String; = "isSuccess"

.field public static final DIMENSION_IS_THIRD_PATH:Ljava/lang/String; = "isThirdPath"

.field public static final DIMENSION_JSAPI_ERROR_CODE:Ljava/lang/String; = "jsApiErrorCode"

.field public static final DIMENSION_JSAPI_ERROR_MSG:Ljava/lang/String; = "jsApiErrorMsg"

.field public static final DIMENSION_JSAPI_NAME:Ljava/lang/String; = "jsApiName"

.field public static final DIMENSION_JSAPI_NAME_KEY:Ljava/lang/String; = "jsApiName"

.field public static final DIMENSION_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final DIMENSION_LATITUDE_DEFAULT_VALUE:Ljava/lang/String; = "0.0"

.field public static final DIMENSION_LAUNCH_TYPE_KEY:Ljava/lang/String; = "launchType"

.field public static final DIMENSION_LOCATION_TYPE:Ljava/lang/String; = "locationType"

.field public static final DIMENSION_LOCATION_TYPE_DEFAULT_VALUE:Ljava/lang/String; = "-1"

.field public static final DIMENSION_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final DIMENSION_LONGITUDE_DEFAULT_VALUE:Ljava/lang/String; = "0.0"

.field public static final DIMENSION_LWP_ERRO_CODE_KEY:Ljava/lang/String; = "lwpErrorCode"

.field public static final DIMENSION_MICROAPP_USABILITY_KEY:Ljava/lang/String; = "usability"

.field public static final DIMENSION_MINI_APP_ID_KEY:Ljava/lang/String; = "miniAppId"

.field public static final DIMENSION_MINI_DISTANCE:Ljava/lang/String; = "miniDistance"

.field public static final DIMENSION_MINI_DISTANCE_DEFAULT_VALUE:Ljava/lang/String; = "-1"

.field public static final DIMENSION_MINI_FIRSTPAGE_KEY:Ljava/lang/String; = "first"

.field public static final DIMENSION_MINI_ID_KEY:Ljava/lang/String; = "miniAppId"

.field public static final DIMENSION_MINI_PAGE_KEY:Ljava/lang/String; = "page"

.field public static final DIMENSION_MINI_STATE_KEY:Ljava/lang/String; = "state"

.field public static final DIMENSION_NAME_KEY:Ljava/lang/String; = "dingtalkAppName"

.field public static final DIMENSION_NET_TYPE_KEY:Ljava/lang/String; = "netType"

.field public static final DIMENSION_ORG_ID:Ljava/lang/String; = "orgId"

.field public static final DIMENSION_PAGE_KEY:Ljava/lang/String; = "page"

.field public static final DIMENSION_PLAN_ID:Ljava/lang/String; = "planId"

.field public static final DIMENSION_RES_URL_KEY:Ljava/lang/String; = "resUrl"

.field public static final DIMENSION_RPC_NAME_KEY:Ljava/lang/String; = "rpcName"

.field public static final DIMENSION_SERVER_CODE:Ljava/lang/String; = "serverCode"

.field public static final DIMENSION_SERVER_CODE_DEFAULT_VALUE:Ljava/lang/String; = "-1"

.field public static final DIMENSION_STATUSCODE_KEY:Ljava/lang/String; = "statusCode"

.field public static final DIMENSION_STATUS_KEY:Ljava/lang/String; = "status"

.field public static final DIMENSION_TYPE_KEY:Ljava/lang/String; = "type"

.field public static final DIMENSION_UC_BLANK_PAGE_DURATION:Ljava/lang/String; = "duration"

.field public static final DIMENSION_UNKNOW_KEY:Ljava/lang/String; = "unKnow"

.field public static final DIMENSION_URL_KEY:Ljava/lang/String; = "url"

.field public static final DIMENSION_VIEW_TYPE:Ljava/lang/String; = "viewType"

.field public static final DIMENSION_WIFI_ENABLE:Ljava/lang/String; = "wifiEnable"

.field public static final DIMENSION_WIFI_ENABLE_DEFAULT_VALUE:Ljava/lang/String; = "-1"

.field public static final INDEX_EMPTY_COMBO_MODE:Ljava/lang/String; = "empty"

.field public static final INDEX_FULL_COMBO_MODE:Ljava/lang/String; = "full"

.field public static final INDEX_REQ_COMBO_MODE:Ljava/lang/String; = "justReq"

.field public static final LAUNCH_MINI_BLANK:I = 0x0

.field public static final LAUNCH_MINI_START:I = 0x1

.field public static final MEASURE_APP_PREPARE_DATA_DB_VERSION_TIME:Ljava/lang/String; = "db_version_time"

.field public static final MEASURE_APP_PREPARE_DATA_ERROR_DETAIL:Ljava/lang/String; = "errc"

.field public static final MEASURE_APP_PREPARE_DATA_PROCESS_ALL_TIME:Ljava/lang/String; = "all_sub"

.field public static final MEASURE_APP_PREPARE_DATA_PROCESS_DOWNLOAD_TIME:Ljava/lang/String; = "down_sub"

.field public static final MEASURE_APP_PREPARE_DATA_PROCESS_REQ_TIME:Ljava/lang/String; = "req_sub"

.field public static final MEASURE_APP_PREPARE_DATA_PROCESS_ZIP_TIME:Ljava/lang/String; = "zip_sub"

.field public static final MEASURE_BLANK_SCREEN_KEY:Ljava/lang/String; = "blankScreen"

.field public static final MEASURE_BLANK_STATUS_KEY:Ljava/lang/String; = "status"

.field public static final MEASURE_CHECKIN_TIME:Ljava/lang/String; = "checkin_time"

.field public static final MEASURE_CONNECT_END_KEY:Ljava/lang/String; = "connectEnd"

.field public static final MEASURE_CONNECT_START_KEY:Ljava/lang/String; = "connectStart"

.field public static final MEASURE_CONTAINER_VISIBLE_KEY:Ljava/lang/String; = "containerVisible"

.field public static final MEASURE_CONTENT_LENGTH:Ljava/lang/String; = "content_length"

.field public static final MEASURE_CREATE_KEY:Ljava/lang/String; = "create"

.field public static final MEASURE_CSS_NUM_KEY:Ljava/lang/String; = "cssReqNum"

.field public static final MEASURE_DOMAIN_LOOKUP_END_KEY:Ljava/lang/String; = "domainLookupEnd"

.field public static final MEASURE_DOMAIN_LOOKUP_START_KEY:Ljava/lang/String; = "domainLookupStart"

.field public static final MEASURE_DOM_READY_KEY:Ljava/lang/String; = "domReady"

.field public static final MEASURE_DOWNLOAD_ERROR_CODE_KEY:Ljava/lang/String; = "code"

.field public static final MEASURE_DOWNLOAD_LOADTIME_KEY:Ljava/lang/String; = "loadTime"

.field public static final MEASURE_DOWNLOAD_STATUS_KEY:Ljava/lang/String; = "status"

.field public static final MEASURE_END_KEY:Ljava/lang/String; = "end"

.field public static final MEASURE_FETCH_START_KEY:Ljava/lang/String; = "fetchStart"

.field public static final MEASURE_FINISH_LOAD_KEY:Ljava/lang/String; = "finishLoad"

.field public static final MEASURE_FIRST_BYTE_KEY:Ljava/lang/String; = "firstByte"

.field public static final MEASURE_HEAD_SCREEN_KEY:Ljava/lang/String; = "headScreen"

.field public static final MEASURE_IMAGE_LIMIT_60_KEY:Ljava/lang/String; = "imageSizeLimit60"

.field public static final MEASURE_IMG_NUM_KEY:Ljava/lang/String; = "imgReqNum"

.field public static final MEASURE_JSAPI_ERROR_CODE_KEY:Ljava/lang/String; = "jsApiErrorCode"

.field public static final MEASURE_JSAPI_STATUS_KEY:Ljava/lang/String; = "status"

.field public static final MEASURE_JS_ERROR_KEY:Ljava/lang/String; = "jsErrors"

.field public static final MEASURE_JS_HEAP_SIZE_LIMIT_KEY:Ljava/lang/String; = "jsHeapSizeLimit"

.field public static final MEASURE_JS_INJECT_TYPE:Ljava/lang/String; = "jsInjectType"

.field public static final MEASURE_JS_NUM_KEY:Ljava/lang/String; = "jsReqNum"

.field public static final MEASURE_LAUNCH_TYPE_COST_KEY:Ljava/lang/String; = "launchTypeCost"

.field public static final MEASURE_LOADING_TIME:Ljava/lang/String; = "time"

.field public static final MEASURE_LOADTIME_KEY:Ljava/lang/String; = "loadTime"

.field public static final MEASURE_LOADTRAFFIC_KEY:Ljava/lang/String; = "loadTraffic"

.field public static final MEASURE_MINI_LOAD_TIME_KEY:Ljava/lang/String; = "loadTime"

.field public static final MEASURE_NAVIGATION_START_KEY:Ljava/lang/String; = "navigationStart"

.field public static final MEASURE_OFFSET_ALL_JS_READY:Ljava/lang/String; = "allJSReady"

.field public static final MEASURE_OFFSET_CONTAINER_READY:Ljava/lang/String; = "containerReady"

.field public static final MEASURE_OFFSET_INDEX_JS_READY:Ljava/lang/String; = "indexJSReady"

.field public static final MEASURE_OFFSET_PAGE_CREATE:Ljava/lang/String; = "pageCreate"

.field public static final MEASURE_OFFSET_PAGE_FIRST_SHOW:Ljava/lang/String; = "pageFirstShow"

.field public static final MEASURE_OFFSET_PAGE_LOAD_COMPLETE:Ljava/lang/String; = "pageLoadComplete"

.field public static final MEASURE_OFFSET_PAGE_READY:Ljava/lang/String; = "pageReady"

.field public static final MEASURE_OTHER_NUM_KEY:Ljava/lang/String; = "otherReqNum"

.field public static final MEASURE_PACKAGE_MANAGE_RESULT_KEY:Ljava/lang/String; = "resultCode"

.field public static final MEASURE_PACKAGE_MANAGE_STATUS_KEY:Ljava/lang/String; = "status"

.field public static final MEASURE_PAGE_LOAD_KEY:Ljava/lang/String; = "pageLoad"

.field public static final MEASURE_PAGE_NET_LOAD_KEY:Ljava/lang/String; = "pageNetLoad"

.field public static final MEASURE_PAGE_SIZE_KEY:Ljava/lang/String; = "pageSize"

.field public static final MEASURE_PERFORMANCE_MEMORY_KEY:Ljava/lang/String; = "performanceMemory"

.field public static final MEASURE_PERFORMANCE_TIMING_KEY:Ljava/lang/String; = "performanceTiming"

.field public static final MEASURE_REDIRECT_END_KEY:Ljava/lang/String; = "redirectEnd"

.field public static final MEASURE_REDIRECT_KEY:Ljava/lang/String; = "redirect"

.field public static final MEASURE_REDIRECT_START_KEY:Ljava/lang/String; = "redirectStart"

.field public static final MEASURE_REQUEST_NUM_KEY:Ljava/lang/String; = "requestNum"

.field public static final MEASURE_REQUEST_START_KEY:Ljava/lang/String; = "requestStart"

.field public static final MEASURE_RESPONSE_END_KEY:Ljava/lang/String; = "responseEnd"

.field public static final MEASURE_RESPONSE_PAGE_STATUS_KEY:Ljava/lang/String; = "dingtalkCode"

.field public static final MEASURE_RESPONSE_START_KEY:Ljava/lang/String; = "responseStart"

.field public static final MEASURE_SECURE_CONNECT_START_KEY:Ljava/lang/String; = "secureConnectionStart"

.field public static final MEASURE_SERVER_RESPONSE_KEY:Ljava/lang/String; = "serverResponse"

.field public static final MEASURE_SIZE_LIMIT_200_KEY:Ljava/lang/String; = "sizeLimit200"

.field public static final MEASURE_SIZE_LIMIT_50_KEY:Ljava/lang/String; = "sizeLimit50"

.field public static final MEASURE_SRC_CLICK_KEY:Ljava/lang/String; = "srcClick"

.field public static final MEASURE_START_KEY:Ljava/lang/String; = "start"

.field public static final MEASURE_START_RENDER_FROM_NATIVE_KEY:Ljava/lang/String; = "startRenderFromNative"

.field public static final MEASURE_START_RENDER_KEY:Ljava/lang/String; = "startRender"

.field public static final MEASURE_STOP_LOAD_KEY:Ljava/lang/String; = "stopLoading"

.field public static final MEASURE_STOP_LOAD_WITHOUT_LOCATE_KEY:Ljava/lang/String; = "stopLoadingWithoutLocating"

.field public static final MEASURE_TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"

.field public static final MEASURE_TOTAL_HEAP_SIZE_KEY:Ljava/lang/String; = "totalJSHeapSize"

.field public static final MEASURE_UC_CORE_DEGRADE_TYPE:Ljava/lang/String; = "ucCoreDegradeType"

.field public static final MEASURE_UC_CORE_INIT:Ljava/lang/String; = "ucCoreInit"

.field public static final MEASURE_UC_CORE_TYPE:Ljava/lang/String; = "ucCoreType"

.field public static final MEASURE_UC_CORE_VERIFY_POLICY:Ljava/lang/String; = "ucCoreVerifyPolicy"

.field public static final MEASURE_UC_LOADTIME_KEY:Ljava/lang/String; = "ucLoadTime"

.field public static final MEASURE_UID_KEY:Ljava/lang/String; = "userId"

.field public static final MEASURE_UNLOAD_EVENT_END_KEY:Ljava/lang/String; = "unloadEventEnd"

.field public static final MEASURE_UNLOAD_EVENT_START_KEY:Ljava/lang/String; = "unloadEventStart"

.field public static final MEASURE_UPLOAD_TIME:Ljava/lang/String; = "upload_time"

.field public static final MEASURE_USED_HEAP_SIZE_KEY:Ljava/lang/String; = "usedJSHeapSize"

.field public static final MINI_MODULE_NAME:Ljava/lang/String; = "MiniApp"

.field public static final MODULE_NAME:Ljava/lang/String; = "H5"

.field public static final MONITOR_MINI_POINT_APP_PREPARE_DATA_PERF:Ljava/lang/String; = "AppPreparePerf"

.field public static final MONITOR_MINI_POINT_BLANK_TYPE:Ljava/lang/String; = "blank"

.field public static final MONITOR_MINI_POINT_CORE_TYPE:Ljava/lang/String; = "miniCoreType"

.field public static final MONITOR_MINI_POINT_DOWNLOAD:Ljava/lang/String; = "Download"

.field public static final MONITOR_MINI_POINT_JSAPI:Ljava/lang/String; = "JsApi"

.field public static final MONITOR_MINI_POINT_JS_ERRORS:Ljava/lang/String; = "JsErrors"

.field public static final MONITOR_MINI_POINT_LAUNCH_TYPE:Ljava/lang/String; = "launchType"

.field public static final MONITOR_MINI_POINT_LOADING_TIME:Ljava/lang/String; = "miniLoadingTime"

.field public static final MONITOR_MINI_POINT_NUM:Ljava/lang/String; = "Num"

.field public static final MONITOR_MINI_POINT_PACKAGE_MANAGE:Ljava/lang/String; = "packageManage"

.field public static final MONITOR_MINI_POINT_TIMING:Ljava/lang/String; = "Timing"

.field public static final MONITOR_MINI_POINT_TIMING_ON_APP_PERF:Ljava/lang/String; = "TimingAppx"

.field public static final MONITOR_POINT_BIG_RESOURCE:Ljava/lang/String; = "BigResource"

.field public static final MONITOR_POINT_BLANK_PAGE_NAME:Ljava/lang/String; = "BlankPage"

.field public static final MONITOR_POINT_GOOGLE_MAP:Ljava/lang/String; = "google_map"

.field public static final MONITOR_POINT_HPM_ATTEMPT_UPDATE:Ljava/lang/String; = "hpmAttemptUpdate"

.field public static final MONITOR_POINT_HPM_DOWNLOAD:Ljava/lang/String; = "hpmDownload"

.field public static final MONITOR_POINT_HPM_FIND:Ljava/lang/String; = "hpmResFind"

.field public static final MONITOR_POINT_HPM_LOAD:Ljava/lang/String; = "hpmLoad"

.field public static final MONITOR_POINT_HTTP_OVER_LWP:Ljava/lang/String; = "httpOverLwp"

.field public static final MONITOR_POINT_JSAPI:Ljava/lang/String; = "JsApi"

.field public static final MONITOR_POINT_JSAPI_LWP:Ljava/lang/String; = "JsHttpOverLwp"

.field public static final MONITOR_POINT_JS_CONFIG:Ljava/lang/String; = "JsConfig"

.field public static final MONITOR_POINT_JS_ERROR:Ljava/lang/String; = "JS_Error"

.field public static final MONITOR_POINT_JS_INJECT:Ljava/lang/String; = "JS_Inject"

.field public static final MONITOR_POINT_LOAD_NAME:Ljava/lang/String; = "Load"

.field public static final MONITOR_POINT_MICROAPP_USABILITY:Ljava/lang/String; = "MicroAppUsability"

.field public static final MONITOR_POINT_MICROAPP_USABILITY_TIME:Ljava/lang/String; = "MicroAppUsabilityTime"

.field public static final MONITOR_POINT_MICRO_APP_HOME_PAGE_LOAD_NAME:Ljava/lang/String; = "MicroAppHomePageLoad"

.field public static final MONITOR_POINT_MICRO_APP_START_LOAD_TIME:Ljava/lang/String; = "MicroAppStartLoadTime"

.field public static final MONITOR_POINT_MICRO_OPEN:Ljava/lang/String; = "microOpen"

.field public static final MONITOR_POINT_NEW_BLANK_PAGE_NAME:Ljava/lang/String; = "NewBlankPage"

.field public static final MONITOR_POINT_OAUTH:Ljava/lang/String; = "OAuth"

.field public static final MONITOR_POINT_ORG_CUSTOM_LOAD_NAME:Ljava/lang/String; = "OrgCustomPageLoad"

.field public static final MONITOR_POINT_ORG_CUSTOM_PAGE_START_LOAD_TIME:Ljava/lang/String; = "OrgCustomPageStartLoadTime"

.field public static final MONITOR_POINT_PAGE_4xx_5xx:Ljava/lang/String; = "Page4xx5xx"

.field public static final MONITOR_POINT_PAGE_FINISH_TIME:Ljava/lang/String; = "PageLoadTime"

.field public static final MONITOR_POINT_PAGE_LOAD:Ljava/lang/String; = "PageLoad"

.field public static final MONITOR_POINT_PAGE_STATUS:Ljava/lang/String; = "pageStatus"

.field public static final MONITOR_POINT_PERFORMANCE_MEMORY:Ljava/lang/String; = "PerformanceMemory"

.field public static final MONITOR_POINT_PERFORMANCE_TIMING:Ljava/lang/String; = "PerformanceTiming"

.field public static final MONITOR_POINT_REDIRECT_NUM:Ljava/lang/String; = "RedirectNum"

.field public static final MONITOR_POINT_RUNTIME_LAUNCH_TIME:Ljava/lang/String; = "RuntimeLaunchTime"

.field public static final MONITOR_POINT_RUNTIME_START_LOAD_TIME:Ljava/lang/String; = "RuntimeStartLoadTime"

.field public static final MONITOR_POINT_SAFE_TUNNEL_ENTRY:Ljava/lang/String; = "safeTunnelEntry"

.field public static final MONITOR_POINT_SAFE_TUNNEL_FROM:Ljava/lang/String; = "safeTunnelFrom"

.field public static final MONITOR_POINT_SSL_ERROR:Ljava/lang/String; = "sslError"

.field public static final MONITOR_POINT_TRAFFIC_NAME:Ljava/lang/String; = "Traffic"

.field public static final MONITOR_POINT_UC_CORE_INIT:Ljava/lang/String; = "UCCoreInit"

.field public static final MONITOR_POINT_UC_CORE_PV:Ljava/lang/String; = "UCCorePV"

.field public static final MONITOR_POINT_UC_CORE_VERIFY_POLICY:Ljava/lang/String; = "UCVerifyPolicy"

.field public static final MONITOR_POINT_UC_PAGE_LOAD_T0:Ljava/lang/String; = "UCPageLoadTimeT0"

.field public static final MONITOR_POINT_UC_PAGE_LOAD_T1:Ljava/lang/String; = "UCPageLoadTimeT1"

.field public static final MONITOR_POINT_UC_PAGE_LOAD_T2:Ljava/lang/String; = "UCPageLoadTimeT2"

.field public static final MONITOR_POINT_UC_PAGE_LOAD_T3:Ljava/lang/String; = "UCPageLoadTimeT3"

.field public static final MONITOR_POINT_UID_TOKEN_STATUS:Ljava/lang/String; = "uidTokenStatus"

.field public static final MOTU_ERROR_CODE:Ljava/lang/String; = "601"

.field public static final MOTU_ERROR_MSG:Ljava/lang/String; = "Finished Blank"

.field public static final POINT_FACE_RECOGNITION:Ljava/lang/String; = "face_recognition"

.field public static final STATISTICS_SEPARATOR:Ljava/lang/String; = ";"

.field public static final SYSTEM_ROM_WEBVIEW:I = 0x1

.field public static final TYPE_VALUE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final UC_WEBVIEW:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2330
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->simplifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 1
    .param p0, "dimensionSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .prologue
    .line 2268
    if-eqz p0, :cond_0

    .line 2269
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2270
    const-string/jumbo v0, "dingtalkAppId"

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2271
    const-string/jumbo v0, "agentId"

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2272
    const-string/jumbo v0, "host"

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2273
    const-string/jumbo v0, "dingtalkAppName"

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2274
    const-string/jumbo v0, "netType"

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2275
    const-string/jumbo v0, "isCustomized"

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2276
    const-string/jumbo v0, "viewType"

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2278
    :cond_0
    return-object p0
.end method

.method public static declared-synchronized commitBigResStatus(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "resUrl"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "isResource"    # Z

    .prologue
    .line 1273
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1274
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1275
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1276
    if-eqz p3, :cond_0

    .line 1277
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1281
    :goto_0
    const-string/jumbo v3, "resUrl"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1283
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1284
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "content_length"

    int-to-double v6, p2

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1286
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "BigResource"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    monitor-exit v4

    return-void

    .line 1279
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1273
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitHpmAttemptUpdate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 8
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "publishTime"    # J

    .prologue
    .line 1330
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1331
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1333
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "dingtalkAppId"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1334
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1335
    if-eqz p2, :cond_0

    .line 1336
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1340
    :goto_0
    const-string/jumbo v3, "hpmAppVersion"

    invoke-virtual {v0, v3, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1342
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1343
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "timestamp"

    long-to-double v6, p4

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1344
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "hpmAttemptUpdate"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    monitor-exit v4

    return-void

    .line 1338
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1330
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitHpmDownLoad(Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "contentSize"    # J
    .param p3, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 1316
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1317
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1319
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "dingtalkAppId"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1320
    const-string/jumbo v3, "hpmAppVersion"

    invoke-virtual {v0, v3, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1322
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1323
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "content_length"

    long-to-double v6, p1

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1325
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "hpmDownload"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    monitor-exit v4

    return-void

    .line 1316
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitHpmLoad(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "isSuccess"    # Z
    .param p2, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 1295
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1296
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1298
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    if-eqz p1, :cond_0

    .line 1299
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1303
    :goto_0
    const-string/jumbo v3, "dingtalkAppId"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1304
    const-string/jumbo v3, "hpmAppVersion"

    invoke-virtual {v0, v3, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1306
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1308
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "hpmLoad"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    monitor-exit v4

    return-void

    .line 1301
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1295
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitHpmResFind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "resUrl"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Z
    .param p4, "isMatchHpm"    # Z
    .param p5, "isThirdPath"    # Z
    .param p6, "isAppSafePath"    # Z

    .prologue
    .line 1352
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1353
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1355
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    if-eqz p3, :cond_0

    .line 1356
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1360
    :goto_0
    if-eqz p4, :cond_1

    .line 1361
    const-string/jumbo v3, "isMatchHpm"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1365
    :goto_1
    if-eqz p5, :cond_2

    .line 1366
    const-string/jumbo v3, "isThirdPath"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1370
    :goto_2
    if-eqz p6, :cond_3

    .line 1371
    const-string/jumbo v3, "isAppSafePath"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1376
    :goto_3
    const-string/jumbo v3, "dingtalkAppId"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1377
    const-string/jumbo v3, "resUrl"

    invoke-virtual {v0, v3, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1378
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1380
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1382
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "hpmResFind"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    monitor-exit v4

    return-void

    .line 1358
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1352
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1363
    .restart local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_1
    :try_start_2
    const-string/jumbo v3, "isMatchHpm"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_1

    .line 1368
    :cond_2
    const-string/jumbo v3, "isThirdPath"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_2

    .line 1373
    :cond_3
    const-string/jumbo v3, "isAppSafePath"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public static declared-synchronized commitHttpOverLwpStatus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "resUrl"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 1417
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1418
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1420
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "resUrl"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1421
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1422
    if-eqz p2, :cond_0

    .line 1423
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1428
    :goto_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1430
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "httpOverLwp"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    monitor-exit v4

    return-void

    .line 1425
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1417
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitJsApiStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "jsApiName"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "isSuccess"    # Z

    .prologue
    .line 1436
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1437
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1438
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1439
    if-eqz p5, :cond_0

    .line 1440
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1444
    :goto_0
    const-string/jumbo v3, "jsApiName"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1445
    const-string/jumbo v3, "jsApiErrorCode"

    invoke-virtual {v0, v3, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1446
    const-string/jumbo v3, "jsApiErrorMsg"

    invoke-virtual {v0, v3, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1448
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1449
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "userId"

    .line 1450
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    long-to-double v6, v6

    .line 1449
    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1451
    const-string/jumbo v3, "H5"

    invoke-interface {v2, v3, p0, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    monitor-exit v4

    return-void

    .line 1442
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1436
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitJsError(Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1083
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1084
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1085
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1087
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1088
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "JS_Error"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    monitor-exit v4

    return-void

    .line 1083
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitJsInject(I)V
    .locals 8
    .param p0, "jsInjectType"    # I

    .prologue
    .line 1204
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1205
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1206
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1207
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "jsInjectType"

    int-to-double v6, p0

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1208
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "JS_Inject"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    monitor-exit v4

    return-void

    .line 1204
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitLoadingActivityTime(Ljava/lang/String;J)V
    .locals 9
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 1987
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1999
    :goto_0
    monitor-exit v4

    return-void

    .line 1990
    :cond_0
    :try_start_1
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1992
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1993
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1995
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1996
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "time"

    long-to-double v6, p1

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1998
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "miniLoadingTime"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1987
    .end local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitMicroAppUsability(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 1064
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1065
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1066
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1067
    const-string/jumbo v3, "usability"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1068
    if-eqz p2, :cond_0

    .line 1069
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1073
    :goto_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1074
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "MicroAppUsability"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    monitor-exit v4

    return-void

    .line 1071
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1064
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitMiniAppPrepareDataTime(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;)V
    .locals 10
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "appPrepareData"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;

    .prologue
    const-wide/16 v8, 0x0

    .line 1931
    const-class v5, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1969
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 1935
    :cond_1
    :try_start_1
    const-string/jumbo v4, "STATISTICS"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1936
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1937
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperMiniAppDimensionCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1938
    const-string/jumbo v4, "err"

    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->errorCode:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1939
    const-string/jumbo v4, "off"

    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->offlineMode:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1940
    const-string/jumbo v4, "page"

    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->pageStatus:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1941
    const-string/jumbo v4, "req"

    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->reqMode:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1942
    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeReq:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_3

    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeDownload:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_3

    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeUnzip:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_3

    .line 1943
    const-string/jumbo v4, "combo"

    const-string/jumbo v6, "full"

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1950
    :goto_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1951
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperAppPrepareData(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;)V

    .line 1953
    const-string/jumbo v4, "MiniApp"

    const-string/jumbo v6, "AppPreparePerf"

    invoke-interface {v2, v4, v6, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1955
    if-eqz p1, :cond_0

    .line 1957
    :try_start_2
    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeAll:J

    const-wide/16 v8, 0xdac

    cmp-long v4, v6, v8

    if-gtz v4, :cond_2

    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeReq:J

    const-wide/16 v8, 0x3e8

    cmp-long v4, v6, v8

    if-gtz v4, :cond_2

    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeDownload:J

    const-wide/16 v8, 0xbb8

    cmp-long v4, v6, v8

    if-gtz v4, :cond_2

    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeUnzip:J

    const-wide/16 v8, 0x12c

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    .line 1962
    :cond_2
    const-string/jumbo v4, "appPrepareLong"

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->toExtra()Ljava/util/Map;

    move-result-object v6

    invoke-static {v4, v6}, Lhmv;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1965
    :catch_0
    move-exception v3

    .line 1966
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1931
    .end local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1944
    .restart local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_3
    :try_start_4
    iget-wide v6, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeReq:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_4

    .line 1945
    const-string/jumbo v4, "combo"

    const-string/jumbo v6, "justReq"

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_1

    .line 1947
    :cond_4
    const-string/jumbo v4, "combo"

    const-string/jumbo v6, "empty"

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized commitMiniBlankStatus(Ljava/lang/String;I)V
    .locals 8
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "launchStatus"    # I

    .prologue
    .line 2002
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2011
    :goto_0
    monitor-exit v4

    return-void

    .line 2005
    :cond_0
    :try_start_1
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 2006
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 2007
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperMiniAppDimensionCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 2008
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 2009
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "status"

    int-to-double v6, p1

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2010
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "blank"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2002
    .end local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitMiniCoreType(Ljava/lang/String;)V
    .locals 6
    .param p0, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 1972
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1980
    :goto_0
    monitor-exit v4

    return-void

    .line 1975
    :cond_0
    :try_start_1
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1976
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1977
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperMiniAppDimensionCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1978
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1979
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "miniCoreType"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1972
    .end local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitMiniappDownLoadStatus(Ljava/lang/String;II)V
    .locals 8
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "code"    # I

    .prologue
    .line 1896
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1897
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1898
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1899
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1901
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1902
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "status"

    int-to-double v6, p1

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1903
    const-string/jumbo v3, "code"

    int-to-double v6, p2

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1904
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "Download"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1906
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    monitor-exit v4

    return-void

    .line 1896
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitMiniappDownLoadTime(Ljava/lang/String;J)V
    .locals 9
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "loadTime"    # J

    .prologue
    .line 1914
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1915
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1916
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1917
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1919
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1920
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "loadTime"

    long-to-double v6, p1

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1921
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "Download"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    monitor-exit v4

    return-void

    .line 1914
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitMiniappJsApi(Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;)V
    .locals 7
    .param p0, "miniJsApi"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;

    .prologue
    .line 1861
    const-class v6, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v6

    if-eqz p0, :cond_0

    .line 1862
    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1863
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1864
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "miniAppId"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;->miniAppId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1865
    const-string/jumbo v3, "jsApiName"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;->jsApiName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1867
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1868
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "status"

    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;->status:Z

    if-eqz v4, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1869
    const-string/jumbo v3, "jsApiErrorCode"

    iget v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;->errorCode:I

    int-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1870
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "JsApi"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    monitor-exit v6

    return-void

    .line 1868
    .restart local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 1861
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3
.end method

.method public static declared-synchronized commitMiniappJsError(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppJsError;)V
    .locals 6
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "miniAppJsError"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppJsError;

    .prologue
    .line 1816
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1817
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1818
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperMiniAppDimensionCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1820
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1821
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperMiniAppJsErrorMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppJsError;)V

    .line 1822
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "JsErrors"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1823
    monitor-exit v4

    return-void

    .line 1816
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitMiniappLaunchType(Ljava/lang/String;IJ)V
    .locals 8
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "launchType"    # I
    .param p2, "costTime"    # J

    .prologue
    .line 1880
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1881
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1882
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperMiniAppDimensionCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1883
    const-string/jumbo v3, "launchType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1885
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1886
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "launchTypeCost"

    long-to-double v6, p2

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1887
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "launchType"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1888
    monitor-exit v4

    return-void

    .line 1880
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitMiniappNum(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;)V
    .locals 6
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "miniAppNum"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;

    .prologue
    .line 1801
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1802
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1803
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperMiniAppDimensionCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1805
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1806
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperMiniAppNumMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;)V

    .line 1807
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "Num"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    monitor-exit v4

    return-void

    .line 1801
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitMiniappTiming(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;)V
    .locals 6
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "miniAppTiming"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;

    .prologue
    .line 1767
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1768
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1769
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperMiniAppDimensionCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1771
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1772
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperMiniAppTimingMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;)V

    .line 1773
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "Timing"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1774
    monitor-exit v4

    return-void

    .line 1767
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitMiniappTimingOnAppPerf(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 8
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "isFirst"    # Z
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "loadTime"    # J

    .prologue
    .line 1783
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1784
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1785
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperMiniAppDimensionCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1786
    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1787
    const-string/jumbo v5, "first"

    if-eqz p2, :cond_0

    const-string/jumbo v3, "1"

    :goto_0
    invoke-virtual {v0, v5, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1788
    const-string/jumbo v3, "page"

    invoke-virtual {v0, v3, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1790
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1791
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "loadTime"

    long-to-double v6, p4

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1792
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "TimingAppx"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1793
    monitor-exit v4

    return-void

    .line 1787
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1783
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitPackageManageResult(II)V
    .locals 8
    .param p0, "status"    # I
    .param p1, "resultCode"    # I

    .prologue
    .line 1830
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1831
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1833
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1834
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "status"

    int-to-double v6, p0

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1835
    const-string/jumbo v3, "resultCode"

    int-to-double v6, p1

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1836
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "packageManage"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1837
    monitor-exit v4

    return-void

    .line 1830
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitPackageManageResult(Ljava/lang/String;II)V
    .locals 8
    .param p0, "lwpErrorCode"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "resultCode"    # I

    .prologue
    .line 1846
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1847
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1848
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "lwpErrorCode"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1850
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1851
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "status"

    int-to-double v6, p1

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1852
    const-string/jumbo v3, "resultCode"

    int-to-double v6, p2

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1853
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v5, "packageManage"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1854
    monitor-exit v4

    return-void

    .line 1846
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitPage4xx5xx(Ljava/lang/String;I)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpCode"    # I

    .prologue
    .line 1142
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1143
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1144
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1145
    const-string/jumbo v3, "httpCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1146
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1147
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "Page4xx5xx"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    monitor-exit v4

    return-void

    .line 1142
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitPageRedirect(Ljava/lang/String;I)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "redirectCount"    # I

    .prologue
    .line 1217
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1218
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1219
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1220
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1221
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "redirect"

    int-to-double v6, p1

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1222
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "RedirectNum"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    monitor-exit v4

    return-void

    .line 1217
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitPageStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpCode"    # Ljava/lang/String;

    .prologue
    .line 1256
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1257
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1258
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1259
    const-string/jumbo v3, "dingtalkCode"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1260
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1261
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "userId"

    .line 1262
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    long-to-double v6, v6

    .line 1261
    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1263
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "pageStatus"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    monitor-exit v4

    return-void

    .line 1256
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitPerformance(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 8
    .param p0, "monitorType"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "isCustomized"    # Z

    .prologue
    .line 981
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 982
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 983
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    if-eqz p4, :cond_0

    .line 984
    const-string/jumbo v3, "isCustomized"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 988
    :goto_0
    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 989
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 990
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "loadTime"

    long-to-double v6, p2

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 991
    const-string/jumbo v3, "userId"

    .line 992
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    long-to-double v6, v6

    .line 991
    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 993
    const-string/jumbo v3, "H5"

    invoke-interface {v2, v3, p0, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    monitor-exit v4

    return-void

    .line 986
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "isCustomized"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 981
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitPerformanceMemory(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;)V
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "performanceMemory"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;

    .prologue
    .line 1003
    const-class v6, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "STATISTICS"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1004
    .local v4, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1005
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1006
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1007
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperPerformanceMemoryValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;)V

    .line 1008
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1009
    .local v3, "s":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 1010
    .local v2, "mv":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(D)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";;;;;"

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1003
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "mv":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .end local v3    # "s":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1012
    .restart local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v3    # "s":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    :try_start_1
    const-string/jumbo v5, "H5"

    const-string/jumbo v7, "commitPerformanceMemory"

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string/jumbo v5, "H5"

    const-string/jumbo v7, "PerformanceMemory"

    invoke-interface {v4, v5, v7, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1015
    monitor-exit v6

    return-void
.end method

.method public static declared-synchronized commitPerformanceResourceTiming(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceResourceTiming;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1044
    .local p1, "performanceResourceTimings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceResourceTiming;>;"
    const-class v6, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "STATISTICS"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1045
    .local v4, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1046
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1047
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1048
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperPerformanceResourceTimingValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/util/List;)V

    .line 1049
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1050
    .local v3, "s":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 1051
    .local v2, "mv":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(D)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";;;;;"

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1044
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "mv":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .end local v3    # "s":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1053
    .restart local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v3    # "s":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    :try_start_1
    const-string/jumbo v5, "H5"

    const-string/jumbo v7, "commitPerformanceResourceTiming"

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v5, "H5"

    const-string/jumbo v7, "PerformanceTiming"

    invoke-interface {v4, v5, v7, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1055
    monitor-exit v6

    return-void
.end method

.method public static declared-synchronized commitPerformanceTiming(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;)V
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "performanceTiming"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;

    .prologue
    .line 1024
    const-class v6, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "STATISTICS"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1025
    .local v4, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1026
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1027
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1028
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperPerformanceTimingValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;)V

    .line 1029
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1030
    .local v3, "s":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 1031
    .local v2, "mv":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(D)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";;;;;"

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1024
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "mv":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .end local v3    # "s":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1033
    .restart local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v3    # "s":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    :try_start_1
    const-string/jumbo v5, "H5"

    const-string/jumbo v7, "commitPerformanceTiming"

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string/jumbo v5, "H5"

    const-string/jumbo v7, "PerformanceTiming"

    invoke-interface {v4, v5, v7, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    monitor-exit v6

    return-void
.end method

.method public static declared-synchronized commitSSLStatus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "errUrl"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 1233
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1234
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1235
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1236
    if-eqz p2, :cond_0

    .line 1237
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1241
    :goto_0
    const-string/jumbo v3, "errorUrl"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1243
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1244
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "userId"

    .line 1245
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    long-to-double v6, v6

    .line 1244
    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1246
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "sslError"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    monitor-exit v4

    return-void

    .line 1239
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1233
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitSafeTunnelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "resUrl"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 1402
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1403
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1405
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "dingtalkAppId"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1406
    const-string/jumbo v3, "resUrl"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1407
    const-string/jumbo v3, "fromType"

    invoke-virtual {v0, v3, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1409
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1411
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "safeTunnelEntry"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    monitor-exit v4

    return-void

    .line 1402
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitSafeTunnelResFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "resUrl"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 1388
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1389
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1391
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "dingtalkAppId"

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1392
    const-string/jumbo v3, "resUrl"

    invoke-virtual {v0, v3, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1393
    const-string/jumbo v3, "fromType"

    invoke-virtual {v0, v3, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1394
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1396
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1398
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "safeTunnelFrom"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    monitor-exit v4

    return-void

    .line 1388
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitStatus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 1099
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1100
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1101
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1102
    if-eqz p2, :cond_0

    .line 1103
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1108
    :goto_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1109
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "userId"

    .line 1110
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    long-to-double v6, v6

    .line 1109
    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1111
    const-string/jumbo v3, "H5"

    invoke-interface {v2, v3, p0, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    monitor-exit v4

    return-void

    .line 1105
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1099
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitUCBlankPage(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 6
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isUC"    # Z
    .param p3, "duration"    # I

    .prologue
    .line 1122
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1123
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1124
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1125
    if-eqz p2, :cond_0

    .line 1126
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1130
    :goto_0
    const-string/jumbo v3, "duration"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1132
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1133
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "H5"

    invoke-interface {v2, v3, p0, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    monitor-exit v4

    return-void

    .line 1128
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "status"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1122
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitUCCoreInitCoreType(II)V
    .locals 8
    .param p0, "coreType"    # I
    .param p1, "degradeType"    # I

    .prologue
    .line 1167
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1168
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1169
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1170
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "ucCoreType"

    int-to-double v6, p0

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1171
    const-string/jumbo v3, "ucCoreDegradeType"

    int-to-double v6, p1

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1172
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "UCCoreInit"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    monitor-exit v4

    return-void

    .line 1167
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitUCCoreInitStatus(I)V
    .locals 8
    .param p0, "initStatus"    # I

    .prologue
    .line 1155
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1156
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1157
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1158
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "ucCoreInit"

    int-to-double v6, p0

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1159
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "UCCoreInit"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    monitor-exit v4

    return-void

    .line 1155
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitUCCorePV(I)V
    .locals 8
    .param p0, "coreType"    # I

    .prologue
    .line 1180
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1181
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1182
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1183
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "ucCoreType"

    int-to-double v6, p0

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1184
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "UCCorePV"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    monitor-exit v4

    return-void

    .line 1180
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitUCCoreVerifyPolicy(I)V
    .locals 8
    .param p0, "policyType"    # I

    .prologue
    .line 1192
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1193
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1194
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1195
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "ucCoreVerifyPolicy"

    int-to-double v6, p0

    invoke-virtual {v1, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1196
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "UCVerifyPolicy"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    monitor-exit v4

    return-void

    .line 1192
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitUCLoadTimeT0(Ljava/lang/String;D)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "loadTime"    # D

    .prologue
    .line 1685
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1686
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1687
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1689
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1690
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "ucLoadTime"

    invoke-virtual {v1, v3, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1691
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "UCPageLoadTimeT0"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1692
    monitor-exit v4

    return-void

    .line 1685
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitUCLoadTimeT1(Ljava/lang/String;D)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "loadTime"    # D

    .prologue
    .line 1701
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1702
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1703
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1705
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1706
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "ucLoadTime"

    invoke-virtual {v1, v3, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1707
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "UCPageLoadTimeT1"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1708
    monitor-exit v4

    return-void

    .line 1701
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitUCLoadTimeT2(Ljava/lang/String;D)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "loadTime"    # D

    .prologue
    .line 1717
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1718
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1719
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1721
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1722
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "ucLoadTime"

    invoke-virtual {v1, v3, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1723
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "UCPageLoadTimeT2"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    monitor-exit v4

    return-void

    .line 1717
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitUCLoadTimeT3(Ljava/lang/String;D)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "loadTime"    # D

    .prologue
    .line 1733
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1734
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1735
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1737
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1738
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "ucLoadTime"

    invoke-virtual {v1, v3, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1739
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "UCPageLoadTimeT3"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1740
    monitor-exit v4

    return-void

    .line 1733
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized commitUidTokenStatus(Ljava/lang/String;DZZ)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "loadTime"    # D
    .param p3, "isSync"    # Z
    .param p4, "isSetSuccess"    # Z

    .prologue
    .line 1750
    const-class v4, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1751
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1752
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    .line 1753
    const-string/jumbo v5, "type"

    if-eqz p3, :cond_0

    const-string/jumbo v3, "1"

    :goto_0
    invoke-virtual {v0, v5, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1754
    const-string/jumbo v5, "status"

    if-eqz p4, :cond_1

    const-string/jumbo v3, "1"

    :goto_1
    invoke-virtual {v0, v5, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1756
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1757
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "loadTime"

    invoke-virtual {v1, v3, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1758
    const-string/jumbo v3, "H5"

    const-string/jumbo v5, "uidTokenStatus"

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1759
    monitor-exit v4

    return-void

    .line 1753
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "0"

    goto :goto_0

    .line 1754
    :cond_1
    const-string/jumbo v3, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1750
    .end local v0    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static createH5StatTransaction(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;
    .locals 1
    .param p0, "page"    # Ljava/lang/String;

    .prologue
    .line 912
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;-><init>(Ljava/lang/String;)V

    .line 914
    .local v0, "transaction":Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;
    return-object v0
.end method

.method public static doCommitBeaconPerformanceFailed(Ljava/lang/String;JJ)V
    .locals 7
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "orgId"    # J

    .prologue
    .line 1653
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1654
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "isSuccess"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1655
    const-string/jumbo v2, "orgId"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1656
    const-string/jumbo v2, "dtErrorCode"

    invoke-virtual {v0, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1657
    const-string/jumbo v2, "serverCode"

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1659
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1660
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "checkin_time"

    long-to-double v4, p1

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1662
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "SmartWork"

    const-string/jumbo v4, "beacon_checkin_performance"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1663
    return-void
.end method

.method public static doCommitBeaconPerformanceFailed(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 6
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "serverCode"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "orgId"    # J

    .prologue
    .line 1666
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1667
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "isSuccess"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1668
    const-string/jumbo v2, "orgId"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1669
    const-string/jumbo v2, "dtErrorCode"

    invoke-virtual {v0, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1670
    const-string/jumbo v2, "serverCode"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1672
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1673
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "checkin_time"

    long-to-double v4, p2

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1675
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "SmartWork"

    const-string/jumbo v4, "beacon_checkin_performance"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1676
    return-void
.end method

.method public static doCommitBeaconPerformanceSuccess(JJ)V
    .locals 6
    .param p0, "duration"    # J
    .param p2, "orgId"    # J

    .prologue
    .line 1640
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1641
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "isSuccess"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1642
    const-string/jumbo v2, "orgId"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1643
    const-string/jumbo v2, "dtErrorCode"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1644
    const-string/jumbo v2, "serverCode"

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1646
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1647
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "checkin_time"

    long-to-double v4, p0

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1649
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "SmartWork"

    const-string/jumbo v4, "beacon_checkin_performance"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1650
    return-void
.end method

.method public static doCommitFastPerformanceFailed(Ljava/lang/String;IFJJJDD)V
    .locals 9
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "fuzzyMatch"    # I
    .param p2, "distance"    # F
    .param p3, "duration"    # J
    .param p5, "orgId"    # J
    .param p7, "planId"    # J
    .param p9, "longitude"    # D
    .param p11, "latitude"    # D

    .prologue
    .line 1607
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "fast_checkin_performance"

    .line 1608
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    move-object v4, p0

    .line 1607
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 1611
    .local v6, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v0, "isSuccess"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1612
    const-string/jumbo v0, "orgId"

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1613
    const-string/jumbo v0, "dtErrorCode"

    invoke-virtual {v6, v0, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1615
    const-string/jumbo v0, "serverCode"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1616
    const-string/jumbo v0, "distance"

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1617
    const-string/jumbo v0, "fuzzyMatch"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1618
    const-string/jumbo v0, "wifiEnable"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1619
    const-string/jumbo v0, "checkTimes"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1620
    const-string/jumbo v0, "miniDistance"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1621
    const-string/jumbo v0, "hasFuzzyMatched"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1622
    const-string/jumbo v0, "hasMatched"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1623
    const-string/jumbo v0, "longitude"

    invoke-static/range {p9 .. p10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1624
    const-string/jumbo v0, "latitude"

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1625
    const-string/jumbo v0, "planId"

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1626
    const-string/jumbo v0, "locationType"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1627
    const-string/jumbo v0, "accuracy"

    const-string/jumbo v1, "0.0"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1629
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v7

    .line 1630
    .local v7, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v0, "checkin_time"

    long-to-double v2, p3

    invoke-virtual {v7, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1632
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "fast_checkin_performance"

    invoke-interface {v0, v1, v2, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1633
    return-void
.end method

.method public static doCommitFastPerformanceFailed(Ljava/lang/String;JJIFIIJ)V
    .locals 9
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "orgId"    # J
    .param p5, "checkTimes"    # I
    .param p6, "miniDistance"    # F
    .param p7, "hasFuzzyMatched"    # I
    .param p8, "hasMatched"    # I
    .param p9, "planId"    # J

    .prologue
    .line 1488
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "fast_checkin_performance"

    .line 1489
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    move-object v4, p0

    .line 1488
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 1492
    .local v6, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v0, "isSuccess"

    const-string/jumbo v1, "false"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1493
    const-string/jumbo v0, "orgId"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1494
    const-string/jumbo v0, "dtErrorCode"

    invoke-virtual {v6, v0, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1496
    const-string/jumbo v0, "serverCode"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1497
    const-string/jumbo v0, "distance"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1498
    const-string/jumbo v0, "fuzzyMatch"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1499
    const-string/jumbo v0, "wifiEnable"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1500
    const-string/jumbo v0, "checkTimes"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1501
    const-string/jumbo v0, "miniDistance"

    invoke-static {p6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1502
    const-string/jumbo v0, "hasFuzzyMatched"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1503
    const-string/jumbo v0, "hasMatched"

    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1504
    const-string/jumbo v0, "longitude"

    const-string/jumbo v1, "0.0"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1505
    const-string/jumbo v0, "latitude"

    const-string/jumbo v1, "0.0"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1506
    const-string/jumbo v0, "planId"

    invoke-static/range {p9 .. p10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1507
    const-string/jumbo v0, "locationType"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1508
    const-string/jumbo v0, "accuracy"

    const-string/jumbo v1, "0.0"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1511
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v7

    .line 1512
    .local v7, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v0, "checkin_time"

    long-to-double v2, p1

    invoke-virtual {v7, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1514
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "fast_checkin_performance"

    invoke-interface {v0, v1, v2, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1515
    return-void
.end method

.method public static doCommitFastPerformanceFailed(Ljava/lang/String;JJJZDDID)V
    .locals 9
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "orgId"    # J
    .param p5, "planId"    # J
    .param p7, "wifiEnabled"    # Z
    .param p8, "longitude"    # D
    .param p10, "latitude"    # D
    .param p12, "locationType"    # I
    .param p13, "accuracy"    # D

    .prologue
    .line 1518
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "fast_checkin_performance"

    .line 1519
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    move-object v4, p0

    .line 1518
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 1522
    .local v6, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v0, "isSuccess"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1523
    const-string/jumbo v0, "orgId"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1524
    const-string/jumbo v0, "dtErrorCode"

    invoke-virtual {v6, v0, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1526
    const-string/jumbo v0, "serverCode"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1527
    const-string/jumbo v0, "distance"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1528
    const-string/jumbo v0, "fuzzyMatch"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1529
    const-string/jumbo v1, "wifiEnable"

    if-eqz p7, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v6, v1, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1530
    const-string/jumbo v0, "checkTimes"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1531
    const-string/jumbo v0, "miniDistance"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1532
    const-string/jumbo v0, "hasFuzzyMatched"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1533
    const-string/jumbo v0, "hasMatched"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1534
    const-string/jumbo v0, "longitude"

    invoke-static/range {p8 .. p9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1535
    const-string/jumbo v0, "latitude"

    invoke-static/range {p10 .. p11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1536
    const-string/jumbo v0, "planId"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1537
    const-string/jumbo v0, "locationType"

    invoke-static/range {p12 .. p12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1538
    const-string/jumbo v0, "accuracy"

    invoke-static/range {p13 .. p14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1541
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v7

    .line 1542
    .local v7, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v0, "checkin_time"

    long-to-double v2, p1

    invoke-virtual {v7, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1544
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "fast_checkin_performance"

    invoke-interface {v0, v1, v2, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1545
    return-void

    .line 1529
    .end local v7    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    const-string/jumbo v0, "-1"

    goto :goto_0
.end method

.method public static doCommitFastPerformanceFailed(Ljava/lang/String;Ljava/lang/Boolean;JJJ)V
    .locals 8
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "wifiEnable"    # Ljava/lang/Boolean;
    .param p2, "duration"    # J
    .param p4, "orgId"    # J
    .param p6, "planId"    # J

    .prologue
    .line 1578
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "fast_checkin_performance"

    .line 1579
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    move-object v4, p0

    .line 1578
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 1582
    .local v6, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v0, "isSuccess"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1583
    const-string/jumbo v0, "orgId"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1584
    const-string/jumbo v0, "dtErrorCode"

    invoke-virtual {v6, v0, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1586
    const-string/jumbo v0, "serverCode"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1587
    const-string/jumbo v0, "distance"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1588
    const-string/jumbo v0, "fuzzyMatch"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1589
    const-string/jumbo v1, "wifiEnable"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1590
    const-string/jumbo v0, "checkTimes"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1591
    const-string/jumbo v0, "miniDistance"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1592
    const-string/jumbo v0, "hasFuzzyMatched"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1593
    const-string/jumbo v0, "hasMatched"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1594
    const-string/jumbo v0, "longitude"

    const-string/jumbo v1, "0.0"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1595
    const-string/jumbo v0, "latitude"

    const-string/jumbo v1, "0.0"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1596
    const-string/jumbo v0, "planId"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1597
    const-string/jumbo v0, "locationType"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1598
    const-string/jumbo v0, "accuracy"

    const-string/jumbo v1, "0.0"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1600
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v7

    .line 1601
    .local v7, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v0, "checkin_time"

    long-to-double v2, p2

    invoke-virtual {v7, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1603
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "fast_checkin_performance"

    invoke-interface {v0, v1, v2, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1604
    return-void

    .line 1589
    .end local v7    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doCommitFastPerformanceFailed(Ljava/lang/String;Ljava/lang/String;JJIFIIJ)V
    .locals 8
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "serverCode"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "orgId"    # J
    .param p6, "checkTimes"    # I
    .param p7, "miniDistance"    # F
    .param p8, "hasFuzzyMatched"    # I
    .param p9, "hasMatched"    # I
    .param p10, "planId"    # J

    .prologue
    .line 1549
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "fast_checkin_performance"

    .line 1550
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    move-object v4, p0

    .line 1549
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 1553
    .local v6, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v0, "isSuccess"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1554
    const-string/jumbo v0, "orgId"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1555
    const-string/jumbo v0, "dtErrorCode"

    invoke-virtual {v6, v0, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1557
    const-string/jumbo v0, "serverCode"

    invoke-virtual {v6, v0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1558
    const-string/jumbo v0, "distance"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1559
    const-string/jumbo v0, "fuzzyMatch"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1560
    const-string/jumbo v0, "wifiEnable"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1561
    const-string/jumbo v0, "checkTimes"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1562
    const-string/jumbo v0, "miniDistance"

    invoke-static {p7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1563
    const-string/jumbo v0, "hasFuzzyMatched"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1564
    const-string/jumbo v0, "hasMatched"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1565
    const-string/jumbo v0, "longitude"

    const-string/jumbo v1, "0.0"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1566
    const-string/jumbo v0, "latitude"

    const-string/jumbo v1, "0.0"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1567
    const-string/jumbo v0, "planId"

    invoke-static/range {p10 .. p11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1568
    const-string/jumbo v0, "locationType"

    const-string/jumbo v1, "-1"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1569
    const-string/jumbo v0, "accuracy"

    const-string/jumbo v1, "0.0"

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1571
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v7

    .line 1572
    .local v7, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v0, "checkin_time"

    long-to-double v2, p2

    invoke-virtual {v7, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1574
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "fast_checkin_performance"

    invoke-interface {v0, v1, v2, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1575
    return-void
.end method

.method public static doCommitFastPerformanceSuccess(JJIFIIJ)V
    .locals 6
    .param p0, "duration"    # J
    .param p2, "orgId"    # J
    .param p4, "checkTimes"    # I
    .param p5, "miniDistance"    # F
    .param p6, "hasFuzzyMatched"    # I
    .param p7, "hasMatched"    # I
    .param p8, "planId"    # J

    .prologue
    .line 1459
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "SmartWork"

    const-string/jumbo v4, "fast_checkin_performance"

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1462
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "isSuccess"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1463
    const-string/jumbo v2, "orgId"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1464
    const-string/jumbo v2, "dtErrorCode"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1466
    const-string/jumbo v2, "serverCode"

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1467
    const-string/jumbo v2, "distance"

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1468
    const-string/jumbo v2, "fuzzyMatch"

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1469
    const-string/jumbo v2, "wifiEnable"

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1470
    const-string/jumbo v2, "checkTimes"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1471
    const-string/jumbo v2, "miniDistance"

    invoke-static {p5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1472
    const-string/jumbo v2, "hasFuzzyMatched"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1473
    const-string/jumbo v2, "hasMatched"

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1474
    const-string/jumbo v2, "longitude"

    const-string/jumbo v3, "0.0"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1475
    const-string/jumbo v2, "latitude"

    const-string/jumbo v3, "0.0"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1476
    const-string/jumbo v2, "planId"

    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1477
    const-string/jumbo v2, "locationType"

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1478
    const-string/jumbo v2, "accuracy"

    const-string/jumbo v3, "0.0"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1480
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1481
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "checkin_time"

    long-to-double v4, p0

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1483
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "SmartWork"

    const-string/jumbo v4, "fast_checkin_performance"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1484
    return-void
.end method

.method public static initCommonWebStatistics()V
    .locals 7

    .prologue
    .line 390
    const-string/jumbo v5, "STATISTICS"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 395
    .local v4, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 397
    .local v1, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 405
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 407
    .local v3, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v5, "loadTime"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 408
    const-string/jumbo v5, "userId"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 409
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "RuntimeLaunchTime"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 410
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "Load"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 411
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "MicroAppHomePageLoad"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 412
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "OrgCustomPageLoad"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 413
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "RuntimeStartLoadTime"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 414
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "MicroAppStartLoadTime"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 415
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "OrgCustomPageStartLoadTime"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 416
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "PageLoadTime"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 417
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "MicroAppUsabilityTime"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 421
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 423
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 425
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 427
    const-string/jumbo v5, "redirect"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 428
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "RedirectNum"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 433
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 435
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 438
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 439
    const-string/jumbo v5, "navigationStart"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 440
    const-string/jumbo v5, "unloadEventStart"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 441
    const-string/jumbo v5, "unloadEventEnd"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 442
    const-string/jumbo v5, "redirectStart"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 443
    const-string/jumbo v5, "redirectEnd"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 444
    const-string/jumbo v5, "fetchStart"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 445
    const-string/jumbo v5, "domainLookupStart"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 446
    const-string/jumbo v5, "domainLookupEnd"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 447
    const-string/jumbo v5, "connectStart"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 448
    const-string/jumbo v5, "secureConnectionStart"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 449
    const-string/jumbo v5, "connectEnd"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 450
    const-string/jumbo v5, "requestStart"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 451
    const-string/jumbo v5, "responseStart"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 452
    const-string/jumbo v5, "responseEnd"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 454
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "PerformanceTiming"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 459
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 461
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 464
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 466
    const-string/jumbo v5, "userId"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 467
    const-string/jumbo v5, "usedJSHeapSize"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 468
    const-string/jumbo v5, "totalJSHeapSize"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 469
    const-string/jumbo v5, "jsHeapSizeLimit"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 471
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "PerformanceMemory"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 475
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 477
    const-string/jumbo v5, "type"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 478
    const-string/jumbo v5, "isPage"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 479
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 480
    const-string/jumbo v5, "page"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 482
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 484
    const-string/jumbo v5, "loadTraffic"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 485
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "Traffic"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 488
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 490
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 491
    const-string/jumbo v5, "httpCode"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 492
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "Page4xx5xx"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 497
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 499
    const-string/jumbo v5, "corpId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 500
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 501
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 504
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 506
    const-string/jumbo v5, "userId"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 507
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "BlankPage"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 508
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "JsConfig"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 509
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "JsHttpOverLwp"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 510
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "OAuth"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 511
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "PageLoad"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 512
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "microOpen"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 517
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 519
    const-string/jumbo v5, "corpId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 520
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 521
    const-string/jumbo v5, "usability"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 522
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 525
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 526
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "MicroAppUsability"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 529
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 530
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 532
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 533
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "JS_Error"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 536
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 538
    const-string/jumbo v5, "corpId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 539
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 540
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 541
    const-string/jumbo v5, "netType"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 542
    const-string/jumbo v5, "duration"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 544
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 546
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "NewBlankPage"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 549
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 551
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 553
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 554
    const-string/jumbo v5, "ucLoadTime"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 555
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "UCPageLoadTimeT0"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 556
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "UCPageLoadTimeT1"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 557
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "UCPageLoadTimeT2"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 558
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "UCPageLoadTimeT3"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 561
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 562
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 563
    const-string/jumbo v5, "ucCoreInit"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 564
    const-string/jumbo v5, "ucCoreType"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 565
    const-string/jumbo v5, "ucCoreDegradeType"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 566
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "UCCoreInit"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 567
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "UCCorePV"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 570
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 571
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 572
    const-string/jumbo v5, "ucCoreVerifyPolicy"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 573
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "UCVerifyPolicy"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 575
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 576
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 577
    const-string/jumbo v5, "jsInjectType"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 578
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "JS_Inject"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 580
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 582
    const-string/jumbo v5, "dingtalkAppId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 583
    const-string/jumbo v5, "corpId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 584
    const-string/jumbo v5, "agentId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 585
    const-string/jumbo v5, "host"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 586
    const-string/jumbo v5, "dingtalkAppName"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 587
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 588
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 589
    const-string/jumbo v5, "netType"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 590
    const-string/jumbo v5, "jsApiName"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 591
    const-string/jumbo v5, "jsApiErrorCode"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 592
    const-string/jumbo v5, "jsApiErrorMsg"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 594
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 596
    const-string/jumbo v5, "userId"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 598
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "JsApi"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 600
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 602
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 603
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 604
    const-string/jumbo v5, "netType"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 605
    const-string/jumbo v5, "errorUrl"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 607
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 609
    const-string/jumbo v5, "userId"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 610
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "sslError"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 613
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 615
    const-string/jumbo v5, "dingtalkAppId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 616
    const-string/jumbo v5, "corpId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 617
    const-string/jumbo v5, "agentId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 618
    const-string/jumbo v5, "host"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 619
    const-string/jumbo v5, "dingtalkAppName"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 620
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 621
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 622
    const-string/jumbo v5, "netType"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 623
    const-string/jumbo v5, "dingtalkCode"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 625
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 627
    const-string/jumbo v5, "userId"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 628
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "pageStatus"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 630
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 632
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->addDefaultDim(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 634
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 635
    const-string/jumbo v5, "corpId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 636
    const-string/jumbo v5, "resUrl"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 638
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 640
    const-string/jumbo v5, "userId"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 641
    const-string/jumbo v5, "content_length"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 642
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "BigResource"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 647
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 648
    const-string/jumbo v5, "dingtalkAppId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 649
    const-string/jumbo v5, "hpmAppVersion"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 650
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 652
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 654
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "hpmLoad"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 659
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 660
    const-string/jumbo v5, "dingtalkAppId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 661
    const-string/jumbo v5, "hpmAppVersion"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 663
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 664
    const-string/jumbo v5, "content_length"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 666
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "hpmDownload"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 670
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 671
    const-string/jumbo v5, "dingtalkAppId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 672
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 673
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 674
    const-string/jumbo v5, "hpmAppVersion"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 676
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 677
    const-string/jumbo v5, "timestamp"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 679
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "hpmAttemptUpdate"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 682
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 683
    const-string/jumbo v5, "resUrl"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 684
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 685
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 687
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 689
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "httpOverLwp"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 691
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 692
    const-string/jumbo v5, "dingtalkAppId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 693
    const-string/jumbo v5, "isMatchHpm"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 694
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 695
    const-string/jumbo v5, "resUrl"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 696
    const-string/jumbo v5, "isThirdPath"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 697
    const-string/jumbo v5, "isAppSafePath"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 698
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 700
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 702
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "hpmResFind"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 704
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 705
    const-string/jumbo v5, "dingtalkAppId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 706
    const-string/jumbo v5, "resUrl"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 707
    const-string/jumbo v5, "fromType"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 708
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 710
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 712
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "safeTunnelFrom"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 713
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "safeTunnelEntry"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 716
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 717
    const-string/jumbo v5, "dingtalkAppId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 718
    const-string/jumbo v5, "corpId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 719
    const-string/jumbo v5, "agentId"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 720
    const-string/jumbo v5, "host"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 721
    const-string/jumbo v5, "dingtalkAppName"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 722
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 723
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 724
    const-string/jumbo v5, "type"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 726
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 727
    const-string/jumbo v5, "loadTime"

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 728
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "uidTokenStatus"

    invoke-interface {v4, v5, v6, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 731
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 732
    .local v0, "dimension":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v5, "isSuccess"

    invoke-virtual {v0, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 733
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 734
    .local v2, "measure":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v5, "upload_time"

    invoke-virtual {v2, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 735
    const-string/jumbo v5, "SmartWork"

    const-string/jumbo v6, "face_recognition"

    invoke-interface {v4, v5, v6, v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 736
    return-void
.end method

.method public static initMiniAppStatistics()V
    .locals 5

    .prologue
    .line 739
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 744
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 748
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 749
    const-string/jumbo v3, "coreType"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 750
    const-string/jumbo v3, "coreVersion"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 752
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 753
    .local v1, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v3, "finishLoad"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 754
    const-string/jumbo v3, "domReady"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 755
    const-string/jumbo v3, "pageLoad"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 756
    const-string/jumbo v3, "startRender"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 757
    const-string/jumbo v3, "startRenderFromNative"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 758
    const-string/jumbo v3, "firstByte"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 759
    const-string/jumbo v3, "srcClick"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 760
    const-string/jumbo v3, "containerVisible"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 761
    const-string/jumbo v3, "blankScreen"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 762
    const-string/jumbo v3, "headScreen"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 763
    const-string/jumbo v3, "create"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 764
    const-string/jumbo v3, "start"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 765
    const-string/jumbo v3, "end"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 766
    const-string/jumbo v3, "serverResponse"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 767
    const-string/jumbo v3, "stopLoadingWithoutLocating"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 768
    const-string/jumbo v3, "stopLoading"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 769
    const-string/jumbo v3, "pageNetLoad"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 770
    const-string/jumbo v3, "pageCreate"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 771
    const-string/jumbo v3, "indexJSReady"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 772
    const-string/jumbo v3, "allJSReady"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 773
    const-string/jumbo v3, "pageLoadComplete"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 774
    const-string/jumbo v3, "pageFirstShow"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 775
    const-string/jumbo v3, "pageReady"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 776
    const-string/jumbo v3, "containerReady"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 778
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "Timing"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 781
    const-string/jumbo v3, "first"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 782
    const-string/jumbo v3, "page"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 783
    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 784
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 785
    const-string/jumbo v3, "loadTime"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 786
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "TimingAppx"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 789
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 790
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 791
    const-string/jumbo v3, "coreType"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 792
    const-string/jumbo v3, "coreVersion"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 794
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 795
    const-string/jumbo v3, "requestNum"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 796
    const-string/jumbo v3, "cssReqNum"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 797
    const-string/jumbo v3, "jsReqNum"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 798
    const-string/jumbo v3, "imgReqNum"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 799
    const-string/jumbo v3, "otherReqNum"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 800
    const-string/jumbo v3, "imageSizeLimit60"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 801
    const-string/jumbo v3, "sizeLimit200"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 803
    const-string/jumbo v3, "pageSize"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 804
    const-string/jumbo v3, "sizeLimit50"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 805
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "Num"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 808
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 809
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 810
    const-string/jumbo v3, "coreType"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 811
    const-string/jumbo v3, "coreVersion"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 813
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 814
    const-string/jumbo v3, "jsErrors"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 815
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "JsErrors"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 819
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 820
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 821
    const-string/jumbo v3, "lwpErrorCode"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 823
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 824
    const-string/jumbo v3, "resultCode"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 825
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 826
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "packageManage"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 829
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 830
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 831
    const-string/jumbo v3, "jsApiName"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 833
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 834
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 835
    const-string/jumbo v3, "jsApiErrorCode"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 836
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "JsApi"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 839
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 840
    const-string/jumbo v3, "coreType"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 841
    const-string/jumbo v3, "coreVersion"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 842
    const-string/jumbo v3, "launchType"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 844
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 845
    const-string/jumbo v3, "launchTypeCost"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 846
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "launchType"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 849
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 850
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 852
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 853
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 854
    const-string/jumbo v3, "code"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 855
    const-string/jumbo v3, "loadTime"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 856
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "Download"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 859
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 860
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 862
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 863
    const-string/jumbo v3, "time"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 864
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "miniLoadingTime"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 867
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 868
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 869
    const-string/jumbo v3, "err"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 870
    const-string/jumbo v3, "off"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 871
    const-string/jumbo v3, "page"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 872
    const-string/jumbo v3, "req"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 873
    const-string/jumbo v3, "combo"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 875
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 876
    const-string/jumbo v3, "db_version_time"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 877
    const-string/jumbo v3, "errc"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 878
    const-string/jumbo v3, "all_sub"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 879
    const-string/jumbo v3, "req_sub"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 880
    const-string/jumbo v3, "down_sub"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 881
    const-string/jumbo v3, "zip_sub"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 882
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "AppPreparePerf"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 885
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 887
    const-string/jumbo v3, "miniAppId"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 888
    const-string/jumbo v3, "coreType"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 889
    const-string/jumbo v3, "coreVersion"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 891
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 892
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "miniCoreType"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 895
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 896
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 897
    const-string/jumbo v3, "MiniApp"

    const-string/jumbo v4, "blank"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 900
    return-void
.end method

.method private static simplifyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2207
    const-string/jumbo p0, ""

    .line 2213
    .end local p0    # "url":Ljava/lang/String;
    .local v0, "qm":I
    :cond_0
    :goto_0
    return-object p0

    .line 2209
    .end local v0    # "qm":I
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2210
    .restart local v0    # "qm":I
    if-lez v0, :cond_0

    .line 2211
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static wrapperAppPrepareData(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;)V
    .locals 4
    .param p0, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .param p1, "appPrepareData"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;

    .prologue
    .line 2019
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 2028
    :cond_0
    :goto_0
    return-void

    .line 2023
    :cond_1
    const-string/jumbo v0, "db_version_time"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->checkDBVersionTime:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2024
    const-string/jumbo v0, "all_sub"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeAll:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2025
    const-string/jumbo v0, "req_sub"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeReq:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2026
    const-string/jumbo v0, "down_sub"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeDownload:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2027
    const-string/jumbo v0, "zip_sub"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeUnzip:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto :goto_0
.end method

.method private static wrapperCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V
    .locals 9
    .param p0, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2032
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 2036
    :cond_1
    const-string/jumbo v7, "url"

    invoke-virtual {p0, v7, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 2037
    const-string/jumbo v7, "netType"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 2038
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2039
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2040
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_2

    .line 2041
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 2042
    .local v4, "host":Ljava/lang/String;
    const-string/jumbo v7, "host"

    invoke-virtual {p0, v7, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 2046
    .end local v4    # "host":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v7

    invoke-virtual {v7, p1}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v5

    .line 2047
    .local v5, "tempMicroAppInfo":Lhfo$b;
    iget-object v1, v5, Lhfo$b;->a:Ljava/lang/String;

    .line 2048
    .local v1, "appId":Ljava/lang/String;
    iget-object v0, v5, Lhfo$b;->b:Ljava/lang/String;

    .line 2049
    .local v0, "agentId":Ljava/lang/String;
    iget-object v2, v5, Lhfo$b;->d:Ljava/lang/String;

    .line 2050
    .local v2, "appName":Ljava/lang/String;
    iget-object v3, v5, Lhfo$b;->c:Ljava/lang/String;

    .line 2052
    .local v3, "corpId":Ljava/lang/String;
    const-string/jumbo v7, "0"

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2053
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2056
    :cond_3
    const-string/jumbo v7, "agentId"

    invoke-virtual {p0, v7, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 2057
    const-string/jumbo v7, "dingtalkAppId"

    invoke-virtual {p0, v7, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 2058
    const-string/jumbo v7, "dingtalkAppName"

    invoke-virtual {p0, v7, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 2059
    const-string/jumbo v7, "corpId"

    invoke-virtual {p0, v7, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 2060
    const-string/jumbo v7, "viewType"

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto/16 :goto_0
.end method

.method private static wrapperMiniAppDimensionCommonValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V
    .locals 2
    .param p0, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p1, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 2117
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2124
    :cond_0
    :goto_0
    return-void

    .line 2121
    :cond_1
    const-string/jumbo v0, "miniAppId"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 2122
    const-string/jumbo v0, "coreType"

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 2123
    const-string/jumbo v0, "coreVersion"

    sget-object v1, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_0
.end method

.method private static wrapperMiniAppJsErrorMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppJsError;)V
    .locals 4
    .param p0, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .param p1, "miniAppJsError"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppJsError;

    .prologue
    .line 2198
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2202
    :cond_1
    const-string/jumbo v0, "jsErrors"

    iget v1, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppJsError;->jsErrors:I

    int-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto :goto_0
.end method

.method private static wrapperMiniAppNumMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;)V
    .locals 4
    .param p0, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .param p1, "miniAppNum"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;

    .prologue
    .line 2182
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2186
    :cond_1
    const-string/jumbo v0, "requestNum"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->requestNum:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2187
    const-string/jumbo v0, "cssReqNum"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->cssReqNum:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2188
    const-string/jumbo v0, "jsReqNum"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->jsReqNum:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2189
    const-string/jumbo v0, "imgReqNum"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->imgReqNum:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2190
    const-string/jumbo v0, "otherReqNum"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->otherReqNum:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2191
    const-string/jumbo v0, "imageSizeLimit60"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->imageSizeLimit60:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2192
    const-string/jumbo v0, "sizeLimit200"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->sizeLimit200:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2193
    const-string/jumbo v0, "pageSize"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->pageSize:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2194
    const-string/jumbo v0, "sizeLimit50"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->sizeLimit50:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto :goto_0
.end method

.method private static wrapperMiniAppTimingMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;)V
    .locals 24
    .param p0, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .param p1, "miniAppTiming"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;

    .prologue
    .line 2127
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2179
    :cond_0
    :goto_0
    return-void

    .line 2131
    :cond_1
    const-string/jumbo v18, "finishLoad"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->finishLoad:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2132
    const-string/jumbo v18, "domReady"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->domReady:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2133
    const-string/jumbo v18, "pageLoad"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->pageLoad:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2134
    const-string/jumbo v18, "startRender"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->startRender:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2135
    const-string/jumbo v18, "startRenderFromNative"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->startRenderFromNative:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2136
    const-string/jumbo v18, "firstByte"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->firstByte:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2137
    const-string/jumbo v18, "srcClick"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->srcClick:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2138
    const-string/jumbo v18, "containerVisible"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->containerVisible:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2139
    const-string/jumbo v18, "blankScreen"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->blankScreen:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2140
    const-string/jumbo v18, "headScreen"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->headScreen:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2141
    const-string/jumbo v18, "create"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->create:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2142
    const-string/jumbo v18, "start"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->start:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2143
    const-string/jumbo v18, "end"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->end:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2144
    const-string/jumbo v18, "serverResponse"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->serverResponse:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2145
    const-string/jumbo v18, "stopLoadingWithoutLocating"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->stopLoadingWithoutLocating:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2146
    const-string/jumbo v18, "stopLoading"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->stopLoading:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2147
    const-string/jumbo v18, "pageNetLoad"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->pageNetLoad:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2150
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->start:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->create:J

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 2151
    .local v12, "pageCreate":J
    const-string/jumbo v18, "pageCreate"

    long-to-double v0, v12

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2152
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->containerVisible:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->start:J

    move-wide/from16 v20, v0

    sub-long v8, v18, v20

    .line 2153
    .local v8, "indexReady":J
    const-string/jumbo v18, "indexJSReady"

    long-to-double v0, v8

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2154
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->startRender:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->containerVisible:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->start:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    sub-long v4, v18, v20

    .line 2155
    .local v4, "allJSReady":J
    const-string/jumbo v18, "allJSReady"

    long-to-double v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2156
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->finishLoad:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->startRender:J

    move-wide/from16 v20, v0

    sub-long v10, v18, v20

    .line 2157
    .local v10, "pageComplete":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->blankScreen:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->start:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->finishLoad:J

    move-wide/from16 v20, v0

    sub-long v14, v18, v20

    .line 2163
    .local v14, "pageFirstShow":J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gez v18, :cond_3

    .line 2164
    move-wide v14, v10

    .line 2168
    :goto_1
    const-string/jumbo v18, "pageFirstShow"

    long-to-double v0, v14

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2169
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->blankScreen:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->start:J

    move-wide/from16 v20, v0

    sub-long v16, v18, v20

    .line 2173
    .local v16, "pageReady":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->finishLoad:J

    move-wide/from16 v18, v0

    cmp-long v18, v16, v18

    if-gez v18, :cond_2

    .line 2174
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->finishLoad:J

    move-wide/from16 v16, v0

    .line 2176
    :cond_2
    const-string/jumbo v18, "pageReady"

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2177
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->blankScreen:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->create:J

    move-wide/from16 v20, v0

    sub-long v6, v18, v20

    .line 2178
    .local v6, "containerReady":J
    const-string/jumbo v18, "containerReady"

    long-to-double v0, v6

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto/16 :goto_0

    .line 2166
    .end local v6    # "containerReady":J
    .end local v16    # "pageReady":J
    :cond_3
    const-string/jumbo v18, "pageLoadComplete"

    long-to-double v0, v10

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto :goto_1
.end method

.method private static wrapperPerformanceMemoryValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;)V
    .locals 4
    .param p0, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .param p1, "performanceMemory"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;

    .prologue
    .line 2107
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2114
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    const-string/jumbo v0, "usedJSHeapSize"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;->usedJSHeapSize:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2112
    const-string/jumbo v0, "totalJSHeapSize"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;->totalJSHeapSize:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2113
    const-string/jumbo v0, "jsHeapSizeLimit"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;->jsHeapSizeLimit:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto :goto_0
.end method

.method private static wrapperPerformanceResourceTimingValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/util/List;)V
    .locals 1
    .param p0, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceResourceTiming;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2086
    .local p1, "performanceResourceTimings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceResourceTiming;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2104
    :cond_0
    return-void
.end method

.method private static wrapperPerformanceTimingValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;)V
    .locals 4
    .param p0, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .param p1, "performanceTiming"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;

    .prologue
    .line 2064
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2082
    :cond_0
    :goto_0
    return-void

    .line 2068
    :cond_1
    const-string/jumbo v0, "navigationStart"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->navigationStart:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2069
    const-string/jumbo v0, "unloadEventStart"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->unloadEventStart:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2070
    const-string/jumbo v0, "unloadEventEnd"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->unloadEventEnd:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2071
    const-string/jumbo v0, "redirectStart"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->redirectStart:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2072
    const-string/jumbo v0, "redirectEnd"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->redirectEnd:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2073
    const-string/jumbo v0, "fetchStart"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->fetchStart:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2074
    const-string/jumbo v0, "domainLookupStart"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->domainLookupStart:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2075
    const-string/jumbo v0, "domainLookupEnd"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->domainLookupEnd:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2076
    const-string/jumbo v0, "connectStart"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->connectStart:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2077
    const-string/jumbo v0, "secureConnectionStart"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->secureConnectionStart:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2078
    const-string/jumbo v0, "connectEnd"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->connectEnd:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2079
    const-string/jumbo v0, "requestStart"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->requestStart:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2080
    const-string/jumbo v0, "responseStart"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->responseStart:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 2081
    const-string/jumbo v0, "responseEnd"

    iget-wide v2, p1, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceTiming;->responseEnd:J

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto :goto_0
.end method
