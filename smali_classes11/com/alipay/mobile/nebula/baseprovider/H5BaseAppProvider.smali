.class public abstract Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;
.super Ljava/lang/Object;
.source "H5BaseAppProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5AppProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BaseAppProvider"

.field private static final config:Ljava/lang/String; = "h5_enablestablerpc"


# instance fields
.field public h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

.field public h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

.field public h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

.field public h5Service:Lcom/alipay/mobile/h5container/service/H5Service;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    .line 73
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    if-nez v0, :cond_2

    .line 80
    const-string/jumbo v0, "H5BaseAppProvider"

    const-string/jumbo v1, "h5AppBizRpcProvider == null use H5AppBizHttpProviderImpl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppBizHttpProviderImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppBizHttpProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    .line 84
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p2, "x2"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->updateAppWithReqFinally(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)V

    return-void
.end method

.method private static enableResDegrade()Z
    .locals 3

    .prologue
    .line 1218
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1219
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 1220
    const-string/jumbo v2, "h5_nbresmode"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1222
    const/4 v2, 0x0

    .line 1225
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getInstallPath(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 710
    if-eqz p1, :cond_0

    .line 711
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v0

    .line 712
    .local v0, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 713
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->getInstalledPath()Ljava/lang/String;

    move-result-object v1

    .line 716
    .end local v0    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    .locals 1
    .param p1, "success"    # Z
    .param p2, "isLimit"    # Z

    .prologue
    .line 596
    new-instance v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;-><init>(Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;)V

    .line 597
    .local v0, "h5RpcResult":Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    iput-boolean p2, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;->isLimit:Z

    .line 598
    iput-boolean p1, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;->success:Z

    .line 599
    return-object v0
.end method

.method private getlaunchParams(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1140
    if-nez p1, :cond_0

    .line 1145
    :goto_0
    return-object v1

    .line 1143
    :cond_0
    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1144
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "launchParams"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 1145
    .local v1, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0
.end method

.method private queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 901
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 913
    :cond_0
    :goto_0
    return-object v0

    .line 904
    :cond_1
    if-nez p2, :cond_2

    .line 905
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 907
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    if-eqz v2, :cond_3

    .line 908
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 909
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-nez v0, :cond_0

    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    move-object v0, v1

    .line 913
    goto :goto_0
.end method

.method private updateAppWithReqFinally(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)V
    .locals 24
    .param p1, "param"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startTime"    # J

    .prologue
    .line 520
    const-string/jumbo v19, "H5BaseAppProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "[updateAppWithReqFinally] with param: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getUpdateCallback()Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    move-result-object v15

    .line 525
    .local v15, "process":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    const/4 v14, 0x0

    .line 526
    .local v14, "isLimitReq":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 527
    .local v10, "executeTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getAppMap()Ljava/util/Map;

    move-result-object v5

    .line 530
    .local v5, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 532
    .local v12, "fullRpc":Z
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 533
    :cond_0
    const/4 v12, 0x1

    .line 536
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->makeAppReq(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    move-result-object v6

    .line 538
    .local v6, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 540
    .local v8, "appReqTime":J
    if-eqz v6, :cond_4

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isDownLoadAmr()Z

    move-result v19

    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isDownloadRandom()Z

    move-result v20

    .line 542
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2, v12}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->request(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;ZZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v13

    .line 546
    .local v13, "h5RpcResult":Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    iget-boolean v0, v13, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;->success:Z

    move/from16 v16, v0

    .line 547
    .local v16, "success":Z
    iget-boolean v14, v13, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;->isLimit:Z

    .line 553
    .end local v13    # "h5RpcResult":Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    :goto_0
    const-string/jumbo v19, "H5NebulaAppRpcTimeCost"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "Total Cost:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, p2

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " ThreadBeginExecuteTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v22, v10, p2

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " ReadyAppReqInfo "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v22, v8, v10

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " Rpc+SaveApp:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 553
    invoke-static/range {v19 .. v20}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    if-eqz v15, :cond_2

    .line 560
    move/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V

    .line 564
    :cond_2
    if-eqz v14, :cond_3

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->setRpcIsLimit(Z)V

    .line 567
    if-eqz v5, :cond_3

    .line 568
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 569
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 570
    .local v4, "appId":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 572
    .local v18, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->updateCurrentAppUpdateTime(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 577
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "appReqTime":J
    .end local v10    # "executeTime":J
    .end local v12    # "fullRpc":Z
    .end local v16    # "success":Z
    .end local v18    # "version":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 578
    .local v17, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v19, "H5BaseAppProvider"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    if-eqz v15, :cond_3

    .line 580
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V

    .line 583
    .end local v17    # "throwable":Ljava/lang/Throwable;
    :cond_3
    return-void

    .line 549
    .restart local v5    # "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .restart local v8    # "appReqTime":J
    .restart local v10    # "executeTime":J
    .restart local v12    # "fullRpc":Z
    :cond_4
    const/16 v16, 0x0

    .restart local v16    # "success":Z
    goto/16 :goto_0
.end method


# virtual methods
.method public clearResourceAppCache()V
    .locals 0

    .prologue
    .line 1292
    return-void
.end method

.method public downloadApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 765
    return-void
.end method

.method public downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "h5DownloadCallback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "h5DownloadCallback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
    .param p4, "scene"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 774
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 775
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 776
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v1

    .line 777
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 778
    invoke-interface {v1, p3, p4}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V

    .line 780
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    return-void
.end method

.method public enableMultiProcess(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1231
    const-class v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1232
    .local v2, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v2, :cond_1

    .line 1233
    const-string/jumbo v8, "h5_enableMultiProcess_new"

    invoke-interface {v2, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1234
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v8, "no"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1235
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->isXiaoChengXu(Ljava/lang/String;)Z

    move-result v6

    .line 1266
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 1239
    :cond_1
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->enableMulti(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1241
    const-class v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1242
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1243
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v3, :cond_0

    .line 1244
    const-string/jumbo v8, "h5_open_multi_process"

    invoke-interface {v3, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1245
    .restart local v5    # "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1246
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 1247
    .local v4, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1248
    const-string/jumbo v8, "all"

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1249
    const-string/jumbo v8, "h5_open_multi_process_blacklist"

    .line 1250
    invoke-interface {v3, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1251
    .local v1, "blackList":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 1252
    .local v0, "blackArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1253
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_2
    move v6, v7

    .line 1256
    goto :goto_0

    .line 1258
    .end local v0    # "blackArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "blackList":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    .line 1259
    goto :goto_0
.end method

.method public getAppDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1064
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 1065
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 1066
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;

    .line 1068
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppFromServerWhenAppIsEmpty(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 1210
    return-void
.end method

.method public getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 864
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 865
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 868
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :goto_0
    return-object v0

    .restart local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 1047
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 1048
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    .line 1050
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1055
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 1056
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 1057
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    .line 1059
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfigExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1150
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    .line 1151
    .local v0, "appDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v0, :cond_0

    .line 1152
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getConfigExtra()Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, "configExtra":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1154
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1155
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1156
    invoke-static {v2, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1160
    .end local v1    # "configExtra":Ljava/lang/String;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getDownloadLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 721
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 722
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 723
    iget-object v3, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v1

    .line 724
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 725
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->getDownloadLocalPath()Ljava/lang/String;

    move-result-object v2

    .line 728
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 678
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 679
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 680
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;

    .line 682
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExtraJo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 687
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 688
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 689
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    .line 691
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getH5AppCdnBaseUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 696
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 697
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 698
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    .line 700
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIconUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1082
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 1083
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 1084
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    .line 1086
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIconUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1073
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 1074
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 1075
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    .line 1077
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 705
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 706
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getInstallPath(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLocalReport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1122
    iget-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 1123
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 1124
    iget v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->localReport:I

    .line 1126
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageNick(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 1106
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getPackageNick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1111
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 1112
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 1113
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    .line 1114
    .local v1, "extent":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1115
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "package_nick"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1117
    .end local v1    # "extent":Ljava/lang/String;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public getPackageSize(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 966
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 967
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 968
    iget-wide v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->size:J

    .line 970
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getScene(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1165
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 1166
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 1167
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    .line 1168
    .local v1, "extent":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1169
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "scene"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1171
    .end local v1    # "extent":Ljava/lang/String;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public getSlogan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 1271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 918
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 919
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 920
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->sub_url:Ljava/lang/String;

    .line 922
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThirdPlatform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 957
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 958
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 959
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->third_platform:Ljava/lang/String;

    .line 961
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 880
    iget-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    if-eqz v1, :cond_1

    .line 881
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfoNbsv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "wantVersion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 889
    .end local v0    # "wantVersion":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 887
    .restart local v0    # "wantVersion":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getHighestAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 889
    .end local v0    # "wantVersion":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVhost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 849
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    if-nez v2, :cond_1

    .line 850
    const-string/jumbo v2, "H5BaseAppProvider"

    const-string/jumbo v3, "h5AppDBService init fail."

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_0
    :goto_0
    return-object v1

    .line 853
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 854
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 855
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWalletAppDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 1101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWalletAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 1096
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 953
    const-string/jumbo v0, "*"

    return-object v0
.end method

.method public getWalletIconUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 1091
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWalletVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 947
    const/4 v0, 0x0

    return-object v0
.end method

.method public getlaunchParams(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1131
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 1132
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-nez v0, :cond_0

    .line 1133
    const/4 v1, 0x0

    .line 1135
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getlaunchParams(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method public hasPackage(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 6
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 834
    if-eqz p1, :cond_1

    .line 835
    iget-object v5, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v1

    .line 836
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 837
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "downloadUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 839
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_2

    const/4 v3, 0x0

    .line 840
    .local v3, "scheme":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "http"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "https"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 843
    .end local v0    # "downloadUrl":Ljava/lang/String;
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    return v2

    .line 839
    .restart local v0    # "downloadUrl":Ljava/lang/String;
    .restart local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public hasPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 827
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 828
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->hasPackage(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    return v1
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 734
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 735
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 736
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v1

    .line 737
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 738
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->installApp()Z

    .line 740
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    return-void
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "h5AppInstallCallback"    # Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 744
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 745
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 746
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v1

    .line 747
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 748
    invoke-interface {v1, p3}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->installApp(Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)Z

    .line 750
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    return-void
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "async"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 754
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 755
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 756
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v1

    .line 757
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 758
    invoke-interface {v1, p3}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->installApp(Z)Z

    .line 760
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_0
    return-void
.end method

.method public isAutoInstall(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 894
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 895
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    iget v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    if-ne v2, v0, :cond_0

    .line 897
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 895
    goto :goto_0

    :cond_1
    move v0, v1

    .line 897
    goto :goto_0
.end method

.method public isAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 785
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 786
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 787
    iget-object v3, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v1

    .line 788
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 789
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isAvailable()Z

    move-result v2

    .line 792
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isH5App(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 797
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    :cond_0
    :goto_0
    return v1

    .line 800
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 801
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isH5TinyApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1030
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1031
    const/4 v1, 0x0

    .line 1040
    :goto_0
    return v1

    .line 1034
    :cond_0
    const/4 v1, 0x0

    .line 1035
    .local v1, "isH5TinyApp":Z
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 1036
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_1

    .line 1037
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    .line 1039
    :cond_1
    const-string/jumbo v2, "H5BaseAppProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isH5TinyApp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInstalled(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 813
    if-eqz p1, :cond_0

    .line 814
    iget-object v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v0

    .line 815
    .local v0, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 816
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isInstalled()Z

    move-result v1

    .line 819
    .end local v0    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInstalled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 808
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->queryNebulaApp(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 809
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->isInstalled(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    return v1
.end method

.method public isNebulaApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 935
    const/4 v0, 0x1

    return v0
.end method

.method public isOffline(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 929
    const/4 v0, 0x0

    return v0
.end method

.method public isRNApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 975
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 976
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isRNApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v1

    return v1
.end method

.method public isResourceApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 1286
    const/4 v0, 0x0

    return v0
.end method

.method public isSmallProgramFromOpenPlat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 1276
    const/4 v0, 0x0

    return v0
.end method

.method public isUseAppX(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 1281
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->useAppX(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isXiaoChengXu(Ljava/lang/String;)Z
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 983
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "appType":Ljava/lang/String;
    const-string/jumbo v8, "nebulaH5App"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return v6

    .line 990
    :cond_1
    const-string/jumbo v8, "nebulaNativeTinyApp"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 995
    const-string/jumbo v8, "nebulaH5TinyApp"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->isH5TinyApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 997
    :cond_2
    const-class v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 998
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 999
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v3, :cond_0

    .line 1000
    const-string/jumbo v8, "h5_open_multi_process"

    invoke-interface {v3, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1001
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1002
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 1003
    .local v4, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1004
    const-string/jumbo v8, "all"

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1005
    const-string/jumbo v8, "h5_open_multi_process_blacklist"

    .line 1006
    invoke-interface {v3, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, "blackList":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 1008
    .local v1, "blackArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1009
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_3
    move v6, v7

    .line 1012
    goto :goto_0

    .line 1014
    .end local v1    # "blackArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "blackList":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    .line 1015
    goto :goto_0
.end method

.method public makeAppReq(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .locals 62
    .param p1, "param"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    .prologue
    .line 132
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getAppReq()Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    move-result-object v9

    .line 133
    .local v9, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    if-nez v9, :cond_0

    .line 134
    new-instance v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .end local v9    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    invoke-direct {v9}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 136
    .restart local v9    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getAppMap()Ljava/util/Map;

    move-result-object v8

    .line 138
    .local v8, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v8, :cond_4

    .line 139
    const/16 v56, 0x1

    move/from16 v0, v56

    iput v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->openPlatReqMode:I

    .line 145
    :goto_0
    iget-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-eqz v56, :cond_1

    .line 146
    const-string/jumbo v56, "async"

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 150
    :cond_1
    const-string/jumbo v56, "no"

    const-string/jumbo v57, "h5_reqModeSyncForceMgw"

    invoke-static/range {v57 .. v57}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v56

    if-nez v56, :cond_6

    const/16 v36, 0x1

    .line 151
    .local v36, "needSwitchReqMode":Z
    :goto_1
    if-eqz v36, :cond_2

    .line 152
    const-string/jumbo v56, "H5BaseAppProvider"

    new-instance v57, Ljava/lang/StringBuilder;

    const-string/jumbo v58, "[makeAppReq] fromWholeNetwork: "

    invoke-direct/range {v57 .. v58}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isFromWholeNetwork()Z

    move-result v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isFromWholeNetwork()Z

    move-result v56

    if-eqz v56, :cond_7

    .line 154
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, "_sideMgw"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 161
    :cond_2
    :goto_2
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v42, "resAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getResPackageList()Ljava/util/List;

    move-result-object v44

    .line 163
    .local v44, "resPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v44, :cond_3

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v56

    if-lez v56, :cond_3

    .line 164
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    :cond_3
    const-string/jumbo v40, ""

    .line 169
    .local v40, "queryMainAppId":Ljava/lang/String;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_8

    .line 170
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :goto_3
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_8

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 171
    .local v5, "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    .end local v40    # "queryMainAppId":Ljava/lang/String;
    check-cast v40, Ljava/lang/String;

    .line 172
    .restart local v40    # "queryMainAppId":Ljava/lang/String;
    goto :goto_3

    .line 141
    .end local v5    # "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v36    # "needSwitchReqMode":Z
    .end local v40    # "queryMainAppId":Ljava/lang/String;
    .end local v42    # "resAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v44    # "resPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/16 v56, 0x2

    move/from16 v0, v56

    iput v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->openPlatReqMode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 513
    .end local v8    # "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    :catch_0
    move-exception v47

    .line 514
    .local v47, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v56, "H5BaseAppProvider"

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    .end local v47    # "throwable":Ljava/lang/Throwable;
    :goto_4
    const/4 v9, 0x0

    :cond_5
    :goto_5
    return-object v9

    .line 150
    .restart local v8    # "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    :cond_6
    const/16 v36, 0x0

    goto/16 :goto_1

    .line 156
    .restart local v36    # "needSwitchReqMode":Z
    :cond_7
    :try_start_1
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, "_normal"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    goto :goto_2

    .line 175
    .restart local v40    # "queryMainAppId":Ljava/lang/String;
    .restart local v42    # "resAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v44    # "resPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const-string/jumbo v56, "H5BaseAppProvider"

    new-instance v57, Ljava/lang/StringBuilder;

    const-string/jumbo v58, "invoke rpc queryAppId "

    invoke-direct/range {v57 .. v58}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v57

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/16 v41, 0x1

    .line 182
    .local v41, "reqMatchTime":Z
    iget-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->nbsource:Ljava/lang/String;

    move-object/from16 v56, v0

    const-string/jumbo v57, "debug"

    invoke-static/range {v56 .. v57}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v56

    if-eqz v56, :cond_b

    .line 184
    new-instance v32, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v32 .. v32}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 185
    .local v32, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v56

    if-nez v56, :cond_9

    .line 186
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :goto_6
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_9

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 187
    .restart local v5    # "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v22, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v22 .. v22}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 188
    .local v22, "entryJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v56, "app_id"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v58

    move-object/from16 v0, v22

    move-object/from16 v1, v56

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v56, "version"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v58

    move-object/from16 v0, v22

    move-object/from16 v1, v56

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v56

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 195
    .end local v5    # "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "entryJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_9
    const-string/jumbo v56, "H5BaseAppProvider"

    new-instance v57, Ljava/lang/StringBuilder;

    const-string/jumbo v58, "dev mode query "

    invoke-direct/range {v57 .. v58}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v57

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    .line 481
    .end local v32    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_a
    :goto_7
    const-string/jumbo v56, "android"

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->platform:Ljava/lang/String;

    .line 482
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getVersion()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->client:Ljava/lang/String;

    .line 483
    sget-object v56, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->system:Ljava/lang/String;

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getSDKVersion()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->sdk:Ljava/lang/String;

    .line 487
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->setReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    move-result-object v9

    .line 489
    iget-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->bundleid:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-eqz v56, :cond_2a

    .line 490
    const-string/jumbo v56, "H5BaseAppProvider"

    const-string/jumbo v57, "appReq.bundleid is null not send request "

    invoke-static/range {v56 .. v57}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 200
    :cond_b
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v56

    if-lez v56, :cond_e

    .line 201
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :cond_c
    :goto_8
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_e

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 202
    .local v43, "resId":Ljava/lang/String;
    if-eqz v8, :cond_c

    .line 204
    invoke-static {}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->enableResDegrade()Z

    move-result v57

    if-eqz v57, :cond_d

    .line 205
    const-string/jumbo v57, "*"

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 207
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 216
    .end local v43    # "resId":Ljava/lang/String;
    :cond_e
    const-class v56, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 218
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v56

    .line 217
    invoke-static/range {v56 .. v56}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 219
    .local v26, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v26, :cond_10

    .line 220
    invoke-interface/range {v26 .. v26}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getCommonResourceAppList()Ljava/util/Set;

    move-result-object v10

    .line 221
    .local v10, "appSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_10

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v56

    if-nez v56, :cond_10

    .line 222
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :cond_f
    :goto_9
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_10

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 223
    .local v29, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->isNebulaApp(Ljava/lang/String;)Z

    move-result v57

    if-eqz v57, :cond_f

    if-eqz v8, :cond_f

    .line 224
    move-object/from16 v0, v29

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v57

    if-nez v57, :cond_f

    .line 225
    const-string/jumbo v57, "H5BaseAppProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    const-string/jumbo v59, " add CommonResourceAppList to query "

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v58

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 235
    .end local v10    # "appSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v29    # "id":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

    move-object/from16 v56, v0

    if-eqz v56, :cond_13

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

    move-object/from16 v56, v0

    .line 238
    invoke-virtual/range {v56 .. v56}, Lcom/alipay/mobile/h5container/service/H5Service;->getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

    move-result-object v17

    .line 239
    .local v17, "commonManager":Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;
    if-eqz v17, :cond_13

    .line 241
    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;->getNebulaAppCallbackList()Ljava/util/List;

    move-result-object v16

    .line 242
    .local v16, "commonInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;>;"
    if-eqz v16, :cond_13

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v56

    if-nez v56, :cond_13

    .line 243
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :cond_11
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_13

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;

    .line 244
    .local v15, "commonInfo":Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;
    invoke-virtual {v15}, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;->getAppIdList()Ljava/util/List;

    move-result-object v34

    .line 245
    .local v34, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v34, :cond_11

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v57

    if-nez v57, :cond_11

    .line 246
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :cond_12
    :goto_a
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v58

    if-eqz v58, :cond_11

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 247
    .local v14, "commonAppId":Ljava/lang/String;
    if-eqz v8, :cond_12

    .line 248
    invoke-interface {v8, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_12

    .line 249
    const-string/jumbo v58, "H5BaseAppProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    const-string/jumbo v60, " add NebulaCommonInfo to query "

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v59

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 251
    move-object/from16 v0, v58

    invoke-interface {v8, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 264
    .end local v14    # "commonAppId":Ljava/lang/String;
    .end local v15    # "commonInfo":Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;
    .end local v16    # "commonInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;>;"
    .end local v17    # "commonManager":Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;
    .end local v34    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    move-object/from16 v56, v0

    if-eqz v56, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-object/from16 v56, v0

    if-eqz v56, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-object/from16 v56, v0

    if-nez v56, :cond_15

    .line 265
    :cond_14
    const-string/jumbo v56, "H5BaseAppProvider"

    const-string/jumbo v57, "h5AppBizRpcProvider == null."

    invoke-static/range {v56 .. v57}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 270
    :cond_15
    if-eqz v8, :cond_20

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v56

    if-nez v56, :cond_20

    .line 272
    new-instance v37, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v37 .. v37}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 274
    .local v37, "queryJson":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getNormalReqRate()D

    move-result-wide v38

    .line 275
    .local v38, "normalReqRate":D
    const-string/jumbo v56, "H5BaseAppProvider"

    new-instance v57, Ljava/lang/StringBuilder;

    const-string/jumbo v58, "[makeAppReq] normalReqRate : "

    invoke-direct/range {v57 .. v58}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v57

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v56, "asyncReqRate"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getConfigExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 279
    .local v12, "asyncRateConfig":Ljava/lang/String;
    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 280
    .local v11, "asyncJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v56, "H5BaseAppProvider"

    new-instance v57, Ljava/lang/StringBuilder;

    const-string/jumbo v58, "[makeAppReq] asyncRateConfig : "

    invoke-direct/range {v57 .. v58}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v57

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :goto_b
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_1f

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 287
    .restart local v5    # "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 288
    .local v6, "appId":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/String;

    .line 289
    .local v55, "version":Ljava/lang/String;
    new-instance v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v7}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    .line 290
    .local v7, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    iput-object v6, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 291
    move-object/from16 v0, v55

    iput-object v0, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isForceRpc()Z

    move-result v56

    if-nez v56, :cond_1d

    .line 296
    move-wide/from16 v52, v38

    .line 297
    .local v52, "updateRate":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-interface {v0, v6, v1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v30

    .line 298
    .local v30, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v30, :cond_17

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 299
    .local v33, "lastUpdateTime":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->rpcIsLimit()Z

    move-result v56

    if-eqz v56, :cond_18

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getLimitReqRate()D

    move-result-wide v52

    .line 332
    :cond_16
    :goto_d
    const-string/jumbo v56, "H5BaseAppProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    const-string/jumbo v59, "lastUpdateTime:"

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v58

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string/jumbo v59, " updateRate:"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-nez v56, :cond_1d

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    invoke-static/range {v33 .. v33}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v60

    sub-long v50, v58, v60

    .line 336
    .local v50, "timeDiff":J
    const-wide/16 v58, 0x3e8

    div-long v18, v50, v58

    .line 337
    .local v18, "diffSecond":J
    const-string/jumbo v56, "H5BaseAppProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string/jumbo v59, ":diff(\u79d2):"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string/jumbo v59, " updateRate(\u79d2):"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v58, v0

    cmpg-double v56, v58, v52

    if-gez v56, :cond_1c

    .line 340
    const-string/jumbo v58, "H5BaseAppProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    const-string/jumbo v56, "appId:"

    move-object/from16 v0, v59

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/String;

    move-object/from16 v0, v59

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v59, " timeDiff < updateRate, not to add query"

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 298
    .end local v18    # "diffSecond":J
    .end local v33    # "lastUpdateTime":Ljava/lang/String;
    .end local v50    # "timeDiff":J
    :cond_17
    const-string/jumbo v33, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c

    .line 306
    .restart local v33    # "lastUpdateTime":Ljava/lang/String;
    :cond_18
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getlaunchParams(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v32

    .line 307
    .restart local v32    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, ""

    .line 308
    .local v13, "asyncReqRate":Ljava/lang/String;
    if-eqz v32, :cond_19

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v56

    if-nez v56, :cond_19

    .line 309
    const-string/jumbo v56, "asyncReqRate"

    move-object/from16 v0, v32

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 310
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-eqz v56, :cond_19

    .line 311
    const-string/jumbo v56, "ar"

    move-object/from16 v0, v32

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 314
    :cond_19
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-nez v56, :cond_1a

    .line 315
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v56

    move/from16 v0, v56

    int-to-double v0, v0

    move-wide/from16 v52, v0

    goto/16 :goto_d

    .line 318
    :cond_1a
    if-eqz v11, :cond_16

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v56

    if-nez v56, :cond_16

    .line 319
    move-object/from16 v0, v30

    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    move/from16 v56, v0

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_1b

    .line 320
    move-object/from16 v0, v30

    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    move/from16 v56, v0

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v56

    move/from16 v0, v56

    int-to-double v0, v0

    move-wide/from16 v52, v0

    goto/16 :goto_d

    .line 322
    :cond_1b
    const-string/jumbo v56, "common"

    move-object/from16 v0, v56

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v56

    move/from16 v0, v56

    int-to-double v0, v0

    move-wide/from16 v52, v0

    goto/16 :goto_d

    .line 326
    .end local v13    # "asyncReqRate":Ljava/lang/String;
    .end local v32    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_1
    move-exception v47

    .line 327
    .restart local v47    # "throwable":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v56, "H5BaseAppProvider"

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 344
    .end local v47    # "throwable":Ljava/lang/Throwable;
    .restart local v18    # "diffSecond":J
    .restart local v50    # "timeDiff":J
    :cond_1c
    const-string/jumbo v58, "H5BaseAppProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    const-string/jumbo v56, "appId:"

    move-object/from16 v0, v59

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/String;

    move-object/from16 v0, v59

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v59, " match time to add query"

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    if-eqz v30, :cond_1d

    .line 348
    const-class v56, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 349
    .local v27, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v27, :cond_1d

    .line 350
    const-string/jumbo v56, "h5_updateCurrentAppUpdateTime"

    move-object/from16 v0, v27

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 351
    .local v54, "value":Ljava/lang/String;
    const-string/jumbo v56, "no"

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v56

    if-nez v56, :cond_1d

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-interface {v0, v6, v1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->updateCurrentAppUpdateTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .end local v18    # "diffSecond":J
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v30    # "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v33    # "lastUpdateTime":Ljava/lang/String;
    .end local v50    # "timeDiff":J
    .end local v52    # "updateRate":D
    .end local v54    # "value":Ljava/lang/String;
    :cond_1d
    new-instance v22, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v22 .. v22}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 361
    .restart local v22    # "entryJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v56, "app_id"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v58

    move-object/from16 v0, v22

    move-object/from16 v1, v56

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v56, "version"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v58

    move-object/from16 v0, v22

    move-object/from16 v1, v56

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v56

    move-object/from16 v0, v42

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_1e

    .line 364
    const-string/jumbo v58, "H5BaseAppProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    const-string/jumbo v56, "add query resource : "

    move-object/from16 v0, v59

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/String;

    move-object/from16 v0, v59

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v59, "version : "

    move-object/from16 v0, v56

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    .line 365
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/String;

    move-object/from16 v0, v59

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 364
    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v56, "t"

    const-string/jumbo v58, "res"

    move-object/from16 v0, v22

    move-object/from16 v1, v56

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_1e
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v56

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 371
    .end local v5    # "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v22    # "entryJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v55    # "version":Ljava/lang/String;
    :cond_1f
    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v56

    if-nez v56, :cond_20

    .line 373
    :try_start_4
    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 382
    .end local v11    # "asyncJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "asyncRateConfig":Ljava/lang/String;
    .end local v37    # "queryJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v38    # "normalReqRate":D
    :cond_20
    :goto_e
    if-eqz v8, :cond_21

    :try_start_5
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v56

    if-nez v56, :cond_21

    iget-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    move-object/from16 v56, v0

    .line 383
    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-eqz v56, :cond_21

    .line 387
    const/16 v41, 0x0

    goto/16 :goto_7

    .line 374
    .restart local v11    # "asyncJson":Lcom/alibaba/fastjson/JSONObject;
    .restart local v12    # "asyncRateConfig":Ljava/lang/String;
    .restart local v37    # "queryJson":Lcom/alibaba/fastjson/JSONObject;
    .restart local v38    # "normalReqRate":D
    :catch_2
    move-exception v20

    .line 375
    .local v20, "e":Ljava/lang/Exception;
    const-string/jumbo v56, "H5BaseAppProvider"

    move-object/from16 v0, v56

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_e

    .line 392
    .end local v11    # "asyncJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "asyncRateConfig":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v37    # "queryJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v38    # "normalReqRate":D
    :cond_21
    const/16 v46, 0x1

    .line 393
    .local v46, "support":Z
    :try_start_6
    const-class v56, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 395
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v56

    .line 394
    invoke-static/range {v56 .. v56}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 396
    .restart local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v27, :cond_22

    .line 397
    const-string/jumbo v56, "h5_enablestablerpc"

    move-object/from16 v0, v27

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 398
    .restart local v54    # "value":Ljava/lang/String;
    if-eqz v54, :cond_22

    const-string/jumbo v56, "no"

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v56

    if-eqz v56, :cond_22

    .line 399
    const/16 v46, 0x0

    .line 402
    .end local v54    # "value":Ljava/lang/String;
    :cond_22
    if-eqz v46, :cond_23

    .line 403
    iget-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-eqz v56, :cond_23

    .line 404
    const-string/jumbo v56, "YES"

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 413
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_23
    :goto_f
    :try_start_7
    iget-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    move-object/from16 v56, v0

    const-string/jumbo v57, "YES"

    invoke-static/range {v56 .. v57}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v56

    if-eqz v56, :cond_28

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 416
    .local v48, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-object/from16 v56, v0

    .line 417
    invoke-interface/range {v56 .. v56}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAllHighestLocalReportAppVersion()Ljava/util/Map;

    move-result-object v4

    .line 420
    .local v4, "allApp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    sub-long v24, v56, v48

    .line 421
    .local v24, "getAllAppTime":J
    new-instance v35, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v35 .. v35}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 422
    .local v35, "localAppInfoJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v4, :cond_25

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v56

    if-nez v56, :cond_25

    .line 424
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v56

    .line 423
    invoke-interface/range {v56 .. v56}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :cond_24
    :goto_10
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_25

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 425
    .restart local v5    # "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/CharSequence;

    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-nez v56, :cond_24

    .line 426
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/CharSequence;

    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-nez v56, :cond_24

    .line 427
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 428
    .restart local v6    # "appId":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 430
    .local v28, "highVersion":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 408
    .end local v4    # "allApp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "appId":Ljava/lang/String;
    .end local v24    # "getAllAppTime":J
    .end local v28    # "highVersion":Ljava/lang/String;
    .end local v35    # "localAppInfoJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v48    # "time":J
    :catch_3
    move-exception v20

    .line 409
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string/jumbo v56, "H5BaseAppProvider"

    move-object/from16 v0, v56

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 436
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v4    # "allApp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "getAllAppTime":J
    .restart local v35    # "localAppInfoJson":Lcom/alibaba/fastjson/JSONObject;
    .restart local v48    # "time":J
    :cond_25
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v56

    const/16 v57, 0x2

    .line 437
    invoke-virtual/range {v56 .. v57}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppListWithStrategy(I)Ljava/util/List;

    move-result-object v45

    .line 438
    .local v45, "smart":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v45, :cond_27

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    move-result v56

    if-nez v56, :cond_27

    .line 439
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :goto_11
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_27

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 440
    .restart local v6    # "appId":Ljava/lang/String;
    const-string/jumbo v56, "H5BaseAppProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    const-string/jumbo v59, "H5AppScoreList "

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    .line 442
    .restart local v7    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v7, :cond_26

    iget-object v0, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v56, v0

    :goto_12
    move-object/from16 v0, v35

    move-object/from16 v1, v56

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_26
    const-string/jumbo v56, ""

    goto :goto_12

    .line 447
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_27
    const-string/jumbo v56, "H5NebulaAppRpcTimeCost"

    new-instance v57, Ljava/lang/StringBuilder;

    const-string/jumbo v58, "ReadyAppReqInfo getLocalAppInfo cost "

    invoke-direct/range {v57 .. v58}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    sub-long v58, v58, v48

    sub-long v58, v58, v24

    invoke-virtual/range {v57 .. v59}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " getAllAppTime\uff1a"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .line 447
    invoke-static/range {v56 .. v57}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {v35 .. v35}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v56

    if-nez v56, :cond_28

    .line 451
    invoke-virtual/range {v35 .. v35}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->localAppInfo:Ljava/lang/String;

    .line 456
    .end local v4    # "allApp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "getAllAppTime":J
    .end local v35    # "localAppInfoJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v45    # "smart":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v48    # "time":J
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-object/from16 v56, v0

    .line 457
    invoke-interface/range {v56 .. v56}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getInstalledApp()Ljava/util/Map;

    move-result-object v31

    .line 458
    .local v31, "installedApp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v23, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v23 .. v23}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 460
    .local v23, "exitJsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v31, :cond_29

    invoke-interface/range {v31 .. v31}, Ljava/util/Map;->isEmpty()Z

    move-result v56

    if-nez v56, :cond_29

    .line 462
    invoke-interface/range {v31 .. v31}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v56

    .line 461
    invoke-interface/range {v56 .. v56}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :goto_13
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_29

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 463
    .restart local v5    # "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v21, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 464
    .local v21, "entry":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v56, "app_id"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v58

    move-object/from16 v0, v21

    move-object/from16 v1, v56

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string/jumbo v56, "version"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v58

    move-object/from16 v0, v21

    move-object/from16 v1, v56

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v56

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 469
    .end local v5    # "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "entry":Lcom/alibaba/fastjson/JSONObject;
    :cond_29
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result v56

    if-nez v56, :cond_a

    .line 471
    :try_start_8
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->existed:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_7

    .line 472
    :catch_4
    move-exception v20

    .line 473
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v56, "H5BaseAppProvider"

    move-object/from16 v0, v56

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 494
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v23    # "exitJsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v26    # "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    .end local v31    # "installedApp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v46    # "support":Z
    :cond_2a
    iget-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-nez v56, :cond_2b

    .line 495
    const-string/jumbo v56, "YES"

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->preferLocal:Ljava/lang/String;

    .line 496
    const-class v56, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 497
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 498
    .restart local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v27, :cond_2b

    .line 499
    const-string/jumbo v56, "h5_enablepreferlocal"

    .line 500
    move-object/from16 v0, v27

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 501
    .restart local v54    # "value":Ljava/lang/String;
    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-nez v56, :cond_2b

    const-string/jumbo v56, "no"

    .line 502
    move-object/from16 v0, v56

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v56

    if-eqz v56, :cond_2b

    .line 503
    const-string/jumbo v56, "NO"

    move-object/from16 v0, v56

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->preferLocal:Ljava/lang/String;

    .line 508
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v54    # "value":Ljava/lang/String;
    :cond_2b
    if-nez v41, :cond_5

    .line 511
    const-string/jumbo v56, "H5BaseAppProvider"

    const-string/jumbo v57, " timeDiff < updateRate, this req is not send"

    invoke-static/range {v56 .. v57}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_4
.end method

.method public offlineFromOpenPlat(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 1215
    return-void
.end method

.method public queryAllH5AppVersionFromAppCenter()Ljava/util/Map;
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
    .line 1296
    const/4 v0, 0x0

    return-object v0
.end method

.method public request(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;ZZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    .locals 18
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .param p2, "downLoad"    # Z
    .param p3, "downloadRandom"    # Z
    .param p4, "fullRpc"    # Z

    .prologue
    .line 608
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppBizRpcProvider:Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;->app(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    move-result-object v3

    .line 610
    .local v3, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 611
    .local v12, "saveTime":Ljava/lang/Long;
    if-eqz v3, :cond_9

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    if-nez v2, :cond_0

    .line 613
    const-string/jumbo v2, "H5BaseAppProvider"

    const-string/jumbo v4, "h5AppDBService init fail."

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    .line 672
    .end local v3    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .end local v12    # "saveTime":Ljava/lang/Long;
    :goto_0
    return-object v2

    .line 618
    .restart local v3    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .restart local v12    # "saveTime":Ljava/lang/Long;
    :cond_0
    const-string/jumbo v2, "limit"

    iget-object v4, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 619
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    goto :goto_0

    .line 621
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->rpcIsLimit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppDBService:Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->setRpcIsLimit(Z)V

    .line 626
    :cond_2
    const-string/jumbo v2, "result_code_not_100"

    iget-object v4, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 627
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    goto :goto_0

    .line 630
    :cond_3
    const-string/jumbo v2, "not_login"

    iget-object v4, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 632
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    goto :goto_0

    .line 636
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    if-eqz v2, :cond_8

    .line 637
    const-string/jumbo v7, ""

    .line 638
    .local v7, "scene":Ljava/lang/String;
    if-eqz p4, :cond_5

    .line 639
    const-string/jumbo v7, "full_rpc_scene"

    .line 642
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5AppCenterService:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    const/4 v4, 0x1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZLjava/lang/String;)V

    .line 645
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 647
    .local v8, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    iget-object v4, v8, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 670
    .end local v3    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .end local v7    # "scene":Ljava/lang/String;
    .end local v8    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "saveTime":Ljava/lang/Long;
    :catch_0
    move-exception v9

    .line 671
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5BaseAppProvider"

    const-string/jumbo v4, "updateApp exception"

    invoke-static {v2, v4, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 672
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    goto/16 :goto_0

    .line 650
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .restart local v7    # "scene":Ljava/lang/String;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "saveTime":Ljava/lang/Long;
    :cond_6
    :try_start_1
    iget-object v2, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->removeAppIdList:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->removeAppIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 651
    iget-object v2, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->removeAppIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 652
    .local v10, "id":Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 656
    .end local v10    # "id":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    invoke-static {v2, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->setNebulaAppCallback(ILjava/util/List;)V

    .line 658
    const-string/jumbo v2, "H5NebulaAppRpcTimeCost"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SaveAppTime  cost "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    goto/16 :goto_0

    .line 663
    .end local v7    # "scene":Ljava/lang/String;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const-string/jumbo v2, "H5BaseAppProvider"

    const-string/jumbo v4, "save db fail."

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;

    move-result-object v2

    goto/16 :goto_0

    .line 668
    :cond_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->getRpcResult(ZZ)Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$H5RpcResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0
.end method

.method public abstract setReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
.end method

.method public showOfflinePage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1178
    return-void
.end method

.method public syncAppManage()Ljava/util/Map;
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
    .line 941
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V
    .locals 11
    .param p1, "param"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 92
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    new-instance v5, Lcom/alipay/mobile/framework/exception/IllegalParameterException;

    const-string/jumbo v6, "updateApp param null!"

    invoke-direct {v5, v6}, Lcom/alipay/mobile/framework/exception/IllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getUpdateCallback()Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    move-result-object v0

    .line 100
    .local v0, "process":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

    if-eqz v5, :cond_4

    .line 101
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getStartTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    .local v2, "startTime":J
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->isForceRpc()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    const-string/jumbo v5, "URGENT_DISPLAY"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    .line 109
    .local v4, "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    :goto_1
    new-instance v5, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$1;

    invoke-direct {v5, p0, p1, v2, v3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$1;-><init>(Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 126
    .end local v0    # "process":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    .end local v2    # "startTime":J
    .end local v4    # "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_1
    :goto_2
    return-void

    .line 101
    .restart local v0    # "process":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->getStartTime()J

    move-result-wide v2

    goto :goto_0

    .line 107
    .restart local v2    # "startTime":J
    :cond_3
    const-string/jumbo v5, "RPC"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    .restart local v4    # "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    goto :goto_1

    .line 116
    .end local v2    # "startTime":J
    .end local v4    # "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_4
    if-eqz v0, :cond_1

    .line 117
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 122
    invoke-virtual {v0, v10, v10}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V

    .line 124
    :cond_5
    const-string/jumbo v5, "H5BaseAppProvider"

    const-string/jumbo v6, "[updateApp] execute error!"

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
