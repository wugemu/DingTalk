.class Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
.super Ljava/lang/Object;
.source "HandlerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayTask"
.end annotation


# instance fields
.field protected executeTime:J

.field private isExecuted:Z

.field private name:Ljava/lang/String;

.field private task:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;Ljava/lang/Runnable;JLjava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "delay"    # J
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->this$0:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->isExecuted:Z

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->executeTime:J

    .line 189
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->task:Ljava/lang/Runnable;

    .line 190
    iput-object p5, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->name:Ljava/lang/String;

    .line 191
    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->task:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->this$0:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->access$300(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->isExecuted:Z

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_1
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->isExecuted:Z

    .line 204
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->task:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->task:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method
