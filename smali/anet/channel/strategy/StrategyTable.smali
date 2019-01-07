.class public Lanet/channel/strategy/StrategyTable;
.super Ljava/lang/Object;
.source "StrategyTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyTable$HotHostLruCache;
    }
.end annotation


# static fields
.field private static final COLD_HOST_CAPABILITY:I = 0x20

.field private static final FRESH_TTL:J = 0x7530L

.field private static final HOT_HOST_CAPABILITY:I = 0x20

.field private static final TAG:Ljava/lang/String; = "awcn.StrategyTable"

.field private static final serialVersionUID:J = 0x53e32b30cbbba6ceL


# instance fields
.field protected volatile clientIp:Ljava/lang/String;

.field private transient coldStrategyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;"
        }
    .end annotation
.end field

.field private volatile transient configVersion:I

.field private hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

.field private successIpSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected uniqueId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lanet/channel/strategy/StrategyTable;->checkInit()V

    .line 88
    return-void
.end method

.method private buildPreIpString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .local v2, "preIp":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    monitor-enter v4

    .line 442
    :try_start_0
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    .local v1, "ip":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 445
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ip":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 449
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private checkInitHost()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 5043
    :try_start_0
    sget-object v4, Lkn$b;->a:Lkn;

    .line 359
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lkn;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "bSend":Z
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :try_start_1
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6043
    :try_start_2
    sget-object v4, Lkn$b;->a:Lkn;

    .line 363
    invoke-virtual {v4}, Lkn;->a()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 364
    .local v2, "host":Ljava/lang/String;
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v4, v2}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 365
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    new-instance v7, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v7, v2}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const/4 v0, 0x1

    goto :goto_0

    .line 371
    .end local v2    # "host":Ljava/lang/String;
    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    if-eqz v0, :cond_2

    .line 374
    :try_start_4
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-virtual {p0, v4}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 380
    .end local v0    # "bSend":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 371
    .restart local v0    # "bSend":Z
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4

    .line 372
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 377
    .end local v0    # "bSend":Z
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "awcn.StrategyTable"

    const-string/jumbo v5, "checkInitHost failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v1, v7}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getNeedUpdateHost(Ljava/util/Map;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 269
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 270
    .local v1, "hostToUpdate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 272
    .local v2, "currTime":J
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    if-ne p1, v6, :cond_2

    const/4 v0, 0x1

    .line 274
    .local v0, "collectAll":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lanet/channel/strategy/StrategyCollection;

    .line 275
    .local v5, "sc":Lanet/channel/strategy/StrategyCollection;
    if-nez v0, :cond_1

    iget-wide v6, v5, Lanet/channel/strategy/StrategyCollection;->ttl:J

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    .line 276
    :cond_1
    invoke-virtual {v5}, Lanet/channel/strategy/StrategyCollection;->getHostWithEtag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    iput-wide v6, v5, Lanet/channel/strategy/StrategyCollection;->ttl:J

    goto :goto_1

    .line 272
    .end local v0    # "collectAll":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    .restart local v0    # "collectAll":Z
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v1
.end method

.method private handlePreIp(Lanet/channel/entity/EventType;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventType"    # Lanet/channel/entity/EventType;
    .param p2, "ip"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 427
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    monitor-enter v1

    .line 431
    :try_start_0
    sget-object v0, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    if-ne p1, v0, :cond_3

    .line 432
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 433
    :cond_3
    :try_start_1
    sget-object v0, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    if-eq p1, v0, :cond_4

    sget-object v0, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    if-ne p1, v0, :cond_2

    .line 434
    :cond_4
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private initStrategy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1043
    sget-object v3, Lkn$b;->a:Lkn;

    .line 91
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lkn;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    :cond_0
    return-void

    .line 2043
    :cond_1
    sget-object v3, Lkn$b;->a:Lkn;

    .line 95
    invoke-virtual {v3}, Lkn;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, "host":Ljava/lang/String;
    invoke-static {}, Lki;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    new-instance v2, Lanet/channel/strategy/StrategyCollection;

    invoke-static {}, Lki;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lki;->b()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lanet/channel/strategy/RawConnStrategy;

    const/16 v6, 0x50

    sget-object v7, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-static {v6, v7}, Lanet/channel/strategy/RawConnStrategy$a;->a(ILanet/channel/entity/ConnType;)Lanet/channel/strategy/RawConnStrategy;

    move-result-object v6

    aput-object v6, v5, v8

    const/16 v6, 0x1bb

    sget-object v7, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-static {v6, v7}, Lanet/channel/strategy/RawConnStrategy$a;->a(ILanet/channel/entity/ConnType;)Lanet/channel/strategy/RawConnStrategy;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lanet/channel/strategy/ConnStrategyList;->createForIDC([Ljava/lang/String;[Lanet/channel/strategy/RawConnStrategy;)Lanet/channel/strategy/ConnStrategyList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;Lanet/channel/strategy/ConnStrategyList;)V

    .line 115
    .local v2, "sc":Lanet/channel/strategy/StrategyCollection;
    :goto_1
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v3, v0, v2}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    .end local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_2
    invoke-static {}, Lkg;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    invoke-static {}, Lkg;->b()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 107
    new-instance v2, Lanet/channel/strategy/StrategyCollection;

    invoke-static {}, Lkg;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lkg;->b()[Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Lanet/channel/strategy/RawConnStrategy;

    invoke-static {}, Lanet/channel/strategy/RawConnStrategy$a;->a()Lanet/channel/strategy/RawConnStrategy;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lanet/channel/strategy/ConnStrategyList;->createForIDC([Ljava/lang/String;[Lanet/channel/strategy/RawConnStrategy;)Lanet/channel/strategy/ConnStrategyList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;Lanet/channel/strategy/ConnStrategyList;)V

    .restart local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    goto :goto_1

    .line 113
    .end local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_3
    new-instance v2, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v2, v0}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .restart local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    goto :goto_1
.end method


# virtual methods
.method protected checkInit()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v1, 0x20

    .line 120
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-direct {v0, v1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    .line 122
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->initStrategy()V

    .line 125
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Lanet/channel/util/LruCache;

    invoke-direct {v0, v1}, Lanet/channel/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    .line 129
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 130
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    .line 133
    :cond_2
    invoke-static {}, Lic;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lanet/channel/strategy/StrategyTable;->configVersion:I

    .line 134
    return-void

    .line 133
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public fillLastHorseRideTime(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/HorseRideStrategy;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 408
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanet/channel/strategy/HorseRideStrategy;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v4

    .line 412
    :try_start_0
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 413
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 414
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/HorseRideStrategy;>;"
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/StrategyCollection;

    .line 415
    .local v2, "sc":Lanet/channel/strategy/StrategyCollection;
    if-nez v2, :cond_3

    .line 416
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    check-cast v2, Lanet/channel/strategy/StrategyCollection;

    .line 418
    .restart local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_3
    if-eqz v2, :cond_2

    .line 419
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/HorseRideStrategy;

    iget-wide v6, v2, Lanet/channel/strategy/StrategyCollection;->lastHorseRideTime:J

    iput-wide v6, v3, Lanet/channel/strategy/HorseRideStrategy;->lastHorseRideTime:J

    goto :goto_1

    .line 422
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/HorseRideStrategy;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 423
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 422
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 423
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public notifyConnEvent(Ljava/lang/String;Ljy;Lanet/channel/entity/EventType;Lip;)V
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "connStrategy"    # Ljy;
    .param p3, "eventType"    # Lanet/channel/entity/EventType;
    .param p4, "event"    # Lip;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 386
    invoke-static {v7}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const-string/jumbo v1, "awcn.StrategyTable"

    const-string/jumbo v2, "[notifyConnEvent]"

    const/4 v3, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Host"

    aput-object v6, v4, v5

    aput-object p1, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "IConnStrategy"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "eventType"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p3, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    :cond_0
    invoke-interface {p2}, Ljy;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lanet/channel/strategy/StrategyTable;->handlePreIp(Lanet/channel/entity/EventType;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v2

    .line 395
    :try_start_0
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 396
    :try_start_1
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 397
    .local v0, "sc":Lanet/channel/strategy/StrategyCollection;
    if-nez v0, :cond_1

    .line 398
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sc":Lanet/channel/strategy/StrategyCollection;
    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 400
    .restart local v0    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 402
    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {v0, p2, p3, p4}, Lanet/channel/strategy/StrategyCollection;->notifyConnEvent(Ljy;Lanet/channel/entity/EventType;Lip;)V

    .line 405
    :cond_2
    return-void

    .line 400
    .end local v0    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 401
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public queryByHost(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljy;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lku;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    :cond_0
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 187
    :goto_0
    return-object v4

    .line 163
    :cond_1
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->checkInitHost()V

    .line 166
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v5

    .line 167
    :try_start_0
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v4, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    .line 168
    .local v1, "sc":Lanet/channel/strategy/StrategyCollection;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz v1, :cond_3

    .line 170
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {p0, v4}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/util/Map;)V

    .line 187
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->queryStrategyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 168
    .end local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 174
    .restart local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_3
    const/4 v3, 0x0

    .line 175
    .local v3, "send":Z
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v5

    .line 176
    :try_start_2
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    move-object v1, v0

    .line 177
    if-nez v1, :cond_4

    .line 178
    new-instance v2, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v2, p1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    .end local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    .local v2, "sc":Lanet/channel/strategy/StrategyCollection;
    :try_start_3
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 180
    const/4 v3, 0x1

    move-object v1, v2

    .line 182
    .end local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    .restart local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_4
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 183
    if-eqz v3, :cond_2

    .line 184
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/lang/String;Z)V

    goto :goto_1

    .line 182
    :catchall_1
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .end local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    .restart local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    .restart local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    goto :goto_2
.end method

.method public querySchemeByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 203
    :goto_0
    return-object v2

    .line 195
    :cond_0
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v4

    .line 196
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    .line 197
    .local v1, "sc":Lanet/channel/strategy/StrategyCollection;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    if-nez v1, :cond_1

    .line 199
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v4

    .line 200
    :try_start_1
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    move-object v1, v0

    .line 201
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v1, Lanet/channel/strategy/StrategyCollection;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 197
    .end local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 201
    .restart local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_2
    move-object v2, v3

    .line 203
    goto :goto_0
.end method

.method public sendAmdcRequest(Ljava/lang/String;Z)V
    .locals 13
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    .line 289
    invoke-static {}, Lic;->j()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->f()Z

    move-result v5

    if-nez v5, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-static {}, Lic;->k()I

    move-result v2

    .line 294
    .local v2, "level":I
    if-eq v2, v12, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "hostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-ne v2, v11, :cond_3

    .line 300
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "hostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 301
    .restart local v1    # "hostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_2
    :goto_1
    const-string/jumbo v5, "awcn.StrategyTable"

    const-string/jumbo v6, "sendAmdcRequest"

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "hosts"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const-string/jumbo v9, "uniqueId"

    aput-object v9, v8, v11

    iget-object v9, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    aput-object v9, v8, v12

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3043
    sget-object v5, Lkn$b;->a:Lkn;

    .line 331
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->buildPreIpString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lanet/channel/strategy/StrategyTable;->configVersion:I

    invoke-virtual {v5, v1, v6, v7}, Lkn;->a(Ljava/util/Set;Ljava/lang/String;I)V

    goto :goto_0

    .line 304
    :cond_3
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v6

    .line 305
    :try_start_0
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v5, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/StrategyCollection;

    .line 306
    .local v3, "sc":Lanet/channel/strategy/StrategyCollection;
    if-eqz v3, :cond_5

    .line 307
    if-nez p2, :cond_4

    invoke-virtual {v3}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 308
    :cond_4
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-direct {p0, v5}, Lanet/channel/strategy/StrategyTable;->getNeedUpdateHost(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 309
    invoke-virtual {v3}, Lanet/channel/strategy/StrategyCollection;->getHostWithEtag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_5
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 313
    if-nez v3, :cond_2

    .line 314
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v6

    .line 315
    :try_start_1
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    move-object v3, v0

    .line 316
    if-nez v3, :cond_6

    .line 317
    new-instance v4, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v4, p1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .end local v3    # "sc":Lanet/channel/strategy/StrategyCollection;
    .local v4, "sc":Lanet/channel/strategy/StrategyCollection;
    :try_start_2
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, v4

    .line 321
    .end local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    .restart local v3    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_6
    if-nez p2, :cond_7

    :try_start_3
    invoke-virtual {v3}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 322
    :cond_7
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-direct {p0, v5}, Lanet/channel/strategy/StrategyTable;->getNeedUpdateHost(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 323
    invoke-virtual {v3}, Lanet/channel/strategy/StrategyCollection;->getHostWithEtag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_8
    monitor-exit v6

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 312
    .end local v3    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 325
    .restart local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    .restart local v3    # "sc":Lanet/channel/strategy/StrategyCollection;
    goto :goto_2
.end method

.method protected sendAmdcRequest(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    const/4 v7, 0x2

    .line 338
    invoke-static {}, Lic;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lic;->k()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    monitor-enter p1

    .line 346
    :try_start_0
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyTable;->getNeedUpdateHost(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 347
    .local v0, "hostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-static {v7}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    const-string/jumbo v1, "awcn.StrategyTable"

    const-string/jumbo v2, "sendAmdcRequest"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "hosts:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string/jumbo v5, "uniqueId"

    aput-object v5, v4, v7

    const/4 v5, 0x3

    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4043
    sget-object v1, Lkn$b;->a:Lkn;

    .line 353
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->buildPreIpString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lanet/channel/strategy/StrategyTable;->configVersion:I

    invoke-virtual {v1, v0, v2, v3}, Lkn;->a(Ljava/util/Set;Ljava/lang/String;I)V

    goto :goto_0

    .line 347
    .end local v0    # "hostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\nuniqueId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "--------hot domains:------------------------------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v4

    .line 141
    :try_start_0
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v3}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/StrategyCollection;

    invoke-virtual {v3}, Lanet/channel/strategy/StrategyCollection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    const-string/jumbo v3, "\n--------cold domains:------------------------------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v4

    .line 147
    :try_start_2
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/StrategyCollection;

    invoke-virtual {v3}, Lanet/channel/strategy/StrategyCollection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 150
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Lke$c;)V
    .locals 14
    .param p1, "httpDnsResponse"    # Lke$c;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 211
    const-string/jumbo v5, "awcn.StrategyTable"

    const-string/jumbo v6, "update strategyTable with httpDns response"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v5, v6, v13, v7}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    :try_start_0
    iget-object v5, p1, Lke$c;->a:Ljava/lang/String;

    iput-object v5, p0, Lanet/channel/strategy/StrategyTable;->clientIp:Ljava/lang/String;

    .line 214
    iget v5, p1, Lke$c;->f:I

    iput v5, p0, Lanet/channel/strategy/StrategyTable;->configVersion:I

    .line 215
    iget-object v1, p1, Lke$c;->c:[Lke$b;

    .line 216
    .local v1, "dnsInfos":[Lke$b;
    if-nez v1, :cond_1

    .line 262
    .end local v1    # "dnsInfos":[Lke$b;
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local v1    # "dnsInfos":[Lke$b;
    :cond_1
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :try_start_1
    iget-object v7, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_2
    array-length v5, v1

    if-ge v3, v5, :cond_8

    .line 223
    aget-object v0, v1, v3

    .line 224
    .local v0, "dnsInfo":Lke$b;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lke$b;->a:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 228
    iget-boolean v5, v0, Lke$b;->m:Z

    if-eqz v5, :cond_3

    .line 229
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v8, v0, Lke$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 230
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    iget-object v8, v0, Lke$b;->a:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 235
    :cond_3
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v8, v0, Lke$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/StrategyCollection;

    .line 236
    .local v4, "sc":Lanet/channel/strategy/StrategyCollection;
    if-eqz v4, :cond_5

    .line 237
    iget v5, v0, Lke$b;->p:I

    if-nez v5, :cond_4

    .line 238
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    iget-object v8, v0, Lke$b;->a:Ljava/lang/String;

    iget-object v9, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v10, v0, Lke$b;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_4
    :goto_3
    invoke-virtual {v4, v0}, Lanet/channel/strategy/StrategyCollection;->update(Lke$b;)V

    goto :goto_2

    .line 254
    .end local v0    # "dnsInfo":Lke$b;
    .end local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5

    .line 255
    .end local v3    # "i":I
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 256
    .end local v1    # "dnsInfos":[Lke$b;
    :catch_0
    move-exception v2

    .line 257
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "awcn.StrategyTable"

    const-string/jumbo v6, "fail to update strategyTable"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v5, v6, v13, v2, v7}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 259
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_4
    invoke-static {v12}, Lanet/channel/util/ALog;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 260
    const-string/jumbo v5, "awcn.StrategyTable"

    invoke-virtual {p0}, Lanet/channel/strategy/StrategyTable;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v5, v6, v13, v7}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    .restart local v0    # "dnsInfo":Lke$b;
    .restart local v1    # "dnsInfos":[Lke$b;
    .restart local v3    # "i":I
    .restart local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_5
    :try_start_5
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    iget-object v8, v0, Lke$b;->a:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    check-cast v4, Lanet/channel/strategy/StrategyCollection;

    .line 242
    .restart local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    if-eqz v4, :cond_6

    .line 243
    iget v5, v0, Lke$b;->p:I

    if-ne v5, v12, :cond_4

    .line 244
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v8, v0, Lke$b;->a:Ljava/lang/String;

    iget-object v9, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    iget-object v10, v0, Lke$b;->a:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 247
    :cond_6
    new-instance v4, Lanet/channel/strategy/StrategyCollection;

    .end local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    iget-object v5, v0, Lke$b;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    iget v5, v0, Lke$b;->p:I

    if-ne v5, v12, :cond_7

    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    :goto_5
    iget-object v8, v0, Lke$b;->a:Ljava/lang/String;

    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    goto :goto_5

    .line 254
    .end local v0    # "dnsInfo":Lke$b;
    .end local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_8
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 255
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4
.end method
