.class public Lcom/alipay/mobile/nebula/log/H5Logger;
.super Ljava/lang/Object;
.source "H5Logger.java"


# static fields
.field public static DIAGNOSE:Ljava/lang/String; = null

.field public static final H5_ABNORMAL_ERROR:Ljava/lang/String; = "H5_ABNORMAL_ERROR"

.field public static final H5_AL_PAGE_RESUME:Ljava/lang/String; = "H5_AL_PAGE_RESUME"

.field public static final H5_GETLOCATION_RESULT:Ljava/lang/String; = "H5_GETLOCATION_RESULT"

.field public static final LOG_HEADER_AM:Ljava/lang/String; = "H5-AM"

.field public static final LOG_HEADER_EM:Ljava/lang/String; = "H-EM"

.field public static final LOG_HEADER_VM:Ljava/lang/String; = "H5-VM"

.field public static MONITOR:Ljava/lang/String; = null

.field public static final MTBIZ_H5:Ljava/lang/String; = "MTBIZ_H5"

.field public static final TAG:Ljava/lang/String; = "H5Logger"

.field public static bizScenario:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "monitor"

    sput-object v0, Lcom/alipay/mobile/nebula/log/H5Logger;->MONITOR:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "diagnose"

    sput-object v0, Lcom/alipay/mobile/nebula/log/H5Logger;->DIAGNOSE:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebula/log/H5Logger;->bizScenario:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableStockTradeLog()Z
    .locals 1

    .prologue
    .line 472
    sget-boolean v0, Liog;->e:Z

    return v0
.end method

.method private static exceptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "seedID"    # Ljava/lang/String;
    .param p1, "ucId"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "params4"    # Ljava/lang/String;
    .param p6, "logHeader"    # Ljava/lang/String;
    .param p7, "remoteLogType"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    new-instance v0, Lcom/alipay/mobile/nebula/log/H5Logger$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nebula/log/H5Logger$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getAutoSpmRpcId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .prologue
    .line 575
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->getAutoSpmRpcId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 578
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getContextParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getCorrectStartTime(Lior;)J
    .locals 4
    .param p0, "pageData"    # Lior;

    .prologue
    const-wide/16 v0, 0x0

    .line 501
    if-nez p0, :cond_0

    .line 504
    :goto_0
    return-wide v0

    .line 46185
    :cond_0
    iget-wide v2, p0, Lior;->aE:J

    .line 504
    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 47185
    iget-wide v0, p0, Lior;->aE:J

    goto :goto_0

    .line 47306
    :cond_1
    iget-wide v0, p0, Lior;->j:J

    goto :goto_0
.end method

.method public static getCorrectStopLoading(JLior;Linv;)J
    .locals 4
    .param p0, "loadingValue"    # J
    .param p2, "pageData"    # Lior;
    .param p3, "availablePageData"    # Linv;

    .prologue
    const-wide/16 v0, 0x0

    .line 489
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-wide p0, v0

    .line 497
    .end local p0    # "loadingValue":J
    :goto_0
    return-wide p0

    .line 492
    .restart local p0    # "loadingValue":J
    :cond_1
    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStartTime(Lior;)J

    move-result-wide v2

    sub-long p0, v0, v2

    goto :goto_0

    .line 495
    :cond_2
    invoke-static {p2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStartTime(Lior;)J

    move-result-wide v0

    sub-long/2addr p0, v0

    goto :goto_0
.end method

.method public static getDslVersion(Lior;)Ljava/lang/String;
    .locals 8
    .param p0, "pageData"    # Lior;

    .prologue
    .line 508
    if-nez p0, :cond_0

    .line 509
    const-string/jumbo v5, ""

    .line 529
    :goto_0
    return-object v5

    .line 511
    :cond_0
    const-string/jumbo v1, "66666692"

    .line 48194
    .local v1, "dslAppId":Ljava/lang/String;
    iget-object v3, p0, Lior;->aF:Ljava/lang/String;

    .line 513
    .local v3, "pkgInfo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 514
    :cond_1
    const-string/jumbo v5, ""

    goto :goto_0

    .line 516
    :cond_2
    const-string/jumbo v5, "\\|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "pkgList":[Ljava/lang/String;
    if-eqz v4, :cond_3

    array-length v5, v4

    if-nez v5, :cond_4

    .line 518
    :cond_3
    const-string/jumbo v5, ""

    goto :goto_0

    .line 520
    :cond_4
    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_8

    aget-object v0, v4, v5

    .line 521
    .local v0, "appInfo":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 522
    const-string/jumbo v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "infoList":[Ljava/lang/String;
    if-eqz v2, :cond_5

    array-length v5, v2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    .line 524
    :cond_5
    const-string/jumbo v5, ""

    goto :goto_0

    .line 526
    :cond_6
    const/4 v5, 0x2

    aget-object v5, v2, v5

    goto :goto_0

    .line 520
    .end local v2    # "infoList":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 529
    .end local v0    # "appInfo":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method public static getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .locals 3

    .prologue
    .line 533
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 534
    .local v0, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 537
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLastClickSpmId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->getLastClickSpmId()Ljava/lang/String;

    .line 599
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getLongValue(Ljava/lang/String;)J
    .locals 4
    .param p0, "endValue"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    const-wide/16 v0, 0x0

    .line 485
    :goto_0
    return-wide v0

    .line 480
    :cond_0
    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    const/4 v2, 0x0

    const-string/jumbo v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "end":J
    goto :goto_0

    .line 483
    .end local v0    # "end":J
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .restart local v0    # "end":J
    goto :goto_0
.end method

.method public static getNetPerfStr(Lior;)Ljava/lang/String;
    .locals 4
    .param p0, "pageData"    # Lior;

    .prologue
    .line 448
    const-string/jumbo v0, "1"

    .line 449
    .local v0, "netperfVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45203
    iget v2, p0, Lior;->aG:I

    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45212
    iget v2, p0, Lior;->aH:I

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45221
    iget v2, p0, Lior;->aI:I

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45230
    iget v2, p0, Lior;->aJ:I

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45239
    iget-wide v2, p0, Lior;->aK:J

    .line 454
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45248
    iget-wide v2, p0, Lior;->aL:J

    .line 455
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45257
    iget-wide v2, p0, Lior;->aM:J

    .line 456
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45266
    iget-wide v2, p0, Lior;->aN:J

    .line 457
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    return-object v1
.end method

.method public static getPageId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .prologue
    .line 582
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->getPageId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getPerformanceData(Lior;)Ljava/lang/String;
    .locals 6
    .param p0, "pageData"    # Lior;

    .prologue
    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31474
    iget-object v2, p0, Lior;->w:Ljava/lang/String;

    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32360
    iget-wide v2, p0, Lior;->o:J

    .line 399
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}->("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32456
    iget v2, p0, Lior;->u:I

    .line 400
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "router":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^start="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33306
    iget-wide v2, p0, Lior;->j:J

    .line 402
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^finishLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33342
    iget-wide v2, p0, Lior;->n:J

    .line 403
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^blankScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34060
    iget-wide v2, p0, Lior;->q:J

    .line 404
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^MCCMNC=^router="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^cssReqNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34600
    iget v2, p0, Lior;->G:I

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^jsReqNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34609
    iget v2, p0, Lior;->H:I

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^imgReqNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34618
    iget v2, p0, Lior;->I:I

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^otherReqNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34627
    iget v2, p0, Lior;->J:I

    .line 407
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^requestNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34636
    iget v2, p0, Lior;->K:I

    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^bizScenario="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebula/log/H5Logger;->bizScenario:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^pageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34690
    iget-wide v2, p0, Lior;->Q:J

    .line 409
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 35456
    iget v2, p0, Lior;->u:I

    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^htmlSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 35681
    iget-wide v2, p0, Lior;->P:J

    .line 411
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^firstByte="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36333
    iget-wide v2, p0, Lior;->m:J

    .line 412
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^startRender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37315
    iget-wide v2, p0, Lior;->k:J

    .line 413
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^startRenderFromNative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37324
    iget-wide v2, p0, Lior;->l:J

    .line 414
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^cssSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37654
    iget-wide v2, p0, Lior;->M:J

    .line 415
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^jsSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38645
    iget-wide v2, p0, Lior;->L:J

    .line 415
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^imgSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38663
    iget-wide v2, p0, Lior;->N:J

    .line 416
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^otherSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38672
    iget-wide v2, p0, Lior;->O:J

    .line 417
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^imageSizeLimit60="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38744
    iget v2, p0, Lior;->W:I

    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^imageSizeLoadLimit60="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38753
    iget v2, p0, Lior;->X:I

    .line 419
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^sizeLimit200="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38762
    iget v2, p0, Lior;->Y:I

    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^302Num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38798
    iget v2, p0, Lior;->ac:I

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^304Num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38807
    iget v2, p0, Lior;->ad:I

    .line 422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^300Num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38816
    iget v2, p0, Lior;->ae:I

    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^404Num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38825
    iget v2, p0, Lior;->af:I

    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^400Num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38834
    iget v2, p0, Lior;->ag:I

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^500Num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38843
    iget v2, p0, Lior;->ah:I

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^1000Num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38852
    iget v2, p0, Lior;->ai:I

    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^pageNetLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39360
    iget-wide v2, p0, Lior;->o:J

    .line 425
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^jsLoadNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39699
    iget v2, p0, Lior;->R:I

    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^cssLoadNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39708
    iget v2, p0, Lior;->S:I

    .line 427
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^imgLoadNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39717
    iget v2, p0, Lior;->T:I

    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^otherLoadNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39726
    iget v2, p0, Lior;->U:I

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^requestLoadNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39735
    iget v2, p0, Lior;->V:I

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^serverResponse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40360
    iget-wide v2, p0, Lior;->o:J

    .line 431
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^imageSizeLimit60Urls=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40780
    iget-object v2, p0, Lior;->aa:Ljava/lang/String;

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]^sizeLimit200Urls=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40789
    iget-object v2, p0, Lior;->ab:Ljava/lang/String;

    .line 433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]^create="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41378
    iget-wide v2, p0, Lior;->p:J

    .line 434
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 42378
    iget-wide v2, p0, Lior;->p:J

    .line 434
    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^createScenario="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 436
    invoke-virtual {p0}, Lior;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^aboutBlank="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42915
    const/4 v2, 0x0

    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^htmlLoadSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43591
    iget-wide v2, p0, Lior;->F:J

    .line 438
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^fromType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44117
    iget-object v2, p0, Lior;->ay:Ljava/lang/String;

    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^srcClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45099
    iget-wide v2, p0, Lior;->aw:J

    .line 440
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^containerVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45108
    iget-wide v2, p0, Lior;->ax:J

    .line 441
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^preRender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45126
    iget v2, p0, Lior;->az:I

    .line 442
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45194
    iget-object v2, p0, Lior;->aF:Ljava/lang/String;

    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^netperf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 444
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5Logger;->getNetPerfStr(Lior;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    return-object v1

    .line 434
    :cond_0
    sget-wide v2, Lios;->a:J

    goto/16 :goto_0
.end method

.method public static getPerformanceDataMap(Lior;)Ljava/util/Map;
    .locals 6
    .param p0, "pageData"    # Lior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lior;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 395
    :goto_0
    return-object v0

    .line 341
    :cond_0
    const-string/jumbo v1, "start"

    .line 18306
    iget-wide v2, p0, Lior;->j:J

    .line 341
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string/jumbo v1, "finishLoad"

    .line 18342
    iget-wide v2, p0, Lior;->n:J

    .line 342
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string/jumbo v1, "blankScreen"

    .line 19060
    iget-wide v2, p0, Lior;->q:J

    .line 343
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string/jumbo v1, "router"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19474
    iget-object v3, p0, Lior;->w:Ljava/lang/String;

    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 20360
    iget-wide v4, p0, Lior;->o:J

    .line 345
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}->("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 20456
    iget v3, p0, Lior;->u:I

    .line 346
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string/jumbo v1, "cssReqNum"

    .line 20600
    iget v2, p0, Lior;->G:I

    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string/jumbo v1, "jsReqNum"

    .line 20609
    iget v2, p0, Lior;->H:I

    .line 348
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string/jumbo v1, "imgReqNum"

    .line 20618
    iget v2, p0, Lior;->I:I

    .line 349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string/jumbo v1, "otherReqNum"

    .line 20627
    iget v2, p0, Lior;->J:I

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string/jumbo v1, "requestNum"

    .line 20636
    iget v2, p0, Lior;->K:I

    .line 351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string/jumbo v1, "bizScenario"

    sget-object v2, Lcom/alipay/mobile/nebula/log/H5Logger;->bizScenario:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string/jumbo v1, "pageSize"

    .line 20690
    iget-wide v2, p0, Lior;->Q:J

    .line 354
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string/jumbo v1, "status"

    .line 21456
    iget v2, p0, Lior;->u:I

    .line 355
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string/jumbo v1, "htmlSize"

    .line 21681
    iget-wide v2, p0, Lior;->P:J

    .line 356
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string/jumbo v1, "firstByte"

    .line 22333
    iget-wide v2, p0, Lior;->m:J

    .line 357
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string/jumbo v1, "startRender"

    .line 23315
    iget-wide v2, p0, Lior;->k:J

    .line 358
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string/jumbo v1, "startRenderFromNative"

    .line 23324
    iget-wide v2, p0, Lior;->l:J

    .line 359
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string/jumbo v1, "cssSize"

    .line 23654
    iget-wide v2, p0, Lior;->M:J

    .line 360
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string/jumbo v1, "jsSize"

    .line 24645
    iget-wide v2, p0, Lior;->L:J

    .line 361
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v1, "imgSize"

    .line 24663
    iget-wide v2, p0, Lior;->N:J

    .line 362
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string/jumbo v1, "otherSize"

    .line 24672
    iget-wide v2, p0, Lior;->O:J

    .line 363
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string/jumbo v1, "imageSizeLimit60"

    .line 24744
    iget v2, p0, Lior;->W:I

    .line 364
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string/jumbo v1, "imageSizeLoadLimit60"

    .line 24753
    iget v2, p0, Lior;->X:I

    .line 365
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string/jumbo v1, "sizeLimit200"

    .line 24762
    iget v2, p0, Lior;->Y:I

    .line 366
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string/jumbo v1, "302Num"

    .line 24798
    iget v2, p0, Lior;->ac:I

    .line 367
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string/jumbo v1, "304Num"

    .line 24807
    iget v2, p0, Lior;->ad:I

    .line 368
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string/jumbo v1, "300Num"

    .line 24816
    iget v2, p0, Lior;->ae:I

    .line 369
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string/jumbo v1, "404Num"

    .line 24825
    iget v2, p0, Lior;->af:I

    .line 370
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string/jumbo v1, "400Num"

    .line 24834
    iget v2, p0, Lior;->ag:I

    .line 371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string/jumbo v1, "500Num"

    .line 24843
    iget v2, p0, Lior;->ah:I

    .line 372
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string/jumbo v1, "1000Num"

    .line 24852
    iget v2, p0, Lior;->ai:I

    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string/jumbo v1, "pageNetLoad"

    .line 25360
    iget-wide v2, p0, Lior;->o:J

    .line 374
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v1, "jsLoadNum"

    .line 25699
    iget v2, p0, Lior;->R:I

    .line 375
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string/jumbo v1, "cssLoadNum"

    .line 25708
    iget v2, p0, Lior;->S:I

    .line 376
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string/jumbo v1, "imgLoadNum"

    .line 25717
    iget v2, p0, Lior;->T:I

    .line 377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string/jumbo v1, "otherLoadNum"

    .line 25726
    iget v2, p0, Lior;->U:I

    .line 378
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string/jumbo v1, "requestLoadNum"

    .line 25735
    iget v2, p0, Lior;->V:I

    .line 379
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string/jumbo v1, "serverResponse"

    .line 26360
    iget-wide v2, p0, Lior;->o:J

    .line 380
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string/jumbo v1, "imageSizeLimit60Urls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26780
    iget-object v3, p0, Lior;->aa:Ljava/lang/String;

    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v1, "sizeLimit200Urls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26789
    iget-object v3, p0, Lior;->ab:Ljava/lang/String;

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v1, "create"

    .line 27378
    iget-wide v2, p0, Lior;->p:J

    .line 383
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 28378
    iget-wide v2, p0, Lior;->p:J

    .line 383
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string/jumbo v1, "createScenario"

    invoke-virtual {p0}, Lior;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string/jumbo v1, "ucFirstWebView"

    .line 28470
    iget-boolean v2, p0, Lior;->ba:Z

    .line 385
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo v1, "aboutBlank"

    .line 28915
    const/4 v2, 0x0

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string/jumbo v1, "htmlLoadSize"

    .line 29591
    iget-wide v2, p0, Lior;->F:J

    .line 387
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string/jumbo v1, "fromType"

    .line 30117
    iget-object v2, p0, Lior;->ay:Ljava/lang/String;

    .line 388
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string/jumbo v1, "srcClick"

    .line 31099
    iget-wide v2, p0, Lior;->aw:J

    .line 389
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string/jumbo v1, "containerVisible"

    .line 31108
    iget-wide v2, p0, Lior;->ax:J

    .line 390
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string/jumbo v1, "preRender"

    .line 31126
    iget v2, p0, Lior;->az:I

    .line 391
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string/jumbo v1, "pkg"

    .line 31194
    iget-object v2, p0, Lior;->aF:Ljava/lang/String;

    .line 392
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string/jumbo v1, "netperf"

    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5Logger;->getNetPerfStr(Lior;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string/jumbo v1, "bridgeReady"

    const-string/jumbo v2, "bridgeReady"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v3}, Lior;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 383
    :cond_1
    sget-wide v2, Lios;->a:J

    goto/16 :goto_1
.end method

.method public static getPsd(Lior;Z)Ljava/lang/String;
    .locals 1
    .param p0, "pageData"    # Lior;
    .param p1, "isOfflineApp"    # Z

    .prologue
    .line 197
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->currentPsd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1870
    iget-object v0, p0, Lior;->ak:Ljava/lang/String;

    .line 198
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const-string/jumbo v0, "local"

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "online"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->currentPsd:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSpmRpcId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .prologue
    .line 568
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->getSpmRpcId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 571
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getSrcSpm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .prologue
    .line 589
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->getSrcSpm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 592
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 562
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getTracerInfo(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->getTracerInfo(Ljava/lang/Object;)Ljava/util/Map;

    .line 606
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTrackLastClickTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 610
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->getTrackLastClickTime()Ljava/lang/Long;

    .line 613
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getUniteParam4(Liop;)Ljava/lang/String;
    .locals 2
    .param p0, "h5Page"    # Liop;

    .prologue
    .line 204
    if-eqz p0, :cond_0

    invoke-interface {p0}, Liop;->getPageData()Lior;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    const-string/jumbo v0, ""

    .line 207
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Liop;->getPageData()Lior;

    move-result-object v0

    invoke-interface {p0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/log/H5Logger;->getUniteParam4(Lior;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUniteParam4(Lior;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .param p0, "h5PageData"    # Lior;
    .param p1, "param"    # Landroid/os/Bundle;

    .prologue
    .line 211
    const-string/jumbo v2, "bizScenario"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "bizScenario":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string/jumbo v2, "offlineHost"

    .line 213
    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 214
    .local v1, "isOfflineApp":Z
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/log/H5Logger;->getUniteParam4(Lior;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 213
    .end local v1    # "isOfflineApp":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUniteParam4(Lior;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 15
    .param p0, "h5PageData"    # Lior;
    .param p1, "referUrl"    # Ljava/lang/String;
    .param p2, "bizScenario"    # Ljava/lang/String;
    .param p3, "isOfflineApp"    # Z

    .prologue
    .line 225
    .line 2537
    :try_start_0
    iget-object v9, p0, Lior;->z:Ljava/lang/String;

    .line 226
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v12, "isH5Activity"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lior;->b(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 228
    .local v4, "isH5Activity":Z
    :try_start_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 229
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 230
    const-string/jumbo v12, " "

    const-string/jumbo v13, ""

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, ","

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\n"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 235
    :cond_0
    :goto_0
    :try_start_2
    const-string/jumbo v1, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2906
    .local v1, "customParams":Ljava/lang/String;
    :try_start_3
    iget-object v12, p0, Lior;->ao:Ljava/lang/String;

    .line 237
    const-string/jumbo v13, "utf-8"

    invoke-static {v12, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 242
    :goto_1
    :try_start_4
    const-string/jumbo v12, "H5Logger"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "g5PageData : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ,referer :  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3501
    iget-object v14, p0, Lior;->y:Ljava/lang/String;

    .line 243
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " pageUrl:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4474
    iget-object v14, p0, Lior;->w:Ljava/lang/String;

    .line 244
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 242
    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v10, ""

    .line 247
    .local v10, "viewId":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 249
    .local v6, "refViewID":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 5474
    iget-object v12, p0, Lior;->w:Ljava/lang/String;

    .line 250
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 251
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 252
    const-string/jumbo v12, "viewID"

    invoke-static {v12}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6501
    :cond_1
    :goto_2
    iget-object v12, p0, Lior;->y:Ljava/lang/String;

    .line 262
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 263
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 264
    const-string/jumbo v12, "refViewID"

    invoke-static {v12}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    :cond_2
    :goto_3
    const-string/jumbo v11, ""

    .line 8275
    .local v11, "xContentVersion":Ljava/lang/String;
    iget-object v12, p0, Lior;->aQ:Ljava/lang/String;

    .line 285
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 286
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "^xContentVersion="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9275
    iget-object v13, p0, Lior;->aQ:Ljava/lang/String;

    .line 286
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 289
    :cond_3
    const-string/jumbo v3, ""

    .line 9284
    .local v3, "eagleId":Ljava/lang/String;
    iget-object v12, p0, Lior;->aR:Ljava/lang/String;

    .line 290
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 291
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "^eagleId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10284
    iget-object v13, p0, Lior;->aR:Ljava/lang/String;

    .line 291
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    :cond_4
    const-string/jumbo v7, ""

    .line 10293
    .local v7, "requestId":Ljava/lang/String;
    iget-object v12, p0, Lior;->aS:Ljava/lang/String;

    .line 295
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 296
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "^requestId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11293
    iget-object v13, p0, Lior;->aS:Ljava/lang/String;

    .line 296
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 299
    :cond_5
    const-string/jumbo v8, ""

    .line 11382
    .local v8, "spmId":Ljava/lang/String;
    iget-object v12, p0, Lior;->aX:Ljava/lang/String;

    .line 300
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 301
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "^spmId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12382
    iget-object v13, p0, Lior;->aX:Ljava/lang/String;

    .line 301
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 304
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "url="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12474
    iget-object v13, p0, Lior;->w:Ljava/lang/String;

    .line 305
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^referer="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 12501
    iget-object v13, p0, Lior;->y:Ljava/lang/String;

    .line 307
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^appId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 12870
    iget-object v13, p0, Lior;->ak:Ljava/lang/String;

    .line 308
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^version="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 12888
    iget-object v13, p0, Lior;->am:Ljava/lang/String;

    .line 309
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^publicId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 13879
    iget-object v13, p0, Lior;->al:Ljava/lang/String;

    .line 310
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^sourceId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->secAppId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^psd="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 312
    move/from16 v0, p3

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/log/H5Logger;->getPsd(Lior;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^viewId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^refviewId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^bizScenario="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 14144
    iget-object v13, p0, Lior;->aA:Ljava/lang/String;

    .line 315
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^h5Token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 14153
    iget-object v13, p0, Lior;->aB:Ljava/lang/String;

    .line 316
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^h5SessionToken=H5Session"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 14162
    iget-object v13, p0, Lior;->aC:Ljava/lang/String;

    .line 317
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^openAppId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 14969
    iget-object v13, p0, Lior;->au:Ljava/lang/String;

    .line 318
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^shopId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 14978
    iget-object v13, p0, Lior;->av:Ljava/lang/String;

    .line 319
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^title="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^customParams="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^webViewType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 15924
    iget-object v13, p0, Lior;->ap:Ljava/lang/String;

    .line 322
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^isTinyApp="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 15960
    iget-object v13, p0, Lior;->at:Ljava/lang/String;

    .line 323
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16951
    .local v5, "log":Ljava/lang/String;
    iget-object v12, p0, Lior;->as:Ljava/lang/String;

    .line 325
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 326
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^log_release_type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 17951
    iget-object v13, p0, Lior;->as:Ljava/lang/String;

    .line 326
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    .end local v1    # "customParams":Ljava/lang/String;
    .end local v3    # "eagleId":Ljava/lang/String;
    .end local v4    # "isH5Activity":Z
    .end local v5    # "log":Ljava/lang/String;
    .end local v6    # "refViewID":Ljava/lang/String;
    .end local v7    # "requestId":Ljava/lang/String;
    .end local v8    # "spmId":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "viewId":Ljava/lang/String;
    .end local v11    # "xContentVersion":Ljava/lang/String;
    :cond_7
    :goto_4
    return-object v5

    .line 232
    .restart local v4    # "isH5Activity":Z
    .restart local v9    # "title":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "H5Logger"

    invoke-static {v12, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 330
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "isH5Activity":Z
    .end local v9    # "title":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 331
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v12, "H5Logger"

    invoke-static {v12, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    const-string/jumbo v5, ""

    goto :goto_4

    .line 238
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "customParams":Ljava/lang/String;
    .restart local v4    # "isH5Activity":Z
    .restart local v9    # "title":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 239
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v12, "H5Logger"

    invoke-static {v12, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 6474
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "refViewID":Ljava/lang/String;
    .restart local v10    # "viewId":Ljava/lang/String;
    :cond_8
    iget-object v12, p0, Lior;->w:Ljava/lang/String;

    .line 256
    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 257
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 258
    const-string/jumbo v12, "viewID"

    invoke-static {v12, v10}, Lcom/alipay/mobile/nebula/log/H5Logger;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7501
    :cond_9
    iget-object v12, p0, Lior;->y:Ljava/lang/String;

    .line 268
    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 269
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 270
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 271
    const-string/jumbo v12, "refViewID"

    invoke-static {v12, v6}, Lcom/alipay/mobile/nebula/log/H5Logger;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 277
    :cond_a
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 278
    const-string/jumbo v12, "viewID"

    invoke-static {v12}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 279
    const-string/jumbo v12, "refViewID"

    invoke-static {v12}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v6

    goto/16 :goto_3
.end method

.method private static getUniteParam4(Lior;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "h5PageData"    # Lior;
    .param p1, "bizScenario"    # Ljava/lang/String;
    .param p2, "isOfflineApp"    # Z

    .prologue
    .line 219
    const-string/jumbo v0, ""

    invoke-static {p0, v0, p1, p2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getUniteParam4(Lior;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h5BehaviorLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 15
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "seedID"    # Ljava/lang/String;
    .param p2, "abTestInfo"    # Ljava/lang/String;
    .param p3, "entityId"    # Ljava/lang/String;
    .param p4, "pageId"    # Ljava/lang/String;
    .param p5, "ucId"    # Ljava/lang/String;
    .param p6, "param1"    # Ljava/lang/String;
    .param p7, "param2"    # Ljava/lang/String;
    .param p8, "param3"    # Ljava/lang/String;
    .param p9, "params4"    # Ljava/lang/String;
    .param p10, "uniteParam4"    # Ljava/lang/String;
    .param p11, "logLevel"    # I
    .param p12, "actionId"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v14

    new-instance v0, Lcom/alipay/mobile/nebula/log/H5Logger$3;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/nebula/log/H5Logger$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static h5RemoteLogClickLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 14
    .param p0, "pageId"    # Ljava/lang/String;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "abTestInfo"    # Ljava/lang/String;
    .param p4, "entityId"    # Ljava/lang/String;
    .param p5, "param1"    # Ljava/lang/String;
    .param p6, "param2"    # Ljava/lang/String;
    .param p7, "param3"    # Ljava/lang/String;
    .param p8, "params4"    # Ljava/lang/String;
    .param p9, "uniteParam4"    # Ljava/lang/String;
    .param p10, "logLevel"    # I
    .param p11, "actionId"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v13

    new-instance v0, Lcom/alipay/mobile/nebula/log/H5Logger$4;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/alipay/mobile/nebula/log/H5Logger$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "bizName"    # Ljava/lang/String;
    .param p1, "subName"    # Ljava/lang/String;
    .param p2, "failCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p3, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/log/H5Logger$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/log/H5Logger$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public static performanceH5Exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "seedID"    # Ljava/lang/String;
    .param p1, "ucId"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;
    .param p6, "uniteParam4"    # Ljava/lang/String;
    .param p7, "logHeader"    # Ljava/lang/String;
    .param p8, "remoteLogType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    move-object/from16 v7, p8

    .line 82
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebula/log/H5Logger;->exceptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "seedID"    # Ljava/lang/String;
    .param p1, "ucId"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "params4"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/nebula/log/H5Logger$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebula/log/H5Logger$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "seedID"    # Ljava/lang/String;
    .param p1, "ucId"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;
    .param p6, "uniteParam4"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 58
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static performanceLoggerV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "seedID"    # Ljava/lang/String;
    .param p1, "ucId"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;
    .param p6, "logHeader"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    const-string/jumbo v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebula/log/H5Logger;->exceptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static performanceLoggerV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "seedID"    # Ljava/lang/String;
    .param p1, "ucId"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/lang/String;
    .param p6, "uniteParam4"    # Ljava/lang/String;
    .param p7, "logHeader"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 66
    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLoggerV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static putContextParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_0
    return-void
.end method

.method public static reportTabBarLog(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "logHeader"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "appId"

    const-string/jumbo v2, "appId"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "url"

    .line 463
    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "version"

    const-string/jumbo v2, "appVersion"

    .line 464
    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 461
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 465
    return-void
.end method

.method public static setLastClickSpm(Ljava/lang/String;)V
    .locals 1
    .param p0, "spm"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->setLastClickSpm(Ljava/lang/String;)V

    .line 558
    :cond_0
    return-void
.end method
