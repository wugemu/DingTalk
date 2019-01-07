.class public Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;
.super Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;
.source "H5NebulaAppDao.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5NebulaAppDao"

.field private static instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;-><init>()V

    return-void
.end method

.method private checkVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getHighestAppVersion(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 793
    :goto_0
    return-object v0

    .line 789
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getMatchHighestAppVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    goto :goto_0

    .line 793
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableUseCacheInTiny()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 56
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v2, "h5_enableUseCacheInTiny"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const/4 v2, 0x0

    .line 62
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    .line 47
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;
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

.method private saveAppInfoList(Ljava/util/List;Z)V
    .locals 3
    .param p2, "useDev"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 334
    .local p1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDBHelper(Z)Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 339
    .local v0, "h5AppInfoDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/util/List;Lcom/j256/ormlite/dao/Dao;Z)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v0    # "h5AppInfoDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 362
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5NebulaAppDao"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private useDevDB(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "scene"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->isDevAppInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanAppLimit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 688
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 689
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 690
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_limit:I

    .line 691
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 693
    :cond_0
    return-void
.end method

.method public clearUpdateTime(Ljava/lang/String;)V
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 883
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 928
    :goto_0
    return-void

    .line 886
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 888
    .local v2, "time":J
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;)V

    .line 925
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->executeDB(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;Z)Ljava/lang/Object;

    .line 926
    const-string/jumbo v1, "H5NebulaAppDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "clearUpdateTime "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cost : "

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

    goto :goto_0
.end method

.method public deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 372
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$5;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 396
    .local v1, "useDev":Z
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->executeDB(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;Z)Ljava/lang/Object;

    .line 398
    if-nez v1, :cond_0

    .line 399
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->getInstance()Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->deleteAppInfoFromMemory(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_0
    return-void
.end method

.method public getAllApp()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 528
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$8;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$8;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;)V

    .line 538
    .local v1, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;>;"
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v4

    .line 540
    .local v4, "useDev":Z
    invoke-virtual {p0, v1, v4}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->executeDB(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 541
    .local v3, "h5AppPoolBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    if-nez v3, :cond_1

    .line 556
    :cond_0
    return-object v0

    .line 544
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v0, "appList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 546
    .local v2, "h5AppPoolBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 547
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 548
    .local v5, "versionList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->beanToInfo(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 551
    .end local v5    # "versionList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .restart local v5    # "versionList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->beanToInfo(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAllHighestAppInfo()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 596
    .local v6, "time":J
    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$10;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$10;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;)V

    .line 605
    .local v2, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;>;"
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 606
    .local v4, "h5AppPoolBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    if-nez v4, :cond_0

    .line 607
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    .line 609
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 610
    .local v0, "appList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 611
    .local v3, "h5AppPoolBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 612
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 614
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 615
    .local v5, "mapVersion":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v5, :cond_1

    .line 616
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 618
    .local v1, "code":I
    if-lez v1, :cond_1

    .line 620
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->beanToInfo(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 625
    .end local v1    # "code":I
    .end local v5    # "mapVersion":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->beanToInfo(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 629
    .end local v3    # "h5AppPoolBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    :cond_3
    const-string/jumbo v8, "H5NebulaAppDao"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getAllHighestAppInfo cost:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAllHighestAppVersion()Ljava/util/Map;
    .locals 12
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 562
    .local v6, "time":J
    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$9;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$9;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;)V

    .line 571
    .local v2, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;>;"
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 572
    .local v4, "h5AppPoolBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    if-nez v4, :cond_0

    .line 573
    const/4 v0, 0x0

    .line 591
    :goto_0
    return-object v0

    .line 575
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 576
    .local v0, "appList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 577
    .local v3, "h5AppPoolBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 578
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 580
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 581
    .local v5, "mapVersion":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 582
    .local v1, "code":I
    if-lez v1, :cond_1

    .line 583
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 586
    .end local v1    # "code":I
    .end local v5    # "mapVersion":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 590
    .end local v3    # "h5AppPoolBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    :cond_3
    const-string/jumbo v8, "H5NebulaAppDao"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getAllHighestAppVersion cost:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAllHighestLocalReportAppVersion()Ljava/util/Map;
    .locals 12
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 636
    .local v6, "time":J
    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$11;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$11;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;)V

    .line 646
    .local v2, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;>;"
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 647
    .local v4, "h5AppPoolBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    if-nez v4, :cond_0

    .line 648
    const/4 v0, 0x0

    .line 668
    :goto_0
    return-object v0

    .line 650
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 651
    .local v0, "appList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 652
    .local v3, "h5AppPoolBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 653
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 655
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 656
    .local v5, "mapVersion":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 658
    .local v1, "code":I
    if-lez v1, :cond_1

    .line 660
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 663
    .end local v1    # "code":I
    .end local v5    # "mapVersion":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 667
    .end local v3    # "h5AppPoolBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    :cond_3
    const-string/jumbo v8, "H5NebulaAppDao"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getAllHighestLocalReportAppVersion cost:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "ver"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v1, v6

    .line 222
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "h5_use_preset_pkg_info"

    .line 78
    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 79
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->getPresetAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 80
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_2

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 81
    invoke-static {v6, v0, v9}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->infoToBean(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    move-result-object v4

    .line 82
    .local v4, "h5AppInfoBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    const-string/jumbo v8, "H5NebulaAppDao"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getAppInfo from presetInfo : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 82
    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v4}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->beanToInfo(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v6

    .line 85
    .local v6, "tem":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    const-string/jumbo v8, "yes"

    iput-object v8, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fromPreset:Ljava/lang/String;

    move-object v1, v6

    .line 86
    goto :goto_0

    .line 90
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v4    # "h5AppInfoBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    .end local v6    # "tem":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v7

    .line 96
    .local v7, "useDev":Z
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->checkVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v3

    .line 98
    .local v3, "finalVersion":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v3, :cond_4

    .line 99
    if-nez v7, :cond_3

    .line 100
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->getInstance()Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->saveAppInfoToMemory(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    :cond_3
    move-object v1, v3

    .line 102
    goto :goto_0

    .line 110
    :cond_4
    if-nez v7, :cond_5

    .line 111
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->getInstance()Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->getAppInfoFromMemory(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 112
    .local v1, "cache":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v1, :cond_5

    .line 113
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->enableUseCacheInTiny()Z

    move-result v8

    if-nez v8, :cond_0

    .line 124
    .end local v1    # "cache":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v1, v6

    .line 125
    goto/16 :goto_0

    .line 128
    :cond_6
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isNativeApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v1, v6

    .line 129
    goto/16 :goto_0

    .line 133
    :cond_7
    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v2, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    invoke-virtual {p0, v2, v7}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->executeDB(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 204
    .local v5, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v7, :cond_8

    .line 205
    if-eqz v5, :cond_a

    .line 206
    const-string/jumbo v8, "H5NebulaAppDao"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getAppInfo useDevDB"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_8
    :goto_1
    if-nez v7, :cond_9

    .line 213
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->getInstance()Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->saveAppInfoToMemory(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 216
    :cond_9
    if-eqz v5, :cond_b

    .line 217
    const-string/jumbo v8, "H5NebulaAppDao"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " getNebulaAppInfo from getAppInfo  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v1, v5

    .line 222
    goto/16 :goto_0

    .line 208
    :cond_a
    const-string/jumbo v8, "H5NebulaAppDao"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getAppInfo useDevDB"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " appInfo is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :cond_b
    const-string/jumbo v8, "H5NebulaAppDao"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " getNebulaAppInfo from getAppInfo is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getCanDeleteAppPooIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-object v1

    .line 410
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->enableNotQueryInstallApp()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 411
    const-string/jumbo v7, ""

    .line 416
    .local v7, "installVersion":Ljava/lang/String;
    :goto_1
    new-instance v5, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$6;

    invoke-direct {v5, p0, v7, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$6;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .local v5, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;>;"
    const/4 v10, 0x0

    .line 448
    .local v10, "useDev":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 449
    const/4 v10, 0x1

    .line 452
    :cond_2
    invoke-virtual {p0, v5, v10}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->executeDB(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;Z)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 453
    .local v8, "listAppPool":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    if-eqz v8, :cond_0

    .line 457
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$7;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$7;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;)V

    .line 464
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 465
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_0

    .line 469
    const-string/jumbo v9, ""

    .line 470
    .local v9, "log":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 471
    .local v6, "h5NebulaAppBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 472
    goto :goto_2

    .line 413
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .end local v5    # "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;>;"
    .end local v6    # "h5NebulaAppBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    .end local v7    # "installVersion":Ljava/lang/String;
    .end local v8    # "listAppPool":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .end local v9    # "log":Ljava/lang/String;
    .end local v10    # "useDev":Z
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "installVersion":Ljava/lang/String;
    goto :goto_1

    .line 475
    .restart local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .restart local v5    # "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;>;"
    .restart local v8    # "listAppPool":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .restart local v9    # "log":Ljava/lang/String;
    .restart local v10    # "useDev":Z
    :cond_4
    if-eqz v10, :cond_7

    .line 476
    const-class v11, Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;

    .line 477
    .local v3, "debugModeProvider":Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;
    if-eqz v3, :cond_7

    .line 478
    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;->getAppDebugModeAndVersion(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 479
    .local v2, "debugMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 480
    const-string/jumbo v11, "H5NebulaAppDao"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "H5TinyAppDebugMode appId : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " debugMap : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v1, "debugAppPool":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    const-string/jumbo v4, ""

    .line 483
    .local v4, "devLog":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 484
    .restart local v6    # "h5NebulaAppBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 485
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 489
    .end local v6    # "h5NebulaAppBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    :cond_6
    const-string/jumbo v11, "H5NebulaAppDao"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "H5TinyAppDebugMode getCanDeleteAppPooIdList : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 495
    .end local v1    # "debugAppPool":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .end local v2    # "debugMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "debugModeProvider":Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;
    .end local v4    # "devLog":Ljava/lang/String;
    :cond_7
    const-string/jumbo v11, "H5NebulaAppDao"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " getCanDeleteAppPooIdList "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    .line 498
    goto/16 :goto_0
.end method

.method public getHighestAppVersion(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 729
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v6

    .line 782
    :goto_0
    return-object v0

    .line 732
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isNativeApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v6

    .line 733
    goto :goto_0

    .line 736
    :cond_1
    const/4 v0, 0x0

    .line 737
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    new-instance v3, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$12;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$12;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;)V

    .line 756
    .local v3, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;>;"
    const/4 v5, 0x0

    .line 757
    .local v5, "useDev":Z
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 758
    const/4 v5, 0x1

    .line 761
    :cond_2
    invoke-virtual {p0, v3, v5}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->executeDB(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 762
    .local v4, "listAppPool":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    if-nez v4, :cond_3

    move-object v0, v6

    .line 763
    goto :goto_0

    .line 766
    :cond_3
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$13;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$13;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;)V

    .line 772
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 773
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    move-object v0, v6

    .line 774
    goto :goto_0

    .line 776
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-static {v6}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->beanToInfo(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 777
    const-string/jumbo v6, "H5NebulaAppDao"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " getNebulaAppInfo from getHighestAppVersion  appId: version:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .end local v4    # "listAppPool":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    :catch_0
    move-exception v2

    .line 779
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5NebulaAppDao"

    invoke-static {v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMatchHighestAppVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 13
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 797
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v7, v9

    .line 868
    :goto_0
    return-object v7

    .line 801
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 802
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getHighestAppVersion(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    goto :goto_0

    .line 805
    :cond_1
    const-string/jumbo v10, "*"

    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 806
    const-string/jumbo v10, "H5NebulaAppDao"

    const-string/jumbo v11, "!version.contains *"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v9

    .line 807
    goto :goto_0

    .line 810
    :cond_2
    const-string/jumbo v10, "*"

    invoke-virtual {p2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 811
    .local v4, "index":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 812
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getHighestAppVersion(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    goto :goto_0

    .line 814
    :cond_3
    const/4 v10, 0x0

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {p2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 816
    const/4 v7, 0x0

    .line 819
    .local v7, "matchVersion":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    new-instance v3, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$14;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$14;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;)V

    .line 833
    .local v3, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;>;"
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v8

    .line 837
    .local v8, "useDev":Z
    invoke-virtual {p0, v3, v8}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->executeDB(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 838
    .local v6, "listAppPool":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    if-nez v6, :cond_4

    move-object v7, v9

    .line 839
    goto :goto_0

    .line 842
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 843
    .local v0, "bean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 844
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 845
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 864
    .end local v0    # "bean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .end local v6    # "listAppPool":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .end local v8    # "useDev":Z
    :catch_0
    move-exception v2

    .line 865
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "H5NebulaAppDao"

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 848
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .restart local v6    # "listAppPool":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .restart local v8    # "useDev":Z
    :cond_6
    :try_start_1
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$15;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$15;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;)V

    .line 854
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 855
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_7

    move-object v7, v9

    .line 856
    goto/16 :goto_0

    .line 859
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-static {v9}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->beanToInfo(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    .line 863
    const-string/jumbo v9, "H5NebulaAppDao"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " getNebulaAppInfo from getMatchHighestAppVersion "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getUpdateAppTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 713
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 714
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 715
    const-string/jumbo v1, "H5NebulaAppDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getUpdateAppTime  appId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " updateTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    .line 719
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertInstalledAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 724
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->createOrUpdateAppInstalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method public isLimitApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 699
    const/4 v1, 0x0

    .line 700
    .local v1, "isLimit":Z
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 701
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 702
    iget v3, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_limit:I

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 704
    :cond_0
    :goto_0
    const-string/jumbo v2, "H5NebulaAppDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isLimitApp  appId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isLimit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return v1

    .line 702
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public markNoDeleteAppVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 506
    const-string/jumbo v1, "H5NebulaAppDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "markNoDeleteAppVersion "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 508
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 509
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_mapping:I

    .line 510
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 512
    :cond_0
    return-void
.end method

.method public saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 8
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 268
    .local v2, "time":J
    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->scene:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->useDevDB(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 271
    .local v1, "useDev":Z
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$3;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 295
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->executeDB(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;Z)Ljava/lang/Object;

    .line 296
    const-string/jumbo v4, "H5NebulaAppDao"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saveAppInfo "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cost : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " useDev : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveAppInfoList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    .local p1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const/4 v1, 0x0

    .line 310
    .local v1, "devList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    const/4 v2, 0x0

    .line 311
    .local v2, "onlineList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 312
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->scene:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->useDevDB(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    if-nez v1, :cond_2

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "devList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .restart local v1    # "devList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    :cond_3
    if-nez v2, :cond_4

    .line 319
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "onlineList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .restart local v2    # "onlineList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 325
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->saveAppInfoList(Ljava/util/List;Z)V

    .line 326
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->saveAppInfoList(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public unMarkNoDeleteAppVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 518
    const-string/jumbo v1, "H5NebulaAppDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unMarkNoDeleteAppVersion "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 521
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 522
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_mapping:I

    .line 523
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 525
    :cond_0
    return-void
.end method

.method public updateAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "column"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 230
    .local v8, "time":J
    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->useDevDB(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 232
    .local v10, "useDev":Z
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v10}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->executeDB(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 249
    .local v7, "updated":Ljava/lang/Integer;
    if-nez v7, :cond_0

    const/4 v6, 0x0

    .line 250
    .local v6, "realUpdated":I
    :goto_0
    const-string/jumbo v1, "H5NebulaAppDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update column "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 252
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " appId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " affected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " useDev : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void

    .line 249
    .end local v6    # "realUpdated":I
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0
.end method

.method public updateAppLimit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 676
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 677
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 678
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_limit:I

    .line 679
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 681
    :cond_0
    return-void
.end method

.method public updateUpdateTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 875
    .local v2, "time":J
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 876
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 877
    const-string/jumbo v1, "H5NebulaAppDao"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " updateUpdateTime cost: "

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

    .line 878
    return-void
.end method
