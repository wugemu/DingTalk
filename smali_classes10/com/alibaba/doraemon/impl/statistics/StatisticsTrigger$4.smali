.class Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$4;
.super Ljava/lang/Object;
.source "StatisticsTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 150
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$4;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

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
    .line 153
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$4;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->access$200(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 154
    .local v2, "size":I
    const/4 v1, 0x0

    .line 155
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;>;"
    if-lez v2, :cond_0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;>;"
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .restart local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;>;"
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$4;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->access$200(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    :cond_0
    if-eqz v1, :cond_1

    .line 161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

    .line 162
    .local v0, "listener":Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;
    invoke-interface {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;->onForegroundSample()V

    goto :goto_0

    .line 166
    .end local v0    # "listener":Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$4;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHandlerExecutor:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$4;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->access$000(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$4;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->access$400(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->doPostDelay(Ljava/lang/Runnable;J)V

    .line 167
    return-void
.end method
