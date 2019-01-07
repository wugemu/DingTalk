.class Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1$1;
.super Ljava/lang/Object;
.source "StatisticsTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1$1;->this$1:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$1;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->mHandlerExecutor:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->correctTaskDelay()V

    .line 65
    return-void
.end method
