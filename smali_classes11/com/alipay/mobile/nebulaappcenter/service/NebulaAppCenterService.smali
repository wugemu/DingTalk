.class public Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;
.super Ljava/lang/Object;
.source "NebulaAppCenterService.java"


# static fields
.field private static final SDK_VERSION:Ljava/lang/String; = "1.3.0.0"

.field private static final TAG:Ljava/lang/String; = "H5AppCenterServiceImpl"

.field private static h5PreSetPkgInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->deleteOldDownloadDir()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->deleteOldInstallPath()V

    return-void
.end method

.method private applyAppResConfig(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;Z)V
    .locals 13
    .param p1, "appRes"    # Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .param p2, "forceSync"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 300
    const-string/jumbo v10, "H5AppCenterServiceImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[applyAppResConfig] fromNewConfig: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->fromNewConfig:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-boolean v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->fromNewConfig:Z

    if-nez v10, :cond_1

    .line 304
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->enableNewConfig()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 305
    const-string/jumbo v10, "H5AppCenterServiceImpl"

    const-string/jumbo v11, "[applyAppResConfig] not read appRes.config because inWallet and configSwitchOpen"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    if-eqz v10, :cond_0

    .line 312
    const-string/jumbo v0, ""

    .line 313
    .local v0, "appPoolLimit":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 314
    .local v9, "updateReqRate":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 315
    .local v5, "limitReqRate":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 316
    .local v6, "preReqRate":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 320
    .local v1, "asyncReqRate":Ljava/lang/String;
    if-nez p2, :cond_2

    :try_start_0
    iget-object v10, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->hasSetConfig()Z

    move-result v10

    if-nez v10, :cond_19

    .line 323
    :cond_2
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "al"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 324
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "al"

    .line 325
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_3
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "appPoolLimit"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 329
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "appPoolLimit"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_4
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "ur"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 334
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "ur"

    .line 335
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 338
    :cond_5
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "updateReqRate"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 339
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "updateReqRate"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 343
    :cond_6
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "lr"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 344
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "lr"

    .line 345
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 348
    :cond_7
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "limitReqRate"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 349
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "limitReqRate"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 352
    :cond_8
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 355
    .local v3, "extraConfig":Lcom/alibaba/fastjson/JSONObject;
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "pr"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 356
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "pr"

    .line 357
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 360
    :cond_9
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "preReqRate"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 361
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "preReqRate"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 365
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 366
    const-string/jumbo v10, "preReqRate"

    invoke-virtual {v3, v10, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :goto_1
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "ar"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 373
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "ar"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 376
    :cond_b
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "asyncReqRate"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 377
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "asyncReqRate"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 380
    :cond_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 381
    const-string/jumbo v10, "asyncReqRate"

    invoke-virtual {v3, v10, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :goto_2
    const-string/jumbo v7, ""

    .line 388
    .local v7, "prepareTime":Ljava/lang/String;
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "et"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 389
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "et"

    .line 390
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 393
    :cond_d
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "expireTime"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 394
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "expireTime"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 397
    :cond_e
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 398
    const-string/jumbo v10, "expireTime"

    invoke-virtual {v3, v10, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :goto_3
    const-string/jumbo v8, ""

    .line 404
    .local v8, "resInvalidTime":Ljava/lang/String;
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "rmt"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 405
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "rmt"

    .line 406
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 409
    :cond_f
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "resMainDocInvalidTime"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 410
    iget-object v10, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    const-string/jumbo v11, "resMainDocInvalidTime"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 413
    :cond_10
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 414
    const-string/jumbo v10, "resMainDocInvalidTime"

    invoke-virtual {v3, v10, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :goto_4
    new-instance v4, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;-><init>()V

    .line 422
    .local v4, "h5AppConfigBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 423
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setApp_pool_limit(I)V

    .line 428
    :goto_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 431
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 430
    invoke-virtual {v4, v10, v11}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setNormalReqRate(D)V

    .line 436
    :goto_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 439
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 438
    invoke-virtual {v4, v10, v11}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setLimitReqRate(D)V

    .line 444
    :goto_7
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_18

    .line 445
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setExtra(Ljava/lang/String;)V

    .line 450
    :goto_8
    iget-object v10, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v10, v4}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->createOrUpdateConfig(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)V

    .line 451
    const-string/jumbo v10, "H5AppCenterServiceImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[applyAppResConfig] appPoolLimit "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " updateReqRate:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " limitReqRate:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " preReqRate:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 457
    .end local v3    # "extraConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "h5AppConfigBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    .end local v7    # "prepareTime":Ljava/lang/String;
    .end local v8    # "resInvalidTime":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "H5AppCenterServiceImpl"

    invoke-static {v10, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 368
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "extraConfig":Lcom/alibaba/fastjson/JSONObject;
    :cond_11
    :try_start_1
    const-string/jumbo v10, "preReqRate"

    const-string/jumbo v11, ""

    invoke-virtual {v3, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 383
    :cond_12
    const-string/jumbo v10, "asyncReqRate"

    const-string/jumbo v11, ""

    invoke-virtual {v3, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 400
    .restart local v7    # "prepareTime":Ljava/lang/String;
    :cond_13
    const-string/jumbo v10, "expireTime"

    const-string/jumbo v11, ""

    invoke-virtual {v3, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 416
    .restart local v8    # "resInvalidTime":Ljava/lang/String;
    :cond_14
    const-string/jumbo v10, "resMainDocInvalidTime"

    const-string/jumbo v11, "259200"

    invoke-virtual {v3, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 425
    .restart local v4    # "h5AppConfigBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    :cond_15
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setApp_pool_limit(I)V

    goto/16 :goto_5

    .line 433
    :cond_16
    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setNormalReqRate(D)V

    goto/16 :goto_6

    .line 441
    :cond_17
    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setLimitReqRate(D)V

    goto/16 :goto_7

    .line 447
    :cond_18
    const-string/jumbo v10, ""

    invoke-virtual {v4, v10}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setExtra(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 455
    .end local v3    # "extraConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "h5AppConfigBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    .end local v7    # "prepareTime":Ljava/lang/String;
    .end local v8    # "resInvalidTime":Ljava/lang/String;
    :cond_19
    const-string/jumbo v10, "H5AppCenterServiceImpl"

    const-string/jumbo v11, " has set Preset App not add to db config"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private cleanAppInfoPool(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 12
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 672
    if-nez p1, :cond_1

    .line 721
    :cond_0
    return-void

    .line 675
    :cond_1
    new-instance v4, Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;-><init>()V

    .line 676
    .local v4, "h5AppNew":Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    invoke-virtual {v4, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 677
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "downloadFilePathNew":Ljava/lang/String;
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "downloadPathNew : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    iget-object v9, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getCanDeleteAppPooIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 680
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getAppPoolLimit()I

    move-result v6

    .line 681
    .local v6, "limit":I
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v6, :cond_0

    .line 682
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 683
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v6, :cond_0

    .line 684
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getCanDeleteAppPooIdList size:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " limit:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 686
    .local v5, "h5NebulaAppBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    new-instance v3, Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;-><init>()V

    .line 687
    .local v3, "h5App":Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    if-eqz v5, :cond_2

    .line 688
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/appcenter/util/H5LoadingApp;->contain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 690
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    const-string/jumbo v9, "H5LoadingApp contain this not delete"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_2
    :goto_1
    invoke-interface {v7, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 692
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->enableNotQueryInstallApp()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    .line 693
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 694
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "not delete install app : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " version : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 695
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 694
    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 697
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "deleteAppInfo:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " version:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 697
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;)V

    .line 699
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    .line 700
    .local v0, "deleteApp":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 701
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 702
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getPackage_url()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    .line 703
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 705
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "deleteDownloadPath":Ljava/lang/String;
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "deleteDownloadPath : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 708
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 710
    :cond_5
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 712
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v9

    .line 713
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v10

    .line 712
    invoke-virtual {v8, v9, v10}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private deleteOldDownloadDir()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getOldDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "downloadDirectoryPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    .end local v1    # "downloadDirectoryPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v1    # "downloadDirectoryPath":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "H5AppCenterServiceImpl"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v4, "nebulaH5App"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "deleteFile":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v3

    .line 101
    .local v3, "exist":Z
    if-eqz v3, :cond_2

    .line 102
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 104
    :cond_2
    const-string/jumbo v4, "H5AppCenterServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "delete file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " exist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v0    # "deleteFile":Ljava/io/File;
    .end local v1    # "downloadDirectoryPath":Ljava/lang/String;
    .end local v3    # "exist":Z
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5AppCenterServiceImpl"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private deleteOldInstallPath()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    const-string/jumbo v3, "/nebulaApps/"

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappcenter/util/H5AppGlobal;->getInstallPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string/jumbo v3, "/nebulaApps/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "deleteFile":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v1

    .line 79
    .local v1, "exist":Z
    const-string/jumbo v3, "H5AppCenterServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "delete file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz v1, :cond_0

    .line 81
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    goto :goto_0
.end method

.method private downLoadApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "scene"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 724
    if-eqz p1, :cond_0

    .line 725
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;-><init>()V

    .line 726
    .local v0, "h5App":Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 728
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V

    .line 730
    .end local v0    # "h5App":Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    :cond_0
    return-void
.end method

.method private handleDownloadApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZLjava/lang/String;)V
    .locals 4
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "downLoadAmr"    # Z
    .param p3, "downloadRandom"    # Z
    .param p4, "scene"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 636
    const-string/jumbo v0, "H5AppCenterServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "downApp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " auto_install:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " downLoadAmr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " downloadRandom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->downloadH5App(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    if-nez p2, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->downLoadApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->updateUnavailableReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string/jumbo v0, "H5AppCenterServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not in wifi save data to H5WifiDownloadList"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePresetApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 5
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 656
    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5PreSetPkgInfoList:Ljava/util/List;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5PreSetPkgInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 657
    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5PreSetPkgInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liox;

    .line 658
    .local v0, "h5PreSetPkgInfo":Liox;
    if-eqz v0, :cond_0

    .line 4057
    iget-object v2, v0, Liox;->a:Ljava/io/InputStream;

    .line 659
    if-eqz v2, :cond_0

    .line 4061
    iget-object v2, v0, Liox;->b:Ljava/lang/String;

    .line 660
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4065
    iget-object v2, v0, Liox;->c:Ljava/lang/String;

    .line 661
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    const-string/jumbo v2, "H5AppCenterServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "set h5PreSetPkgInfo appId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5057
    iget-object v2, v0, Liox;->a:Ljava/io/InputStream;

    .line 5069
    iget-boolean v3, v0, Liox;->e:Z

    .line 664
    invoke-direct {p0, v2, p1, v3}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->presetAppPackagePath(Ljava/io/InputStream;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V

    goto :goto_0

    .line 669
    .end local v0    # "h5PreSetPkgInfo":Liox;
    :cond_1
    return-void
.end method

.method private presetAppPackagePath(Ljava/io/InputStream;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p3, "forceSync"    # Z

    .prologue
    .line 736
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;-><init>()V

    .line 737
    .local v0, "h5App":Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 738
    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->presetAppPackage(Ljava/io/InputStream;Z)V

    .line 739
    return-void
.end method

.method private saveAppInfoList(Ljava/util/List;ZZLjava/lang/String;)V
    .locals 3
    .param p2, "downLoadAmr"    # Z
    .param p3, "downloadRandom"    # Z
    .param p4, "scene"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 601
    .local p1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 602
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->cleanAppInfoPool(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    goto :goto_0

    .line 605
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->saveAppInfoList(Ljava/util/List;)V

    .line 607
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 608
    .restart local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->handlePresetApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 609
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->handleDownloadApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZLjava/lang/String;)V

    goto :goto_1

    .line 611
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    return-void
.end method

.method private setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZZLjava/lang/String;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "forceSync"    # Z
    .param p3, "downLoadAmr"    # Z
    .param p4, "downloadRandom"    # Z
    .param p5, "scene"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    const-string/jumbo v0, "H5AppCenterServiceImpl"

    const-string/jumbo v1, "appInfo == null return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->cleanAppInfoPool(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 623
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V

    .line 625
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->handlePresetApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 627
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->handleDownloadApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearAppAmrPackage()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 483
    iget-object v11, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getAllHighestAppInfo()Ljava/util/Map;

    move-result-object v1

    .line 484
    .local v1, "allHigAppInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 485
    :cond_0
    const-string/jumbo v11, "H5AppCenterServiceImpl"

    const-string/jumbo v12, "allHigAppInfoMap == null"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_1
    :goto_0
    return-void

    .line 488
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v9, "higVersionAmrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 490
    .local v10, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 491
    .local v3, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v3, :cond_3

    .line 492
    new-instance v8, Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {v8}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;-><init>()V

    .line 493
    .local v8, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    invoke-interface {v8, v3}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 494
    invoke-interface {v8}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->getDownloadLocalPath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 498
    .end local v3    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v8    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .end local v10    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, "downloadAmrPath":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v11, "nebulaDownload"

    .line 500
    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 501
    :cond_5
    const-string/jumbo v11, "H5AppCenterServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "empty return, downloadAmrPath : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_6
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 505
    .local v7, "downloadDirectory":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_7

    .line 506
    const-string/jumbo v11, "H5AppCenterServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " downloadDirectory is not Directory"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v0, "allAmrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 511
    .local v5, "children":[Ljava/io/File;
    if-eqz v5, :cond_1

    array-length v11, v5

    if-eqz v11, :cond_1

    .line 514
    array-length v12, v5

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_8

    aget-object v4, v5, v11

    .line 515
    .local v4, "child":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 517
    .end local v4    # "child":Ljava/io/File;
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_1

    .line 520
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 522
    .local v2, "amrPath":Ljava/lang/String;
    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string/jumbo v12, "directory_monitor"

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 523
    const-string/jumbo v12, "H5AppCenterServiceImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "delete amr : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    goto :goto_3
.end method

.method public clearAppUnzipPackage(J)V
    .locals 27
    .param p1, "expiredTime"    # J

    .prologue
    .line 534
    const-string/jumbo v19, "/nebulaInstallApps/"

    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebulaappcenter/util/H5AppGlobal;->getInstallPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 535
    .local v15, "installPath":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v7, "deleteInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v13, "installDirectory":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_2

    .line 542
    const-string/jumbo v19, "H5AppCenterServiceImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "[clearAppUnzipPackage] "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " installDirectory is not Directory"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 547
    .local v4, "appIdDirectory":[Ljava/io/File;
    if-eqz v4, :cond_0

    array-length v0, v4

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 550
    array-length v0, v4

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    aget-object v5, v4, v19

    .line 551
    .local v5, "appIdFile":Ljava/io/File;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 553
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 556
    .local v14, "installFile":[Ljava/io/File;
    if-eqz v14, :cond_7

    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    .line 557
    const/16 v21, 0x0

    aget-object v17, v14, v21

    .line 558
    .local v17, "latestFile":Ljava/io/File;
    const/4 v12, 0x1

    .local v12, "index":I
    :goto_2
    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_5

    .line 559
    aget-object v11, v14, v12

    .line 560
    .local v11, "file":Ljava/io/File;
    if-eqz v11, :cond_3

    if-eqz v17, :cond_3

    .line 561
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v22

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-lez v21, :cond_4

    .line 562
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 563
    .local v6, "canDeletePath":Ljava/lang/String;
    :goto_3
    const-string/jumbo v21, "H5AppCenterServiceImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "[clearAppUnzipPackage] add duplicated old package: ("

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v22

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-lez v21, :cond_3

    .line 567
    move-object/from16 v17, v11

    .line 558
    .end local v6    # "canDeletePath":Ljava/lang/String;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 562
    :cond_4
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .end local v11    # "file":Ljava/io/File;
    :cond_5
    move-object/from16 v16, v17

    .line 577
    .end local v12    # "index":I
    .end local v17    # "latestFile":Ljava/io/File;
    .local v16, "lastFile":Ljava/io/File;
    :goto_4
    const-string/jumbo v21, "no"

    const-string/jumbo v22, "h5_needDeleteByExpired4A"

    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_9

    const/16 v18, 0x1

    .line 580
    .local v18, "needDeleteByExpired":Z
    :goto_5
    if-eqz v16, :cond_6

    if-eqz v18, :cond_6

    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 582
    .local v8, "current":J
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v22

    add-long v22, v22, p1

    cmp-long v21, v22, v8

    if-gez v21, :cond_6

    .line 583
    const-string/jumbo v21, "H5AppCenterServiceImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "[clearAppUnzipPackage] add expired (lastModified: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ") "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v8    # "current":J
    .end local v14    # "installFile":[Ljava/io/File;
    .end local v16    # "lastFile":Ljava/io/File;
    .end local v18    # "needDeleteByExpired":Z
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 573
    .restart local v14    # "installFile":[Ljava/io/File;
    :cond_7
    if-eqz v14, :cond_8

    array-length v0, v14

    move/from16 v21, v0

    if-lez v21, :cond_8

    const/16 v21, 0x0

    aget-object v16, v14, v21

    goto :goto_4

    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    .line 577
    .restart local v16    # "lastFile":Ljava/io/File;
    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    .line 589
    .end local v5    # "appIdFile":Ljava/io/File;
    .end local v14    # "installFile":[Ljava/io/File;
    .end local v16    # "lastFile":Ljava/io/File;
    :cond_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_b

    .line 590
    const-string/jumbo v19, "H5AppCenterServiceImpl"

    const-string/jumbo v20, "[clearAppUnzipPackage] deleteInstallList is Empty"

    invoke-static/range {v19 .. v20}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    :cond_b
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 594
    .local v10, "deletePath":Ljava/lang/String;
    const-string/jumbo v20, "H5AppCenterServiceImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "[clearAppUnzipPackage] delete installPkg : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    goto :goto_6
.end method

.method public getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getInstance()Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-result-object v0

    return-object v0
.end method

.method public getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;-><init>()V

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string/jumbo v0, "1.3.0.0"

    return-object v0
.end method

.method public loadPresetApp(Ljava/util/List;)V
    .locals 0
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
    .line 175
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Liox;>;"
    sput-object p1, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5PreSetPkgInfoList:Ljava/util/List;

    .line 176
    return-void
.end method

.method public loadPresetAppList(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "inputStream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappcenter/util/H5AppGlobal;->getFromAssets(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "presetJSON":Ljava/lang/String;
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "loadPresetApp:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 121
    .local v2, "appResJO":Lcom/alibaba/fastjson/JSONObject;
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 122
    .local v1, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    const-string/jumbo v8, "config"

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 123
    .local v3, "config":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    .line 124
    const-string/jumbo v8, "data"

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 125
    .local v4, "dataList":Lcom/alibaba/fastjson/JSONArray;
    if-nez v4, :cond_1

    .line 126
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    const-string/jumbo v9, "dataList == null return"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v1    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .end local v2    # "appResJO":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "config":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "dataList":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "presetJSON":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 152
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    const-string/jumbo v9, "Exception:"

    invoke-static {v8, v9, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .restart local v2    # "appResJO":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "config":Lcom/alibaba/fastjson/JSONObject;
    .restart local v4    # "dataList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v7    # "presetJSON":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    .line 130
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-ge v6, v8, :cond_4

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :try_start_2
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v8, :cond_2

    .line 134
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->toAppInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 141
    :goto_2
    if-nez v0, :cond_3

    .line 142
    :try_start_3
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    const-string/jumbo v9, "appInfo == null continue "

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 130
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 136
    :cond_2
    :try_start_4
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    const-string/jumbo v9, "dataList.get(index) is not JSONObject"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 138
    :catch_1
    move-exception v5

    .line 139
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 145
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v8, "H5AppCenterServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "preset appId:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v8, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 150
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v1, v8, v9}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public loadPresetAppNow(Ljava/util/List;Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;)V
    .locals 5
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    .local p1, "h5PreSetPkgInfo":Ljava/util/List;, "Ljava/util/List<Liox;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liox;

    .line 181
    .local v2, "preSetPkgInfo":Liox;
    if-eqz v2, :cond_0

    .line 1057
    iget-object v4, v2, Liox;->a:Ljava/io/InputStream;

    .line 182
    if-eqz v4, :cond_0

    .line 1061
    iget-object v4, v2, Liox;->b:Ljava/lang/String;

    .line 183
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1065
    iget-object v4, v2, Liox;->c:Ljava/lang/String;

    .line 184
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;-><init>()V

    .line 186
    .local v1, "h5App":Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    .line 2061
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    iget-object v4, v2, Liox;->b:Ljava/lang/String;

    .line 187
    iput-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 2065
    iget-object v4, v2, Liox;->c:Ljava/lang/String;

    .line 188
    iput-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 3037
    iget-object v4, v2, Liox;->d:Ljava/lang/String;

    .line 189
    iput-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    .line 190
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 3057
    iget-object v4, v2, Liox;->a:Ljava/io/InputStream;

    .line 191
    invoke-virtual {v1, v4, p2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->presetApp(Ljava/io/InputStream;Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;)V

    goto :goto_0

    .line 194
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v1    # "h5App":Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    .end local v2    # "preSetPkgInfo":Liox;
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    const-string/jumbo v0, "H5AppCenterServiceImpl"

    const-string/jumbo v1, "create DBService."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getInstance()Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    const-string/jumbo v0, "H5AppCenterServiceImpl"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V
    .locals 1
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "forceSync"    # Z

    .prologue
    .line 464
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZ)V

    .line 465
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZ)V
    .locals 1
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "forceSync"    # Z
    .param p3, "downLoadAmr"    # Z

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZZ)V

    .line 470
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZZ)V
    .locals 6
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "forceSync"    # Z
    .param p3, "downLoadAmr"    # Z
    .param p4, "downloadRando"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 475
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZZLjava/lang/String;)V

    .line 477
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;Z)V
    .locals 1
    .param p1, "appRes"    # Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .param p2, "forceSync"    # Z

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZ)V

    .line 198
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZ)V
    .locals 1
    .param p1, "appRes"    # Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .param p2, "forceSync"    # Z
    .param p3, "downLoadAmr"    # Z

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZ)V

    .line 203
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZ)V
    .locals 6
    .param p1, "appRes"    # Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .param p2, "forceSync"    # Z
    .param p3, "downLoadAmr"    # Z
    .param p4, "downloadRandom"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZLjava/lang/String;)V

    .line 207
    return-void
.end method

.method public setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZLjava/lang/String;)V
    .locals 28
    .param p1, "appRes"    # Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .param p2, "forceSync"    # Z
    .param p3, "downLoadAmr"    # Z
    .param p4, "downloadRandom"    # Z
    .param p5, "scene"    # Ljava/lang/String;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    if-nez v4, :cond_1

    .line 213
    :cond_0
    const-string/jumbo v4, "H5AppCenterServiceImpl"

    const-string/jumbo v6, "appRes==null"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 219
    .local v12, "beginSetAppConfig":J
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->applyAppResConfig(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;Z)V

    .line 221
    const-string/jumbo v4, "H5AppCenterServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "handle discard data: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->discardData:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->discardData:Ljava/util/Map;

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->discardData:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 223
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->discardData:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 224
    .local v16, "discardItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 225
    .local v11, "appId":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    .line 226
    .local v24, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 227
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 228
    .local v22, "version":Ljava/lang/String;
    const-string/jumbo v7, "H5AppCenterServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "delete discard app: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-object/from16 v0, v22

    invoke-virtual {v7, v11, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    .end local v11    # "appId":Ljava/lang/String;
    .end local v16    # "discardItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v22    # "version":Ljava/lang/String;
    .end local v24    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 236
    .local v20, "setAppInfoTime":Ljava/lang/Long;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    if-eqz v4, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 238
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->enableSaveAppInfoList()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz p2, :cond_7

    .line 239
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->saveAppInfoList(Ljava/util/List;ZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->removeAppIdList:Ljava/util/List;

    if-eqz v4, :cond_b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->removeAppIdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getAllApp()Ljava/util/Map;

    move-result-object v19

    .line 266
    .local v19, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;>;"
    if-eqz v19, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 267
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 268
    .local v10, "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->removeAppIdList:Ljava/util/List;

    .line 269
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 271
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    .line 272
    .local v23, "versionList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    if-eqz v23, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 273
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 274
    .local v5, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    new-instance v17, Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct/range {v17 .. v17}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;-><init>()V

    .line 276
    .local v17, "h5App":Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    if-eqz v5, :cond_6

    .line 277
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 279
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 281
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    iget-object v8, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v9, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 241
    .end local v5    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v10    # "appEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;>;"
    .end local v17    # "h5App":Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    .end local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;>;"
    .end local v23    # "versionList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    :cond_7
    const/16 v18, 0x0

    .local v18, "index":I
    :goto_4
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v18

    if-gt v0, v4, :cond_4

    .line 242
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 243
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 244
    .restart local v5    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 245
    .local v14, "beginSetUpAppInfo":J
    if-nez p2, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    iget-object v6, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v7, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 246
    invoke-virtual {v4, v6, v7}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v4

    if-nez v4, :cond_a

    :cond_8
    move-object/from16 v4, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    .line 247
    invoke-direct/range {v4 .. v9}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZZLjava/lang/String;)V

    .line 252
    :goto_5
    const-string/jumbo v4, "H5NebulaAppDBCost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " setUpInfo cost"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v14

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v5    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v14    # "beginSetUpAppInfo":J
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 249
    .restart local v5    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .restart local v14    # "beginSetUpAppInfo":J
    :cond_a
    const-string/jumbo v4, "H5AppCenterServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " has set Preset App not add to db data"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " version:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 257
    .end local v5    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v14    # "beginSetUpAppInfo":J
    .end local v18    # "index":I
    :catch_0
    move-exception v21

    .line 258
    .local v21, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5AppCenterServiceImpl"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 293
    .end local v21    # "throwable":Ljava/lang/Throwable;
    :cond_b
    const-string/jumbo v4, "H5NebulaAppDBCost"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AppRes total cost"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v12

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " setAppConfig:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 294
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v12

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " setAllAppInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    sub-long v8, v8, v26

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
