.class public Lmtopsdk/mtop/cache/CacheManagerImpl;
.super Ljava/lang/Object;
.source "CacheManagerImpl.java"

# interfaces
.implements Lmtopsdk/mtop/cache/CacheManager;


# static fields
.field private static final GET_METHOD:Ljava/lang/String; = "GET"

.field private static final OFFLINE_FLAG_ON:Ljava/lang/String; = "of=on"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheManagerImpl"


# instance fields
.field private cache:Lnd;

.field private splitListener:Lmtopsdk/mtop/cache/CacheResponseSplitListener;


# direct methods
.method public constructor <init>(Lnd;)V
    .locals 1
    .param p1, "cache"    # Lnd;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lnd;

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lnd;

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalCacheImpl()Lnd;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lnd;

    goto :goto_0
.end method

.method private handleCacheValidation(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;
    .locals 10
    .param p1, "rpcCache"    # Lanetwork/network/cache/RpcCache;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 403
    if-nez p1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-object p1

    .line 407
    :cond_1
    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->body:[B

    if-nez v7, :cond_2

    .line 408
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_0

    .line 413
    :cond_2
    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 415
    iget-boolean v7, p1, Lanetwork/network/cache/RpcCache;->offline:Z

    if-eqz v7, :cond_3

    .line 416
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_0

    .line 418
    :cond_3
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_0

    .line 424
    :cond_4
    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    invoke-static {v7}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 426
    iget-wide v2, p1, Lanetwork/network/cache/RpcCache;->cacheCreateTime:J

    .line 427
    .local v2, "lastmodified":J
    iget-wide v4, p1, Lanetwork/network/cache/RpcCache;->maxAge:J

    .line 428
    .local v4, "maxAge":J
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v0

    .line 430
    .local v0, "currentTime":J
    cmp-long v7, v0, v2

    if-ltz v7, :cond_5

    add-long v8, v2, v4

    cmp-long v7, v0, v8

    if-gtz v7, :cond_5

    .line 431
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->FRESH:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    .line 437
    :goto_1
    sget-object v7, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v7}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 438
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "lastModifiedStr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .local v6, "str":Ljava/lang/StringBuilder;
    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string/jumbo v7, ";lastModified="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    const-string/jumbo v7, ";maxAge="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 442
    const-string/jumbo v7, ";currentTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 443
    const-string/jumbo v7, ";t_offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lkkn;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string/jumbo v7, ";status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    const-string/jumbo v7, "mtopsdk.CacheManagerImpl"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    .end local v6    # "str":Ljava/lang/StringBuilder;
    :cond_5
    iget-boolean v7, p1, Lanetwork/network/cache/RpcCache;->offline:Z

    if-eqz v7, :cond_6

    .line 433
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_1

    .line 435
    :cond_6
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_1

    .line 449
    .end local v0    # "currentTime":J
    .end local v2    # "lastmodified":J
    .end local v4    # "maxAge":J
    :cond_7
    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    invoke-static {v7}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 450
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto/16 :goto_0
.end method

.method private handleResponseCacheFlag(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;
    .locals 12
    .param p1, "rpcCache"    # Lanetwork/network/cache/RpcCache;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 354
    if-eqz p1, :cond_0

    iget-object v9, p1, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    if-nez v9, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-object p1

    .line 357
    :cond_1
    iget-object v4, p1, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    .line 358
    .local v4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v9, "last-modified"

    invoke-static {v4, v9}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 359
    .local v6, "lastmodifiedStr":Ljava/lang/String;
    const-string/jumbo v9, "cache-control"

    invoke-static {v4, v9}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "cachecontrolStr":Ljava/lang/String;
    const-string/jumbo v9, "etag"

    invoke-static {v4, v9}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "etagStr":Ljava/lang/String;
    if-nez v2, :cond_2

    if-nez v6, :cond_2

    if-eqz v3, :cond_0

    .line 367
    :cond_2
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v6}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 368
    iput-object v6, p1, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    .line 369
    invoke-static {v6}, Lmtopsdk/common/util/MtopUtils;->convertTimeFormatGMT2Long(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p1, Lanetwork/network/cache/RpcCache;->cacheCreateTime:J

    .line 370
    const-string/jumbo v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "cachecontrol":[Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 372
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v8, v0, v5

    .line 374
    .local v8, "str":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v9, "max-age="

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 375
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p1, Lanetwork/network/cache/RpcCache;->maxAge:J

    .line 372
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 378
    :cond_4
    const-string/jumbo v9, "of=on"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 379
    const/4 v9, 0x1

    iput-boolean v9, p1, Lanetwork/network/cache/RpcCache;->offline:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 382
    :catch_0
    move-exception v9

    const-string/jumbo v9, "mtopsdk.CacheManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[handleResponseCacheFlag] parse cachecontrolStr error."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 388
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cachecontrol":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "str":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 389
    iput-object v3, p1, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private queryExistRpcCacheVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "blockName"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-object v1

    .line 461
    :cond_1
    invoke-virtual {p0, p2, p1}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getCache(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;

    move-result-object v0

    .line 462
    .local v0, "rpcCache":Lanetwork/network/cache/RpcCache;
    if-eqz v0, :cond_0

    .line 463
    iget-object v1, v0, Lanetwork/network/cache/RpcCache;->version:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addCacheResponseSplitListener(Lmtopsdk/mtop/cache/CacheResponseSplitListener;)V
    .locals 0
    .param p1, "splitListener"    # Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    .prologue
    .line 344
    iput-object p1, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->splitListener:Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    .line 346
    return-void
.end method

.method public getBlockName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "blockKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 321
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    const-string/jumbo v1, ""

    .line 330
    :cond_0
    :goto_0
    return-object v1

    .line 325
    :cond_1
    const-string/jumbo v1, ""

    .line 326
    .local v1, "blockName":Ljava/lang/String;
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v0

    .line 327
    .local v0, "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->blockName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 328
    iget-object v1, v0, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->blockName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBlockName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    const-string/jumbo v0, ""

    .line 339
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Lmtopsdk/common/util/StringUtils;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getBlockName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCache(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "blockName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 134
    iget-object v1, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lnd;

    if-nez v1, :cond_1

    .line 135
    const/4 v0, 0x0

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :cond_1
    iget-object v1, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lnd;

    invoke-interface {v1}, Lnd;->a()Lanetwork/network/cache/RpcCache;

    move-result-object v0

    .line 139
    .local v0, "cacheResponse":Lanetwork/network/cache/RpcCache;
    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, v0}, Lmtopsdk/mtop/cache/CacheManagerImpl;->handleCacheValidation(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ttid"    # Ljava/lang/String;
    .param p3, "privateScope"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 239
    :goto_0
    return-object v1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "cacheKey":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1

    invoke-static {}, Lkkn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-static {}, Lkkn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_1
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCacheKey(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/net/URL;Ljava/util/List;)Ljava/lang/String;
    .locals 18
    .param p1, "mtopRequest"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p2, "mtopProperty"    # Lmtopsdk/mtop/common/MtopNetworkProp;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/MtopRequest;",
            "Lmtopsdk/mtop/common/MtopNetworkProp;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lli;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 266
    .local p4, "originalParams":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 267
    :cond_0
    const/4 v2, 0x0

    .line 315
    :goto_0
    return-object v2

    .line 273
    :cond_1
    const/4 v11, 0x1

    .line 274
    .local v11, "privateScope":Z
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v1

    .line 275
    .local v1, "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    if-eqz v1, :cond_4

    .line 276
    iget-object v3, v1, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->excludeQueryList:Ljava/util/List;

    .line 277
    .local v3, "cacheKeyBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v15, "public"

    iget-object v0, v1, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->scope:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 278
    const/4 v11, 0x0

    .line 284
    :cond_2
    :goto_1
    move-object/from16 v0, p2

    iget-object v14, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 285
    .local v14, "ttid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 288
    .local v2, "cacheKey":Ljava/lang/String;
    if-eqz v3, :cond_3

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 289
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-static {v15, v0}, Lmtopsdk/mtop/transform/converter/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/List;)Ljava/net/URL;

    move-result-object v13

    .line 290
    .local v13, "totalUrl":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14, v11}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getCacheKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 291
    goto :goto_0

    .line 281
    .end local v2    # "cacheKey":Ljava/lang/String;
    .end local v3    # "cacheKeyBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "totalUrl":Ljava/net/URL;
    .end local v14    # "ttid":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    .restart local v3    # "cacheKeyBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 294
    .restart local v2    # "cacheKey":Ljava/lang/String;
    .restart local v14    # "ttid":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p1

    iget-object v6, v0, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    .line 295
    .local v6, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_6

    .line 296
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 297
    .local v12, "str":Ljava/lang/String;
    invoke-interface {v6, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 311
    .end local v6    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "str":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 312
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "mtopsdk.CacheManagerImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "[getCacheKey] getCacheKey error.---"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :try_start_2
    invoke-static {v6}, Lmtopsdk/mtop/util/ReflectUtil;->converMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, "dataStrExcludeKey":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v5, "clonedParams":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lli;

    .line 303
    .local v10, "param":Lli;
    const-string/jumbo v15, "data"

    invoke-interface {v10}, Lli;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 304
    new-instance v15, Lmp;

    invoke-interface {v10}, Lli;->getKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7}, Lmp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 306
    :cond_7
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 309
    .end local v10    # "param":Lli;
    :cond_8
    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v5}, Lmtopsdk/mtop/transform/converter/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/List;)Ljava/net/URL;

    move-result-object v4

    .line 310
    .local v4, "cacheUrl":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14, v11}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getCacheKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getCacheKey(Lmtopsdk/mtop/intf/MtopBuilder;)Ljava/lang/String;
    .locals 8
    .param p1, "builder"    # Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 245
    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    new-instance v2, Lmtopsdk/mtop/MtopProxy;

    iget-object v4, p1, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v5, p1, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v2, v4, v5, v0, v0}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 250
    .local v2, "proxy":Lmtopsdk/mtop/MtopProxy;
    invoke-virtual {v2}, Lmtopsdk/mtop/MtopProxy;->getParamBuilder()Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    move-result-object v4

    invoke-interface {v4, v2}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;->buildParams(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;

    move-result-object v1

    .line 251
    .local v1, "paramReaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v2}, Lmtopsdk/mtop/MtopProxy;->getTransformer()Lmtopsdk/mtop/transform/MtopTransform;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Lmtopsdk/mtop/transform/MtopTransform;->convertNetworkRequest(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Llj;

    move-result-object v3

    .line 255
    .local v3, "request":Llj;
    if-eqz v3, :cond_0

    .line 258
    iget-object v4, p1, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v5, p1, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-interface {v3}, Llj;->b()Ljava/net/URL;

    move-result-object v6

    invoke-interface {v3}, Llj;->g()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getCacheKey(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/net/URL;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "cacheKey":Ljava/lang/String;
    goto :goto_0
.end method

.method public isNeedReadCache(Llj;Lmtopsdk/mtop/common/MtopListener;)Z
    .locals 9
    .param p1, "request"    # Llj;
    .param p2, "callback"    # Lmtopsdk/mtop/common/MtopListener;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 68
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v6

    .line 72
    :cond_1
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v7

    invoke-virtual {v7}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalCacheSwitchOpen()Z

    move-result v7

    if-nez v7, :cond_2

    .line 73
    const-string/jumbo v7, "mtopsdk.CacheManagerImpl"

    const-string/jumbo v8, "[isNeedReadCache]GlobalCacheSwitch=false,Don\'t Read Local Cache."

    invoke-static {v7, v8}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    const-string/jumbo v7, "GET"

    invoke-interface {p1}, Llj;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    const/4 v3, 0x0

    .line 85
    .local v3, "headers":[Llc;
    :try_start_0
    const-string/jumbo v7, "cache-control"

    invoke-interface {p1, v7}, Llj;->a(Ljava/lang/String;)[Llc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 90
    :goto_1
    if-eqz v3, :cond_3

    .line 91
    move-object v0, v3

    .local v0, "arr$":[Llc;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 92
    .local v2, "header":Llc;
    const-string/jumbo v7, "no-cache"

    invoke-interface {v2}, Llc;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 86
    .end local v0    # "arr$":[Llc;
    .end local v2    # "header":Llc;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "mtopsdk.CacheManagerImpl"

    const-string/jumbo v8, "[isNeedReadCache] GET CACHE_CONTROL request header error."

    invoke-static {v7, v8, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    instance-of v7, p2, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-nez v7, :cond_0

    .line 102
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public isNeedWriteCache(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 107
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v3

    .line 111
    :cond_1
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v4

    invoke-virtual {v4}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalCacheSwitchOpen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 112
    const-string/jumbo v4, "mtopsdk.CacheManagerImpl"

    const-string/jumbo v5, "[isNeedWriteCache]GlobalCacheSwitch=false,Don\'t Write Local Cache."

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    const-string/jumbo v4, "cache-control"

    invoke-static {p1, v4}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "cacheControl":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string/jumbo v4, "no-cache"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    :cond_3
    const-string/jumbo v4, "last-modified"

    invoke-static {p1, v4}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "lastModified":Ljava/lang/String;
    const-string/jumbo v4, "etag"

    invoke-static {p1, v4}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "etag":Ljava/lang/String;
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    if-eqz v1, :cond_0

    .line 128
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public putCache(Ljava/lang/String;Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Z
    .locals 3
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "blockName"    # Ljava/lang/String;
    .param p3, "rpcCache"    # Lanetwork/network/cache/RpcCache;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "result":Z
    iget-object v1, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lnd;

    if-nez v1, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 156
    :goto_0
    return v1

    .line 151
    :cond_0
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 152
    iget-object v1, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lnd;

    invoke-interface {v1}, Lnd;->b()Z

    move-result v0

    :goto_1
    move v1, v0

    .line 156
    goto :goto_0

    .line 154
    :cond_1
    const-string/jumbo v1, "mtopsdk.CacheManagerImpl"

    const-string/jumbo v2, "[putCache] Invalid cacheKey or rpcCache"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public putCache(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)Z
    .locals 18
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "blockName"    # Ljava/lang/String;
    .param p3, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-object v15, v0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lnd;

    if-nez v15, :cond_0

    .line 164
    const/4 v13, 0x0

    .line 221
    :goto_0
    return v13

    .line 166
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmtopsdk/mtop/cache/CacheManagerImpl;->splitListener:Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-nez v15, :cond_2

    .line 167
    new-instance v10, Lanetwork/network/cache/RpcCache;

    invoke-direct {v10}, Lanetwork/network/cache/RpcCache;-><init>()V

    .line 168
    .local v10, "cacheRequest":Lanetwork/network/cache/RpcCache;
    invoke-virtual/range {p3 .. p3}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v15

    iput-object v15, v10, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    .line 169
    invoke-virtual/range {p3 .. p3}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v15

    iput-object v15, v10, Lanetwork/network/cache/RpcCache;->body:[B

    .line 170
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmtopsdk/mtop/cache/CacheManagerImpl;->handleResponseCacheFlag(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;

    move-result-object v10

    .line 172
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lmtopsdk/mtop/domain/MtopResponse;->getFullKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v3

    .line 173
    .local v3, "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    if-eqz v3, :cond_1

    iget-boolean v15, v3, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->push:Z

    if-eqz v15, :cond_1

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lmtopsdk/mtop/cache/CacheManagerImpl;->queryExistRpcCacheVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 175
    .local v14, "version":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 176
    iput-object v14, v10, Lanetwork/network/cache/RpcCache;->version:Ljava/lang/String;

    .line 180
    .end local v14    # "version":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lnd;

    invoke-interface {v15}, Lnd;->b()Z

    move-result v13

    .line 181
    .local v13, "result":Z
    goto :goto_0

    .line 184
    .end local v3    # "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    .end local v10    # "cacheRequest":Lanetwork/network/cache/RpcCache;
    .end local v13    # "result":Z
    :cond_2
    const/4 v9, 0x0

    .line 186
    .local v9, "cacheItems":Ljava/util/List;, "Ljava/util/List<Lmtopsdk/mtop/cache/SplitedCacheItem;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmtopsdk/mtop/cache/CacheManagerImpl;->splitListener:Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    move-object/from16 v0, p3

    invoke-interface {v15, v0}, Lmtopsdk/mtop/cache/CacheResponseSplitListener;->onSplit(Lmtopsdk/mtop/domain/MtopResponse;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 190
    :goto_1
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 191
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v11

    .line 188
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "mtopsdk.CacheManagerImpl"

    const-string/jumbo v16, "onSplit throws exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v11}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 193
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmtopsdk/mtop/cache/SplitedCacheItem;

    .line 194
    .local v5, "cacheItem":Lmtopsdk/mtop/cache/SplitedCacheItem;
    if-eqz v5, :cond_5

    iget-object v15, v5, Lmtopsdk/mtop/cache/SplitedCacheItem;->builder:Lmtopsdk/mtop/intf/MtopBuilder;

    if-eqz v15, :cond_5

    .line 197
    iget-object v4, v5, Lmtopsdk/mtop/cache/SplitedCacheItem;->builder:Lmtopsdk/mtop/intf/MtopBuilder;

    .line 198
    .local v4, "builder":Lmtopsdk/mtop/intf/MtopBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getCacheKey(Lmtopsdk/mtop/intf/MtopBuilder;)Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, "cacheItemKey":Ljava/lang/String;
    const/4 v6, 0x0

    .line 200
    .local v6, "cacheItemBlockName":Ljava/lang/String;
    iget-object v15, v4, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v15, :cond_6

    .line 201
    iget-object v15, v4, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v15}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getBlockName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    :cond_6
    invoke-static {v7}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 204
    new-instance v10, Lanetwork/network/cache/RpcCache;

    invoke-direct {v10}, Lanetwork/network/cache/RpcCache;-><init>()V

    .line 205
    .restart local v10    # "cacheRequest":Lanetwork/network/cache/RpcCache;
    iget-object v15, v5, Lmtopsdk/mtop/cache/SplitedCacheItem;->header:Ljava/util/Map;

    iput-object v15, v10, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    .line 206
    iget-object v15, v5, Lmtopsdk/mtop/cache/SplitedCacheItem;->body:[B

    iput-object v15, v10, Lanetwork/network/cache/RpcCache;->body:[B

    .line 207
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmtopsdk/mtop/cache/CacheManagerImpl;->handleResponseCacheFlag(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;

    move-result-object v10

    .line 208
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lmtopsdk/mtop/domain/MtopResponse;->getFullKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v3

    .line 209
    .restart local v3    # "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    if-eqz v3, :cond_7

    iget-boolean v15, v3, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->push:Z

    if-eqz v15, :cond_7

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lmtopsdk/mtop/cache/CacheManagerImpl;->queryExistRpcCacheVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 211
    .restart local v14    # "version":Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 212
    iput-object v14, v10, Lanetwork/network/cache/RpcCache;->version:Ljava/lang/String;

    .line 215
    .end local v14    # "version":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lnd;

    invoke-interface {v15}, Lnd;->b()Z

    move-result v8

    .line 216
    .local v8, "cacheItemResult":Z
    if-nez v8, :cond_5

    .line 217
    const-string/jumbo v15, "mtopsdk.CacheManagerImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "put cacheItem failed,cacheItemKey="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ";cacheItemBlockName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 221
    .end local v3    # "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    .end local v4    # "builder":Lmtopsdk/mtop/intf/MtopBuilder;
    .end local v5    # "cacheItem":Lmtopsdk/mtop/cache/SplitedCacheItem;
    .end local v6    # "cacheItemBlockName":Ljava/lang/String;
    .end local v7    # "cacheItemKey":Ljava/lang/String;
    .end local v8    # "cacheItemResult":Z
    .end local v10    # "cacheRequest":Lanetwork/network/cache/RpcCache;
    :cond_8
    const/4 v13, 0x1

    goto/16 :goto_0
.end method
