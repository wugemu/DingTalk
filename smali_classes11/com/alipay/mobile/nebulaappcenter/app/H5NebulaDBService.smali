.class public Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;
.super Ljava/lang/Object;
.source "H5NebulaDBService.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;
    }
.end annotation


# static fields
.field public static LIMIT_CODE:I

.field private static h5NebulaDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;


# instance fields
.field private extraCache:Ljava/lang/String;

.field private isLimitCache:Ljava/lang/Boolean;

.field private limitRateCache:D

.field private normalRateCache:D

.field private poolLimitCache:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    const/16 v0, 0x400

    sput v0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->LIMIT_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->poolLimitCache:I

    .line 312
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->isLimitCache:Ljava/lang/Boolean;

    .line 352
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->extraCache:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->h5NebulaDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->h5NebulaDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    .line 32
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->h5NebulaDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cleanAllFailList()V
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->cleanAllFailList()V

    .line 296
    return-void
.end method

.method public cleanAppLimit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->cleanAppLimit(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public cleanFailedRequestAppList(Ljava/util/Map;)V
    .locals 1
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

    .prologue
    .line 200
    .local p1, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->cleanFailedRequestAppList(Ljava/util/Map;)V

    .line 202
    return-void
.end method

.method public clearAllTable(Lcom/alipay/mobile/nebula/appcenter/H5AppDBService$ClearTableCallback;)V
    .locals 1
    .param p1, "clearTableCallback"    # Lcom/alipay/mobile/nebula/appcenter/H5AppDBService$ClearTableCallback;

    .prologue
    .line 247
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->getOnLineDBHelperInstance()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->clearAllTable()V

    .line 250
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->devDBIsUsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->getDevDBHelperInstance()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->clearAllTable()V

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    .line 255
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService$ClearTableCallback;->getCleared()V

    .line 257
    :cond_1
    return-void
.end method

.method public clearPresetMemory()V
    .locals 0

    .prologue
    .line 282
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->clearPresetMemory()V

    .line 283
    return-void
.end method

.method public clearUpdateTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->clearUpdateTime(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public createOrUpdateAppPoolLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->poolLimitCache:I

    .line 220
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->createOrUpdateAppPoolLimit(I)V

    .line 221
    return-void
.end method

.method public createOrUpdateConfig(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)V
    .locals 2
    .param p1, "saveBean"    # Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getApp_pool_limit()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->poolLimitCache:I

    .line 346
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getNormalReqRate()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->normalRateCache:D

    .line 347
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->extraCache:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->getLimitReqRate()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->limitRateCache:D

    .line 349
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->createOrUpdateConfig(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)V

    .line 350
    return-void
.end method

.method public createOrUpdateExtra(Ljava/lang/String;)V
    .locals 1
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->extraCache:Ljava/lang/String;

    .line 364
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->createOrUpdateExtra(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public createOrUpdateLimitReqRate(D)V
    .locals 1
    .param p1, "rate"    # D

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->limitRateCache:D

    .line 111
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->createOrUpdateLimitReqRate(D)V

    .line 112
    return-void
.end method

.method public createOrUpdateNormalReqRate(D)V
    .locals 1
    .param p1, "rate"    # D

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->normalRateCache:D

    .line 194
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->createOrUpdateNormalReqRate(D)V

    .line 195
    return-void
.end method

.method public deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public deleteAppInstall(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->deleteAppInstall(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllApp()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 84
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAllApp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllHighestAppInfo()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 336
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAllHighestAppInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllHighestAppVersion()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 89
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAllHighestAppVersion()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllHighestLocalReportAppVersion()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 94
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAllHighestLocalReportAppVersion()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoAsync(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "h5GetAppInfoListen"    # Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    const-string/jumbo v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public getAppPoolLimit()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->poolLimitCache:I

    if-gtz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getAppPoolLimit()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->poolLimitCache:I

    .line 228
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->poolLimitCache:I

    return v0
.end method

.method public getCanDeleteAppPooIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .prologue
    .line 287
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getCanDeleteAppPooIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfigExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->extraCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 357
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->extraCache:Ljava/lang/String;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->extraCache:Ljava/lang/String;

    return-object v0
.end method

.method public getFailedRequestAppList()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 211
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getFailedRequestAppList()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHighestAppVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getHighestAppVersion(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 127
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 130
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledApp()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 79
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->getInstalledApp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLastAllUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getLastAllUpdateTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLimitReqRate()D
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->limitRateCache:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getLimitReqRate()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->limitRateCache:D

    .line 105
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->limitRateCache:D

    return-wide v0
.end method

.method public getMatchHighestAppVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getMatchHighestAppVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 136
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 139
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNormalReqRate()D
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->normalRateCache:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getNormalReqRate()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->normalRateCache:D

    .line 188
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->normalRateCache:D

    return-wide v0
.end method

.method public getStrictReqRate()I
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getStrictReqRate()I

    move-result v0

    return v0
.end method

.method public getUpdateAppTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getUpdateAppTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSetConfig()Z
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->hasSetConfig()Z

    move-result v0

    return v0
.end method

.method public insertInstalledAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->insertInstalledAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public isLimitApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->isLimitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public markNoDeleteAppVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->markNoDeleteAppVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public onSwitchAccount()V
    .locals 0

    .prologue
    .line 266
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->onSwitchAccount()V

    .line 267
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->updateSwitch()V

    .line 268
    return-void
.end method

.method public rpcIsLimit()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->isLimitCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 324
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getStrictReqRate()I

    move-result v0

    sget v1, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->LIMIT_CODE:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->isLimitCache:Ljava/lang/Boolean;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->isLimitCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 324
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V
    .locals 1
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "forceSync"    # Z

    .prologue
    .line 164
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 165
    return-void
.end method

.method public saveAppInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->saveAppInfoList(Ljava/util/List;)V

    .line 174
    return-void
.end method

.method public setDefaultConfig()V
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->setDefaultConfig()V

    .line 292
    return-void
.end method

.method public setFailedRequestAppList(Ljava/util/Map;)V
    .locals 1
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

    .prologue
    .line 206
    .local p1, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->setFailedRequestAppList(Ljava/util/Map;)V

    .line 207
    return-void
.end method

.method public setRpcIsLimit(Z)V
    .locals 2
    .param p1, "isLimit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 316
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->isLimitCache:Ljava/lang/Boolean;

    .line 317
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    move-result-object v1

    if-eqz p1, :cond_0

    sget v0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->LIMIT_CODE:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->createOrUpdateStrictReqRate(I)V

    .line 318
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unMarkNoDeleteAppVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->unMarkNoDeleteAppVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public updateAppLimit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->updateAppLimit(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public updateCurrentAppUpdateTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->updateUpdateTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public updateUnavailableReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    const-string/jumbo v1, "unavailable_reason"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->updateAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public updateUpdateTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->updateUpdateTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method
