.class Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;
.super Ljava/lang/Object;
.source "StatisticsTrigger.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


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
    .line 71
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterBackground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHandlerExecutor:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    new-instance v1, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;-><init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->doPost(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public onEnterForeground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHandlerExecutor:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    new-instance v1, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$2;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$2;-><init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->doPost(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method
