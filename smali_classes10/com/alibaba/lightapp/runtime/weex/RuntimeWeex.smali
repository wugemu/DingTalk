.class public Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;
.super Ljava/lang/Object;
.source "RuntimeWeex.java"


# static fields
.field private static final ONE_HOUR:J = 0x36ee80L

.field private static sDebug:Z

.field private static volatile sIsInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->sIsInited:Z

    .line 64
    sput-boolean v0, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->sDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enableNetworkEventReporter()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method private static getVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "1.0.0"

    goto :goto_0
.end method

.method public static declared-synchronized init()V
    .locals 8

    .prologue
    .line 69
    const-class v4, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->sIsInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 169
    .local v0, "builder":Lcom/taobao/weex/InitConfig$Builder;
    .local v1, "config":Lcom/taobao/weex/InitConfig;
    :goto_0
    monitor-exit v4

    return-void

    .line 79
    .end local v0    # "builder":Lcom/taobao/weex/InitConfig$Builder;
    .end local v1    # "config":Lcom/taobao/weex/InitConfig;
    :cond_0
    :try_start_1
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "f_lightapp_enable_multi_progress_degrade_from_m"

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-static {}, Lcms;->a()I

    move-result v3

    const/16 v5, 0x17

    if-lt v3, v5, :cond_1

    .line 81
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->setUseSingleProcess(Z)V

    .line 89
    :cond_1
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "f_lightapp_enable_multi_progress_degrade_all"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->setUseSingleProcess(Z)V

    .line 96
    :cond_2
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "f_lightapp_enable_delay_auto_scan"

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    const-wide/32 v6, 0x36ee80

    invoke-static {v6, v7}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->setScanDelay(J)V

    .line 101
    :cond_3
    const-string/jumbo v3, "env_exclude_x86"

    const-string/jumbo v5, "true"

    invoke-static {v3, v5}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "f_lightapp_weex_env_dingtalk"

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    const-string/jumbo v3, "appName"

    const-string/jumbo v5, "DingTalk"

    invoke-static {v3, v5}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_4
    new-instance v0, Lcom/taobao/weex/InitConfig$Builder;

    invoke-direct {v0}, Lcom/taobao/weex/InitConfig$Builder;-><init>()V

    .line 108
    .restart local v0    # "builder":Lcom/taobao/weex/InitConfig$Builder;
    new-instance v3, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;-><init>()V

    invoke-virtual {v0, v3}, Lcom/taobao/weex/InitConfig$Builder;->setHttpAdapter(Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object v3

    new-instance v5, Lcom/alibaba/lightapp/runtime/weex/adapter/ImageAdapter;

    invoke-direct {v5}, Lcom/alibaba/lightapp/runtime/weex/adapter/ImageAdapter;-><init>()V

    .line 109
    invoke-virtual {v3, v5}, Lcom/taobao/weex/InitConfig$Builder;->setImgAdapter(Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 110
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "f_lightapp_weex_enable_set_user_track"

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 111
    new-instance v3, Lcom/alibaba/lightapp/runtime/weex/adapter/WeexUserTrackAdapter;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/weex/adapter/WeexUserTrackAdapter;-><init>()V

    invoke-virtual {v0, v3}, Lcom/taobao/weex/InitConfig$Builder;->setUtAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 113
    :cond_5
    invoke-virtual {v0}, Lcom/taobao/weex/InitConfig$Builder;->build()Lcom/taobao/weex/InitConfig;

    move-result-object v1

    .line 114
    .restart local v1    # "config":Lcom/taobao/weex/InitConfig;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/taobao/weex/WXSDKEngine;->initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    .line 116
    invoke-static {}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->initWeexErrorReporter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    const-string/jumbo v3, "nuvajs-exec"

    const-class v5, Lcom/alibaba/lightapp/runtime/weex/extend/module/NuvaJspiBridge;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 122
    const-string/jumbo v3, "event"

    const-class v5, Lcom/alibaba/lightapp/runtime/weex/extend/module/WXEventModule;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 126
    const-string/jumbo v3, "mtop"

    const-class v5, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 128
    const-string/jumbo v3, "userTrack"

    const-class v5, Lcom/alibaba/aliweex/adapter/module/WXUserTrackModule;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 129
    const-string/jumbo v3, "cookie"

    const-class v5, Lcom/alibaba/aliweex/adapter/module/WXDINGCookieModule;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 132
    const-string/jumbo v3, "titlebar"

    const-class v5, Lcom/alibaba/aliweex/adapter/component/WXTitleBar;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 133
    const-string/jumbo v3, "mask"

    const-class v5, Lcom/alibaba/aliweex/adapter/component/WXMask;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 135
    const-string/jumbo v3, "tabbar"

    const-class v5, Lcom/alibaba/aliweex/adapter/component/WXTabbar;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 136
    const-string/jumbo v3, "richtext"

    const-class v5, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 137
    const-string/jumbo v3, "video"

    const-class v5, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 141
    const-string/jumbo v3, "dd-sys-web"

    const-class v5, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDSysWXWeb;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 145
    const-string/jumbo v3, "dd-web"

    const-class v5, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 148
    const-string/jumbo v3, "gcanvas"

    const-class v5, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 149
    const-string/jumbo v3, "gcanvas"

    const-class v5, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 151
    const-string/jumbo v3, "amap"

    const-class v5, Lcom/taobao/weex/amap/module/WXMapModule;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 152
    const-string/jumbo v3, "weex-amap"

    const-class v5, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 153
    const-string/jumbo v3, "weex-amap-marker"

    const-class v5, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 154
    const-string/jumbo v3, "weex-amap-info-window"

    const-class v5, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 155
    const-string/jumbo v3, "weex-amap-circle"

    const-class v5, Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 156
    const-string/jumbo v3, "weex-amap-polyline"

    const-class v5, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 157
    const-string/jumbo v3, "weex-amap-polygon"

    const-class v5, Lcom/taobao/weex/amap/component/WXMapPolygonComponent;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 158
    const-string/jumbo v3, "iwb_event"

    const-class v5, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 160
    const-string/jumbo v3, "eAppJsApi"

    const-class v5, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;

    invoke-static {v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 162
    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/weex/BindingX;->register()V
    :try_end_2
    .catch Lcom/taobao/weex/common/WXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :goto_1
    const/4 v3, 0x1

    :try_start_3
    sput-boolean v3, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->sIsInited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 69
    .end local v1    # "config":Lcom/taobao/weex/InitConfig;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 164
    .restart local v1    # "config":Lcom/taobao/weex/InitConfig;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Lcom/taobao/weex/common/WXException;
    :try_start_4
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static initDebug(ZLjava/lang/String;)V
    .locals 1
    .param p0, "enable"    # Z
    .param p1, "debugServer"    # Ljava/lang/String;

    .prologue
    .line 226
    sput-boolean p0, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->sDebug:Z

    .line 227
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    sput-object p1, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugProxyUrl:Ljava/lang/String;

    .line 234
    :cond_0
    return-void
.end method

.method private static initWeexErrorReporter()V
    .locals 10

    .prologue
    .line 172
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v6, "f_lightapp_disable_weex_error_reporter"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 183
    .local v0, "appIdStrBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .local v1, "appKey":Ljava/lang/String;
    .local v2, "ttid":Ljava/lang/String;
    .local v3, "usernick":Ljava/lang/String;
    .local v4, "uid":J
    :goto_0
    return-void

    .line 175
    .end local v0    # "appIdStrBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "appKey":Ljava/lang/String;
    .end local v2    # "ttid":Ljava/lang/String;
    .end local v3    # "usernick":Ljava/lang/String;
    .end local v4    # "uid":J
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v4

    .line 176
    .restart local v4    # "uid":J
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcpy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .restart local v2    # "ttid":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    invoke-static {}, Lcpy;->a()Ljava/lang/String;

    move-result-object v1

    .line 178
    .restart local v1    # "appKey":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 179
    .restart local v3    # "usernick":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 180
    .restart local v0    # "appIdStrBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    const-string/jumbo v7, "@android"

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 181
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v6

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->getVersionName()Ljava/lang/String;

    move-result-object v9

    .line 1092
    iput-object v7, v6, Lhul;->a:Landroid/content/Context;

    .line 1093
    iput-object v8, v6, Lhul;->b:Ljava/lang/String;

    .line 1094
    iput-object v1, v6, Lhul;->c:Ljava/lang/String;

    .line 1095
    iput-object v9, v6, Lhul;->e:Ljava/lang/String;

    .line 1096
    iput-object v2, v6, Lhul;->f:Ljava/lang/String;

    .line 1097
    iput-object v3, v6, Lhul;->g:Ljava/lang/String;

    .line 2019
    invoke-static {}, Ligc$a;->a()Ligc;

    .line 182
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    .line 2023
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_2

    .line 2026
    :goto_2
    new-instance v7, Lcom/alibaba/wx_exception_reporter/WXExexceptionAdapter;

    invoke-direct {v7, v6}, Lcom/alibaba/wx_exception_reporter/WXExexceptionAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v7}, Lcom/taobao/weex/WXSDKEngine;->setJSExcetptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)V

    goto :goto_0

    .line 178
    .end local v0    # "appIdStrBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v3    # "usernick":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_1

    .line 2025
    .restart local v0    # "appIdStrBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v3    # "usernick":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    goto :goto_2
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 195
    sget-boolean v0, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->sDebug:Z

    return v0
.end method

.method public static startDebug(Ljava/lang/String;)V
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->enableNetworkEventReporter()V

    .line 201
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->initDebug(ZLjava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    .line 203
    return-void
.end method

.method public static stopDebug()V
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->initDebug(ZLjava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    .line 209
    return-void
.end method
