.class public Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;
.super Lcom/alipay/mobile/h5container/service/H5AppCenterService;
.source "H5AppCenterServiceImpl.java"


# instance fields
.field private mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;-><init>()V

    .line 19
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    return-void
.end method


# virtual methods
.method public clearAppAmrPackage()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->clearAppAmrPackage()V

    .line 66
    return-void
.end method

.method public clearAppUnzipPackage(J)V
    .locals 1
    .param p1, "expiredTime"    # J

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->clearAppUnzipPackage(J)V

    .line 71
    return-void
.end method

.method public getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    return-object v0
.end method

.method public getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPresetApp(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Liox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Liox;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->loadPresetApp(Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public loadPresetAppList(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->loadPresetAppList(Ljava/io/InputStream;)V

    .line 29
    return-void
.end method

.method public loadPresetAppNow(Ljava/util/List;Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;)V
    .locals 1
    .param p2, "h5LoadPresetListen"    # Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Liox;",
            ">;",
            "Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Liox;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->loadPresetAppNow(Ljava/util/List;Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;)V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->onCreate()V

    .line 24
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->onDestroy()V

    .line 34
    return-void
.end method

.method public declared-synchronized setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V
    .locals 1
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "forceSync"    # Z

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZ)V
    .locals 1
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "forceSync"    # Z
    .param p3, "downLoadAmr"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZ)V

    .line 104
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZZ)V
    .locals 1
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "forceSync"    # Z
    .param p3, "downLoadAmr"    # Z
    .param p4, "downloadRandom"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZZ)V

    .line 110
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;Z)V
    .locals 1
    .param p1, "appRes"    # Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .param p2, "forceSync"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;Z)V

    .line 76
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZ)V
    .locals 1
    .param p1, "appRes"    # Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .param p2, "forceSync"    # Z
    .param p3, "downLoadAmr"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZ)V

    .line 83
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZ)V
    .locals 1
    .param p1, "appRes"    # Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .param p2, "forceSync"    # Z
    .param p3, "downLoadAmr"    # Z
    .param p4, "downloadRandom"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZ)V

    .line 89
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZLjava/lang/String;)V
    .locals 6
    .param p1, "appRes"    # Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .param p2, "forceSync"    # Z
    .param p3, "downLoadAmr"    # Z
    .param p4, "downloadRandom"    # Z
    .param p5, "scene"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/H5AppCenterServiceImpl;->mNebulaAppCenterService:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZLjava/lang/String;)V

    .line 94
    return-void
.end method
