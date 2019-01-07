.class public Lcom/taobao/weex/WXSDKManager;
.super Ljava/lang/Object;
.source "WXSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_VIEWPORT_WIDTH:I = 0x2ee

.field private static sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile sManager:Lcom/taobao/weex/WXSDKManager;


# instance fields
.field private mActivityNavBarSetter:Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

.field private mAllInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/WXSDKInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

.field private mClassLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

.field private mCrashInfo:Lcom/taobao/weex/adapter/ICrashInfoReporter;

.field private mDrawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

.field private mIWXHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

.field private mIWXImgLoaderAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

.field private mIWXJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

.field private mIWXSoLoaderAdapter:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

.field private mIWXStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

.field private mIWXUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

.field private mIWebSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

.field private mLifeCycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedInitV8:Z

.field private mRoleAdapter:Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;

.field private mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

.field private mTracingAdapter:Lcom/taobao/weex/adapter/ITracingAdapter;

.field private mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

.field private mWXAnalyzerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/performance/IWXAnalyzer;",
            ">;"
        }
    .end annotation
.end field

.field mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

.field private mWXValidateProcessor:Lcom/taobao/weex/bridge/WXValidateProcessor;

.field private final mWXWorkThreadManager:Lcom/taobao/weex/common/WXWorkThreadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/WXSDKManager;->sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/taobao/weex/ui/WXRenderManager;

    invoke-direct {v0}, Lcom/taobao/weex/ui/WXRenderManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/taobao/weex/WXSDKManager;-><init>(Lcom/taobao/weex/ui/WXRenderManager;)V

    .line 106
    return-void
.end method

.method private constructor <init>(Lcom/taobao/weex/ui/WXRenderManager;)V
    .locals 1
    .param p1, "renderManager"    # Lcom/taobao/weex/ui/WXRenderManager;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKManager;->mNeedInitV8:Z

    .line 109
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    .line 110
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 111
    new-instance v0, Lcom/taobao/weex/common/WXWorkThreadManager;

    invoke-direct {v0}, Lcom/taobao/weex/common/WXWorkThreadManager;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXWorkThreadManager:Lcom/taobao/weex/common/WXWorkThreadManager;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXAnalyzerList:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mAllInstanceMap:Ljava/util/Map;

    .line 114
    return-void
.end method

.method public static getInstance()Lcom/taobao/weex/WXSDKManager;
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    if-nez v0, :cond_1

    .line 167
    const-class v1, Lcom/taobao/weex/WXSDKManager;

    monitor-enter v1

    .line 168
    :try_start_0
    sget-object v0, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/taobao/weex/WXSDKManager;

    invoke-direct {v0}, Lcom/taobao/weex/WXSDKManager;-><init>()V

    sput-object v0, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    .line 171
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_1
    sget-object v0, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstanceViewPortWidth(Ljava/lang/String;)I
    .locals 2
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 178
    .local v0, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-nez v0, :cond_0

    .line 179
    const/16 v1, 0x2ee

    .line 181
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v1

    goto :goto_0
.end method

.method static initInstance(Lcom/taobao/weex/ui/WXRenderManager;)V
    .locals 1
    .param p0, "renderManager"    # Lcom/taobao/weex/ui/WXRenderManager;

    .prologue
    .line 120
    new-instance v0, Lcom/taobao/weex/WXSDKManager;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKManager;-><init>(Lcom/taobao/weex/ui/WXRenderManager;)V

    sput-object v0, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    .line 121
    return-void
.end method

.method static setInstance(Lcom/taobao/weex/WXSDKManager;)V
    .locals 0
    .param p0, "manager"    # Lcom/taobao/weex/WXSDKManager;

    .prologue
    .line 185
    sput-object p0, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    .line 186
    return-void
.end method


# virtual methods
.method public addWXAnalyzer(Lcom/taobao/weex/performance/IWXAnalyzer;)V
    .locals 1
    .param p1, "analyzer"    # Lcom/taobao/weex/performance/IWXAnalyzer;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXAnalyzerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXAnalyzerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_0
    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "funcId"    # Ljava/lang/String;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "funcId"    # Ljava/lang/String;
    .param p4, "keepAlive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 239
    return-void
.end method

.method createInstance(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "code"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/WXRenderManager;->registerInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 283
    iget-object v1, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;

    .line 286
    .local v0, "callbacks":Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;->onInstanceCreated(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v0    # "callbacks":Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXWorkThreadManager:Lcom/taobao/weex/common/WXWorkThreadManager;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXWorkThreadManager:Lcom/taobao/weex/common/WXWorkThreadManager;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXWorkThreadManager;->destroy()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mAllInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 229
    return-void
.end method

.method destroyInstance(Ljava/lang/String;)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 296
    const-string/jumbo v1, "wx_current_url"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/WXSDKManager;->setCrashInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    new-instance v1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v2, "[WXSDKManager] destroyInstance error"

    invoke-direct {v1, v2}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;

    .line 305
    .local v0, "callbacks":Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;->onInstanceDestroyed(Ljava/lang/String;)V

    goto :goto_1

    .line 308
    .end local v0    # "callbacks":Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;
    :cond_2
    iget-object v1, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/WXRenderManager;->removeRenderStatement(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->destroyInstance(Ljava/lang/String;)V

    .line 310
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->destroyInstanceModules(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 259
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 268
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v1, "[WXSDKManager]  fireEvent error"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 279
    return-void
.end method

.method generateInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/taobao/weex/WXSDKManager;->sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityRoleAdapter()Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mRoleAdapter:Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;

    return-object v0
.end method

.method public getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mActivityNavBarSetter:Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    return-object v0
.end method

.method public getAllInstanceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/WXSDKInstance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mAllInstanceMap:Ljava/util/Map;

    return-object v0
.end method

.method public getClassLoaderAdapter()Lcom/taobao/weex/adapter/ClassLoaderAdapter;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mClassLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    invoke-direct {v0}, Lcom/taobao/weex/adapter/ClassLoaderAdapter;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mClassLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mClassLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    return-object v0
.end method

.method public getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mDrawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    return-object v0
.end method

.method public getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    invoke-direct {v0}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    return-object v0
.end method

.method public getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXImgLoaderAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    return-object v0
.end method

.method public getIWXJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    return-object v0
.end method

.method public getIWXSoLoaderAdapter()Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXSoLoaderAdapter:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    return-object v0
.end method

.method public getIWXStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 390
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    if-nez v0, :cond_0

    .line 391
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 392
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    .line 397
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    return-object v0

    .line 394
    :cond_1
    const-string/jumbo v0, "WXStorageModule"

    const-string/jumbo v1, "No Application context found,you should call WXSDKEngine#initialize() method in your application"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    return-object v0
.end method

.method public getIWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWebSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWebSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    invoke-interface {v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;->createWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 213
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    goto :goto_0
.end method

.method public getTracingAdapter()Lcom/taobao/weex/adapter/ITracingAdapter;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mTracingAdapter:Lcom/taobao/weex/adapter/ITracingAdapter;

    return-object v0
.end method

.method public getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Lcom/taobao/weex/adapter/DefaultUriAdapter;

    invoke-direct {v0}, Lcom/taobao/weex/adapter/DefaultUriAdapter;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    return-object v0
.end method

.method public getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXValidateProcessor:Lcom/taobao/weex/bridge/WXValidateProcessor;

    return-object v0
.end method

.method public getWXAnalyzerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/performance/IWXAnalyzer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXAnalyzerList:Ljava/util/List;

    return-object v0
.end method

.method public getWXBridgeManager()Lcom/taobao/weex/bridge/WXBridgeManager;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    return-object v0
.end method

.method public getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    return-object v0
.end method

.method public getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-object v0
.end method

.method public getWXWorkThreadManager()Lcom/taobao/weex/common/WXWorkThreadManager;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXWorkThreadManager:Lcom/taobao/weex/common/WXWorkThreadManager;

    return-object v0
.end method

.method public initScriptsFramework(Ljava/lang/String;)V
    .locals 1
    .param p1, "framework"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public needInitV8()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKManager;->mNeedInitV8:Z

    return v0
.end method

.method public notifySerializeCodeCache()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->notifySerializeCodeCache()V

    .line 429
    return-void
.end method

.method public notifyTrimMemory()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->notifyTrimMemory()V

    .line 416
    return-void
.end method

.method public onSDKEngineInitialize()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onSDKEngineInitialize()V

    .line 135
    :cond_0
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 217
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 218
    return-void
.end method

.method refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "jsonData"    # Lcom/taobao/weex/common/WXRefreshData;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    .line 293
    return-void
.end method

.method public registerComponents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerComponents(Ljava/util/List;)V

    .line 247
    return-void
.end method

.method public registerInstanceLifeCycleCallbacks(Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    return-void
.end method

.method public registerModules(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerModules(Ljava/util/Map;)V

    .line 251
    return-void
.end method

.method public registerStatisticsListener(Lcom/taobao/weex/IWXStatisticsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/IWXStatisticsListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    .line 125
    return-void
.end method

.method public registerValidateProcessor(Lcom/taobao/weex/bridge/WXValidateProcessor;)V
    .locals 0
    .param p1, "processor"    # Lcom/taobao/weex/bridge/WXValidateProcessor;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mWXValidateProcessor:Lcom/taobao/weex/bridge/WXValidateProcessor;

    .line 441
    return-void
.end method

.method public restartBridge()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->restart()V

    .line 198
    return-void
.end method

.method public rmWXAnalyzer(Lcom/taobao/weex/performance/IWXAnalyzer;)V
    .locals 1
    .param p1, "analyzer"    # Lcom/taobao/weex/performance/IWXAnalyzer;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXAnalyzerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method public setAccessibilityRoleAdapter(Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mRoleAdapter:Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;

    .line 475
    return-void
.end method

.method public setActivityNavBarSetter(Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;)V
    .locals 0
    .param p1, "mActivityNavBarSetter"    # Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mActivityNavBarSetter:Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    .line 194
    return-void
.end method

.method public setCrashInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mCrashInfo:Lcom/taobao/weex/adapter/ICrashInfoReporter;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mCrashInfo:Lcom/taobao/weex/adapter/ICrashInfoReporter;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/adapter/ICrashInfoReporter;->addCrashInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_0
    return-void
.end method

.method public setCrashInfoReporter(Lcom/taobao/weex/adapter/ICrashInfoReporter;)V
    .locals 0
    .param p1, "mCrashInfo"    # Lcom/taobao/weex/adapter/ICrashInfoReporter;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mCrashInfo:Lcom/taobao/weex/adapter/ICrashInfoReporter;

    .line 450
    return-void
.end method

.method public setIWXJSExceptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)V
    .locals 0
    .param p1, "IWXJSExceptionAdapter"    # Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mIWXJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    .line 335
    return-void
.end method

.method setInitConfig(Lcom/taobao/weex/InitConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/taobao/weex/InitConfig;

    .prologue
    .line 377
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .line 378
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getImgAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXImgLoaderAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    .line 379
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mDrawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    .line 380
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    .line 381
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getUtAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 382
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    .line 383
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getWebSocketAdapterFactory()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWebSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    .line 384
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    .line 385
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getIWXSoLoaderAdapter()Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXSoLoaderAdapter:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .line 386
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getClassLoaderAdapter()Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mClassLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    .line 387
    return-void
.end method

.method public setNeedInitV8(Z)V
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKManager;->mNeedInitV8:Z

    .line 139
    return-void
.end method

.method public setTracingAdapter(Lcom/taobao/weex/adapter/ITracingAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/taobao/weex/adapter/ITracingAdapter;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mTracingAdapter:Lcom/taobao/weex/adapter/ITracingAdapter;

    .line 460
    return-void
.end method

.method public takeJSHeapSnapshot(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    :goto_0
    return-void

    .line 153
    :cond_0
    sget-object v3, Lcom/taobao/weex/WXSDKManager;->sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "name":Ljava/lang/String;
    move-object v1, p1

    .line 156
    .local v1, "filename":Ljava/lang/String;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".heapsnapshot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v3, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v3, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->takeJSHeapSnapshot(Ljava/lang/String;)V

    goto :goto_0
.end method
