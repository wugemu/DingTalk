.class public Lcom/taobao/weex/WXSDKEngine;
.super Ljava/lang/Object;
.source "WXSDKEngine.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;,
        Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
    }
.end annotation


# static fields
.field public static final JS_FRAMEWORK_RELOAD:Ljava/lang/String; = "js_framework_reload"

.field private static final TAG:Ljava/lang/String; = "WXSDKEngine"

.field private static final V8_SO_NAME:Ljava/lang/String; = "weexcore"

.field private static volatile mIsInit:Z

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/weex/WXSDKEngine;->mIsInit:Z

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/weex/WXSDKEngine;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    return-void
.end method

.method public static addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-static {p0, p1}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public static callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "funcId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/weex/WXSDKManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 461
    return-void
.end method

.method private static doInitInternal(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V
    .locals 5
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "config"    # Lcom/taobao/weex/InitConfig;

    .prologue
    const/4 v4, 0x0

    .line 195
    sput-object p0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    .line 196
    if-nez p0, :cond_0

    .line 197
    const-string/jumbo v0, "WXSDKEngine"

    const-string/jumbo v1, " doInitInternal application is null"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "doInitInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    .line 201
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "WXEnvironment sApplication is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v4, v0, v1, v2, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    .line 206
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKEngine$1;

    invoke-direct {v1, p1, p0}, Lcom/taobao/weex/WXSDKEngine$1;-><init>(Lcom/taobao/weex/InitConfig;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 234
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->register()V

    .line 235
    return-void
.end method

.method public static getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;
    .locals 1

    .prologue
    .line 513
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .locals 1

    .prologue
    .line 504
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    .locals 1

    .prologue
    .line 508
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .locals 1

    .prologue
    .line 492
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/weex/WXSDKEngine;->init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)V

    .line 116
    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "utAdapter"    # Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/WXSDKEngine;->init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;Ljava/lang/String;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "utAdapter"    # Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .param p2, "framework"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/taobao/weex/InitConfig$Builder;

    invoke-direct {v0}, Lcom/taobao/weex/InitConfig$Builder;-><init>()V

    .line 133
    invoke-virtual {v0, p1}, Lcom/taobao/weex/InitConfig$Builder;->setUtAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/taobao/weex/InitConfig$Builder;->build()Lcom/taobao/weex/InitConfig;

    move-result-object v0

    .line 131
    invoke-static {p0, v0}, Lcom/taobao/weex/WXSDKEngine;->initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    .line 136
    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;Lcom/taobao/weex/adapter/IWXHttpAdapter;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "framework"    # Ljava/lang/String;
    .param p2, "utAdapter"    # Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .param p3, "imgLoaderAdapter"    # Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .param p4, "httpAdapter"    # Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lcom/taobao/weex/InitConfig$Builder;

    invoke-direct {v0}, Lcom/taobao/weex/InitConfig$Builder;-><init>()V

    .line 241
    invoke-virtual {v0, p2}, Lcom/taobao/weex/InitConfig$Builder;->setUtAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p4}, Lcom/taobao/weex/InitConfig$Builder;->setHttpAdapter(Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p3}, Lcom/taobao/weex/InitConfig$Builder;->setImgAdapter(Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/taobao/weex/InitConfig$Builder;->build()Lcom/taobao/weex/InitConfig;

    move-result-object v0

    .line 239
    invoke-static {p0, v0}, Lcom/taobao/weex/WXSDKEngine;->initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    .line 246
    return-void
.end method

.method public static initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V
    .locals 6
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "config"    # Lcom/taobao/weex/InitConfig;

    .prologue
    .line 152
    sget-object v3, Lcom/taobao/weex/WXSDKEngine;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 153
    :try_start_0
    sget-boolean v2, Lcom/taobao/weex/WXSDKEngine;->mIsInit:Z

    if-eqz v2, :cond_0

    .line 154
    monitor-exit v3

    .line 173
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, "start":J
    sput-wide v0, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    .line 158
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    sput-object v2, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lcom/taobao/weex/utils/LogLevel;

    .line 167
    :goto_1
    invoke-static {p0, p1}, Lcom/taobao/weex/WXSDKEngine;->doInitInternal(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    .line 168
    invoke-static {p0}, Lcom/taobao/weex/WXSDKEngine;->registerApplicationOptions(Landroid/app/Application;)V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sput-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    .line 170
    const-string/jumbo v2, "SDKInitInvokeTime"

    sget-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    invoke-static {v2, v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 171
    invoke-static {}, Lcom/taobao/weex/common/WXPerformance;->init()V

    .line 172
    const/4 v2, 0x1

    sput-boolean v2, Lcom/taobao/weex/WXSDKEngine;->mIsInit:Z

    .line 173
    monitor-exit v3

    goto :goto_0

    .end local v0    # "start":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 161
    .restart local v0    # "start":J
    :cond_1
    :try_start_1
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-eqz v2, :cond_2

    .line 162
    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    sput-object v2, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_1

    .line 164
    :cond_2
    const-string/jumbo v2, "WXSDKEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "WXEnvironment.sApplication is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static isInitialized()Z
    .locals 2

    .prologue
    .line 140
    sget-object v1, Lcom/taobao/weex/WXSDKEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    sget-boolean v0, Lcom/taobao/weex/WXSDKEngine;->mIsInit:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static register()V
    .locals 8

    .prologue
    .line 253
    new-instance v0, Lcom/taobao/weex/utils/batch/BatchOperationHelper;

    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/taobao/weex/utils/batch/BatchOperationHelper;-><init>(Lcom/taobao/weex/utils/batch/BactchExecutor;)V

    .line 255
    .local v0, "batchHelper":Lcom/taobao/weex/utils/batch/BatchOperationHelper;
    :try_start_0
    new-instance v3, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v4, Lcom/taobao/weex/ui/component/WXText;

    new-instance v5, Lcom/taobao/weex/ui/component/WXText$Creator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXText$Creator;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "text"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 263
    new-instance v3, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v4, Lcom/taobao/weex/ui/component/WXDiv;

    new-instance v5, Lcom/taobao/weex/ui/component/WXDiv$Ceator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXDiv$Ceator;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "container"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "div"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "header"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "footer"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 274
    new-instance v3, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v4, Lcom/taobao/weex/ui/component/WXImage;

    new-instance v5, Lcom/taobao/weex/ui/component/WXImage$Creator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXImage$Creator;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "image"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "img"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 283
    new-instance v3, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v4, Lcom/taobao/weex/ui/component/WXScroller;

    new-instance v5, Lcom/taobao/weex/ui/component/WXScroller$Creator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXScroller$Creator;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "scroller"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 291
    new-instance v3, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v4, Lcom/taobao/weex/ui/component/WXSlider;

    new-instance v5, Lcom/taobao/weex/ui/component/WXSlider$Creator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXSlider$Creator;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "slider"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "cycleslider"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 300
    new-instance v3, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v4, Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    new-instance v5, Lcom/taobao/weex/ui/component/WXSliderNeighbor$Creator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXSliderNeighbor$Creator;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "slider-neighbor"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 308
    const-string/jumbo v2, "simplelist"

    .line 309
    .local v2, "simpleList":Ljava/lang/String;
    const-class v3, Lcom/taobao/weex/ui/component/list/SimpleListComponent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 310
    const-class v3, Lcom/taobao/weex/ui/component/list/WXListComponent;

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "list"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "vlist"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "recycler"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "waterfall"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 311
    const-class v3, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "recycle-list"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 312
    const-class v3, Lcom/taobao/weex/ui/component/list/HorizontalListComponent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "hlist"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 313
    const-string/jumbo v3, "cell"

    const-class v4, Lcom/taobao/weex/ui/component/list/WXCell;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 314
    const-string/jumbo v3, "cell-slot"

    const-class v4, Lcom/taobao/weex/ui/component/list/WXCell;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 315
    const-string/jumbo v3, "indicator"

    const-class v4, Lcom/taobao/weex/ui/component/WXIndicator;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 316
    const-string/jumbo v3, "video"

    const-class v4, Lcom/taobao/weex/ui/component/WXVideo;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 317
    const-string/jumbo v3, "input"

    const-class v4, Lcom/taobao/weex/ui/component/WXInput;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 318
    const-string/jumbo v3, "textarea"

    const-class v4, Lcom/taobao/weex/ui/component/Textarea;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 319
    const-string/jumbo v3, "switch"

    const-class v4, Lcom/taobao/weex/ui/component/WXSwitch;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 320
    const-string/jumbo v3, "a"

    const-class v4, Lcom/taobao/weex/ui/component/WXA;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 321
    const-string/jumbo v3, "embed"

    const-class v4, Lcom/taobao/weex/ui/component/WXEmbed;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 322
    const-string/jumbo v3, "web"

    const-class v4, Lcom/taobao/weex/ui/component/WXWeb;

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 323
    const-string/jumbo v3, "refresh"

    const-class v4, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 324
    const-string/jumbo v3, "loading"

    const-class v4, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 325
    const-string/jumbo v3, "loading-indicator"

    const-class v4, Lcom/taobao/weex/ui/component/WXLoadingIndicator;

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 326
    const-string/jumbo v3, "header"

    const-class v4, Lcom/taobao/weex/ui/component/WXHeader;

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 328
    const-string/jumbo v3, "modal"

    const-class v4, Lcom/taobao/weex/ui/module/WXModalUIModule;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 329
    const-string/jumbo v3, "instanceWrap"

    const-class v4, Lcom/taobao/weex/common/WXInstanceWrap;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 330
    const-string/jumbo v3, "animation"

    const-class v4, Lcom/taobao/weex/ui/animation/WXAnimationModule;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 331
    const-string/jumbo v3, "webview"

    const-class v4, Lcom/taobao/weex/ui/module/WXWebViewModule;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 332
    const-string/jumbo v3, "navigator"

    const-class v4, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 333
    const-string/jumbo v3, "stream"

    const-class v4, Lcom/taobao/weex/http/WXStreamModule;

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 334
    const-string/jumbo v3, "timer"

    const-class v4, Lcom/taobao/weex/ui/module/WXTimerModule;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 335
    const-string/jumbo v3, "storage"

    const-class v4, Lcom/taobao/weex/appfram/storage/WXStorageModule;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 336
    const-string/jumbo v3, "clipboard"

    const-class v4, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 337
    const-string/jumbo v3, "globalEvent"

    const-class v4, Lcom/taobao/weex/WXGlobalEventModule;

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 338
    const-string/jumbo v3, "picker"

    const-class v4, Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 339
    const-string/jumbo v3, "meta"

    const-class v4, Lcom/taobao/weex/ui/module/WXMetaModule;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 340
    const-string/jumbo v3, "webSocket"

    const-class v4, Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 341
    const-string/jumbo v3, "locale"

    const-class v4, Lcom/taobao/weex/ui/module/WXLocaleModule;

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_0
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v2    # "simpleList":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfig()V

    .line 346
    invoke-virtual {v0}, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->flush()V

    .line 347
    return-void

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Lcom/taobao/weex/common/WXException;
    const-string/jumbo v3, "[WXSDKEngine] register:"

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static registerApplicationOptions(Landroid/app/Application;)V
    .locals 6
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 178
    if-nez p0, :cond_1

    .line 179
    const-string/jumbo v3, "WXSDKEngine"

    const-string/jumbo v4, "RegisterApplicationOptions application is null"

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 184
    .local v1, "resources":Landroid/content/res/Resources;
    const-string/jumbo v3, "screen_width_pixels"

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v3, "screen_height_pixels"

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 189
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 190
    .local v2, "statusBarHeight":I
    const-string/jumbo v3, "status_bar_height"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z
    .locals 10
    .param p0, "holder"    # Lcom/taobao/weex/ui/IFComponentHolder;
    .param p1, "appendTree"    # Z
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 385
    const/4 v3, 0x1

    .line 387
    .local v3, "result":Z
    :try_start_0
    array-length v7, p2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v2, p2, v6

    .line 388
    .local v2, "name":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v0, "componentInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 390
    const-string/jumbo v8, "append"

    const-string/jumbo v9, "tree"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v2, p0, v0}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    .line 387
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    .line 392
    goto :goto_1

    .end local v0    # "componentInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    move v4, v3

    .line 397
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_2
    return v4

    .line 395
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v3

    .line 397
    .restart local v4    # "result":I
    goto :goto_2
.end method

.method public static varargs registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z
    .locals 2
    .param p1, "appendTree"    # Z
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;Z[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-nez p0, :cond_0

    .line 377
    const/4 v1, 0x0

    .line 380
    :goto_0
    return v1

    .line 379
    :cond_0
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;)V

    .line 380
    .local v0, "holder":Lcom/taobao/weex/ui/SimpleComponentHolder;
    invoke-static {v0, p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalComponentGetter;Z)Z
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "componentGetter"    # Lcom/taobao/weex/ui/IExternalComponentGetter;
    .param p2, "appendTree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;-><init>(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalComponentGetter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, p2, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "appendTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, v0}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static registerComponent(Ljava/util/Map;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .local p0, "componentInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    const/4 v1, 0x0

    .line 477
    if-nez p0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v1

    .line 480
    :cond_1
    const-string/jumbo v2, "type"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    new-instance v1, Lcom/taobao/weex/ui/SimpleComponentHolder;

    invoke-direct {v1, p1}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, v1, p0}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result v1

    goto :goto_0
.end method

.method public static registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 543
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public static registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/taobao/weex/bridge/ModuleFactory;
    .param p2, "global"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/ModuleFactory;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/bridge/WXModuleManager;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result v0

    return v0
.end method

.method public static registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/common/WXModule;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/common/WXModule;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method

.method public static registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p2, "global"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    new-instance v0, Lcom/taobao/weex/common/TypeModuleFactory;

    invoke-direct {v0, p1}, Lcom/taobao/weex/common/TypeModuleFactory;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0, p2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerModuleWithFactory(Ljava/lang/String;Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;Z)Z
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;
    .param p2, "global"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result v0

    return v0
.end method

.method public static registerModuleWithFactory(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalModuleGetter;Z)Z
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/taobao/weex/ui/IExternalModuleGetter;
    .param p2, "global"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/IExternalModuleGetter;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/taobao/weex/ui/IExternalModuleGetter;->getExternalModuleClass(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method

.method public static registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "serviceScript"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 441
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/bridge/WXServiceManager;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static reload()V
    .locals 2

    .prologue
    .line 539
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->reload(Landroid/content/Context;Z)V

    .line 540
    return-void
.end method

.method public static reload(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "framework"    # Ljava/lang/String;
    .param p2, "remoteDebug"    # Z

    .prologue
    .line 521
    sput-boolean p2, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    .line 522
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->restart()V

    .line 523
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 526
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    .line 527
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKEngine$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKEngine$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 533
    return-void
.end method

.method public static reload(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteDebug"    # Z

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/taobao/weex/WXSDKEngine;->reload(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 536
    return-void
.end method

.method public static restartBridge(Z)V
    .locals 1
    .param p0, "debug"    # Z

    .prologue
    .line 468
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->sDebugMode:Z

    .line 469
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->restartBridge()V

    .line 470
    return-void
.end method

.method public static setActivityNavBarSetter(Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;)V
    .locals 1
    .param p0, "activityNavBarSetter"    # Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    .prologue
    .line 517
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->setActivityNavBarSetter(Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;)V

    .line 518
    return-void
.end method

.method public static setJSExcetptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)V
    .locals 1
    .param p0, "excetptionAdapter"    # Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    .prologue
    .line 249
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->setIWXJSExceptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)V

    .line 250
    return-void
.end method

.method public static unRegisterService(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-static {p0}, Lcom/taobao/weex/bridge/WXServiceManager;->unRegisterService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
