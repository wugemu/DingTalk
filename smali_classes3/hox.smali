.class public final Lhox;
.super Ljava/lang/Object;
.source "AlipayHandleUrlImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;)Landroid/os/Bundle;
    .locals 6
    .param p0, "aliPayMiniParseUrlResult"    # Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    .prologue
    .line 348
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p0, :cond_1

    .line 350
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->extensionBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->extensionBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 354
    .local v1, "tempBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 357
    .end local v1    # "tempBundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v2, "appId"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->miniAppId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v2, "ddCorpId"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddCorpId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v2, "ddAppId"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAppId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v2, "ddAgentId"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAgentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v2, "ddFallbackUrl"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddFallbackUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v2, "ddAppType"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAppType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v2, "ddStatus"

    iget v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddStatus:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    const-string/jumbo v2, "page"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->page:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v2, "query"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->query:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v2, "keepAlive"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->keepAlive:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v2, "source"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->source:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v2, "nbsource"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->nbsource:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v2, "nbversion"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->nbversion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v2, "navi_to_open_mini_app"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->navi_to_open_mini_app:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 371
    const-string/jumbo v2, "frameworkSceneId"

    iget v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->frameworkSceneId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    const-string/jumbo v2, "cid"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->cid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v2, "referrerInfo"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->referrerInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v2, "mini_app_launch_path"

    iget v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->mini_app_launch_path:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    const-string/jumbo v2, "ddPVersion"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddPVersion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v2, "ddPackageType"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddPackageType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string/jumbo v2, "ddMode"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddMode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v2, "mainTask"

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->mainTask:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    const-string/jumbo v2, "closeAllActivityAnimation"

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->closeAllActivityAnimation:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    if-eqz v2, :cond_1

    .line 381
    const-string/jumbo v2, "locale"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->locale:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v2, "ddOriginUrl"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->originUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_1
    const-string/jumbo v3, "AlipayHandleUrlImpl"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "open"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v5, "initBundleFromHandleUrlResult="

    aput-object v5, v4, v2

    const/4 v5, 0x2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    return-object v0

    .line 388
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;
    .locals 1
    .param p0, "openStatus"    # I
    .param p1, "fallbackUrl"    # Ljava/lang/String;

    .prologue
    .line 618
    new-instance v0, Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;-><init>()V

    .line 619
    .local v0, "handleUrlResult":Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;
    iput p0, v0, Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;->openStatus:I

    .line 620
    iput-object p1, v0, Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;->fallbackUrl:Ljava/lang/String;

    .line 621
    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "aliPayMiniParseUrlResult"    # Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    .param p3, "miniAppId"    # Ljava/lang/String;
    .param p4, "callback"    # Lhot;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 425
    :try_start_0
    invoke-static {p1}, Lhrf;->b(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v1

    new-instance v2, Lhox$2;

    invoke-direct {v2, p0, p2, p3, p4}, Lhox$2;-><init>(Lhox;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    const-string/jumbo v1, "AlipayHandleUrlImpl"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "finishAndRestartMiniApp"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "finish activity fail="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;ZLhot;)V
    .locals 10
    .param p1, "aliPayMiniParseUrlResult"    # Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    .param p2, "miniAppId"    # Ljava/lang/String;
    .param p3, "isOpenApp4MiniApp"    # Z
    .param p4, "callback"    # Lhot;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 499
    if-nez p1, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    const-string/jumbo v5, "doStartMiniApp"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "miniAppId="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "isOpenApp4MiniApp="

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 504
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "aliPayMiniParseUrlResult="

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3082
    const-string/jumbo v7, "mini_task"

    invoke-static {v7, v5, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 507
    if-eqz p4, :cond_0

    .line 508
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddFallbackUrl:Ljava/lang/String;

    .line 509
    .local v2, "fallbackUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    if-eqz v5, :cond_2

    .line 510
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v2, v5, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->originUrl:Ljava/lang/String;

    .line 512
    :cond_2
    const/16 v5, 0x194

    invoke-static {v5, v2}, Lhox;->a(ILjava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;

    move-result-object v5

    invoke-interface {p4, v5}, Lhot;->a(Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;)V

    goto :goto_0

    .line 517
    .end local v2    # "fallbackUrl":Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_7

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->navi_to_open_mini_app:J

    sub-long v0, v6, v8

    .line 519
    .local v0, "costTime":J
    iget v4, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->mini_app_launch_path:I

    .line 520
    .local v4, "type":I
    if-nez v4, :cond_4

    .line 521
    const/4 v4, 0x2

    .line 523
    :cond_4
    invoke-static {p2, v4, v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappLaunchType(Ljava/lang/String;IJ)V

    .line 525
    invoke-static {p1}, Lhox;->a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;)Landroid/os/Bundle;

    move-result-object v5

    .line 3552
    const/4 v6, 0x0

    .line 3553
    if-eqz v5, :cond_b

    .line 3554
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v7

    sget v8, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v7, v8, :cond_5

    const-string/jumbo v7, "debug"

    .line 3555
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3557
    new-instance v7, Linz;

    invoke-direct {v7}, Linz;-><init>()V

    .line 4043
    iput-object v5, v7, Linz;->b:Landroid/os/Bundle;

    .line 4625
    const-class v5, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 3561
    if-eqz v5, :cond_a

    .line 3562
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Linn;Linz;)V

    .line 3563
    const/4 v5, 0x1

    :goto_1
    move v3, v5

    .line 526
    .local v3, "handleMiniAppUrl":Z
    :goto_2
    if-eqz v3, :cond_6

    .line 527
    if-eqz p4, :cond_0

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    if-eqz v5, :cond_0

    .line 528
    const/16 v5, 0xc8

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->originUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lhox;->a(ILjava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;

    move-result-object v5

    invoke-interface {p4, v5}, Lhot;->a(Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;)V

    goto/16 :goto_0

    .line 3566
    .end local v3    # "handleMiniAppUrl":Z
    :cond_5
    const-string/jumbo v6, "appId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5606
    const-string/jumbo v7, "URGENT"

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v7

    new-instance v8, Lhox$5;

    invoke-direct {v8, p0, v5, v6}, Lhox$5;-><init>(Lhox;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3568
    const/4 v3, 0x1

    goto :goto_2

    .line 531
    .restart local v3    # "handleMiniAppUrl":Z
    :cond_6
    const-string/jumbo v5, "AlipayHandleUrlImpl"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "doStartMiniApp"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "handleMiniAppUrl=false"

    aput-object v8, v6, v7

    .line 6082
    const-string/jumbo v7, "mini_task"

    invoke-static {v7, v5, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 534
    .end local v0    # "costTime":J
    .end local v3    # "handleMiniAppUrl":Z
    .end local v4    # "type":I
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->navi_to_open_mini_app:J

    sub-long v0, v6, v8

    .line 535
    .restart local v0    # "costTime":J
    iget v4, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->mini_app_launch_path:I

    .line 536
    .restart local v4    # "type":I
    if-nez v4, :cond_8

    .line 537
    const/4 v4, 0x3

    .line 539
    :cond_8
    invoke-static {p2, v4, v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappLaunchType(Ljava/lang/String;IJ)V

    .line 541
    if-eqz p4, :cond_0

    .line 542
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddFallbackUrl:Ljava/lang/String;

    .line 543
    .restart local v2    # "fallbackUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    if-eqz v5, :cond_9

    .line 544
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v2, v5, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->originUrl:Ljava/lang/String;

    .line 546
    :cond_9
    const/16 v5, 0x195

    invoke-static {v5, v2}, Lhox;->a(ILjava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;

    move-result-object v5

    invoke-interface {p4, v5}, Lhot;->a(Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;)V

    goto/16 :goto_0

    .end local v2    # "fallbackUrl":Ljava/lang/String;
    :cond_a
    move v5, v6

    goto :goto_1

    :cond_b
    move v3, v6

    goto :goto_2
.end method

.method static synthetic a(Lhox;Landroid/content/Context;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V
    .locals 11
    .param p0, "x0"    # Lhox;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lhot;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    .line 6204
    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6205
    :cond_0
    if-eqz p4, :cond_1

    .line 6206
    const/16 v3, 0x194

    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->originUrl:Ljava/lang/String;

    :goto_0
    invoke-static {v3, v0}, Lhox;->a(ILjava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;

    move-result-object v0

    invoke-interface {p4, v0}, Lhot;->a(Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;)V

    .line 6210
    :cond_1
    const-string/jumbo v0, "AlipayHandleUrlImpl"

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "doOpenMiniApp"

    aput-object v4, v3, v2

    const-string/jumbo v2, "aliPayMiniParseUrlResult is null or miniAppId is null"

    aput-object v2, v3, v1

    .line 7082
    const-string/jumbo v1, "mini_task"

    invoke-static {v1, v0, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6338
    :goto_1
    return-void

    .line 6206
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0

    .line 6215
    :cond_4
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhlq;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 6220
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    .line 6221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmu;

    .line 6222
    if-eqz v0, :cond_5

    .line 8049
    iget-object v5, v0, Lhmu;->d:Ljava/lang/String;

    .line 6224
    invoke-static {p3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v3, v0

    move v0, v1

    .line 6235
    :goto_2
    const-string/jumbo v5, "AlipayHandleUrlImpl"

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "open"

    aput-object v7, v6, v2

    const-string/jumbo v7, "isTaskAlive="

    aput-object v7, v6, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 8082
    const-string/jumbo v7, "mini_task"

    invoke-static {v7, v5, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6237
    if-eqz v0, :cond_12

    .line 6238
    const-string/jumbo v0, "miniapp_move_session_disable"

    invoke-static {v0, v2}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 8400
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 8401
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessions()Ljava/util/Stack;

    move-result-object v5

    .line 8402
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v1, :cond_7

    .line 8404
    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipc;

    .line 8405
    if-eqz v0, :cond_6

    .line 8406
    invoke-interface {v0}, Lipc;->getParams()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "appId"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8407
    invoke-static {p3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8413
    :goto_3
    if-eqz v0, :cond_7

    .line 8414
    invoke-virtual {v5, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 8415
    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6243
    :cond_7
    if-eqz v3, :cond_11

    .line 9049
    iget-object v0, v3, Lhmu;->d:Ljava/lang/String;

    .line 6243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 9065
    iget-object v0, v3, Lhmu;->f:Landroid/os/Bundle;

    .line 6245
    if-eqz v0, :cond_15

    if-eqz p2, :cond_15

    .line 10065
    iget-object v0, v3, Lhmu;->f:Landroid/os/Bundle;

    .line 6247
    const-string/jumbo v5, "query"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6248
    iget-object v5, p2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->query:Ljava/lang/String;

    .line 6249
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    .line 6255
    :goto_4
    if-nez v0, :cond_8

    const-string/jumbo v5, "miniapp_enable_no_keepalive_restart"

    invoke-static {v5, v1}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6256
    if-eqz p2, :cond_8

    .line 6257
    iget-object v5, p2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->keepAlive:Ljava/lang/String;

    .line 6258
    const-string/jumbo v6, "false"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v0, v1

    .line 6266
    :cond_8
    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    .line 6267
    iget-object v5, p2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->page:Ljava/lang/String;

    .line 6268
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 6270
    const-string/jumbo v5, "DISABLE_ENTER_PAGE_UPDATE_TASK_V439"

    invoke-static {v5, v1}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v1

    .line 6279
    :goto_5
    if-nez v0, :cond_9

    .line 11065
    iget-object v6, v3, Lhmu;->f:Landroid/os/Bundle;

    .line 6279
    if-eqz v6, :cond_9

    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v6, "hybrid_enable_check_alive_status"

    invoke-static {v6, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 12065
    iget-object v0, v3, Lhmu;->f:Landroid/os/Bundle;

    .line 6280
    const-string/jumbo v6, "keepAlive"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6281
    const-string/jumbo v6, "false"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 6284
    :cond_9
    const-string/jumbo v6, "AlipayHandleUrlImpl"

    new-array v7, v10, [Ljava/lang/Object;

    const-string/jumbo v8, "open"

    aput-object v8, v7, v2

    const-string/jumbo v8, "isShouldRestart="

    aput-object v8, v7, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 12082
    const-string/jumbo v8, "mini_task"

    invoke-static {v8, v6, v7}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13033
    iget-object v3, v3, Lhmu;->b:Landroid/app/Activity;

    .line 6288
    if-eqz v0, :cond_b

    .line 6289
    const/16 v0, 0x7d2

    iput v0, p2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->mini_app_launch_path:I

    .line 6290
    invoke-direct {p0, v3, p2, p3, p4}, Lhox;->a(Landroid/app/Activity;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V

    goto/16 :goto_1

    .line 6272
    :cond_a
    const-string/jumbo v5, "miniapp_enable_page_restart"

    invoke-static {v5, v1}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v2

    move v0, v1

    .line 6273
    goto :goto_5

    .line 6294
    :cond_b
    if-eqz v5, :cond_d

    .line 6295
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessions()Ljava/util/Stack;

    move-result-object v0

    .line 6296
    :goto_6
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 6298
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipc;

    .line 6299
    if-eqz v0, :cond_c

    .line 6300
    invoke-interface {v0}, Lipc;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "appId"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6301
    invoke-static {p3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 6307
    :goto_7
    if-eqz v0, :cond_d

    .line 6308
    invoke-interface {v0}, Lipc;->getTopPage()Liop;

    move-result-object v0

    .line 6309
    if-eqz v0, :cond_d

    invoke-interface {v0}, Liop;->getContentView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 6310
    invoke-interface {v0}, Liop;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6317
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_f

    .line 6318
    invoke-static {p2}, Lhox;->a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v3, p1, v0}, Lhrf;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    .line 6323
    :goto_8
    const-string/jumbo v4, "AlipayHandleUrlImpl"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "open"

    aput-object v6, v5, v2

    const-string/jumbo v2, "isMoveTaskToFrontSuccess="

    aput-object v2, v5, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    .line 13082
    const-string/jumbo v1, "mini_task"

    invoke-static {v1, v4, v5}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6325
    if-nez v0, :cond_10

    .line 6326
    const/16 v0, 0x7d3

    iput v0, p2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->mini_app_launch_path:I

    .line 6327
    invoke-direct {p0, v3, p2, p3, p4}, Lhox;->a(Landroid/app/Activity;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V

    goto/16 :goto_1

    :cond_e
    move-object v0, v4

    .line 6295
    goto :goto_6

    .line 6320
    :cond_f
    invoke-static {v3}, Lhrf;->a(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_8

    .line 6329
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->navi_to_open_mini_app:J

    sub-long/2addr v0, v2

    .line 6330
    const/16 v2, 0x7d1

    invoke-static {p3, v2, v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappLaunchType(Ljava/lang/String;IJ)V

    goto/16 :goto_1

    .line 6337
    :cond_11
    const/16 v0, 0x7d4

    iput v0, p2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->mini_app_launch_path:I

    .line 6338
    invoke-direct {p0, v4, p2, p3, p4}, Lhox;->a(Landroid/app/Activity;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V

    goto/16 :goto_1

    .line 6342
    :cond_12
    const/16 v0, 0x7d0

    iput v0, p2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->mini_app_launch_path:I

    .line 6343
    invoke-virtual {p0, p2, p3, p4}, Lhox;->a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V

    goto/16 :goto_1

    :cond_13
    move-object v0, v4

    goto :goto_7

    :cond_14
    move v5, v2

    goto/16 :goto_5

    :cond_15
    move v0, v2

    goto/16 :goto_4

    :cond_16
    move-object v0, v4

    goto/16 :goto_3

    :cond_17
    move v0, v2

    move-object v3, v4

    goto/16 :goto_2
.end method

.method static synthetic a(Lhox;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;ZLhot;)V
    .locals 0
    .param p0, "x0"    # Lhox;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lhot;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lhox;->a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;ZLhot;)V

    return-void
.end method


# virtual methods
.method a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V
    .locals 7
    .param p1, "aliPayMiniParseUrlResult"    # Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    .param p2, "miniAppId"    # Ljava/lang/String;
    .param p3, "callback"    # Lhot;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 450
    if-nez p1, :cond_1

    .line 451
    if-eqz p3, :cond_0

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    if-eqz v2, :cond_0

    .line 452
    const/16 v2, 0x194

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->originUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lhox;->a(ILjava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;

    move-result-object v2

    invoke-interface {p3, v2}, Lhot;->a(Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAppType:Ljava/lang/String;

    .line 458
    .local v0, "miniAppType":Ljava/lang/String;
    const-string/jumbo v2, "org"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    iget v1, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddStatus:I

    .line 460
    .local v1, "status":I
    packed-switch v1, :pswitch_data_0

    .line 482
    :goto_1
    const-string/jumbo v2, "AlipayHandleUrlImpl"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "startMiniApp"

    aput-object v4, v3, v6

    const-string/jumbo v4, "status= "

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :pswitch_0
    invoke-direct {p0, p1, p2, v6, p3}, Lhox;->a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;ZLhot;)V

    goto :goto_1

    .line 465
    :pswitch_1
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddCorpId:Ljava/lang/String;

    new-instance v4, Lhox$3;

    invoke-direct {v4, p0, p1, p2, p3}, Lhox$3;-><init>(Lhox;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V

    invoke-virtual {v2, v3, p2, v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->isOpenApp4MiniApp(Ljava/lang/String;Ljava/lang/String;Lgvk;)V

    goto :goto_1

    .line 479
    :pswitch_2
    invoke-direct {p0, p1, p2, v5, p3}, Lhox;->a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;ZLhot;)V

    goto :goto_1

    .line 484
    .end local v1    # "status":I
    :cond_2
    invoke-direct {p0, p1, p2, v5, p3}, Lhox;->a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;ZLhot;)V

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
