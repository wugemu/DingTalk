.class public Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;
.super Ljava/lang/Object;
.source "H5StartParamManager.java"


# static fields
.field public static final appConfig:Ljava/lang/String; = "appConfig.json"

.field public static final index:Ljava/lang/String; = "index"

.field private static instance:Lcom/alipay/mobile/nebula/startParam/H5StartParamManager; = null

.field public static final launchParamsTag:Ljava/lang/String; = "launchParamsTag"


# instance fields
.field private prerenderPageInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startParamInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->prerenderPageInfoMap:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->instance:Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->instance:Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->instance:Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->prerenderPageInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->prerenderPageInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    return-void
.end method

.method public getH5PreRenderPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->prerenderPageInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->prerenderPageInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v2, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 68
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;

    .line 70
    .local v0, "h5StartParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    iget-object v3, v0, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->tag:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v2, v0, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->param:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    .line 75
    .end local v0    # "h5StartParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, "startParamInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "prerenderPageInfo":Ljava/lang/StringBuilder;
    invoke-static {p1, p2, v2, v0}, Lcom/alipay/mobile/nebula/startParam/H5StartParamUtil;->byteToInfo(Ljava/lang/String;[BLjava/util/List;Ljava/lang/StringBuilder;)V

    .line 46
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "prerenderPageInfoStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    iget-object v3, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->prerenderPageInfoMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    return-void
.end method
