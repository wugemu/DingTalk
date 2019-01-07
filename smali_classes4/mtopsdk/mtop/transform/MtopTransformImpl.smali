.class public Lmtopsdk/mtop/transform/MtopTransformImpl;
.super Ljava/lang/Object;
.source "MtopTransformImpl.java"

# interfaces
.implements Lmtopsdk/mtop/transform/MtopTransform;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopTransformImpl"


# instance fields
.field private cacheMgr:Lmtopsdk/mtop/cache/CacheManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lmtopsdk/mtop/cache/CacheManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmtopsdk/mtop/cache/CacheManagerImpl;-><init>(Lnd;)V

    iput-object v0, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    .line 49
    return-void
.end method

.method private getApiCacheSwitch(Lmtopsdk/mtop/MtopProxy;)Z
    .locals 7
    .param p1, "proxy"    # Lmtopsdk/mtop/MtopProxy;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 211
    const/4 v1, 0x1

    .line 213
    .local v1, "apiCacheSwitch":Z
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v3

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v4

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v0

    .line 214
    .local v0, "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->cache:Z

    if-nez v3, :cond_0

    .line 215
    const/4 v1, 0x0

    .line 216
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    const-string/jumbo v3, "mtopsdk.MtopTransformImpl"

    iget-object v4, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v4}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[getApiCacheSwitch] apiKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v6

    invoke-virtual {v6}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " apiCacheSwitchOpen=false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v3, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-eqz v3, :cond_1

    .line 221
    iget-object v4, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput v3, v4, Lmtopsdk/mtop/util/MtopStatistics;->cacheSwitch:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    :cond_1
    :goto_1
    return v1

    .line 221
    .restart local v0    # "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 224
    .end local v0    # "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "mtopsdk.MtopTransformImpl"

    iget-object v4, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v4}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getApiCacheSwitch failed."

    invoke-static {v3, v4, v5, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getNetworkInstance(Lmtopsdk/mtop/MtopProxy;Llj;)Lle;
    .locals 8
    .param p1, "mtopProxy"    # Lmtopsdk/mtop/MtopProxy;
    .param p2, "request"    # Llj;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 238
    iget-object v5, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v5}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "seqNo":Ljava/lang/String;
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v5

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "apiKey":Ljava/lang/String;
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v5

    invoke-virtual {v5}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    .line 244
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v5

    invoke-virtual {v5}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalSpdySwitchOpen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 245
    new-instance v2, Lanetwork/channel/http/HttpNetwork;

    invoke-direct {v2, v1}, Lanetwork/channel/http/HttpNetwork;-><init>(Landroid/content/Context;)V

    .line 246
    .local v2, "network":Lle;
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    const-string/jumbo v5, "mtopsdk.MtopTransformImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[getNetworkInstance](isGlobalSpdySwitchOpen=false) HttpNetwork apiKey="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Llj;->b(Z)V

    move-object v3, v2

    .line 258
    .end local v2    # "network":Lle;
    .local v3, "network":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 254
    .end local v3    # "network":Ljava/lang/Object;
    :cond_1
    new-instance v2, Lanetwork/channel/degrade/DegradableNetwork;

    invoke-direct {v2, v1}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    .line 255
    .restart local v2    # "network":Lle;
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 256
    const-string/jumbo v5, "mtopsdk.MtopTransformImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[getNetworkInstance](accs)DegradableNetwork apiKey="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v3, v2

    .line 258
    .restart local v3    # "network":Ljava/lang/Object;
    goto :goto_0
.end method

.method private initResponseSource(Lmtopsdk/mtop/MtopProxy;Llj;ZLjava/lang/String;)Lmtopsdk/mtop/domain/ResponseSource;
    .locals 7
    .param p1, "mtopProxy"    # Lmtopsdk/mtop/MtopProxy;
    .param p2, "request"    # Llj;
    .param p3, "isAsync"    # Z
    .param p4, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v3, Lmtopsdk/mtop/domain/ResponseSource;

    iget-object v4, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    invoke-direct {v3, p1, p2, v4}, Lmtopsdk/mtop/domain/ResponseSource;-><init>(Lmtopsdk/mtop/MtopProxy;Llj;Lmtopsdk/mtop/cache/CacheManager;)V

    .line 186
    .local v3, "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 187
    iput-boolean p3, v3, Lmtopsdk/mtop/domain/ResponseSource;->isAsync:Z

    .line 190
    :try_start_0
    iget-object v4, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Lmtopsdk/mtop/cache/CacheManager;->isNeedReadCache(Llj;Lmtopsdk/mtop/common/MtopListener;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "cacheKey":Ljava/lang/String;
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheBlock()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "cacheBlock":Ljava/lang/String;
    iget-object v4, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    invoke-interface {v4, v1, v0}, Lmtopsdk/mtop/cache/CacheManager;->getCache(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;

    move-result-object v4

    iput-object v4, v3, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    .line 196
    invoke-static {v3}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->handleCacheStatus(Lmtopsdk/mtop/domain/ResponseSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v0    # "cacheBlock":Ljava/lang/String;
    .end local v1    # "cacheKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "mtopsdk.MtopTransformImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[initResponseSource] initResponseSource error,mtopProxy="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p4, v5, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public asyncTransform(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;
    .locals 18
    .param p1, "proxy"    # Lmtopsdk/mtop/MtopProxy;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lmtopsdk/mtop/common/ApiID;"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "paramReaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v14, :cond_0

    .line 116
    new-instance v14, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v14}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    move-object/from16 v0, p1

    iput-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 118
    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v14}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v13

    .line 119
    .local v13, "seqNo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p2}, Lmtopsdk/mtop/transform/MtopTransformImpl;->convertNetworkRequest(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Llj;

    move-result-object v10

    .line 120
    .local v10, "request":Llj;
    const/4 v12, 0x0

    .line 121
    .local v12, "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    invoke-direct/range {p0 .. p1}, Lmtopsdk/mtop/transform/MtopTransformImpl;->getApiCacheSwitch(Lmtopsdk/mtop/MtopProxy;)Z

    move-result v2

    .line 123
    .local v2, "apiCacheSwitchOpen":Z
    if-eqz v2, :cond_1

    .line 125
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v14, v13}, Lmtopsdk/mtop/transform/MtopTransformImpl;->initResponseSource(Lmtopsdk/mtop/MtopProxy;Llj;ZLjava/lang/String;)Lmtopsdk/mtop/domain/ResponseSource;

    move-result-object v12

    .line 126
    iget-boolean v14, v12, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    if-nez v14, :cond_1

    .line 127
    new-instance v14, Lmtopsdk/mtop/common/ApiID;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-direct {v14, v15, v0}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    .line 162
    :goto_0
    return-object v14

    .line 132
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v9

    .line 133
    .local v9, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "apiFullName":Ljava/lang/String;
    invoke-static {}, Lmtopsdk/mtop/util/MtopProxyUtils;->getApiWhiteList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Lmtopsdk/mtop/antiattack/ApiLockHelper;->iSApiLocked(Ljava/lang/String;J)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 135
    new-instance v11, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "ANDROID_SYS_API_FLOW_LIMIT_LOCKED"

    const-string/jumbo v17, "\u54ce\u54df\u5582,\u88ab\u6324\u7206\u5566,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v14, v15, v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v11, "response":Lmtopsdk/mtop/domain/MtopResponse;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 137
    sget-object v14, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v14}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 138
    const-string/jumbo v14, "mtopsdk.MtopTransformImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "[asyncTransform] ANDROID_SYS_API_FLOW_LIMIT_LOCKED apiKey="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    new-instance v14, Lmtopsdk/mtop/common/ApiID;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-direct {v14, v15, v0}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    goto :goto_0

    .line 144
    .end local v11    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_3
    invoke-static/range {p1 .. p1}, Lmtopsdk/mtop/util/MtopProxyUtils;->convertCallbackListener(Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/common/NetworkListenerAdapter;

    move-result-object v7

    .line 145
    .local v7, "listener":Lmtopsdk/mtop/common/NetworkListenerAdapter;
    if-eqz v7, :cond_5

    .line 146
    move-object/from16 v0, p1

    iget-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iput-object v14, v7, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 147
    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v4

    .line 148
    .local v4, "callback":Lmtopsdk/mtop/common/MtopListener;
    instance-of v14, v4, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-eqz v14, :cond_4

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    check-cast v4, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    .end local v4    # "callback":Lmtopsdk/mtop/common/MtopListener;
    invoke-interface {v14, v4}, Lmtopsdk/mtop/cache/CacheManager;->addCacheResponseSplitListener(Lmtopsdk/mtop/cache/CacheResponseSplitListener;)V

    .line 151
    :cond_4
    new-instance v14, Lmtopsdk/mtop/cache/CacheEntity;

    invoke-direct {v14, v2, v12}, Lmtopsdk/mtop/cache/CacheEntity;-><init>(ZLmtopsdk/mtop/domain/ResponseSource;)V

    iput-object v14, v7, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    .line 154
    :cond_5
    const/4 v6, 0x0

    .line 156
    .local v6, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Llk;>;"
    :try_start_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v14}, Lmtopsdk/mtop/util/MtopStatistics;->onNetSendStart()V

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lmtopsdk/mtop/transform/MtopTransformImpl;->getNetworkInstance(Lmtopsdk/mtop/MtopProxy;Llj;)Lle;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/MtopProxy;->getContext()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-interface {v14, v10, v15, v0, v7}, Lle;->a(Llj;Ljava/lang/Object;Landroid/os/Handler;Llh;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 162
    :goto_1
    new-instance v14, Lmtopsdk/mtop/common/ApiID;

    move-object/from16 v0, p1

    invoke-direct {v14, v6, v0}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v5

    .line 159
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[asyncTransform] invoke network.asyncSend error :apiKey="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "logStr":Ljava/lang/String;
    const-string/jumbo v14, "mtopsdk.MtopTransformImpl"

    invoke-static {v14, v13, v8, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public convertNetworkRequest(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Llj;
    .locals 2
    .param p1, "proxy"    # Lmtopsdk/mtop/MtopProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Llj;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 167
    .local p2, "paramReaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 168
    :cond_0
    const/4 v1, 0x0

    .line 172
    :goto_0
    return-object v1

    .line 170
    :cond_1
    new-instance v0, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;

    invoke-direct {v0}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;-><init>()V

    .line 171
    .local v0, "converter":Lmtopsdk/mtop/transform/converter/INetworkConverter;
    invoke-interface {v0, p1, p2}, Lmtopsdk/mtop/transform/converter/INetworkConverter;->convert(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Llj;

    move-result-object v1

    .line 172
    .local v1, "request":Llj;
    goto :goto_0
.end method

.method public syncTransform(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 18
    .param p1, "proxy"    # Lmtopsdk/mtop/MtopProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/domain/MtopResponse;"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "paramReaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v14, :cond_0

    .line 54
    new-instance v14, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v14}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    move-object/from16 v0, p1

    iput-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 56
    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v14}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v13

    .line 57
    .local v13, "seqNo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p2}, Lmtopsdk/mtop/transform/MtopTransformImpl;->convertNetworkRequest(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Llj;

    move-result-object v10

    .line 58
    .local v10, "request":Llj;
    const/4 v12, 0x0

    .line 59
    .local v12, "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    invoke-direct/range {p0 .. p1}, Lmtopsdk/mtop/transform/MtopTransformImpl;->getApiCacheSwitch(Lmtopsdk/mtop/MtopProxy;)Z

    move-result v2

    .line 62
    .local v2, "apiCacheSwitchOpen":Z
    if-eqz v2, :cond_1

    .line 64
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v14, v13}, Lmtopsdk/mtop/transform/MtopTransformImpl;->initResponseSource(Lmtopsdk/mtop/MtopProxy;Llj;ZLjava/lang/String;)Lmtopsdk/mtop/domain/ResponseSource;

    move-result-object v12

    .line 65
    iget-boolean v14, v12, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    if-nez v14, :cond_1

    .line 66
    iget-object v4, v12, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 110
    :goto_0
    return-object v4

    .line 72
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v8

    .line 73
    .local v8, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "apiFullName":Ljava/lang/String;
    invoke-static {}, Lmtopsdk/mtop/util/MtopProxyUtils;->getApiWhiteList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Lmtopsdk/mtop/antiattack/ApiLockHelper;->iSApiLocked(Ljava/lang/String;J)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 75
    new-instance v11, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "ANDROID_SYS_API_FLOW_LIMIT_LOCKED"

    const-string/jumbo v17, "\u54ce\u54df\u5582,\u88ab\u6324\u7206\u5566,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v14, v15, v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v11, "response":Lmtopsdk/mtop/domain/MtopResponse;
    sget-object v14, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v14}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 77
    const-string/jumbo v14, "mtopsdk.MtopTransformImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "[syncTransform] ANDROID_SYS_API_FLOW_LIMIT_LOCKED apiKey="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v13, v15}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v4, v11

    .line 79
    goto :goto_0

    .line 83
    .end local v11    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_3
    const/4 v11, 0x0

    .line 85
    .local v11, "response":Llk;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v14}, Lmtopsdk/mtop/util/MtopStatistics;->onNetSendStart()V

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lmtopsdk/mtop/transform/MtopTransformImpl;->getNetworkInstance(Lmtopsdk/mtop/MtopProxy;Llj;)Lle;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/MtopProxy;->getContext()Ljava/lang/Object;

    invoke-interface {v14, v10}, Lle;->a(Llj;)Llk;

    move-result-object v11

    .line 87
    move-object/from16 v0, p1

    iget-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v14}, Lmtopsdk/mtop/util/MtopStatistics;->onNetSendEnd()V

    .line 88
    if-eqz v11, :cond_4

    .line 89
    move-object/from16 v0, p1

    iget-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-interface {v11}, Llk;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v15

    invoke-virtual {v14, v15}, Lmtopsdk/mtop/util/MtopStatistics;->onNetStat(Lanetwork/channel/statist/StatisticData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v14}, Lmtopsdk/mtop/util/MtopStatistics;->onParseResponseDataStart()V

    .line 97
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v11, v14, v0}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseNetworkRlt(Llk;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v9

    .line 98
    .local v9, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    move-object/from16 v0, p1

    iget-object v14, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v14}, Lmtopsdk/mtop/util/MtopStatistics;->onParseResponseDataEnd()V

    .line 100
    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 101
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v14, v15}, Lmtopsdk/mtop/cache/CacheManager;->isNeedWriteCache(Ljava/util/Map;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 102
    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v5

    .line 103
    .local v5, "callback":Lmtopsdk/mtop/common/MtopListener;
    instance-of v14, v5, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-eqz v14, :cond_5

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    check-cast v5, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    .end local v5    # "callback":Lmtopsdk/mtop/common/MtopListener;
    invoke-interface {v14, v5}, Lmtopsdk/mtop/cache/CacheManager;->addCacheResponseSplitListener(Lmtopsdk/mtop/cache/CacheResponseSplitListener;)V

    .line 106
    :cond_5
    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v14

    invoke-static {v14}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->cloneOriginMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v9, v14}, Lmtopsdk/mtop/domain/MtopResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v14, v0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheBlock()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v0, v9}, Lmtopsdk/mtop/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)Z

    :cond_6
    move-object v4, v9

    .line 110
    goto/16 :goto_0

    .line 91
    .end local v9    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    :catch_0
    move-exception v6

    .line 92
    .local v6, "e":Ljava/lang/Throwable;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[syncTransform] invoke network.syncSend error :apiKey="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "logStr":Ljava/lang/String;
    const-string/jumbo v14, "mtopsdk.MtopTransformImpl"

    invoke-static {v14, v13, v7, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
