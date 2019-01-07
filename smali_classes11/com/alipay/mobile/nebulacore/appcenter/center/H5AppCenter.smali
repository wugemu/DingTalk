.class public Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;
.super Ljava/lang/Object;
.source "H5AppCenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5AppCenter"

.field private static final TINY_APP_CREATE:Ljava/lang/String; = "com.alipay.mobile.nebula.tinyAppCreate"

.field private static appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLauncherParamResourcePackage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p0, "resKey"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 624
    const-string/jumbo v8, "nbpkgres"

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 625
    .local v6, "packageList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v8

    const-class v9, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 631
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v3, :cond_0

    .line 632
    const-string/jumbo v8, "h5_pkgresmode"

    invoke-interface {v3, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "configStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 634
    .local v4, "joConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "switchextend"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 635
    .local v7, "value":Ljava/lang/String;
    const/4 v5, 0x3

    .line 637
    .local v5, "limit":I
    :try_start_0
    const-string/jumbo v8, "limit"

    const-string/jumbo v9, "3"

    invoke-static {v4, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 641
    :goto_1
    const-string/jumbo v8, "off"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 646
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 647
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-le v8, v5, :cond_2

    .line 648
    const-string/jumbo v8, "H5AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "packageList.size() : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " limit : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 659
    :catch_0
    move-exception v2

    .line 660
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5AppCenter"

    invoke-static {v8, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 638
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 639
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "H5AppCenter"

    invoke-static {v8, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 652
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 654
    .local v0, "appId":Ljava/lang/Object;
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 655
    check-cast v0, Ljava/lang/String;

    .end local v0    # "appId":Ljava/lang/Object;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {p0, v0, v9, v10}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->addResourcePackage(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public static initAppHost(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p0, "strHost"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 450
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 451
    const-string/jumbo v7, "H5AppCenter"

    const-string/jumbo v8, "invalid app host parameters"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 455
    .local v3, "joHost":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 456
    :cond_1
    const-string/jumbo v7, "H5AppCenter"

    const-string/jumbo v8, "can\'t parse host parameter as json"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_2
    const-string/jumbo v7, "enable"

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 461
    .local v0, "enabled":Z
    const-string/jumbo v7, "H5AppCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "map host enabled "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string/jumbo v7, "mapHost"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 464
    const/4 v4, 0x0

    .line 466
    .local v4, "onlineHost":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 468
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    .line 469
    .local v2, "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    const/4 v5, 0x0

    .line 470
    .local v5, "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v2, :cond_3

    .line 471
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 473
    .restart local v5    # "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    :cond_3
    const/4 v6, 0x0

    .line 474
    .local v6, "rpcUrl":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 475
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getRpcUrl()Ljava/lang/String;

    move-result-object v6

    .line 477
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string/jumbo v7, "alipay.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 478
    const-string/jumbo v7, "online"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 488
    .end local v2    # "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .end local v5    # "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v6    # "rpcUrl":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 489
    const-string/jumbo v7, "online"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 492
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 493
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 496
    :cond_7
    const-string/jumbo v7, "onlineHost"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->clearServiceWork(Landroid/os/Bundle;)V

    .line 499
    const-class v7, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 500
    .local v1, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v1, :cond_8

    .line 501
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->setStartParams(Landroid/os/Bundle;)V

    .line 503
    :cond_8
    const-string/jumbo v7, "H5AppCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onlineHost "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .restart local v2    # "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .restart local v5    # "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .restart local v6    # "rpcUrl":Ljava/lang/String;
    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v7, "test.alipay.net"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 480
    const-string/jumbo v7, "test"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 481
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "mobilegwpre.alipay.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 482
    const-string/jumbo v7, "pre"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 484
    :cond_b
    const-string/jumbo v7, "dev"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method private static initAppParams(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 440
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const-string/jumbo v1, "H5AppCenter"

    const-string/jumbo v2, "invalid launch parameters"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 446
    .local v0, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->setLauncherParams(Lcom/alibaba/fastjson/JSONObject;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static initAppUrl(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 20
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "launchParams"    # Ljava/lang/String;
    .param p2, "isTinyApp"    # Z

    .prologue
    .line 510
    const/4 v15, 0x0

    .line 511
    .local v15, "url":Ljava/lang/String;
    const-string/jumbo v17, "entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "base64Url":Ljava/lang/String;
    const/4 v9, 0x0

    .line 513
    .local v9, "hasEntryParam":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 514
    const-string/jumbo v17, "urlInBase64"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 518
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 520
    const/16 v17, 0x0

    :try_start_0
    move/from16 v0, v17

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->base64ToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 521
    if-eqz v9, :cond_0

    .line 522
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "/www/"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 529
    :cond_0
    :goto_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 530
    const-string/jumbo v17, "url"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 531
    const-string/jumbo v17, "H5AppCenter"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "getUrl form LONG_URL:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 535
    const-string/jumbo v17, "u"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 536
    const-string/jumbo v17, "H5AppCenter"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "getUrl form URL:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 541
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 542
    .local v10, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v17, "url"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 543
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 544
    const-string/jumbo v17, "u"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 545
    const-string/jumbo v17, "H5AppCenter"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "getUrl form launchParams u "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .end local v10    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    :goto_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 553
    const-string/jumbo v17, "H5AppCenter"

    const-string/jumbo v18, "both url and entry are empty, FATAL_ERROR!"

    invoke-static/range {v17 .. v18}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_3
    return-void

    .line 516
    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 524
    :catch_0
    move-exception v7

    .line 525
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v17, "H5AppCenter"

    const-string/jumbo v18, "exception detail"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 547
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    const-string/jumbo v17, "H5AppCenter"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "getUrl form launchParams url "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 557
    .end local v10    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    const-string/jumbo v17, "onlineHost"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 559
    .local v13, "onlineHost":Ljava/lang/String;
    const-string/jumbo v17, "offlineHost"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 564
    .local v12, "offLineHost":Ljava/lang/String;
    const-string/jumbo v17, "mapHost"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v11

    .line 566
    .local v11, "mapHost":Z
    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 567
    const/16 v17, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 568
    if-eqz v11, :cond_b

    .line 569
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 575
    :goto_4
    if-eqz v11, :cond_c

    const/4 v5, 0x1

    .line 589
    .local v5, "appType":I
    :goto_5
    if-nez p2, :cond_7

    const-string/jumbo v17, "yes"

    const-string/jumbo v18, "enableDSL"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 590
    :cond_7
    const-string/jumbo v17, "page"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 591
    .local v14, "page":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 592
    const/16 v16, 0x0

    .line 593
    .local v16, "useNew":Z
    const-class v17, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 594
    .local v8, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v8, :cond_8

    .line 595
    const-string/jumbo v17, "NO"

    const-string/jumbo v18, "h5_useNewPageParamConcat"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    const/16 v16, 0x1

    .line 598
    :cond_8
    :goto_6
    if-eqz v16, :cond_11

    .line 599
    const-string/jumbo v17, "preventAutoLoginLoop"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string/jumbo v17, "preventAutoLoginLoop"

    const/16 v18, 0x0

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_a

    .line 601
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "index.html#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 615
    .end local v8    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v14    # "page":Ljava/lang/String;
    .end local v16    # "useNew":Z
    :cond_a
    :goto_7
    const-string/jumbo v17, "H5AppCenter"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "set final url "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " appType "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    sput-object v15, Lios;->c:Ljava/lang/String;

    .line 617
    const-string/jumbo v17, "url"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string/jumbo v17, "u"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 619
    const-string/jumbo v17, "appType"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 573
    .end local v5    # "appType":I
    :cond_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 575
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 579
    :cond_d
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual {v15, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 580
    const/4 v5, 0x1

    .restart local v5    # "appType":I
    goto/16 :goto_5

    .line 581
    .end local v5    # "appType":I
    :cond_e
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_f

    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 582
    const/4 v5, 0x0

    .restart local v5    # "appType":I
    goto/16 :goto_5

    .line 585
    .end local v5    # "appType":I
    :cond_f
    const/4 v5, 0x2

    .restart local v5    # "appType":I
    goto/16 :goto_5

    .line 595
    .restart local v8    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v14    # "page":Ljava/lang/String;
    .restart local v16    # "useNew":Z
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 604
    :cond_11
    const/16 v17, 0x23

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 605
    .local v4, "anchorIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_a

    .line 606
    const-string/jumbo v17, "H5AppCenter"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "page:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " beforeUrl "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/16 v17, 0x0

    add-int/lit8 v18, v4, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "afterUrl":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_7
.end method

.method public static initTinyAppRes(Landroid/os/Bundle;Z)V
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "isFromPre"    # Z

    .prologue
    const/4 v7, 0x0

    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, "tinyPubRes":Z
    const-string/jumbo v5, "yes"

    const-string/jumbo v6, "tinyPubRes"

    invoke-static {p0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    const/4 v3, 0x1

    .line 242
    :cond_0
    const-string/jumbo v5, "isTinyApp"

    invoke-static {p0, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_3

    .line 244
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 245
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 246
    .local v1, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v1, :cond_3

    .line 247
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getTinyCommonApp()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 249
    const-string/jumbo v5, "h5_addTinyRes"

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "value":Ljava/lang/String;
    const/4 v0, 0x1

    .line 251
    .local v0, "add":Z
    const-string/jumbo v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 252
    const/4 v0, 0x0

    .line 254
    :cond_2
    if-eqz v0, :cond_3

    .line 255
    const-string/jumbo v5, "tinyRes"

    invoke-static {v5, v2, v7, p1}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->addResourcePackage(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 260
    .end local v0    # "add":Z
    .end local v1    # "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static openInstallVersion()Z
    .locals 2

    .prologue
    .line 263
    const-string/jumbo v1, "h5_useInstallVersion"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x0

    .line 267
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static setupH5App(Landroid/os/Bundle;ZZ)V
    .locals 34
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "isNebulaApp"    # Z
    .param p2, "hasCheck"    # Z

    .prologue
    .line 272
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-nez v4, :cond_0

    .line 273
    const-string/jumbo v4, "H5AppCenter"

    const-string/jumbo v6, "failed to get app info!"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    const/16 v28, 0x0

    .line 279
    .local v28, "nebulaAppInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    const-string/jumbo v4, "appId"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "appId":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 281
    .local v11, "appVersion":Ljava/lang/String;
    const-string/jumbo v4, "nebula_loading_version"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 282
    .local v29, "nebula_loading_version":Ljava/lang/String;
    const-string/jumbo v4, "H5AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "nebula_loading_version: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->openInstallVersion()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    :try_start_0
    const-string/jumbo v4, "nebula_loading_version"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v4, "_"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 289
    .local v12, "array":[Ljava/lang/String;
    array-length v4, v12

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 290
    const/4 v4, 0x1

    aget-object v25, v12, v4

    .line 291
    .local v25, "loadingVer":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v18

    .line 293
    .local v18, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v18, :cond_1

    .line 294
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v5, v1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v28

    .line 295
    if-eqz v28, :cond_f

    .line 296
    move-object/from16 v11, v25

    .line 297
    const-string/jumbo v4, "H5AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "use loadingVer "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v12    # "array":[Ljava/lang/String;
    .end local v18    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v25    # "loadingVer":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 312
    const-string/jumbo v4, "H5AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "get appVersion from nebula "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_2
    const-string/jumbo v4, "installVersion"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 317
    .local v21, "installVersion":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 318
    const-string/jumbo v4, "H5AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "use installVersion "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    move-object/from16 v11, v21

    .line 322
    :cond_3
    const-string/jumbo v4, "H5AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "appCenterVersion\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    if-eqz p1, :cond_4

    .line 329
    if-nez p2, :cond_4

    .line 330
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->updateApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V

    .line 334
    :cond_4
    const-string/jumbo v4, "appVersion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v4, "version"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    if-nez v28, :cond_5

    .line 339
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v4, v5, v11}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v28

    .line 343
    :cond_5
    if-eqz v28, :cond_6

    .line 344
    const-string/jumbo v4, "release_type"

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->release_type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, v28

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    .line 346
    .local v15, "extent":Ljava/lang/String;
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v23

    .line 347
    .local v23, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "package_nick"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 348
    .local v30, "nick":Ljava/lang/String;
    const-string/jumbo v4, "package_nick"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v4, "lottieAnimation"

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v26

    .line 350
    .local v26, "lottieConfig":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v26, :cond_6

    .line 351
    const-string/jumbo v4, "lottieAnimation"

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .end local v15    # "extent":Ljava/lang/String;
    .end local v23    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v26    # "lottieConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v30    # "nick":Ljava/lang/String;
    :cond_6
    invoke-static/range {v28 .. v28}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v22

    .line 356
    .local v22, "isH5tinyApp":Z
    const-string/jumbo v4, "H5AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isH5tinyApp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    if-eqz v22, :cond_7

    .line 359
    const-string/jumbo v4, "isH5app"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    const-string/jumbo v4, "app_channel"

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    :cond_7
    const-string/jumbo v4, "isTinyApp"

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v4, v5, v11}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getH5AppCdnBaseUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 366
    .local v13, "cdnHost":Ljava/lang/String;
    const-string/jumbo v4, "H5AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "appId "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " appVersion"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  cdnHost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v4, "debugCdn"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 369
    .local v14, "debugCdn":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 370
    invoke-static {v14}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 371
    const-string/jumbo v4, "H5AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "set cdn host as debugCdn "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_8
    const-string/jumbo v4, "cdnBaseUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v4, v5, v11}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 376
    .local v20, "installPath":Ljava/lang/String;
    const-string/jumbo v4, "H5AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "appId "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " installPath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 379
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v4, v5, v11}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->hasPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 381
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v4

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 382
    .local v3, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v3, :cond_9

    .line 383
    const-string/jumbo v4, "H5_APP_UNZIPPATH_ERROR"

    sget-object v6, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 384
    invoke-interface {v6, v5, v11}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "url"

    .line 385
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "appId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "^version="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "H-MM"

    .line 383
    invoke-interface/range {v3 .. v10}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .end local v3    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :cond_9
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "file://"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 393
    .local v31, "offlineHost":Ljava/lang/String;
    const-string/jumbo v4, "/"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 396
    :cond_a
    const-string/jumbo v4, "offlineHost"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .end local v31    # "offlineHost":Ljava/lang/String;
    :cond_b
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v4, v5, v11}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getExtraJo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 401
    .local v17, "extraStr":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 402
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 403
    .local v16, "extraJo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 404
    const-string/jumbo v4, "usePresetPopmenu"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 405
    .local v33, "usePresetPopmenu":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 406
    const-string/jumbo v4, "usePresetPopmenu"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .end local v16    # "extraJo":Lcom/alibaba/fastjson/JSONObject;
    .end local v33    # "usePresetPopmenu":Ljava/lang/String;
    :cond_c
    :goto_1
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-interface {v4, v5, v11}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v27

    .line 415
    .local v27, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v24, ""

    .line 416
    .local v24, "launchParams":Ljava/lang/String;
    if-eqz v27, :cond_e

    .line 417
    const-string/jumbo v4, "launchParams"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "launchParams":Ljava/lang/String;
    check-cast v24, Ljava/lang/String;

    .line 418
    .restart local v24    # "launchParams":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 419
    const-string/jumbo v4, "launchParams"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->initAppParams(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 423
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableDSL(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "no"

    const-string/jumbo v6, "h5_enableDSL"

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 424
    const-string/jumbo v4, "H5AppCenter"

    const-string/jumbo v6, "enableDSL set isTinyApp true"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string/jumbo v4, "isTinyApp"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    :cond_d
    const-string/jumbo v4, "host"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 431
    .local v19, "host":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 432
    const-string/jumbo v4, "host"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->initAppHost(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 436
    .end local v19    # "host":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->initAppUrl(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 437
    return-void

    .line 299
    .end local v13    # "cdnHost":Ljava/lang/String;
    .end local v14    # "debugCdn":Ljava/lang/String;
    .end local v17    # "extraStr":Ljava/lang/String;
    .end local v20    # "installPath":Ljava/lang/String;
    .end local v21    # "installVersion":Ljava/lang/String;
    .end local v22    # "isH5tinyApp":Z
    .end local v24    # "launchParams":Ljava/lang/String;
    .end local v27    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "array":[Ljava/lang/String;
    .restart local v18    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v25    # "loadingVer":Ljava/lang/String;
    :cond_f
    :try_start_1
    const-string/jumbo v4, "H5AppCenter"

    const-string/jumbo v6, "appInfo is null not use installAppVersion"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 304
    .end local v12    # "array":[Ljava/lang/String;
    .end local v18    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v25    # "loadingVer":Ljava/lang/String;
    :catch_0
    move-exception v32

    .line 305
    .local v32, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5AppCenter"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 408
    .end local v32    # "throwable":Ljava/lang/Throwable;
    .restart local v13    # "cdnHost":Ljava/lang/String;
    .restart local v14    # "debugCdn":Ljava/lang/String;
    .restart local v16    # "extraJo":Lcom/alibaba/fastjson/JSONObject;
    .restart local v17    # "extraStr":Ljava/lang/String;
    .restart local v20    # "installPath":Ljava/lang/String;
    .restart local v21    # "installVersion":Ljava/lang/String;
    .restart local v22    # "isH5tinyApp":Z
    .restart local v33    # "usePresetPopmenu":Ljava/lang/String;
    :cond_10
    const-string/jumbo v4, "usePresetPopmenu"

    const-string/jumbo v6, "NO"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static setupPage(Landroid/os/Bundle;Z)V
    .locals 40
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "hasCheck"    # Z

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 57
    .local v30, "time":J
    const-class v35, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "clazz":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    sput-object v35, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 59
    const-string/jumbo v35, "appId"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "appId":Ljava/lang/String;
    const-string/jumbo v35, "isNotTinyProcess"

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v36

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    sget-object v35, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-eqz v35, :cond_e

    sget-object v35, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isH5App(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_e

    const/4 v15, 0x1

    .line 66
    .local v15, "isH5App":Z
    :goto_0
    const/16 v17, 0x0

    .line 67
    .local v17, "isNebulaApp":Z
    sget-object v35, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-eqz v35, :cond_0

    sget-object v35, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isNebulaApp(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 68
    const/16 v17, 0x1

    .line 71
    :cond_0
    if-eqz v17, :cond_1

    .line 73
    const/4 v15, 0x1

    .line 75
    :cond_1
    const-string/jumbo v35, "isH5app"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const-string/jumbo v35, "H5AppCenter"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string/jumbo v37, "setupPage appId "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " isH5App "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " isNebulaApp:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v35, "isNebulaApp"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string/jumbo v35, "appConfigJson"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "appConfigJson":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_2

    const-string/jumbo v35, "no"

    const-string/jumbo v36, "H5_appConfigJson"

    invoke-static/range {v36 .. v36}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_2

    .line 84
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v35

    const-class v36, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 85
    .local v12, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    if-eqz v12, :cond_2

    .line 86
    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerOnAppConfig(Landroid/os/Bundle;)V

    .line 90
    .end local v12    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :cond_2
    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_3

    .line 91
    const-string/jumbo v35, "appId"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->setupH5App(Landroid/os/Bundle;ZZ)V

    .line 95
    :cond_3
    sget-boolean v35, Liog;->a:Z

    if-nez v35, :cond_f

    const-string/jumbo v35, "firstInitNotInitGlobalPackage"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v35

    if-eqz v35, :cond_f

    .line 98
    const-string/jumbo v35, "H5AppCenter"

    const-string/jumbo v36, "!H5Flag.ucReady && FIRST_INIT_USE_ANDROID_WEBVIEW not H5GlobalPackage.prepare()"

    invoke-static/range {v35 .. v36}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_4
    :goto_1
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->initTinyAppRes(Landroid/os/Bundle;Z)V

    .line 122
    move-object/from16 v0, p0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->addLauncherParamResourcePackage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 124
    const-string/jumbo v35, "isTinyApp"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v16

    .line 125
    .local v16, "isH5TinyApp":Z
    if-eqz v16, :cond_5

    .line 126
    const-string/jumbo v35, "appVersion"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "appVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 128
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v21

    .line 129
    .local v21, "manager":Ldq;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v35, "H5AppCenter"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string/jumbo v37, "tinyApp create\uff0c appId is "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " , appVersion is "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v35, "com.alipay.mobile.nebula.tinyAppCreate"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v35, "appId"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v35, "appVersion"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ldq;->a(Landroid/content/Intent;)Z

    .line 137
    .end local v6    # "appVersion":Ljava/lang/String;
    .end local v10    # "context":Landroid/content/Context;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v21    # "manager":Ldq;
    :cond_5
    const-string/jumbo v35, "launchParamsTag"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 138
    .local v18, "launchParamsTag":Ljava/lang/String;
    const-string/jumbo v35, "page"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 139
    .local v23, "page":Ljava/lang/String;
    const/16 v34, 0x0

    .line 140
    .local v34, "useNew":Z
    const-class v35, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 141
    .local v11, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v11, :cond_6

    .line 142
    const-string/jumbo v35, "NO"

    const-string/jumbo v36, "h5_useNewLaunchParamsTagConcat"

    move-object/from16 v0, v36

    invoke-interface {v11, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_10

    const/16 v34, 0x1

    .line 144
    :cond_6
    :goto_2
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_7

    .line 145
    if-eqz v34, :cond_11

    .line 146
    const-string/jumbo v35, "H5AppCenter"

    const-string/jumbo v36, " get launchParamsTag from URL"

    invoke-static/range {v35 .. v36}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string/jumbo v35, "https://www.alipay.com"

    move-object/from16 v0, v35

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 149
    .local v7, "base":Ljava/net/URL;
    new-instance v29, Ljava/net/URL;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v7, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 150
    .local v29, "tmp":Ljava/net/URL;
    invoke-virtual/range {v29 .. v29}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 151
    .local v24, "path":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_7

    .line 152
    const/16 v35, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 162
    .end local v7    # "base":Ljava/net/URL;
    .end local v24    # "path":Ljava/lang/String;
    .end local v29    # "tmp":Ljava/net/URL;
    :cond_7
    :goto_3
    const-string/jumbo v35, "H5AppCenter"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string/jumbo v37, " get launchParamsTag "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v13, 0x0

    .line 167
    .local v13, "haH5Pkg":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 168
    .local v32, "timeMillis":J
    if-eqz v17, :cond_12

    .line 171
    const/4 v13, 0x1

    .line 173
    const/16 v22, 0x0

    .line 174
    .local v22, "needLock":Z
    if-eqz v16, :cond_8

    .line 176
    const/16 v22, 0x1

    .line 179
    :cond_8
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_9

    .line 180
    const/16 v22, 0x1

    .line 183
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->preparePackage(Landroid/os/Bundle;Z)V

    .line 192
    .end local v22    # "needLock":Z
    :cond_a
    :goto_4
    const-string/jumbo v35, "hasH5Pkg"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string/jumbo v35, "H5AppCenter"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string/jumbo v37, "H5ContentPackagePool.preparePackage cost "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v32

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 194
    invoke-static/range {v35 .. v36}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v35, "backBehavior"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_b

    .line 198
    if-eqz v15, :cond_13

    const-string/jumbo v8, "pop"

    .line 199
    .local v8, "bb":Ljava/lang/String;
    :goto_5
    const-string/jumbo v35, "backBehavior"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v35, "H5AppCenter"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string/jumbo v37, "set "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " back behavior as "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v8    # "bb":Ljava/lang/String;
    :cond_b
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_14

    .line 206
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v20

    .line 207
    .local v20, "launcherParam":Landroid/os/Bundle;
    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Landroid/os/Bundle;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_c

    .line 208
    const-string/jumbo v35, "H5AppCenter"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string/jumbo v37, "launchParamsTag "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 221
    .end local v20    # "launcherParam":Landroid/os/Bundle;
    :cond_c
    :goto_6
    const-string/jumbo v35, "H5AppCenter"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 223
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 225
    const-string/jumbo v35, "preAuth"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v25

    .line 226
    .local v25, "preAuth":Z
    const-string/jumbo v35, "preAuth"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 228
    .local v28, "text":Ljava/lang/String;
    if-nez v25, :cond_d

    const-string/jumbo v35, "YES"

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_d

    const-string/jumbo v35, "TRUE"

    .line 229
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_15

    :cond_d
    const/16 v26, 0x1

    .line 230
    .local v26, "requestPreAuth":Z
    :goto_7
    const-string/jumbo v35, "requestPreAuth"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    const-string/jumbo v35, "prepare_app"

    move-object/from16 v0, v35

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;J)V

    .line 233
    return-void

    .line 64
    .end local v4    # "appConfigJson":Ljava/lang/String;
    .end local v11    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v13    # "haH5Pkg":Z
    .end local v15    # "isH5App":Z
    .end local v16    # "isH5TinyApp":Z
    .end local v17    # "isNebulaApp":Z
    .end local v18    # "launchParamsTag":Ljava/lang/String;
    .end local v23    # "page":Ljava/lang/String;
    .end local v25    # "preAuth":Z
    .end local v26    # "requestPreAuth":Z
    .end local v28    # "text":Ljava/lang/String;
    .end local v32    # "timeMillis":J
    .end local v34    # "useNew":Z
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 103
    .restart local v4    # "appConfigJson":Ljava/lang/String;
    .restart local v15    # "isH5App":Z
    .restart local v17    # "isNebulaApp":Z
    :cond_f
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v35

    if-nez v35, :cond_4

    .line 105
    const-string/jumbo v35, "IO"

    invoke-static/range {v35 .. v35}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v35

    new-instance v36, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter$1;

    invoke-direct/range {v36 .. v36}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter$1;-><init>()V

    invoke-virtual/range {v35 .. v36}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 142
    .restart local v11    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v16    # "isH5TinyApp":Z
    .restart local v18    # "launchParamsTag":Ljava/lang/String;
    .restart local v23    # "page":Ljava/lang/String;
    .restart local v34    # "useNew":Z
    :cond_10
    const/16 v34, 0x0

    goto/16 :goto_2

    .line 154
    :catch_0
    move-exception v27

    .line 155
    .local v27, "t":Ljava/lang/Throwable;
    const-string/jumbo v35, "H5AppCenter"

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 158
    .end local v27    # "t":Ljava/lang/Throwable;
    :cond_11
    const-string/jumbo v35, "H5AppCenter"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string/jumbo v37, " get launchParamsTag from page:"

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object/from16 v18, v23

    goto/16 :goto_3

    .line 185
    .restart local v13    # "haH5Pkg":Z
    .restart local v32    # "timeMillis":J
    :cond_12
    sget-object v35, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-eqz v35, :cond_a

    sget-object v35, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->appProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-interface {v0, v5, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->hasPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 186
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->preparePackage(Landroid/os/Bundle;Z)V

    .line 188
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 198
    :cond_13
    const-string/jumbo v8, "back"

    goto/16 :goto_5

    .line 214
    :cond_14
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v35

    const-string/jumbo v36, "index"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    .line 215
    .local v19, "launcher":Landroid/os/Bundle;
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_c

    .line 216
    const-string/jumbo v35, "H5AppCenter"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string/jumbo v37, "launcher "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 229
    .end local v19    # "launcher":Landroid/os/Bundle;
    .restart local v25    # "preAuth":Z
    .restart local v28    # "text":Ljava/lang/String;
    :cond_15
    const/16 v26, 0x0

    goto/16 :goto_7
.end method
