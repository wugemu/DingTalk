.class public Lcom/taobao/weex/devtools/debug/DebugBridge;
.super Ljava/lang/Object;
.source "DebugBridge.java"

# interfaces
.implements Lcom/taobao/weex/common/IWXBridge;


# static fields
.field private static final TAG:Ljava/lang/String; = "DebugBridge"

.field private static volatile sInstance:Lcom/taobao/weex/devtools/debug/DebugBridge;


# instance fields
.field private jsFunctions:Lcom/taobao/weex/common/IWXJsFunctions;

.field private mJsManager:Lcom/taobao/weex/bridge/WXBridgeManager;

.field private final mLock:Ljava/lang/Object;

.field private mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

.field private volatile mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-direct {v0}, Lcom/taobao/weex/bridge/WXBridge;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    .line 42
    return-void
.end method

.method private doCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 169
    .local v0, "argsCount":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 170
    aget-object v5, p4, v3

    iget v5, v5, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 171
    aget-object v5, p4, v3

    invoke-static {v5}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->convertWXJSObjectDataToJSON(Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 168
    .end local v0    # "argsCount":I
    .end local v3    # "i":I
    :cond_0
    array-length v0, p4

    goto :goto_0

    .line 173
    .restart local v0    # "argsCount":I
    .restart local v3    # "i":I
    :cond_1
    aget-object v5, p4, v3

    iget-object v5, v5, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 177
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "method"

    const-string/jumbo v6, "WxDebug.callJS"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v2, "func":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "method"

    invoke-interface {v2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v5, "args"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v5, "params"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/taobao/weex/devtools/debug/DebugBridge;->sendMessage(Ljava/lang/String;)I

    move-result v5

    return v5
.end method

.method private doImportScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 191
    .local v0, "argsCount":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 192
    aget-object v5, p4, v3

    iget v5, v5, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 193
    aget-object v5, p4, v3

    invoke-static {v5}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->convertWXJSObjectDataToJSON(Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "argsCount":I
    .end local v3    # "i":I
    :cond_0
    array-length v0, p4

    goto :goto_0

    .line 195
    .restart local v0    # "argsCount":I
    .restart local v3    # "i":I
    :cond_1
    aget-object v5, p4, v3

    iget-object v5, v5, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 199
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v2, "func":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "method"

    invoke-interface {v2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string/jumbo v5, "args"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "method"

    const-string/jumbo v6, "WxDebug.callJS"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v5, "params"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/taobao/weex/devtools/debug/DebugBridge;->sendMessage(Ljava/lang/String;)I

    move-result v5

    return v5
.end method

.method private getEnvironmentMap(Lcom/taobao/weex/bridge/WXParams;)Ljava/util/Map;
    .locals 3
    .param p1, "params"    # Lcom/taobao/weex/bridge/WXParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/bridge/WXParams;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 501
    .local v0, "environment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "appName"

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string/jumbo v1, "appVersion"

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string/jumbo v1, "platform"

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string/jumbo v1, "osVersion"

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string/jumbo v1, "logLevel"

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getLogLevel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string/jumbo v1, "weexVersion"

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getWeexVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string/jumbo v1, "deviceModel"

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string/jumbo v1, "infoCollect"

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getShouldInfoCollect()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string/jumbo v1, "deviceWidth"

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string/jumbo v1, "deviceHeight"

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceHeight()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string/jumbo v1, "runtime"

    const-string/jumbo v2, "devtools"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCustomOptions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 515
    return-object v0
.end method

.method private getInitFrameworkMessage(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;)Ljava/lang/String;
    .locals 6
    .param p1, "framework"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/taobao/weex/bridge/WXParams;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 480
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 481
    .local v1, "func":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "source"

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string/jumbo v4, "isLayoutAndSandbox"

    const-string/jumbo v5, "true"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    if-eqz p2, :cond_0

    .line 484
    invoke-direct {p0, p2}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getEnvironmentMap(Lcom/taobao/weex/bridge/WXParams;)Ljava/util/Map;

    move-result-object v0

    .line 485
    .local v0, "environmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 486
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 487
    .local v3, "wxEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "WXEnvironment"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string/jumbo v4, "env"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .end local v0    # "environmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "wxEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 493
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "method"

    const-string/jumbo v5, "WxDebug.initJSRuntime"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string/jumbo v4, "params"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getInstance()Lcom/taobao/weex/devtools/debug/DebugBridge;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/taobao/weex/devtools/debug/DebugBridge;->sInstance:Lcom/taobao/weex/devtools/debug/DebugBridge;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/taobao/weex/devtools/debug/DebugBridge;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/taobao/weex/devtools/debug/DebugBridge;->sInstance:Lcom/taobao/weex/devtools/debug/DebugBridge;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/taobao/weex/devtools/debug/DebugBridge;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/debug/DebugBridge;-><init>()V

    sput-object v0, Lcom/taobao/weex/devtools/debug/DebugBridge;->sInstance:Lcom/taobao/weex/devtools/debug/DebugBridge;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/taobao/weex/devtools/debug/DebugBridge;->sInstance:Lcom/taobao/weex/devtools/debug/DebugBridge;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendMessage(Ljava/lang/String;)I
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/websocket/SimpleSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/websocket/SimpleSession;->sendText(Ljava/lang/String;)V

    .line 521
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    .line 524
    :cond_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->stopRemoteDebug()V

    .line 525
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindMeasurementToRenderObject(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 337
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->bindMeasurementToRenderObject(J)V

    .line 338
    return-void
.end method

.method public calculateLayout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    .line 437
    return-void
.end method

.method public callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[FZ)I
    .locals 13
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "componentType"    # Ljava/lang/String;
    .param p3, "ref"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "parentRef"    # Ljava/lang/String;
    .param p9, "margins"    # [F
    .param p10, "paddings"    # [F
    .param p11, "borders"    # [F
    .param p12, "willLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[F[F[FZ)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    .local p6, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Lcom/taobao/weex/common/IWXBridge;->callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[FZ)I

    move-result v0

    return v0
.end method

.method public callAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->callAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callAppendTreeCreateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->callAppendTreeCreateFinish(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[F)I
    .locals 10
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "componentType"    # Ljava/lang/String;
    .param p3, "ref"    # Ljava/lang/String;
    .param p7, "margins"    # [F
    .param p8, "paddings"    # [F
    .param p9, "borders"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[F[F[F)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    .local p4, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/taobao/weex/common/IWXBridge;->callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[F)I

    move-result v0

    return v0
.end method

.method public callCreateFinish(Ljava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->callCreateFinish(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callHasTransitionPros(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 327
    .local p3, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->callHasTransitionPros(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public callLayout(Ljava/lang/String;Ljava/lang/String;IIIIIII)I
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "i1"    # I
    .param p5, "i2"    # I
    .param p6, "i3"    # I
    .param p7, "i4"    # I
    .param p8, "i5"    # I
    .param p9, "i6"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/taobao/weex/common/IWXBridge;->callLayout(Ljava/lang/String;Ljava/lang/String;IIIIIII)I

    move-result v0

    return v0
.end method

.method public callMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "parentRef"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->callMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public callNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->callNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callNative(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # [B
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/taobao/weex/devtools/debug/DebugBridge;->callNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "componentRef"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # [B
    .param p5, "options"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/common/IWXBridge;->callNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 245
    return-void
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/Object;
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # [B
    .param p5, "options"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/common/IWXBridge;->callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public callRefreshFinish(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # [B
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->callRefreshFinish(Ljava/lang/String;[BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callRemoveElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->callRemoveElement(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->callRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callRenderSuccess(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->callRenderSuccess(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 274
    .local p3, "attrs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->callUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public callUpdateFinish(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # [B
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->callUpdateFinish(Ljava/lang/String;[BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    .local p3, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "paddings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "margins":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "borders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/taobao/weex/common/IWXBridge;->callUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public createInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "wxjsObjects"    # [Lcom/taobao/weex/bridge/WXJSObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    const/4 v7, 0x4

    new-array v5, v7, [Lcom/taobao/weex/bridge/WXJSObject;

    .line 137
    .local v5, "wxjsObjects1":[Lcom/taobao/weex/bridge/WXJSObject;
    const/4 v7, 0x3

    new-array v6, v7, [Lcom/taobao/weex/bridge/WXJSObject;

    .line 139
    .local v6, "wxjsObjects2":[Lcom/taobao/weex/bridge/WXJSObject;
    const/4 v7, 0x0

    aget-object v2, p4, v7

    .line 140
    .local v2, "instanceId":Lcom/taobao/weex/bridge/WXJSObject;
    const/4 v7, 0x1

    aget-object v1, p4, v7

    .line 141
    .local v1, "code":Lcom/taobao/weex/bridge/WXJSObject;
    const/4 v7, 0x2

    aget-object v0, p4, v7

    .line 142
    .local v0, "bundleUrl":Lcom/taobao/weex/bridge/WXJSObject;
    const/4 v7, 0x3

    aget-object v3, p4, v7

    .line 143
    .local v3, "options":Lcom/taobao/weex/bridge/WXJSObject;
    const/4 v7, 0x4

    aget-object v4, p4, v7

    .line 154
    .local v4, "raxApi":Lcom/taobao/weex/bridge/WXJSObject;
    const/4 v7, 0x0

    aput-object v2, v5, v7

    .line 155
    const/4 v7, 0x1

    aput-object v0, v5, v7

    .line 156
    const/4 v7, 0x2

    aput-object v3, v5, v7

    .line 157
    const/4 v7, 0x3

    aput-object v4, v5, v7

    .line 158
    const-string/jumbo v7, "createInstanceContext"

    invoke-direct {p0, p1, p2, v7, v5}, Lcom/taobao/weex/devtools/debug/DebugBridge;->doCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    .line 160
    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 161
    const/4 v7, 0x1

    aput-object v1, v6, v7

    .line 162
    const/4 v7, 0x2

    aput-object v0, v6, v7

    .line 163
    const-string/jumbo v7, "importScript"

    invoke-direct {p0, p1, p2, v7, v6}, Lcom/taobao/weex/devtools/debug/DebugBridge;->doImportScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result v7

    return v7
.end method

.method public destoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "wxjsObjects"    # [Lcom/taobao/weex/bridge/WXJSObject;

    .prologue
    .line 211
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/devtools/debug/DebugBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result v0

    return v0
.end method

.method public execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 83
    .local v0, "argsCount":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 84
    aget-object v5, p4, v3

    iget v5, v5, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 85
    aget-object v5, p4, v3

    invoke-static {v5}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->convertWXJSObjectDataToJSON(Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 82
    .end local v0    # "argsCount":I
    .end local v3    # "i":I
    :cond_0
    array-length v0, p4

    goto :goto_0

    .line 87
    .restart local v0    # "argsCount":I
    .restart local v3    # "i":I
    :cond_1
    aget-object v5, p4, v3

    iget-object v5, v5, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 91
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v2, "func":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "registerComponents"

    invoke-static {p3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "registerModules"

    invoke-static {p3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "destroyInstance"

    invoke-static {p3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 93
    :cond_3
    const-string/jumbo v5, "method"

    invoke-interface {v2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_3
    const-string/jumbo v5, "args"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "method"

    const-string/jumbo v6, "WxDebug.callJS"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v5, "params"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/taobao/weex/devtools/debug/DebugBridge;->sendMessage(Ljava/lang/String;)I

    move-result v5

    return v5

    .line 95
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const-string/jumbo v5, "method"

    const-string/jumbo v6, "__WEEX_CALL_JAVASCRIPT__"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public execJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "i"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->execJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execJSService(Ljava/lang/String;)I
    .locals 4
    .param p1, "javascript"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "source"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "method"

    const-string/jumbo v3, "WxDebug.importScript"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v2, "params"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/debug/DebugBridge;->sendMessage(Ljava/lang/String;)I

    move-result v2

    .line 121
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public execJSWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)[B
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;

    .prologue
    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public forceLayout(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->forceLayout(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public getFirstScreenRenderTime(Ljava/lang/String;)[J
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->getFirstScreenRenderTime(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public getJsFunctions()Lcom/taobao/weex/common/IWXJsFunctions;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->jsFunctions:Lcom/taobao/weex/common/IWXJsFunctions;

    return-object v0
.end method

.method public getMeasurementFunc(Ljava/lang/String;J)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "renderObjectPtr"    # J

    .prologue
    .line 332
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->getMeasurementFunc(Ljava/lang/String;J)Lcom/taobao/weex/layout/ContentBoxMeasurement;

    move-result-object v0

    return-object v0
.end method

.method public getRenderFinishTime(Ljava/lang/String;)[J
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->getRenderFinishTime(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public initFramework(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;)I
    .locals 6
    .param p1, "framework"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/taobao/weex/bridge/WXParams;

    .prologue
    .line 58
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    invoke-interface {v2}, Lcom/taobao/weex/devtools/websocket/SimpleSession;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 69
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "className":Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->jsFunctions:Lcom/taobao/weex/common/IWXJsFunctions;

    invoke-interface {v2, p0, v0}, Lcom/taobao/weex/common/IWXJsFunctions;->initWxBridge(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getInitFrameworkMessage(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/debug/DebugBridge;->sendMessage(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public initFrameworkEnv(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "framework"    # Ljava/lang/String;
    .param p2, "wxParams"    # Lcom/taobao/weex/bridge/WXParams;
    .param p3, "cacheDir"    # Ljava/lang/String;
    .param p4, "pieSupport"    # Z

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/debug/DebugBridge;->initFramework(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;)I

    move-result v0

    return v0
.end method

.method public isSessionActive()Z
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/websocket/SimpleSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markDirty(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "dirty"    # Z

    .prologue
    .line 421
    return-void
.end method

.method public notifyLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->notifyLayout(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onConnected()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 466
    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 468
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisConnected()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 472
    const-string/jumbo v0, "DebugBridge"

    const-string/jumbo v1, "WebSocket disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    .line 475
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 476
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onInstanceClose(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->onInstanceClose(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public onVsync(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 126
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/websocket/SimpleSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/websocket/SimpleSession;->post(Ljava/lang/Runnable;)V

    .line 458
    :cond_0
    return-void
.end method

.method public registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 426
    return-void
.end method

.method public reportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->reportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public reportNativeInitStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->reportNativeInitStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public reportServerCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "crashFile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ServerCrash: instanceId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", crashFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->e(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public sendToRemote(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/websocket/SimpleSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/websocket/SimpleSession;->sendText(Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method public setBridgeManager(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .locals 0
    .param p1, "bridgeManager"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mJsManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 446
    return-void
.end method

.method public setDefaultHeightAndWidthIntoRootDom(Ljava/lang/String;FFZZ)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "v"    # F
    .param p3, "v1"    # F
    .param p4, "b"    # Z
    .param p5, "b1"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 358
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/common/IWXBridge;->setDefaultHeightAndWidthIntoRootDom(Ljava/lang/String;FFZZ)V

    .line 359
    return-void
.end method

.method public setJsFunctions(Lcom/taobao/weex/common/IWXJsFunctions;)V
    .locals 0
    .param p1, "jsFunctions"    # Lcom/taobao/weex/common/IWXJsFunctions;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->jsFunctions:Lcom/taobao/weex/common/IWXJsFunctions;

    .line 531
    return-void
.end method

.method public setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p4, "value"    # F

    .prologue
    .line 398
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    .line 399
    return-void
.end method

.method public setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p4, "value"    # F

    .prologue
    .line 407
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    .line 408
    return-void
.end method

.method public setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p4, "value"    # F

    .prologue
    .line 415
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    .line 416
    return-void
.end method

.method public setRenderContainerWrapContent(ZLjava/lang/String;)V
    .locals 1
    .param p1, "b"    # Z
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->setRenderContainerWrapContent(ZLjava/lang/String;)V

    .line 343
    return-void
.end method

.method public setSession(Lcom/taobao/weex/devtools/websocket/SimpleSession;)V
    .locals 0
    .param p1, "session"    # Lcom/taobao/weex/devtools/websocket/SimpleSession;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mSession:Lcom/taobao/weex/devtools/websocket/SimpleSession;

    .line 442
    return-void
.end method

.method public setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 390
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    .line 391
    return-void
.end method

.method public setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 381
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugBridge;->mOriginBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 382
    return-void
.end method

.method public takeHeapSnapshot(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    const-string/jumbo v0, "warning"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ignore invoke takeSnapshot: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/common/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method
