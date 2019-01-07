.class Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "StatisticsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    const-string/jumbo v1, "StatisticsTrigger"

    const-string/jumbo v2, "StatisticsTrigger mHeartbeatReceiver  onReceive"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->outLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 59
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "StatisticsTrigger"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 61
    new-instance v1, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1$1;-><init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method
