.class public Lcom/alipay/mobile/nebulauc/impl/UCWebView;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/impl/UCWebView$a;,
        Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5UCWebView"

.field private static final WEBAR_URL_WHITE_LIST_KEY:Ljava/lang/String; = "webar_url_white_list"

.field public static final WEBVIEW_VERSION:Ljava/lang/String;

.field private static ifRedirectDNS4UC:Z

.field private static sAppxResourceLoadedReceiver:Landroid/content/BroadcastReceiver;

.field private static sIsAppxJsPreloaded:Z

.field private static final sPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/alipay/mobile/nebulauc/impl/UCWebView;",
            ">;"
        }
    .end annotation
.end field

.field private static sUcInitStuffDone:Z

.field private static sWaitPreCreating:Z


# instance fields
.field private apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

.field private context:Landroid/content/Context;

.field private h5NativeInputPlugin:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

.field private ifRedirectDNS4UCConfigStr:Ljava/lang/String;

.field private mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

.field private mH5ScrollChangedCallback:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

.field private mScale:F

.field private webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

.field private webView:Lcom/uc/webview/export/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->WEBVIEW_VERSION:Ljava/lang/String;

    .line 88
    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sUcInitStuffDone:Z

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ifRedirectDNS4UC:Z

    .line 112
    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sIsAppxJsPreloaded:Z

    .line 114
    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWaitPreCreating:Z

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v8, 0x0

    iput v8, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mScale:F

    .line 236
    const/4 v5, 0x0

    .line 237
    .local v5, "needReportTrace":Z
    sget-boolean v8, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sUcInitStuffDone:Z

    if-nez v8, :cond_0

    .line 238
    const/4 v5, 0x1

    .line 239
    const-string/jumbo v8, "firstWebView"

    invoke-static {v8}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 242
    :cond_0
    sput-boolean v5, Lior;->f:Z

    .line 244
    new-instance v8, Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;

    const/4 v9, 0x0

    invoke-direct {v8, p0, p1, v9}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$b;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;B)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    .line 245
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    .line 246
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->initUCWebView()V

    .line 247
    const-string/jumbo v8, "h5_ifRedirectDNS4UC"

    invoke-static {v8}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ifRedirectDNS4UCConfigStr:Ljava/lang/String;

    .line 249
    sget-boolean v8, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sUcInitStuffDone:Z

    if-nez v8, :cond_4

    .line 250
    sput-boolean v10, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sUcInitStuffDone:Z

    .line 251
    const-string/jumbo v8, "H5UCWebView"

    const-string/jumbo v9, "Do uc init stuff after first UCWebView created!"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->useNewInitTiming()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 253
    const-string/jumbo v8, "H5UCWebView"

    const-string/jumbo v9, "[UcNetworkSetup] new init Timing!"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->initNetworkConfig()V

    .line 256
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->disableAR()Z

    move-result v8

    if-nez v8, :cond_1

    .line 257
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->init()J

    .line 259
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->initServiceWorkerCallback()V

    .line 260
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->initServiceWorkerController()V

    .line 261
    const-string/jumbo v8, "h5_ucApolloConfig"

    invoke-static {v8}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 262
    .local v3, "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    const/4 v7, 0x0

    .line 263
    .local v7, "useApollo":Z
    const/4 v0, 0x1

    .line 264
    .local v0, "downloadApolloIn4G":Z
    const/4 v1, 0x0

    .line 265
    .local v1, "downloadApolloInLiteProcess":Z
    if-eqz v3, :cond_2

    .line 266
    const-string/jumbo v8, "YES"

    const-string/jumbo v9, "useApollo"

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 267
    const-string/jumbo v8, "YES"

    const-string/jumbo v9, "downloadApolloIn4G"

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 268
    const-string/jumbo v8, "YES"

    const-string/jumbo v9, "downloadApolloInLiteProcess"

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 271
    :cond_2
    if-nez v3, :cond_6

    const/4 v8, 0x0

    :goto_0
    invoke-static {p1, v7, v8, v0, v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->initVideoControl(Landroid/content/Context;ZLjava/lang/String;ZZ)J

    .line 276
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup;->init()V

    .line 277
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->clearUcHttpCache()V

    .line 279
    .end local v0    # "downloadApolloIn4G":Z
    .end local v1    # "downloadApolloInLiteProcess":Z
    .end local v3    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "useApollo":Z
    :cond_3
    const-string/jumbo v8, "h5_ucCommonConfigAfterCreateWebView"

    invoke-static {v8}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->initCommonConfig(Ljava/lang/String;)V

    .line 282
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    .line 283
    .local v4, "manager":Ldq;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "h5_action_uc_init_finish_completely"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "result"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    invoke-virtual {v4, v2}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "manager":Ldq;
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 293
    const-string/jumbo v8, "firstWebView"

    invoke-static {v8}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v8, "UcSetupTracing"

    new-instance v9, Lcom/alipay/mobile/nebulauc/impl/UCWebView$4;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$4;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 301
    :cond_5
    return-void

    .line 271
    .restart local v0    # "downloadApolloIn4G":Z
    .restart local v1    # "downloadApolloInLiteProcess":Z
    .restart local v3    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .restart local v7    # "useApollo":Z
    :cond_6
    const-string/jumbo v8, "downloadUrl"

    .line 273
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 286
    .end local v0    # "downloadApolloIn4G":Z
    .end local v1    # "downloadApolloInLiteProcess":Z
    .end local v3    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "useApollo":Z
    :catch_0
    move-exception v6

    .line 287
    .local v6, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5UCWebView"

    const-string/jumbo v9, "sendBroadcast"

    invoke-static {v8, v9, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 82
    sput-boolean p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWaitPreCreating:Z

    return p0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 82
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preloadAppXJs()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sAppxResourceLoadedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5ScrollChangedCallback:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-class v3, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "h5_disable_uc_precreate"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_0
    :goto_0
    monitor-exit v3

    return-object v1

    .line 199
    :cond_1
    :try_start_1
    sget v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    if-gtz v2, :cond_2

    .line 200
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 204
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->isH5Activity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 205
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 209
    :cond_3
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 213
    :cond_4
    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolReallyUse:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    .line 215
    :try_start_3
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 216
    .local v1, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    if-eqz v2, :cond_5

    .line 217
    iget-object v2, v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/content/MutableContextWrapper;

    invoke-virtual {v2, p0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 218
    iget-object v2, v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/content/MutableContextWrapper;

    invoke-virtual {v2, p0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 219
    iput-object p0, v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    .line 220
    const-string/jumbo v2, "H5UCWebView"

    const-string/jumbo v4, "WebView get from pool"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v2, 0x1

    sput-boolean v2, Lior;->d:Z

    .line 222
    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolKeep:Z

    if-eqz v2, :cond_0

    .line 223
    sget v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewCreateDelay:I

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreateOnMainWithDelay(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 227
    .end local v1    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v2, "H5UCWebView"

    const-string/jumbo v4, "WebView get from pool"

    invoke-static {v2, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_5
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private initUCWebView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 344
    new-instance v2, Lipp;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-direct {v2, v3}, Lipp;-><init>(Lcom/uc/webview/export/WebView;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    .line 346
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    .line 347
    .local v0, "coreType":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 348
    const-string/jumbo v2, "H5UCWebView"

    const-string/jumbo v3, "abort uc android webview."

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "abort uc android webview."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v2

    if-nez v2, :cond_1

    .line 353
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "abort uc no extension."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v1

    .line 357
    .local v1, "ucSettings":Lcom/uc/webview/export/extension/UCSettings;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/extension/UCSettings;->setUCCookieType(I)V

    .line 358
    invoke-virtual {v1, v4}, Lcom/uc/webview/export/extension/UCSettings;->setEnableUCProxy(Z)V

    .line 359
    invoke-virtual {v1, v4}, Lcom/uc/webview/export/extension/UCSettings;->setForceUCProxy(Z)V

    .line 360
    return-void
.end method

.method private static isH5Activity(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 950
    if-nez p0, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v1

    .line 953
    :cond_1
    instance-of v2, p0, Landroid/content/MutableContextWrapper;

    if-eqz v2, :cond_2

    .line 954
    check-cast p0, Landroid/content/MutableContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 956
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "hostName":Ljava/lang/String;
    const-string/jumbo v2, "H5UCWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isH5Activity hostName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "H5Activity"

    .line 960
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static preCreate()V
    .locals 10

    .prologue
    .line 140
    new-instance v6, Landroid/content/MutableContextWrapper;

    .line 141
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 145
    .local v6, "contextWrapper":Landroid/content/MutableContextWrapper;
    :try_start_0
    new-instance v9, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v9, v6}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .local v9, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 162
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    invoke-interface {v1, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 164
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sIsAppxJsPreloaded:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sIsAppxJsPreloaded:Z

    .line 167
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;-><init>()V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 146
    .end local v9    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :catch_0
    move-exception v7

    .line 147
    .local v7, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5UCWebView"

    const-string/jumbo v2, "create uc webView exception."

    invoke-static {v1, v2, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    const/4 v9, 0x0

    .line 149
    .restart local v9    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 150
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 151
    const-string/jumbo v1, "H5_UC_CREATE_FAILED"

    sget-object v2, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isTinyApp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^ucVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v0    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v7    # "throwable":Ljava/lang/Throwable;
    :cond_2
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolReallyUse:Z

    if-nez v1, :cond_1

    .line 174
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 175
    .local v8, "view":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    if-eqz v8, :cond_1

    .line 176
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView$3;

    invoke-direct {v1, v8}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$3;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    const-wide/16 v2, 0x1388

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_1
.end method

.method static preCreateOnMainWithDelay(I)V
    .locals 4
    .param p0, "delay"    # I

    .prologue
    .line 120
    sget v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    sget v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    if-ge v0, v1, :cond_0

    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWaitPreCreating:Z

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sWaitPreCreating:Z

    .line 124
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;-><init>()V

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private static preloadAppXJs()V
    .locals 3

    .prologue
    .line 1012
    :try_start_0
    const-string/jumbo v1, "H5UCWebView"

    const-string/jumbo v2, "preloadAppXJs enter"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string/jumbo v1, "no"

    const-string/jumbo v2, "h5_preloadAppxJs"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1015
    const-string/jumbo v1, "H5UCWebView"

    const-string/jumbo v2, "preloadAppXJs canceled config off"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    .local v0, "thr":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 1019
    .end local v0    # "thr":Ljava/lang/Throwable;
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1020
    const-string/jumbo v1, "H5UCWebView"

    const-string/jumbo v2, "preloadAppXJs canceled webview pool empty"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .restart local v0    # "thr":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5UCWebView"

    const-string/jumbo v2, "preload appx js error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1025
    .end local v0    # "thr":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "H5UCWebView"

    const-string/jumbo v2, "preloadAppXJs canceled running foreground"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private redirectDNS4UC()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 964
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ifRedirectDNS4UCConfigStr:Ljava/lang/String;

    const-string/jumbo v4, "YES"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 965
    sget-boolean v3, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ifRedirectDNS4UC:Z

    if-eqz v3, :cond_0

    .line 966
    const-string/jumbo v3, "H5UCWebView"

    const-string/jumbo v4, "ucwebview loadUrl change dns"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 968
    .local v0, "dns_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "host"

    const-string/jumbo v4, "uc.ucweb.com"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string/jumbo v3, "ip"

    const-string/jumbo v4, "127.0.0.1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string/jumbo v3, "ttl"

    const-string/jumbo v4, "300000"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    invoke-static {v5, v0, v6}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 972
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 973
    .local v1, "dns_info2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "host"

    const-string/jumbo v4, "u.uc123.com"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const-string/jumbo v3, "ip"

    const-string/jumbo v4, "127.0.0.1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    const-string/jumbo v3, "ttl"

    const-string/jumbo v4, "300000"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    invoke-static {v5, v1, v6}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 977
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 978
    .local v2, "dns_info3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "host"

    const-string/jumbo v4, "u.ucfly.com"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    const-string/jumbo v3, "ip"

    const-string/jumbo v4, "127.0.0.1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string/jumbo v3, "ttl"

    const-string/jumbo v4, "300000"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    invoke-static {v5, v2, v6}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 982
    const/4 v3, 0x0

    sput-boolean v3, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->ifRedirectDNS4UC:Z

    .line 985
    .end local v0    # "dns_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "dns_info2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "dns_info3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static registerAppXResourceLoadedReceiver()V
    .locals 4

    .prologue
    .line 988
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sAppxResourceLoadedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1006
    :goto_0
    return-void

    .line 991
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$7;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$7;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sAppxResourceLoadedReceiver:Landroid/content/BroadcastReceiver;

    .line 1003
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sAppxResourceLoadedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "appx_preload_success"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1005
    const-string/jumbo v0, "H5UCWebView"

    const-string/jumbo v1, "registerAppXResourceLoadedReceiver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 539
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 623
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->clearCache(Z)V

    .line 624
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->clearFormData()V

    .line 629
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->clearHistory()V

    .line 634
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->clearSslPreferences()V

    .line 639
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 643
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->copyBackForwardList()Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v0

    .line 644
    .local v0, "list":Lcom/uc/webview/export/WebBackForwardList;
    if-eqz v0, :cond_0

    .line 645
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;-><init>(Lcom/uc/webview/export/WebBackForwardList;)V

    .line 647
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 444
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 941
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, "stringValueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 505
    return-void
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ih5EmbedViewJSCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .prologue
    .line 484
    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->flingScroll(II)V

    .line 390
    return-void
.end method

.method public freeMemory()V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
    .locals 6
    .param p1, "dstRect"    # Landroid/graphics/Rect;
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "clipByView"    # Z
    .param p5, "coordinate"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 946
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/extension/UCExtension;->getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getH5NativeInput()Liov;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->h5NativeInputPlugin:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    return-object v0
.end method

.method public getH5NumInputKeyboard()Liov;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 914
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getHitTestResult()Lcom/uc/webview/export/WebView$HitTestResult;

    move-result-object v0

    .line 915
    .local v0, "hitTestResult":Lcom/uc/webview/export/WebView$HitTestResult;
    if-nez v0, :cond_0

    .line 916
    const/4 v1, 0x0

    .line 918
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView$a;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$a;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/uc/webview/export/WebView$HitTestResult;)V

    goto :goto_0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mScale:F

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    .line 935
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->WEBVIEW_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->goBack()V

    .line 525
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->goBackOrForward(I)V

    .line 545
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->goForward()V

    .line 535
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->invokeZoomPicker()V

    .line 565
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uc/webview/export/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 499
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->redirectDNS4UC()V

    .line 479
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 472
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->redirectDNS4UC()V

    .line 473
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->onPause()V

    .line 605
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->onResume()V

    .line 610
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "bottom"    # Z

    .prologue
    .line 554
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 549
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 488
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 489
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->reload()V

    .line 515
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 462
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1, p1}, Lcom/uc/webview/export/WebView;->restoreState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v0

    .line 463
    .local v0, "list":Lcom/uc/webview/export/WebBackForwardList;
    if-eqz v0, :cond_0

    .line 464
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;-><init>(Lcom/uc/webview/export/WebBackForwardList;)V

    .line 466
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;

    .prologue
    .line 428
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 453
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1, p1}, Lcom/uc/webview/export/WebView;->saveState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v0

    .line 454
    .local v0, "list":Lcom/uc/webview/export/WebBackForwardList;
    if-eqz v0, :cond_0

    .line 455
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;-><init>(Lcom/uc/webview/export/WebBackForwardList;)V

    .line 457
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0
    .param p1, "apWebViewListener"    # Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 341
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 2
    .param p1, "apDownloadListener"    # Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 886
    if-nez p1, :cond_0

    .line 887
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    new-instance v1, Lipk;

    invoke-direct {v1, p1}, Lipk;-><init>(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V

    goto :goto_0
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "horizontalScrollBarEnabled"    # Z

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 331
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 404
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .param p1, "scaleInPercent"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setInitialScale(I)V

    .line 560
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z

    .prologue
    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setNetworkAvailable(Z)V

    .line 449
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V
    .locals 0
    .param p1, "changedCallback"    # Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5ScrollChangedCallback:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .line 925
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 315
    iput p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mScale:F

    .line 316
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 326
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "overlay"    # Z

    .prologue
    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 409
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 2
    .param p1, "apWebChromeClient"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 895
    if-nez p1, :cond_0

    .line 896
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 900
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    new-instance v1, Lipo;

    invoke-direct {v1, p0, p1}, Lipo;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    goto :goto_0
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 384
    invoke-static {p1}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 385
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 6
    .param p1, "apWebViewClient"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 652
    if-nez p1, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    new-instance v4, Lipq;

    invoke-direct {v4, p0, p1}, Lipq;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 657
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v3}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 660
    const-string/jumbo v3, "webar_url_white_list"

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "whiteList":Ljava/lang/String;
    const-string/jumbo v3, "H5UCWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "get webar url whiteList:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    .line 663
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v3}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$5;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/extension/UCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V

    .line 839
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v3}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/UCWebView$6;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$6;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/extension/UCExtension;->setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V

    .line 860
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->isH5Activity(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 862
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    instance-of v3, v3, Landroid/content/MutableContextWrapper;

    if-eqz v3, :cond_2

    .line 863
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    check-cast v3, Landroid/content/MutableContextWrapper;

    invoke-virtual {v3}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 867
    .local v1, "kbContext":Landroid/content/Context;
    :goto_1
    new-instance v3, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-direct {v3, v1, v4}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;-><init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->h5NativeInputPlugin:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .line 869
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isUCM57()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 870
    new-instance v3, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-direct {v3, v1, v4, p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;-><init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    .line 875
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    const-class v4, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->setFallback(Ljava/lang/Class;)V

    .line 876
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->h5NativeInputPlugin:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->setH5NativeOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;)V

    .line 877
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v3}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/extension/UCExtension;->setSoftKeyboardListener(Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 879
    .end local v1    # "kbContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5UCWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setSoft error"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 865
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->context:Landroid/content/Context;

    .restart local v1    # "kbContext":Landroid/content/Context;
    goto :goto_1

    .line 872
    :cond_3
    new-instance v3, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-direct {v3, v1, v4, p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;-><init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->mH5NumInputKeyboard:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->stopLoading()V

    .line 510
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->zoomOut()Z

    move-result v0

    return v0
.end method
