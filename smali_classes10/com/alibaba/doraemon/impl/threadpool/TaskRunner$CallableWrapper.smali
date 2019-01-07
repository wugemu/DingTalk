.class Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;
.super Ljava/lang/Object;
.source "TaskRunner.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallableWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mRealCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    .line 522
    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x3

    .line 527
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    if-nez v6, :cond_0

    move-object v3, v5

    .line 568
    :goto_0
    return-object v3

    .line 530
    :cond_0
    const/4 v3, 0x0

    .line 531
    .local v3, "ret":Ljava/lang/Object;
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->access$900(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    .line 532
    .local v4, "task":Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;
    if-nez v4, :cond_1

    move-object v3, v5

    .line 533
    goto :goto_0

    .line 537
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$300(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->access$1000(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;Ljava/util/concurrent/Callable;Ljava/lang/String;I)V

    .line 538
    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$502(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;I)I

    .line 539
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v6, 0x12

    if-lt v5, v6, :cond_4

    .line 542
    :try_start_1
    iget-object v5, v4, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mName:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 543
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 546
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 560
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 561
    .local v2, "msg":Landroid/os/Message;
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 562
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->access$1100(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    invoke-static {v4, v9}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$502(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;I)I

    .line 565
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$300(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v9}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->access$1000(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;Ljava/util/concurrent/Callable;Ljava/lang/String;I)V

    goto :goto_0

    .line 546
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 551
    .end local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    .line 553
    .local v1, "mode":I
    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v5, v1, :cond_2

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v5, v1, :cond_3

    .line 554
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 555
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0x201133

    iput v5, v2, Landroid/os/Message;->what:I

    .line 556
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 557
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->access$1100(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 560
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 561
    .restart local v2    # "msg":Landroid/os/Message;
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 562
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->access$1100(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    invoke-static {v4, v9}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$502(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;I)I

    .line 565
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$300(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v9}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->access$1000(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;Ljava/util/concurrent/Callable;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 549
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "mode":I
    .end local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "ret":Ljava/lang/Object;
    :cond_4
    :try_start_5
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    goto :goto_1

    .line 560
    .end local v3    # "ret":Ljava/lang/Object;
    :catchall_1
    move-exception v5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 561
    .restart local v2    # "msg":Landroid/os/Message;
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 562
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->access$1100(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    invoke-static {v4, v9}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$502(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;I)I

    .line 565
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;->mRealCallable:Ljava/util/concurrent/Callable;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$300(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v9}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->access$1000(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;Ljava/util/concurrent/Callable;Ljava/lang/String;I)V

    .line 566
    throw v5
.end method
