.class public Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;
.super Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;
.source "H5AppConfigDao.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5AppConfigDao"

.field private static final appPoolCapacity:I = 0x3

.field private static instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao; = null

.field private static final limitReqRate:D = 600.0

.field private static final updateReqRate:D = 1800.0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    .param p2, "x2"    # Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->makeConfig(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    .line 47
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static jsonStrToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p0, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 558
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 579
    :cond_0
    return-object v5

    .line 562
    :cond_1
    :try_start_0
    invoke-static {p0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 568
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 571
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 572
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 573
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 574
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 576
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, "value":Ljava/lang/String;
    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 563
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "H5AppConfigDao"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 565
    const/4 v2, 0x0

    .line 566
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getInstance()Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->cleanAllFailList()V

    goto :goto_0
.end method

.method private makeConfig(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    .locals 2
    .param p1, "dbBean"    # Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    .param p2, "saveBean"    # Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    new-instance p1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    .end local p1    # "dbBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    invoke-direct {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;-><init>()V

    .line 348
    .restart local p1    # "dbBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getApp_pool_limit()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setApp_pool_limit(I)V

    .line 349
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getNormalReqRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setNormalReqRate(D)V

    .line 350
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getLimitReqRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setLimitReqRate(D)V

    .line 351
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setExtra(Ljava/lang/String;)V

    .line 352
    return-object p1
.end method

.method private static mapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 584
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 585
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 586
    .local v0, "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 587
    .local v1, "appId":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 588
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 589
    invoke-virtual {v2, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 592
    .end local v0    # "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "appId":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 593
    const-string/jumbo v4, ""

    .line 599
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    return-object v4

    .line 595
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 599
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cleanAllFailList()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$4;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 143
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public cleanFailedRequestAppList(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    .local p1, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 70
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 72
    .end local v0    # "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public createOrUpdateAppPoolLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    const-string/jumbo v1, "H5AppConfigDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateAppPoolLimit:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$8;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$8;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;I)V

    .line 260
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method public createOrUpdateConfig(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)V
    .locals 8
    .param p1, "saveBean"    # Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 320
    .local v2, "time":J
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$11;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$11;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)V

    .line 339
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v1, "H5AppConfigDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "createOrUpdateConfig cost "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public createOrUpdateExtra(Ljava/lang/String;)V
    .locals 8
    .param p1, "extra"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 408
    .local v2, "time":J
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$14;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$14;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;Ljava/lang/String;)V

    .line 427
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 428
    const-string/jumbo v1, "H5AppConfigDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "createOrUpdateExtra extra:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public createOrUpdateLimitReqRate(D)V
    .locals 5
    .param p1, "rate"    # D

    .prologue
    .line 440
    const-string/jumbo v1, "H5AppConfigDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateLimitReqRate rate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$15;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;D)V

    .line 462
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 463
    return-void
.end method

.method public createOrUpdateNormalReqRate(D)V
    .locals 5
    .param p1, "rate"    # D

    .prologue
    .line 293
    const-string/jumbo v1, "H5AppConfigDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateNormalReqRate rate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$10;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;D)V

    .line 314
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method public createOrUpdateStrictReqRate(I)V
    .locals 4
    .param p1, "rate"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 357
    const-string/jumbo v1, "H5AppConfigDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createOrUpdateStrictReqRate rate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$12;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$12;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;I)V

    .line 378
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 379
    return-void
.end method

.method public getAppPoolLimit()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 473
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$16;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$16;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 489
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 490
    .local v1, "limit":I
    if-nez v1, :cond_0

    .line 491
    const/4 v1, 0x3

    .line 494
    :cond_0
    const-string/jumbo v2, "H5AppConfigDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getAppPoolLimit limit:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return v1
.end method

.method public getExtra()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 383
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$13;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$13;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 399
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 401
    .local v1, "extra":Ljava/lang/String;
    const-string/jumbo v2, "H5AppConfigDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getExtra :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-object v1
.end method

.method public getFailedRequestAppList()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 105
    .local v2, "time":J
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$3;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 120
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, "list":Ljava/lang/String;
    const-string/jumbo v4, "H5AppConfigDao"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getFailedRequestAppList:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->jsonStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    return-object v4
.end method

.method public getLastAllUpdateTime()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$7;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$7;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 232
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, "outOfTime":Ljava/lang/String;
    const-string/jumbo v2, "H5AppConfigDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getLastAllUpdateTime :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-object v1
.end method

.method public getLimitReqRate()D
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$6;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 203
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Double;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 204
    .local v2, "rate":D
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 205
    const-wide v2, 0x4082c00000000000L    # 600.0

    .line 209
    :cond_0
    const-string/jumbo v1, "H5AppConfigDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getLimitReqRate limit:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-wide v2
.end method

.method public getNormalReqRate()D
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 154
    .local v4, "time":J
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$5;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 170
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Double;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 171
    .local v2, "rate":D
    const-wide/16 v6, 0x0

    cmpl-double v1, v2, v6

    if-nez v1, :cond_0

    .line 172
    const-wide v2, 0x409c200000000000L    # 1800.0

    .line 175
    :cond_0
    const-string/jumbo v1, "H5AppConfigDao"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getNormalReqRate limit:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-wide v2
.end method

.method public getStrictReqRate()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 503
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$17;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$17;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 519
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 521
    .local v1, "limit":I
    const-string/jumbo v2, "H5AppConfigDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getStrictReqRate :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return v1
.end method

.method public hasSetConfig()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 266
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$9;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$9;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 283
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultConfig()V
    .locals 1

    .prologue
    .line 526
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$18;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$18;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V

    .line 550
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    .line 551
    return-void
.end method

.method public setFailedRequestAppList(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    .local p1, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "failList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$2;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$2;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;Ljava/lang/String;)V

    .line 98
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    goto :goto_0
.end method
