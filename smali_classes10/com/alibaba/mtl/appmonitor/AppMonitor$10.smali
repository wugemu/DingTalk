.class final Lcom/alibaba/mtl/appmonitor/AppMonitor$10;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;->setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:I

.field final synthetic val$statisticsInterval:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 994
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$10;->val$event:I

    iput p2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$10;->val$statisticsInterval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 998
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$10;->val$event:I

    iget v3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$10;->val$statisticsInterval:I

    invoke-interface {v1, v2, v3}, Lajt;->a(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :goto_0
    return-void

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/alibaba/analytics/AnalyticsMgr;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
