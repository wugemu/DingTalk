.class public Lcom/ut/mini/UTHybridHelper;
.super Ljava/lang/Object;
.source "UTHybridHelper.java"


# static fields
.field private static s_instance:Lcom/ut/mini/UTHybridHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/ut/mini/UTHybridHelper;

    invoke-direct {v0}, Lcom/ut/mini/UTHybridHelper;-><init>()V

    sput-object v0, Lcom/ut/mini/UTHybridHelper;->s_instance:Lcom/ut/mini/UTHybridHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 678
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 679
    check-cast v1, Ljava/lang/String;

    .line 683
    .local v1, "lPageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 684
    .local v0, "lHashCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 681
    .end local v0    # "lHashCode":I
    .end local v1    # "lPageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "lPageName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getH5PageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "urlPageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 459
    const-string/jumbo v0, ""

    .line 460
    .local v0, "pageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 13205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 460
    if-nez v2, :cond_1

    .line 461
    move-object v0, p1

    .line 473
    :cond_0
    :goto_0
    return-object v0

    .line 14205
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 463
    if-nez v2, :cond_0

    .line 464
    const-string/jumbo v2, "?"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 465
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 467
    move-object v0, p2

    goto :goto_0

    .line 469
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/ut/mini/UTHybridHelper;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/ut/mini/UTHybridHelper;->s_instance:Lcom/ut/mini/UTHybridHelper;

    return-object v0
.end method

.method private getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "nextPageUtparam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 478
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "h5url"    # Ljava/lang/String;
    .param p5, "nextPageUtparam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 483
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 19
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "h5url"    # Ljava/lang/String;
    .param p5, "nextPageUtparam"    # Ljava/lang/String;
    .param p6, "isH5UT2"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v2

    .line 491
    .local v2, "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-nez v2, :cond_1

    .line 492
    const/4 v5, 0x0

    .line 673
    :cond_0
    :goto_0
    return-object v5

    .line 496
    :cond_1
    const/4 v8, 0x0

    .line 497
    .local v8, "spm":Ljava/lang/String;
    const/4 v11, 0x0

    .line 498
    .local v11, "utparam":Ljava/lang/String;
    const/4 v6, 0x0

    .line 499
    .local v6, "scm":Ljava/lang/String;
    if-eqz p6, :cond_19

    .line 500
    const-string/jumbo v14, "spm-cnt"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 501
    .local v9, "spmcnt":Ljava/lang/String;
    const-string/jumbo v14, "utparam-cnt"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 502
    .local v12, "utparamcnt":Ljava/lang/String;
    const-string/jumbo v14, "spm-url"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "spm":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 503
    .restart local v8    # "spm":Ljava/lang/String;
    const-string/jumbo v14, "utparam-url"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "utparam":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 504
    .restart local v11    # "utparam":Ljava/lang/String;
    const-string/jumbo v14, "scm"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "scm":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 508
    .restart local v6    # "scm":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 509
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 510
    .local v4, "lUrl_h5":Landroid/net/Uri;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 511
    const-string/jumbo v14, "spm"

    invoke-virtual {v4, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 513
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 514
    const-string/jumbo v14, "utparam"

    invoke-virtual {v4, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 516
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 517
    const-string/jumbo v14, "scm"

    invoke-virtual {v4, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 526
    .end local v4    # "lUrl_h5":Landroid/net/Uri;
    :cond_4
    :goto_1
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 527
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 528
    .local v3, "lUrl":Landroid/net/Uri;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 529
    const-string/jumbo v14, "spm"

    invoke-virtual {v3, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 531
    :cond_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 532
    const-string/jumbo v14, "utparam"

    invoke-virtual {v3, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 534
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 535
    const-string/jumbo v14, "scm"

    invoke-virtual {v3, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 555
    .end local v3    # "lUrl":Landroid/net/Uri;
    :cond_7
    :goto_2
    iget-object v14, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 556
    iput-object v8, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    .line 558
    :cond_8
    iget-object v14, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 559
    iput-object v11, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    .line 561
    :cond_9
    iget-object v14, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 562
    iput-object v6, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    .line 565
    :cond_a
    iget-boolean v14, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsH5Page:Z

    if-nez v14, :cond_e

    .line 566
    iput-object v9, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    .line 567
    iput-object v8, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    .line 568
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 569
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeySpmUrl()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 572
    :cond_b
    iput-object v6, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    .line 573
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 574
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyScmUrl()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    .line 576
    :cond_c
    const/4 v14, 0x1

    iput-boolean v14, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 578
    iput-object v12, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    .line 579
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    move-object/from16 v0, p5

    invoke-virtual {v14, v11, v0}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 580
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParamCnt()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v11, v15}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 582
    iput-object v11, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    .line 583
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParam()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 584
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParam()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    .line 587
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTHybridHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "cacheKey":Ljava/lang/String;
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKey(Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeySpmUrl(Ljava/lang/String;)V

    .line 590
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyScmUrl(Ljava/lang/String;)V

    .line 591
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParam(Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParamCnt(Ljava/lang/String;)V

    .line 593
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "mLastCacheKey:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",mLastCacheKeySpmUrl:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeySpmUrl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",mLastCacheKeyUtParam:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParam()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",mLastCacheKeyUtParamCnt:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParamCnt()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper lPageStateObject:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->getPageStatMap(Z)Ljava/util/Map;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    .end local v1    # "cacheKey":Ljava/lang/String;
    :cond_e
    const/4 v14, 0x1

    iput-boolean v14, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsH5Page:Z

    .line 604
    if-eqz p6, :cond_1a

    .line 605
    const-string/jumbo v14, "spm-pre"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 606
    .local v10, "spmpre":Ljava/lang/String;
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper spm-pre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 608
    iget-object v10, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 609
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper mSpmPre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    :cond_f
    const-string/jumbo v14, "scm-pre"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 612
    .local v7, "scmpre":Ljava/lang/String;
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper scm-pre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 614
    iget-object v7, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    .line 615
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper mScmPre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    :cond_10
    const-string/jumbo v14, "utparam-pre"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 618
    .local v13, "utparampre":Ljava/lang/String;
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper utparam-pre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 620
    iget-object v13, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    .line 621
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper mUtparamPre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    :cond_11
    :goto_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 647
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 648
    const-string/jumbo v14, "spm-cnt"

    invoke-interface {v5, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_12
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_13

    .line 651
    const-string/jumbo v14, "spm-url"

    invoke-interface {v5, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_13
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 654
    const-string/jumbo v14, "spm-pre"

    invoke-interface {v5, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_14
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_15

    .line 657
    const-string/jumbo v14, "scm"

    invoke-interface {v5, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_15
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_16

    .line 660
    const-string/jumbo v14, "scm-pre"

    invoke-interface {v5, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :cond_16
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_17

    .line 663
    const-string/jumbo v14, "utparam-cnt"

    invoke-interface {v5, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_17
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_18

    .line 666
    const-string/jumbo v14, "utparam-url"

    invoke-interface {v5, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_18
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 669
    const-string/jumbo v14, "utparam-pre"

    invoke-interface {v5, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 542
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "scmpre":Ljava/lang/String;
    .end local v9    # "spmcnt":Ljava/lang/String;
    .end local v10    # "spmpre":Ljava/lang/String;
    .end local v12    # "utparamcnt":Ljava/lang/String;
    .end local v13    # "utparampre":Ljava/lang/String;
    :cond_19
    const-string/jumbo v14, "spmcnt"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 543
    .restart local v9    # "spmcnt":Ljava/lang/String;
    const-string/jumbo v14, "utparamcnt"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 546
    .restart local v12    # "utparamcnt":Ljava/lang/String;
    :try_start_2
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 547
    .restart local v3    # "lUrl":Landroid/net/Uri;
    const-string/jumbo v14, "spm"

    invoke-virtual {v3, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 548
    const-string/jumbo v14, "utparam"

    invoke-virtual {v3, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 549
    const-string/jumbo v14, "scm"

    invoke-virtual {v3, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto/16 :goto_2

    .line 624
    .end local v3    # "lUrl":Landroid/net/Uri;
    :cond_1a
    const-string/jumbo v14, "spmpre"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 625
    .restart local v10    # "spmpre":Ljava/lang/String;
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper _spmpre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 627
    iget-object v10, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 628
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper mSpmPre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :cond_1b
    const-string/jumbo v14, "scmpre"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 632
    .restart local v7    # "scmpre":Ljava/lang/String;
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper _scmpre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 634
    iget-object v7, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    .line 635
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper mScmPre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    :cond_1c
    const-string/jumbo v14, "utparampre"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 639
    .restart local v13    # "utparampre":Ljava/lang/String;
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper _utparampre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 641
    iget-object v13, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    .line 642
    const-string/jumbo v14, "h5Page"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "UTHybridHelper mUtparamPre:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v7    # "scmpre":Ljava/lang/String;
    .end local v10    # "spmpre":Ljava/lang/String;
    .end local v13    # "utparampre":Ljava/lang/String;
    :catch_0
    move-exception v14

    goto/16 :goto_2

    .line 540
    :catch_1
    move-exception v14

    goto/16 :goto_2

    :catch_2
    move-exception v14

    goto/16 :goto_1
.end method

.method private h5Ctrl(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V
    .locals 14
    .param p1, "eventIdStr"    # Ljava/lang/String;
    .param p2, "oTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 287
    .local p3, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, -0x1

    .line 289
    .local v3, "eventId":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 293
    :goto_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 296
    :cond_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    const-string/jumbo v5, "urlpagename"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 301
    .local v10, "urlPageName":Ljava/lang/String;
    const-string/jumbo v5, "url"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 302
    .local v9, "url":Ljava/lang/String;
    invoke-direct {p0, v10, v9}, Lcom/ut/mini/UTHybridHelper;->getH5PageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "pageName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 7205
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 304
    if-eqz v5, :cond_3

    .line 305
    :cond_2
    const-string/jumbo v5, "h5Ctrl"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "pageName is null,return"

    aput-object v13, v6, v12

    invoke-static {v5, v6}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 309
    :cond_3
    const-string/jumbo v5, "logkey"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 311
    .local v4, "logKey":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 8205
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 311
    if-eqz v5, :cond_5

    .line 312
    :cond_4
    const-string/jumbo v5, "h5Ctrl"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "logkey is null,return"

    aput-object v13, v6, v12

    invoke-static {v5, v6}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 316
    :cond_5
    const/4 v7, 0x0

    .line 317
    .local v7, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "utjstype"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 318
    .local v11, "utjstype":Ljava/lang/String;
    const-string/jumbo v5, "utjstype"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    if-eqz v11, :cond_6

    const-string/jumbo v5, "0"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 320
    :cond_6
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/ut/mini/UTHybridHelper;->h5CtrlParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 325
    :cond_7
    :goto_2
    new-instance v1, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 326
    .local v1, "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v8

    .line 327
    .local v8, "lTracker":Lcom/ut/mini/UTTracker;
    if-eqz v8, :cond_9

    .line 328
    invoke-virtual {v1}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 321
    .end local v1    # "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v8    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_8
    const-string/jumbo v5, "1"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 322
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/ut/mini/UTHybridHelper;->h5CtrlParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    goto :goto_2

    .line 330
    .restart local v1    # "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .restart local v8    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_9
    const-string/jumbo v5, "h5Ctrl event error"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v13, v6, v12

    invoke-static {v5, v6}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v1    # "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v2    # "pageName":Ljava/lang/String;
    .end local v4    # "logKey":Ljava/lang/String;
    .end local v7    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "lTracker":Lcom/ut/mini/UTTracker;
    .end local v9    # "url":Ljava/lang/String;
    .end local v10    # "urlPageName":Ljava/lang/String;
    .end local v11    # "utjstype":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method private h5Ctrl2(Ljava/util/Map;)V
    .locals 11
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 89
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v2, -0x1

    .line 94
    .local v2, "eventId":I
    :try_start_0
    const-string/jumbo v5, "funcId"

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 95
    .local v7, "eventIdStr":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 99
    .end local v7    # "eventIdStr":Ljava/lang/String;
    :goto_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 102
    const-string/jumbo v5, "url"

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "pageName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 104
    if-eqz v5, :cond_3

    .line 105
    :cond_2
    const-string/jumbo v4, "h5Ctrl"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "pageName is null,return"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_3
    const-string/jumbo v5, "logkey"

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    .local v3, "logKey":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 2205
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 110
    if-eqz v5, :cond_5

    .line 111
    :cond_4
    const-string/jumbo v4, "h5Ctrl"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "logkey is null,return"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_5
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    .local v0, "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v8

    .line 117
    .local v8, "lTracker":Lcom/ut/mini/UTTracker;
    if-eqz v8, :cond_6

    .line 118
    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 120
    :cond_6
    const-string/jumbo v4, "h5Ctrl event error"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v1    # "pageName":Ljava/lang/String;
    .end local v3    # "logKey":Ljava/lang/String;
    .end local v8    # "lTracker":Lcom/ut/mini/UTTracker;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private h5CtrlParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 427
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 428
    :cond_0
    const/4 v2, 0x0

    .line 442
    :goto_0
    return-object v2

    .line 431
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 432
    .local v2, "lArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "logkeyargs"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 433
    .local v3, "logkeyargs":Ljava/lang/String;
    const-string/jumbo v4, "_lka"

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    .end local v3    # "logkeyargs":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string/jumbo v4, "cna"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 436
    .local v0, "cna":Ljava/lang/String;
    const-string/jumbo v4, "_cna"

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .end local v0    # "cna":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string/jumbo v4, "extendargs"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 439
    .local v1, "extendargs":Ljava/lang/String;
    const-string/jumbo v4, "_h5ea"

    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    .end local v1    # "extendargs":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string/jumbo v4, "_ish5"

    const-string/jumbo v5, "1"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private h5CtrlParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 446
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 447
    :cond_0
    const/4 v1, 0x0

    .line 454
    :goto_0
    return-object v1

    .line 450
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 451
    .local v1, "lArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "extendargs"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 452
    .local v0, "extendargs":Ljava/lang/String;
    const-string/jumbo v2, "_h5ea"

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .end local v0    # "extendargs":Ljava/lang/String;
    :cond_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string/jumbo v2, "_ish5"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private h5Page(Ljava/util/Date;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 20
    .param p1, "opTime"    # Ljava/util/Date;
    .param p3, "webview"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lamu;->b()V

    .line 204
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string/jumbo v7, "urlpagename"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 209
    .local v16, "urlPageName":Ljava/lang/String;
    const-string/jumbo v7, "url"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 210
    .local v15, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/ut/mini/UTHybridHelper;->getH5PageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "pageName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 5205
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 213
    if-eqz v7, :cond_3

    .line 214
    :cond_2
    const-string/jumbo v7, "h5Page"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string/jumbo v19, "pageName is null,return"

    aput-object v19, v8, v18

    invoke-static {v7, v8}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_3
    const/4 v9, 0x0

    .line 220
    .local v9, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "utjstype"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 221
    .local v17, "utjstype":Ljava/lang/String;
    const-string/jumbo v7, "utjstype"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    if-eqz v17, :cond_4

    const-string/jumbo v7, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 223
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ut/mini/UTHybridHelper;->h5PageParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 231
    :cond_5
    :goto_1
    const/16 v5, 0x7d6

    .line 232
    .local v5, "lEventID":I
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/ut/mini/UTPageHitHelper;->isH52001(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 233
    const/16 v5, 0x7d1

    .line 236
    :cond_6
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ut/mini/UTVariables;->getRefPage()Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "prePageName":Ljava/lang/String;
    new-instance v3, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    .local v3, "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    const/16 v7, 0x7d1

    if-ne v7, v5, :cond_9

    .line 241
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/ut/mini/UTVariables;->setRefPage(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/ut/mini/UTPageHitHelper;->getNextPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v11

    .line 245
    .local v11, "lNextPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_7

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 246
    invoke-virtual {v3, v11}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 250
    :cond_7
    move-object/from16 v0, p3

    instance-of v7, v0, Landroid/app/Activity;

    if-eqz v7, :cond_9

    .line 251
    const-string/jumbo v14, ""

    .line 252
    .local v14, "nextPageUtparam":Ljava/lang/String;
    if-eqz v11, :cond_8

    .line 253
    const-string/jumbo v7, "utparam-url"

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "nextPageUtparam":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 255
    .restart local v14    # "nextPageUtparam":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v14}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 264
    .end local v11    # "lNextPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "nextPageUtparam":Ljava/lang/String;
    :cond_9
    :try_start_0
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v7

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Lakk;->a(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 6205
    .local v12, "lTPKString":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 266
    if-nez v7, :cond_a

    .line 267
    const-string/jumbo v7, "_tpk"

    invoke-virtual {v3, v7, v12}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v12    # "lTPKString":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v13

    .line 277
    .local v13, "lTracker":Lcom/ut/mini/UTTracker;
    if-eqz v13, :cond_c

    .line 278
    invoke-virtual {v3}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 283
    :goto_3
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/ut/mini/UTPageHitHelper;->setH5Called(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 224
    .end local v3    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v5    # "lEventID":I
    .end local v6    # "prePageName":Ljava/lang/String;
    .end local v13    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_b
    const-string/jumbo v7, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ut/mini/UTHybridHelper;->h5PageParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    goto/16 :goto_1

    .line 269
    .restart local v3    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .restart local v5    # "lEventID":I
    .restart local v6    # "prePageName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 270
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 280
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v13    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_c
    const-string/jumbo v7, "h5Page event error"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string/jumbo v19, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v19, v8, v18

    invoke-static {v7, v8}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private h5Page2(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 18
    .param p2, "view"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lamu;->b()V

    .line 126
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :cond_0
    const-string/jumbo v1, "h5Page2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v8, "dataMap is null or empty,return"

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string/jumbo v1, "url"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    .local v4, "pageName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 3205
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 133
    if-eqz v1, :cond_3

    .line 134
    :cond_2
    const-string/jumbo v1, "h5Page2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v8, "pageName is null,return"

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTVariables;->getRefPage()Ljava/lang/String;

    move-result-object v10

    .line 139
    .local v10, "prePageName":Ljava/lang/String;
    const/16 v9, 0x7d6

    .line 140
    .local v9, "lEventID":I
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTPageHitHelper;->isH52001(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    const/16 v9, 0x7d1

    .line 144
    :cond_4
    const/16 v1, 0x7d1

    if-ne v1, v9, :cond_9

    .line 145
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ut/mini/UTVariables;->setRefPage(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTPageHitHelper;->getNextPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v13

    .line 149
    .local v13, "pageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_8

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 150
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 156
    :goto_1
    move-object/from16 v0, p2

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 157
    const-string/jumbo v1, "_h5url"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 158
    .local v5, "_h5url":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 159
    .local v6, "nextPageUtparam":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 160
    const-string/jumbo v1, "utparam-url"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "nextPageUtparam":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "nextPageUtparam":Ljava/lang/String;
    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    .line 162
    invoke-direct/range {v1 .. v6}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 163
    .local v15, "encodedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v15, :cond_6

    .line 164
    invoke-interface {v13, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 172
    .end local v5    # "_h5url":Ljava/lang/String;
    .end local v6    # "nextPageUtparam":Ljava/lang/String;
    .end local v15    # "encodedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_2
    new-instance v7, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v4

    invoke-direct/range {v7 .. v13}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 179
    .local v7, "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    :try_start_0
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v2

    const-string/jumbo v1, "_h5url"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lakk;->a(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    .line 4205
    .local v16, "lTPKString":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 181
    if-nez v1, :cond_7

    .line 182
    const-string/jumbo v1, "_tpk"

    move-object/from16 v0, v16

    invoke-virtual {v7, v1, v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v16    # "lTPKString":Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v17

    .line 192
    .local v17, "lTracker":Lcom/ut/mini/UTTracker;
    if-eqz v17, :cond_a

    .line 193
    invoke-virtual {v7}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 198
    :goto_4
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTPageHitHelper;->setH5Called(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 152
    .end local v7    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v17    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_8
    move-object/from16 v13, p1

    goto :goto_1

    .line 170
    .end local v13    # "pageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v13, p1

    .restart local v13    # "pageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 184
    .restart local v7    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    :catch_0
    move-exception v14

    .line 185
    .local v14, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v14, v2}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 195
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v17    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_a
    const-string/jumbo v1, "h5Page event error"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v8, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private h5PageParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v17

    if-nez v17, :cond_1

    .line 337
    :cond_0
    const/4 v4, 0x0

    .line 407
    :goto_0
    return-object v4

    .line 340
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 341
    .local v4, "lArgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v17, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 343
    .local v16, "url":Ljava/lang/String;
    const-string/jumbo v18, "_h5url"

    if-nez v16, :cond_b

    const-string/jumbo v17, ""

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    if-eqz v16, :cond_2

    .line 350
    const/16 v17, 0x3f

    :try_start_0
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 351
    .local v9, "lUrlPos":I
    if-lez v9, :cond_2

    .line 352
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "lBaseUrlStr":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/taobao/ju/track/JTrack$Page;->getArgsMap(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v5

    .line 354
    .local v5, "lArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    .line 355
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v5    # "lArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "lBaseUrlStr":Ljava/lang/String;
    .end local v9    # "lUrlPos":I
    :cond_2
    :goto_2
    if-eqz v16, :cond_d

    .line 367
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 368
    .local v8, "lUrl":Landroid/net/Uri;
    const-string/jumbo v17, "spm"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 369
    .local v13, "spm":Ljava/lang/String;
    if-eqz v13, :cond_c

    .line 9205
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 369
    if-nez v17, :cond_c

    .line 370
    const-string/jumbo v17, "spm"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :goto_3
    const-string/jumbo v17, "scm"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 376
    .local v12, "scm":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 10205
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 376
    if-nez v17, :cond_3

    .line 377
    const-string/jumbo v17, "scm"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_3
    const-string/jumbo v17, "pg1stepk"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 380
    .local v11, "pg1stepk":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 11205
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 380
    if-nez v17, :cond_4

    .line 381
    const-string/jumbo v17, "pg1stepk"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_4
    const-string/jumbo v17, "point"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12205
    .local v7, "lPoint":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 384
    if-nez v17, :cond_5

    .line 385
    const-string/jumbo v17, "issb"

    const-string/jumbo v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .end local v7    # "lPoint":Ljava/lang/String;
    .end local v8    # "lUrl":Landroid/net/Uri;
    .end local v11    # "pg1stepk":Ljava/lang/String;
    .end local v12    # "scm":Ljava/lang/String;
    .end local v13    # "spm":Ljava/lang/String;
    :cond_5
    :goto_4
    const-string/jumbo v17, "spmcnt"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 391
    .local v14, "spmcnt":Ljava/lang/String;
    const-string/jumbo v17, "_spmcnt"

    if-nez v14, :cond_6

    const-string/jumbo v14, ""

    .end local v14    # "spmcnt":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string/jumbo v17, "spmpre"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 394
    .local v15, "spmpre":Ljava/lang/String;
    const-string/jumbo v17, "_spmpre"

    if-nez v15, :cond_7

    const-string/jumbo v15, ""

    .end local v15    # "spmpre":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v17, "lzsid"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 397
    .local v10, "lzsid":Ljava/lang/String;
    const-string/jumbo v17, "_lzsid"

    if-nez v10, :cond_8

    const-string/jumbo v10, ""

    .end local v10    # "lzsid":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string/jumbo v17, "extendargs"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 400
    .local v3, "eargs":Ljava/lang/String;
    const-string/jumbo v17, "_h5ea"

    if-nez v3, :cond_9

    const-string/jumbo v3, ""

    .end local v3    # "eargs":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string/jumbo v17, "cna"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 403
    .local v2, "cna":Ljava/lang/String;
    const-string/jumbo v17, "_cna"

    if-nez v2, :cond_a

    const-string/jumbo v2, ""

    .end local v2    # "cna":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string/jumbo v17, "_ish5"

    const-string/jumbo v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    move-object/from16 v17, v16

    .line 343
    goto/16 :goto_1

    .line 372
    .restart local v8    # "lUrl":Landroid/net/Uri;
    .restart local v13    # "spm":Ljava/lang/String;
    :cond_c
    const-string/jumbo v17, "spm"

    const-string/jumbo v18, "0.0.0.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 388
    .end local v8    # "lUrl":Landroid/net/Uri;
    .end local v13    # "spm":Ljava/lang/String;
    :cond_d
    const-string/jumbo v17, "spm"

    const-string/jumbo v18, "0.0.0.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :catch_0
    move-exception v17

    goto/16 :goto_2
.end method

.method private h5PageParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 411
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 412
    :cond_0
    const/4 v1, 0x0

    .line 423
    :goto_0
    return-object v1

    .line 415
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v1, "lArgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "url"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 417
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "_h5url"

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string/jumbo v3, "extendargs"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 420
    .local v0, "extendargs":Ljava/lang/String;
    const-string/jumbo v3, "_h5ea"

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .end local v0    # "extendargs":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string/jumbo v3, "_ish5"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public h5UT(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 7
    .param p2, "view"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 39
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 40
    :cond_0
    const-string/jumbo v3, "h5UT"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "dataMap is empty"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string/jumbo v3, "functype"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "funcType":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 48
    const-string/jumbo v3, "h5UT"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "funcType is null"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string/jumbo v3, "utjstype"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    .local v1, "lutjstype":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 53
    const-string/jumbo v3, "h5UT"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "utjstype should be 1 or 0 or null"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string/jumbo v3, "functype"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 59
    .local v2, "opTime":Ljava/util/Date;
    const-string/jumbo v3, "2001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 60
    invoke-direct {p0, v2, p1, p2}, Lcom/ut/mini/UTHybridHelper;->h5Page(Ljava/util/Date;Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_4
    invoke-direct {p0, v0, v2, p1}, Lcom/ut/mini/UTHybridHelper;->h5Ctrl(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public h5UT2(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 5
    .param p2, "view"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 67
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 68
    :cond_0
    const-string/jumbo v1, "h5UT"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "dataMap is empty"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    const-string/jumbo v1, "functype"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "funcType":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 76
    const-string/jumbo v1, "h5UT"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "funcType is null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_3
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    const-string/jumbo v1, "funcId"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/ut/mini/UTHybridHelper;->h5Page2(Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_4
    const-string/jumbo v1, "ctrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0, p1}, Lcom/ut/mini/UTHybridHelper;->h5Ctrl2(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setH5Url(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTVariables;->setH5Url(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method
