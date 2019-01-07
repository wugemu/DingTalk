.class public Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;
.super Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;
.source "H5AppInstallDao.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5AppInstallDao"

.field private static instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;-><init>()V

    .line 30
    return-void
.end method

.method public static declared-synchronized getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    .line 36
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->instance:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createOrUpdateAppInstalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 45
    .local v6, "time":J
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 75
    .local v1, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public deleteAppInstall(Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 169
    .local v2, "time":J
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$4;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$4;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;Ljava/lang/String;J)V

    .line 188
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    const/4 v1, 0x0

    .line 160
    :goto_0
    return-object v1

    .line 127
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 128
    .local v2, "time":J
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$3;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;Ljava/lang/String;)V

    .line 156
    .local v0, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, "installVersion":Ljava/lang/String;
    const-string/jumbo v4, "H5AppInstallDao"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "findInstallAppVersion  userId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " appId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " installVersion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cost"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInstalledApp()Ljava/util/Map;
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
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 81
    .local v6, "time":J
    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$2;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;)V

    .line 94
    .local v2, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;>;>;"
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 95
    .local v4, "h5AppInstallBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;>;"
    if-nez v4, :cond_1

    .line 96
    const/4 v5, 0x0

    .line 118
    :cond_0
    return-object v5

    .line 98
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 99
    .local v0, "cost":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v5, "installAppList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    .line 101
    .local v3, "h5AppInstallBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
    const-string/jumbo v9, "H5AppInstallDao"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getInstalledApp: userId : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " appId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 102
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->getInstall_appId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " version:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 103
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->getInstall_version()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " allCost:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 101
    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->getInstall_appId()Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->getInstall_version()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->getInstallPath()Ljava/lang/String;

    move-result-object v11

    .line 105
    invoke-static {v9, v10, v11}, Lcom/alipay/mobile/nebulaappcenter/util/H5AppGlobal;->hasInstallFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 109
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->getInstall_appId()Ljava/lang/String;

    move-result-object v9

    .line 110
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->getInstall_version()Ljava/lang/String;

    move-result-object v10

    .line 109
    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_2
    const-string/jumbo v9, "H5AppInstallDao"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->getInstall_appId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not install delete form db"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->getInstall_appId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->deleteAppInstall(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
