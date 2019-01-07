.class Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;
.super Ljava/lang/Object;
.source "FileLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeriallyExecutor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/log/FileLogger;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/log/FileLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    :goto_0
    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v2}, Lcom/alibaba/doraemon/log/FileLogger;->access$000(Lcom/alibaba/doraemon/log/FileLogger;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 258
    .local v1, "task":Ljava/lang/Runnable;
    if-nez v1, :cond_1

    .line 259
    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v2}, Lcom/alibaba/doraemon/log/FileLogger;->access$000(Lcom/alibaba/doraemon/log/FileLogger;)Ljava/util/Queue;

    move-result-object v3

    monitor-enter v3

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v2}, Lcom/alibaba/doraemon/log/FileLogger;->access$000(Lcom/alibaba/doraemon/log/FileLogger;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 261
    if-nez v1, :cond_0

    .line 262
    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/alibaba/doraemon/log/FileLogger;->access$102(Lcom/alibaba/doraemon/log/FileLogger;Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;)Lcom/alibaba/doraemon/log/FileLogger$SeriallyExecutor;

    .line 263
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_1
    if-eqz v1, :cond_2

    .line 266
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 270
    :cond_2
    return-void
.end method
