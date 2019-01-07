.class final Lcom/taobao/weex/WXSDKEngine$1;
.super Ljava/lang/Object;
.source "WXSDKEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKEngine;->doInitInternal(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$config:Lcom/taobao/weex/InitConfig;


# direct methods
.method constructor <init>(Lcom/taobao/weex/InitConfig;Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    iput-object p2, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 210
    .local v2, "start":J
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    .line 211
    .local v1, "sm":Lcom/taobao/weex/WXSDKManager;
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->onSDKEngineInitialize()V

    .line 212
    iget-object v4, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    if-eqz v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    invoke-virtual {v1, v4}, Lcom/taobao/weex/WXSDKManager;->setInitConfig(Lcom/taobao/weex/InitConfig;)V

    .line 215
    :cond_0
    iget-object v4, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$application:Landroid/app/Application;

    .line 216
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getIWXSoLoaderAdapter()Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    move-result-object v6

    .line 217
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v7

    .line 215
    invoke-static {v4, v6, v7}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->init(Landroid/content/Context;Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;Lcom/taobao/weex/IWXStatisticsListener;)V

    .line 218
    const-string/jumbo v6, "weexcore"

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    invoke-virtual {v4}, Lcom/taobao/weex/InitConfig;->getUtAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v4

    :goto_0
    invoke-static {v6, v7, v4}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->initSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z

    move-result v0

    .line 219
    .local v0, "isSoInitSuccess":Z
    if-nez v0, :cond_2

    .line 220
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v6, "doInitInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    .line 223
    invoke-virtual {v8}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "isSoInit false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-static {v5, v4, v6, v7, v5}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    :goto_1
    return-void

    .end local v0    # "isSoInitSuccess":Z
    :cond_1
    move-object v4, v5

    .line 218
    goto :goto_0

    .line 228
    .restart local v0    # "isSoInitSuccess":Z
    :cond_2
    iget-object v4, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    invoke-virtual {v4}, Lcom/taobao/weex/InitConfig;->getFramework()Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {v1, v5}, Lcom/taobao/weex/WXSDKManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sput-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    .line 231
    const-string/jumbo v4, "SDKInitExecuteTime"

    sget-wide v6, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    invoke-static {v4, v6, v7}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    goto :goto_1
.end method
