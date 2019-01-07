.class final Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$5;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;

.field final synthetic val$value:D


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$5;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$5;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$5;->val$dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-wide p4, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$5;->val$value:D

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
    .line 919
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$5;->val$module:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$5;->val$monitorPoint:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$5;->val$dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iget-wide v4, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$5;->val$value:D

    invoke-interface/range {v0 .. v5}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v6

    .line 921
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v6}, Lcom/alibaba/analytics/AnalyticsMgr;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
