.class Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;
.super Ljava/lang/Object;
.source "StatisticsTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->onEnterBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHandlerExecutor:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->access$000(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->remove(Ljava/lang/Runnable;)V

    .line 79
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHandlerExecutor:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->access$100(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->remove(Ljava/lang/Runnable;)V

    .line 81
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->access$200(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 82
    .local v2, "size":I
    const/4 v1, 0x0

    .line 83
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;>;"
    if-lez v2, :cond_0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;>;"
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .restart local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;>;"
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->access$200(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_0
    if-eqz v1, :cond_1

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

    .line 91
    .local v0, "listener":Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;
    invoke-interface {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;->onEnterBackground()V

    goto :goto_0

    .line 95
    .end local v0    # "listener":Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHandlerExecutor:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->access$100(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;

    iget-object v5, v5, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->access$300(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->doPostDelay(Ljava/lang/Runnable;J)V

    .line 96
    return-void
.end method
