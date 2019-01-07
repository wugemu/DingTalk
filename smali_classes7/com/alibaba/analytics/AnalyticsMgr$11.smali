.class final Lcom/alibaba/analytics/AnalyticsMgr$11;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/AnalyticsMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

.field final synthetic d:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->c:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-object p4, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->d:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iput-boolean p5, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 406
    :try_start_0
    const-string/jumbo v0, "register stat event"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "module"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    iget-object v1, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->c:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iget-object v4, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->d:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iget-boolean v5, p0, Lcom/alibaba/analytics/AnalyticsMgr$11;->e:Z

    invoke-interface/range {v0 .. v5}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v6

    .line 409
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v6}, Lcom/alibaba/analytics/AnalyticsMgr;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
