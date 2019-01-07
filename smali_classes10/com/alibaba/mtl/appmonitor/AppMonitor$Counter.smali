.class public Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 605
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    if-nez v1, :cond_0

    .line 606
    const/4 v0, 0x0

    .line 614
    :goto_0
    return v0

    .line 608
    :cond_0
    const/4 v0, 0x0

    .line 610
    .local v0, "ret":Z
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    invoke-interface {v1, p0, p1}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 625
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    :goto_0
    return-void

    .line 628
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$3;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    .line 638
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-virtual {v1, v0}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 650
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    :goto_0
    return-void

    .line 653
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 663
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-virtual {v1, v0}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .prologue
    .line 584
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    :goto_0
    return-void

    .line 587
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$2;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$2;-><init>(I)V

    .line 597
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-virtual {v1, v0}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setStatisticsInterval(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 563
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    :goto_0
    return-void

    .line 566
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$1;-><init>(I)V

    .line 577
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-virtual {v1, v0}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
