.class final Lcom/alibaba/mtl/appmonitor/AppMonitor$11;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;->createRegisterTask(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

.field final synthetic val$isCommitDetail:Z

.field final synthetic val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iput-boolean p5, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$isCommitDetail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1025
    :try_start_0
    const-string/jumbo v0, "AppMonitor"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "register stat event. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$module:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$monitorPoint:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1026
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$module:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$monitorPoint:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iget-boolean v5, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$11;->val$isCommitDetail:Z

    invoke-interface/range {v0 .. v5}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    return-void

    .line 1027
    :catch_0
    move-exception v6

    .line 1028
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v6}, Lcom/alibaba/analytics/AnalyticsMgr;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
