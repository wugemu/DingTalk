.class public Lcom/taobao/statistic/TBS$Page;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _calControlName(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;

    .prologue
    .line 457
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 458
    const-string/jumbo v1, "Page_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Page_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 461
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static _calPageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 447
    if-eqz p0, :cond_0

    .line 448
    const-string/jumbo v0, "Page_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Page_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 452
    :cond_0
    return-object p0
.end method

.method private static varargs _commitCtrlEvent(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p0, "aPagename"    # Ljava/lang/String;
    .param p1, "aEventID"    # I
    .param p2, "ct"    # Lcom/taobao/statistic/CT;
    .param p3, "aControlName"    # Ljava/lang/String;
    .param p4, "selectIndex"    # I
    .param p5, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 471
    if-nez p0, :cond_1

    .line 472
    invoke-static {}, Lcom/taobao/statistic/TBS$Page;->_getCurPageName()Ljava/lang/String;

    move-result-object v3

    .line 1205
    .local v3, "lPageName":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 477
    if-eqz v4, :cond_2

    .line 500
    :cond_0
    :goto_1
    return-void

    .line 474
    .end local v3    # "lPageName":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/taobao/statistic/TBS$Page;->_calPageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "lPageName":Ljava/lang/String;
    goto :goto_0

    .line 481
    :cond_2
    invoke-static {v3, p2, p3}, Lcom/taobao/statistic/TBS$Page;->_calControlName(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2205
    .local v1, "lControlName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 482
    if-nez v4, :cond_0

    .line 486
    invoke-static {p5}, Lcom/taobao/statistic/TBS$Ext;->access$000([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "lArgsString":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 488
    .local v2, "lHitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string/jumbo v4, "_bmbu"

    const-string/jumbo v5, "yes"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const/16 v4, 0x836

    if-ne p1, v4, :cond_3

    .line 493
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARG3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_3
    if-eqz v0, :cond_4

    .line 496
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_4
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_1
.end method

.method private static _getCurPageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 436
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTPageHitHelper;->getCurrentPageName()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "lPageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 439
    const-string/jumbo v1, "Page_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Page_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_0
    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/taobao/statistic/CT;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # [Ljava/lang/String;

    .prologue
    .line 360
    invoke-static/range {p0 .. p5}, Lcom/taobao/statistic/TBS$Page;->_commitCtrlEvent(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public static buttonClicked(Ljava/lang/String;)V
    .locals 1
    .param p0, "controlName"    # Ljava/lang/String;

    .prologue
    .line 508
    sget-object v0, Lcom/taobao/statistic/CT;->Button:Lcom/taobao/statistic/CT;

    invoke-static {v0, p0}, Lcom/taobao/statistic/TBS$Page;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public static create(Ljava/lang/String;)V
    .locals 0
    .param p0, "pageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 423
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "page"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    return-void
.end method

.method public static ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 6
    .param p0, "ct"    # Lcom/taobao/statistic/CT;
    .param p1, "controlName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 432
    const/4 v0, 0x0

    const/16 v1, 0x835

    new-array v5, v4, [Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->_commitCtrlEvent(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public static ctrlLongClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 6
    .param p0, "ct"    # Lcom/taobao/statistic/CT;
    .param p1, "controlName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 518
    const/4 v0, 0x0

    const/16 v1, 0x837

    new-array v5, v4, [Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->_commitCtrlEvent(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public static destroy(Ljava/lang/String;)V
    .locals 0
    .param p0, "pageKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    return-void
.end method

.method public static enter(Ljava/lang/String;)V
    .locals 0
    .param p0, "pageKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    return-void
.end method

.method public static enterWithPageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "pageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 405
    return-void
.end method

.method public static goBack()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 551
    return-void
.end method

.method public static itemSelected(Lcom/taobao/statistic/CT;Ljava/lang/String;I)V
    .locals 6
    .param p0, "ct"    # Lcom/taobao/statistic/CT;
    .param p1, "controlName"    # Ljava/lang/String;
    .param p2, "selectedIndex"    # I

    .prologue
    .line 530
    const/4 v0, 0x0

    const/16 v1, 0x836

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->_commitCtrlEvent(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public static leave(Ljava/lang/String;)V
    .locals 0
    .param p0, "pageKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    return-void
.end method

.method public static updatePageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "newPageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 414
    return-void
.end method

.method public static updatePageProperties(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 0
    .param p0, "pPageKey"    # Ljava/lang/String;
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    return-void
.end method
