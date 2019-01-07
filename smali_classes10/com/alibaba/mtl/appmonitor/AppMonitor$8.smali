.class final Lcom/alibaba/mtl/appmonitor/AppMonitor$8;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

.field final synthetic val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$8;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$8;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$8;->val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$8;->val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    :try_start_0
    const-string/jumbo v1, "\u5916\u6ce8\u518c\u4efb\u52a1\u5f00\u59cb\u6267\u884c"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "module"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$8;->val$module:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "monitorPoint"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$8;->val$monitorPoint:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$8;->val$module:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$8;->val$monitorPoint:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$8;->val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$8;->val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-interface {v1, v2, v3, v4, v5}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/alibaba/analytics/AnalyticsMgr;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
