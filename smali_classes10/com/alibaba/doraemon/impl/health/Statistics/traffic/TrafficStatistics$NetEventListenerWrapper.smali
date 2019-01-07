.class public Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;
.super Ljava/lang/Object;
.source "TrafficStatistics.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetEventListenerWrapper"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field module:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

.field final trafficStatistics:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "trafficStatistics"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;
    .param p4, "module"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->context:Landroid/content/Context;

    .line 314
    iput-object p4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->module:Ljava/lang/String;

    .line 315
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->trafficStatistics:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    .line 316
    return-void
.end method


# virtual methods
.method public onRequest(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "txDataLen"    # J
    .param p3, "rxDataLen"    # J
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "trafficTag"    # Ljava/lang/String;

    .prologue
    .line 320
    add-long v4, p1, p3

    long-to-int v11, v4

    .line 321
    .local v11, "size":I
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-gtz v11, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, "mimeType":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 328
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 329
    .local v2, "argBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 330
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 331
    :cond_2
    invoke-static/range {p5 .. p5}, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->simplifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 332
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, "arg":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->trafficStatistics:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->module:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->access$100(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Z

    move-result v5

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->access$000(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v6

    int-to-long v8, v11

    invoke-virtual/range {v3 .. v9}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V

    goto :goto_0

    .line 334
    .end local v2    # "argBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v7    # "arg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 335
    .restart local v2    # "argBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 336
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 338
    :cond_4
    invoke-static/range {p5 .. p5}, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 340
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "arg":Ljava/lang/String;
    goto :goto_1
.end method

.method public onRequestEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "trafficTag"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 359
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 361
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->isHuaweiBrand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->access$200(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->removeRunnabletrigger(Ljava/lang/Runnable;)V

    .line 363
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->access$200(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Ljava/lang/Runnable;

    move-result-object v1

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->triggerAtFixedDelay(Ljava/lang/Runnable;I)V

    .line 365
    :cond_0
    return-void
.end method

.method public onRequestStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "trafficTag"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->access$000(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->getsInstance(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->module:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->getModuleTag(Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, "tag":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "module="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$NetEventListenerWrapper;->module:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 353
    return-void
.end method
