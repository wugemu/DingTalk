.class public Lcom/alipay/mobile/nebula/util/H5ParamParser;
.super Ljava/lang/Object;
.source "H5ParamParser.java"


# static fields
.field private static final LAUNCHER_PARAM_URL:Ljava/lang/String; = "launcherParamUrl"

.field public static final TAG:Ljava/lang/String; = "H5ParamParser"

.field private static paramMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/util/H5ParamImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParamImp(Ljava/lang/String;)Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 474
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 486
    :cond_0
    :goto_0
    return-object v2

    .line 478
    :cond_1
    sget-object v5, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 479
    .local v1, "longName":Ljava/lang/String;
    sget-object v6, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    .line 480
    .local v2, "param":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getLongName()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "ln":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getShortName()Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "sn":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .end local v0    # "ln":Ljava/lang/String;
    .end local v1    # "longName":Ljava/lang/String;
    .end local v2    # "param":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    .end local v3    # "sn":Ljava/lang/String;
    :cond_3
    move-object v2, v4

    .line 486
    goto :goto_0
.end method

.method public static parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fillDefault"    # Z

    .prologue
    .line 402
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    .end local p0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object p0

    .line 405
    .restart local p0    # "bundle":Landroid/os/Bundle;
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    .line 406
    .local v0, "param":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    invoke-virtual {v0, p0, p2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->unify(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0
.end method

.method public static parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 11
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "fillDefault"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 410
    if-nez p0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-object p0

    .line 413
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->transParamParse(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 415
    const-string/jumbo v6, "20000067"

    const-string/jumbo v7, "appId"

    invoke-static {p0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 416
    .local v4, "showProgressDefault":Z
    sget-object v6, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    const-string/jumbo v7, "showProgress"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->setDefaultValue(Ljava/lang/Object;)V

    .line 418
    if-eqz p1, :cond_2

    .line 420
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->preFillDefault(Landroid/os/Bundle;)V

    .line 423
    :cond_2
    sget-object v6, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 424
    .local v2, "longName":Ljava/lang/String;
    sget-object v7, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    .line 425
    .local v3, "param":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    invoke-virtual {v3, p0, p1}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->unify(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    .line 426
    goto :goto_1

    .line 429
    .end local v2    # "longName":Ljava/lang/String;
    .end local v3    # "param":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    :cond_3
    const-string/jumbo v6, "allowsBounceVertical"

    const-string/jumbo v7, ""

    .line 430
    invoke-static {p0, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "allowsBounceVertical":Ljava/lang/String;
    const-string/jumbo v6, "H5ParamParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "merge LONG_ALLOWS_BOUNCE_VERTICAL & LONG_CAN_PULL_DOWN "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 435
    const-string/jumbo v6, "YES"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 436
    const-string/jumbo v6, "canPullDown"

    invoke-virtual {p0, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    :cond_4
    :goto_2
    const-string/jumbo v6, "tabItemCount"

    invoke-static {p0, v6, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v5

    .line 446
    .local v5, "tabItemCount":I
    const-string/jumbo v6, "enableTabBar"

    const-string/jumbo v7, "default"

    invoke-static {p0, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "enableTabBar":Ljava/lang/String;
    const-string/jumbo v6, "H5ParamParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tabItemCount "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", enableTabBar "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string/jumbo v6, "default"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 457
    if-eq v5, v9, :cond_5

    .line 458
    const-string/jumbo v6, "enableTabBar"

    const-string/jumbo v7, "YES"

    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_5
    :goto_3
    const-string/jumbo v6, "showThirdDisclaimer"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 466
    const-string/jumbo v6, "H5ParamParser"

    const-string/jumbo v7, "parse contains LONG_SHOW_THIRDDISCLAIMER force set true"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string/jumbo v6, "showThirdDisclaimer"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 468
    const-string/jumbo v6, "showThirdDisclaimer"

    invoke-virtual {p0, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 437
    .end local v1    # "enableTabBar":Ljava/lang/String;
    .end local v5    # "tabItemCount":I
    :cond_6
    const-string/jumbo v6, "NO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 438
    const-string/jumbo v6, "canPullDown"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 460
    .restart local v1    # "enableTabBar":Ljava/lang/String;
    .restart local v5    # "tabItemCount":I
    :cond_7
    const-string/jumbo v6, "YES"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 461
    if-ne v5, v9, :cond_5

    .line 462
    const-string/jumbo v6, "tabItemCount"

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3
.end method

.method public static parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 19
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "TAG"    # Ljava/lang/String;

    .prologue
    .line 538
    if-nez p0, :cond_1

    .line 539
    const-string/jumbo v15, "invalid magic parameter!"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    const-string/jumbo v15, "u"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 544
    .local v12, "urlStr":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 545
    const-string/jumbo v15, "url"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 548
    :cond_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 549
    const-string/jumbo v15, "no url found in magic parameter"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_3
    const/4 v3, 0x0

    .line 554
    .local v3, "decodedOptions":Ljava/lang/String;
    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 555
    .local v11, "uri":Landroid/net/Uri;
    const-string/jumbo v15, "__webview_options__"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v11, v15, v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 557
    .local v7, "optionsStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 558
    const-string/jumbo v15, "no magic options found"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "found magic options "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :try_start_0
    const-string/jumbo v15, "UTF-8"

    invoke-static {v7, v15}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 569
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 570
    const-string/jumbo v15, "failed to decode magic options"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :catch_0
    move-exception v10

    .line 567
    .local v10, "t":Ljava/lang/Throwable;
    const-string/jumbo v15, "magic options decode exp "

    move-object/from16 v0, p1

    invoke-static {v0, v15, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 575
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_5
    if-nez v3, :cond_6

    .line 576
    :try_start_1
    const-string/jumbo v15, "decodedOptions is null."

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 621
    :catch_1
    move-exception v4

    .line 622
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "failed to decode magic option."

    move-object/from16 v0, p1

    invoke-static {v0, v15, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 579
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_2
    const-string/jumbo v15, "&"

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 580
    .local v9, "pairs":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    aget-object v8, v9, v15

    .line 581
    .local v8, "pair":Ljava/lang/String;
    const-string/jumbo v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 582
    .local v14, "values":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    .line 585
    const/16 v17, 0x0

    aget-object v17, v14, v17

    const-string/jumbo v18, "UTF-8"

    invoke-static/range {v17 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 586
    .local v5, "key":Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v17, v14, v17

    const-string/jumbo v18, "UTF-8"

    invoke-static/range {v17 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 589
    .local v13, "value":Ljava/lang/String;
    const-string/jumbo v17, "launchParamsTag"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 590
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 591
    const-string/jumbo v17, "appId"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v17

    .line 594
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 595
    .local v6, "launcherParam":Landroid/os/Bundle;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    .line 596
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "launchParamsTag "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 604
    .end local v2    # "appId":Ljava/lang/String;
    .end local v6    # "launcherParam":Landroid/os/Bundle;
    :cond_7
    const-string/jumbo v17, "dr"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string/jumbo v17, "delayRender"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string/jumbo v17, "tt"

    .line 605
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string/jumbo v17, "transparent"

    .line 606
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 610
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->remove(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 612
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "decode magic option [key] "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " [value] "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .end local v5    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 616
    .end local v8    # "pair":Ljava/lang/String;
    .end local v14    # "values":[Ljava/lang/String;
    :cond_9
    const-string/jumbo v15, "showThirdDisclaimer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 617
    const-string/jumbo v15, "parseMagicOptions contains LONG_SHOW_THIRDDISCLAIMER force set true"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string/jumbo v15, "showThirdDisclaimer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 619
    const-string/jumbo v15, "showThirdDisclaimer"

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private static preFillDefault(Landroid/os/Bundle;)V
    .locals 10
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 501
    const-string/jumbo v5, "showOptionMenu"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "so"

    .line 502
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 504
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 505
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v2, :cond_3

    .line 506
    const-string/jumbo v5, "h5_preFillDefault_h5App"

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "config":Ljava/lang/String;
    const-string/jumbo v5, "no"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 510
    const-string/jumbo v5, "isH5app"

    invoke-static {p0, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    .line 511
    .local v3, "isH5App":Z
    const-string/jumbo v8, "H5ParamParser"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pre-fill set showOptionMenu as "

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string/jumbo v5, "showOptionMenu"

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    .end local v1    # "config":Ljava/lang/String;
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "isH5App":Z
    :cond_0
    :goto_2
    return-void

    .restart local v1    # "config":Ljava/lang/String;
    .restart local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v3    # "isH5App":Z
    :cond_1
    move v5, v7

    .line 511
    goto :goto_0

    :cond_2
    move v6, v7

    .line 512
    goto :goto_1

    .line 518
    .end local v1    # "config":Ljava/lang/String;
    .end local v3    # "isH5App":Z
    :cond_3
    const-string/jumbo v5, "appId"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "appId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 523
    .local v4, "value":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 524
    const-string/jumbo v0, "20000067"

    .line 526
    :cond_4
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "20000101"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "20000042"

    .line 527
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 528
    :cond_5
    const/4 v4, 0x1

    .line 531
    :cond_6
    const-string/jumbo v5, "H5ParamParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pre-fill set showOptionMenu as "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string/jumbo v5, "showOptionMenu"

    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public static remove(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 490
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->getParamImp(Ljava/lang/String;)Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    move-result-object v0

    .line 494
    .local v0, "paramImpl":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getLongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLauncherParams(Lcom/alibaba/fastjson/JSONObject;Landroid/os/Bundle;)V
    .locals 12
    .param p0, "launchParams"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 630
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 631
    :cond_0
    const-string/jumbo v8, "H5ParamParser"

    const-string/jumbo v9, "can\'t parse launch parameters as json"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_1
    return-void

    .line 635
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 637
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v8, "launcherParamUrl"

    const-string/jumbo v9, "url"

    invoke-static {p0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 641
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->getParamImp(Ljava/lang/String;)Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    move-result-object v5

    .line 642
    .local v5, "paramImpl":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    if-eqz v5, :cond_5

    .line 643
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getLongName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 644
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getShortName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 645
    :cond_3
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getLongName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    .line 646
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getShortName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 648
    :cond_4
    const-string/jumbo v8, "H5ParamParser"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "merge config [key] "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " already exists and value not empty"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_5
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 655
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_7

    move-object v6, v7

    .line 656
    check-cast v6, Ljava/lang/String;

    .line 657
    .local v6, "stringValue":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 658
    const-string/jumbo v8, "H5ParamParser"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "bundle contain "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 660
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " not to merge appInfo"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 658
    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .end local v6    # "stringValue":Ljava/lang/String;
    :goto_1
    const-string/jumbo v8, "H5ParamParser"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "read launch param [key] "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " [value] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 662
    .restart local v6    # "stringValue":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 664
    .end local v6    # "stringValue":Ljava/lang/String;
    :cond_7
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_8

    move-object v8, v7

    .line 665
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 666
    :cond_8
    instance-of v8, v7, Ljava/math/BigDecimal;

    if-eqz v8, :cond_9

    move-object v0, v7

    .line 667
    check-cast v0, Ljava/math/BigDecimal;

    .line 668
    .local v0, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    invoke-virtual {p1, v3, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 669
    .end local v0    # "bd":Ljava/math/BigDecimal;
    :cond_9
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_a

    move-object v8, v7

    .line 670
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 671
    :cond_a
    instance-of v8, v7, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v8, :cond_b

    move-object v2, v7

    .line 672
    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 673
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 674
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_b
    instance-of v8, v7, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v8, :cond_c

    move-object v1, v7

    .line 675
    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    .line 676
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 678
    .end local v1    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_c
    const-string/jumbo v8, "H5ParamParser"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ignore launch param [key] "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " [value] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static transParamParse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, 0x33000000

    const/high16 v8, -0x4d000000

    const/4 v7, 0x0

    .line 334
    if-nez p0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-object p0

    .line 337
    :cond_1
    const-string/jumbo v5, "tt"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "transParam":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 339
    const-string/jumbo v5, "transparent"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 342
    const-string/jumbo v5, "transparent"

    invoke-static {p0, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "tt"

    .line 343
    invoke-static {p0, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 344
    :cond_3
    const-string/jumbo v4, "YES"

    .line 348
    :cond_4
    const-string/jumbo v5, "YES"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 349
    const-string/jumbo v5, "st"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 350
    const-string/jumbo v5, "showTitleBar"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 351
    const-string/jumbo v5, "sb"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v5, "showToolBar"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 353
    const-string/jumbo v5, "sp"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 354
    const-string/jumbo v5, "showProgress"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 355
    const-string/jumbo v5, "sd"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v5, "showDomain"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v5, "pd"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v5, "canPullDown"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 359
    const-string/jumbo v5, "abv"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v5, "allowsBounceVertical"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 361
    const-string/jumbo v5, "st"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v5, "showTitleBar"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v5, "sb"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v5, "showToolBar"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v5, "sp"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v5, "showProgress"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v5, "sd"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v5, "showDomain"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v5, "pd"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v5, "canPullDown"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string/jumbo v5, "abv"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string/jumbo v5, "allowsBounceVertical"

    const-string/jumbo v6, "NO"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v5, "backgroundColor"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "bc"

    .line 375
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 376
    const-string/jumbo v5, "fullscreen"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "fullScreenStr":Ljava/lang/String;
    const-string/jumbo v5, "fullscreen"

    invoke-static {p0, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 379
    .local v0, "fullScreen":Z
    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "YES"

    .line 380
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 382
    :cond_5
    const-string/jumbo v5, "transAnimate"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "transAnimateStr":Ljava/lang/String;
    const-string/jumbo v5, "transAnimate"

    .line 384
    invoke-static {p0, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 385
    .local v2, "transAnimate":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "YES"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    if-eqz v2, :cond_8

    .line 388
    :cond_7
    const-string/jumbo v5, "bc"

    invoke-virtual {p0, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    const-string/jumbo v5, "backgroundColor"

    invoke-virtual {p0, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 391
    :cond_8
    const-string/jumbo v5, "bc"

    invoke-virtual {p0, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    const-string/jumbo v5, "backgroundColor"

    invoke-virtual {p0, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
