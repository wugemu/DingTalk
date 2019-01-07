.class public Lcom/taobao/weex/devtools/WeexInspector;
.super Ljava/lang/Object;
.source "WeexInspector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/WeexInspector$BuilderBasedInitializer;,
        Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;,
        Lcom/taobao/weex/devtools/WeexInspector$Initializer;,
        Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;,
        Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;
    }
.end annotation


# static fields
.field private static customerWSClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

.field private static volatile sInited:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taobao/weex/devtools/WeexInspector;->sInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static defaultInspectorModulesProvider(Landroid/content/Context;)Lcom/taobao/weex/devtools/InspectorModulesProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    new-instance v0, Lcom/taobao/weex/devtools/WeexInspector$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/WeexInspector$2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getCustomerWSClient()Lcom/taobao/weex/devtools/debug/IWebSocketClient;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/taobao/weex/devtools/WeexInspector;->customerWSClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    return-object v0
.end method

.method public static initToolbox()V
    .locals 3

    .prologue
    .line 116
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/adapter/WXTracingAdapter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->setTracingAdapter(Lcom/taobao/weex/adapter/ITracingAdapter;)V

    .line 117
    invoke-static {}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->getInstance()Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->setJsLogWatcher(Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v0, "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 118
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 119
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static initialize(Lcom/taobao/weex/devtools/WeexInspector$Initializer;)V
    .locals 3
    .param p0, "initializer"    # Lcom/taobao/weex/devtools/WeexInspector$Initializer;

    .prologue
    .line 100
    sget-object v1, Lcom/taobao/weex/devtools/WeexInspector;->sInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string/jumbo v1, "WeexInspector initialized"

    invoke-static {v1}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->get()Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    move-result-object v2

    .line 105
    invoke-static {p0}, Lcom/taobao/weex/devtools/WeexInspector$Initializer;->access$100(Lcom/taobao/weex/devtools/WeexInspector$Initializer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 104
    invoke-virtual {v2, v1}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->beginTrackingIfPossible(Landroid/app/Application;)Z

    move-result v0

    .line 107
    .local v0, "isTrackingActivities":Z
    sget-object v1, Lcom/taobao/weex/devtools/WeexInspector;->sInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    if-nez v0, :cond_0

    .line 109
    const-string/jumbo v1, "Automatic activity tracking not available on this API level, caller must invoke ActivityTracker methods manually!"

    invoke-static {v1}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initializeWithDefaults(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    new-instance v0, Lcom/taobao/weex/devtools/WeexInspector$1;

    invoke-direct {v0, p0, p0}, Lcom/taobao/weex/devtools/WeexInspector$1;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/taobao/weex/devtools/WeexInspector;->initialize(Lcom/taobao/weex/devtools/WeexInspector$Initializer;)V

    .line 89
    return-void
.end method

.method public static newInitializerBuilder(Landroid/content/Context;)Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    new-instance v0, Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;-><init>(Landroid/content/Context;Lcom/taobao/weex/devtools/WeexInspector$1;)V

    return-object v0
.end method

.method public static overrideWebSocketClient(Lcom/taobao/weex/devtools/debug/IWebSocketClient;)V
    .locals 0
    .param p0, "webSocketClient"    # Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    .prologue
    .line 281
    sput-object p0, Lcom/taobao/weex/devtools/WeexInspector;->customerWSClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    .line 282
    return-void
.end method
