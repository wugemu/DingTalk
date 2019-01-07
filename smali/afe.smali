.class public final Lafe;
.super Ljava/lang/Object;
.source "MailStatsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 666
    const-string/jumbo v0, "JustForStatisticActivity"

    const-string/jumbo v1, "mail_send_success_click"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 667
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "ctrName"    # Ljava/lang/String;

    .prologue
    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 468
    .local v0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, v0}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 469
    invoke-static {p0}, Lafg;->b(Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public static a(Ljava/lang/String;F)V
    .locals 10
    .param p0, "timeStr"    # Ljava/lang/String;
    .param p1, "scale"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x2

    .line 1539
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 1540
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "scale:"

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, ", mailTime: "

    aput-object v4, v3, v6

    const/4 v4, 0x3

    aput-object p0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1542
    .local v1, "exceptionStr":Ljava/lang/String;
    const-string/jumbo v3, "webviewGlobalScale"

    const-string/jumbo v4, "webScaleErr"

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lafg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 1545
    .local v2, "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v3, "successCount"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    const-string/jumbo v3, "scale"

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 1548
    .local v0, "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "errMsg"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    sget-object v3, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v4, "CMail"

    const-string/jumbo v5, "mail_detail_global_scale"

    invoke-static {v3, v4, v5, v0, v2}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1557
    .end local v1    # "exceptionStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 1551
    .end local v0    # "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 1552
    .restart local v2    # "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v3, "successCount"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    const-string/jumbo v3, "scale"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1555
    .restart local v0    # "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v4, "CMail"

    const-string/jumbo v5, "mail_detail_global_scale"

    invoke-static {v3, v4, v5, v0, v2}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "exception"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1044
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1045
    move-object v1, p0

    .line 1047
    .local v1, "point":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isCommonProtocolError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".imap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v0

    .line 1052
    .local v0, "error":Lcom/alibaba/alimei/framework/SDKError;
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    .end local v0    # "error":Lcom/alibaba/alimei/framework/SDKError;
    .end local v1    # "point":Ljava/lang/String;
    :goto_0
    return-void

    .line 1054
    :cond_1
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {p0, v2, v3}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctrName"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 488
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-static {p0, v0}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 490
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "serverInfo"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 651
    const-string/jumbo v1, "mail_receive_failed_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 654
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isCommonProtocolError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    invoke-static {p0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-static {p2}, Lafg;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-static {p0, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isNetworkError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    const/16 v1, 0x643

    const-string/jumbo v2, "\u90ae\u4ef6\u5217\u8868\u5237\u65b0\u5931\u8d25"

    invoke-static {v1, v0, v2}, Lajg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1059
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    invoke-static {v0, v1, p0, p1, p2}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 1064
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "ctrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 493
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "accountName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 496
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x2

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 498
    .restart local p2    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "email"

    invoke-static {v0}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string/jumbo v1, "uid"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 503
    invoke-static {p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 504
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "ctrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "accountName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 475
    if-nez p1, :cond_0

    .line 476
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x2

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 478
    .restart local p1    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v1, "email"

    invoke-static {v0}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string/jumbo v1, "uid"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 483
    invoke-static {p0, p1}, Lafg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 484
    return-void
.end method

.method public static a(Z)V
    .locals 2
    .param p0, "on"    # Z

    .prologue
    .line 539
    const-string/jumbo v1, "mail_stickto_top_click"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    invoke-static {v1, v0}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-void

    .line 539
    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 670
    const-string/jumbo v0, "JustForStatisticActivity"

    const-string/jumbo v1, "mail_send_failed_click"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 672
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ", "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 674
    const/16 v0, 0x641

    const-string/jumbo v1, "\u53d1\u9001\u90ae\u4ef6\u5931\u8d25"

    invoke-static {v0, p1, v1}, Lajg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public static b(Z)V
    .locals 3
    .param p0, "isCancel"    # Z

    .prologue
    .line 1413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1414
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "iscancel"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    const-string/jumbo v1, "mail_add_account_banner_click"

    invoke-static {v1, v0}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1416
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 698
    const-string/jumbo v0, "mail_mailbind_orglogin_loginfail_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ", "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 702
    if-eqz p1, :cond_0

    const-string/jumbo v0, "1101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 705
    :cond_0
    const/16 v0, 0x64a

    const-string/jumbo v1, "\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, p1, v1}, Lajg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 709
    const-string/jumbo v0, "mail_mailbind_normallogin_loginfail_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 711
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ", "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 713
    if-eqz p1, :cond_0

    const-string/jumbo v0, "1101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    :goto_0
    return-void

    .line 716
    :cond_0
    const/16 v0, 0x64a

    const-string/jumbo v1, "\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, p1, v1}, Lajg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 1039
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    invoke-static {v0, v1, p0, p1}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    return-void
.end method
