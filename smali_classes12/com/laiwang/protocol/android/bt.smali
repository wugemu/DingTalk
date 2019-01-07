.class public Lcom/laiwang/protocol/android/bt;
.super Lcom/laiwang/protocol/android/bu;
.source "HandlerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/bt$a;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field private b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/laiwang/protocol/android/bt$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Landroid/os/HandlerThread;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "ioWorker"

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bt;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/laiwang/protocol/android/bu;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bt;->d:Z

    .line 34
    iput-object p1, p0, Lcom/laiwang/protocol/android/bt;->f:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bt;->a(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/bt;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bt;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->e:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 208
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->e:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 210
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    .line 218
    new-instance v0, Lcom/laiwang/protocol/android/bt$2;

    invoke-direct {v0, p0, p1}, Lcom/laiwang/protocol/android/bt$2;-><init>(Lcom/laiwang/protocol/android/bt;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bt;->e:Landroid/os/HandlerThread;

    .line 244
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :cond_2
    monitor-exit p0

    return-void

    .line 212
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/bt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bt;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/bt;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/bt;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bt;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bt;->d:Z

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bt;->a(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :goto_0
    return-void

    .line 44
    :cond_0
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 48
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Runnable;J)V
    .locals 8
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMS"    # J

    .prologue
    .line 58
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bt;->a(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    if-nez v0, :cond_1

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v2, 0xa

    new-instance v3, Lcom/laiwang/protocol/android/bt$1;

    invoke-direct {v3, p0}, Lcom/laiwang/protocol/android/bt$1;-><init>(Lcom/laiwang/protocol/android/bt;)V

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 68
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    new-instance v1, Lcom/laiwang/protocol/android/bt$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/laiwang/protocol/android/bt$a;-><init>(Lcom/laiwang/protocol/android/bt;Ljava/lang/Runnable;JLjava/lang/String;)V

    .line 71
    .local v1, "delayTask":Lcom/laiwang/protocol/android/bt$a;
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 85
    :goto_0
    return-void

    .line 68
    .end local v1    # "delayTask":Lcom/laiwang/protocol/android/bt$a;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 77
    .restart local v1    # "delayTask":Lcom/laiwang/protocol/android/bt$a;
    :cond_2
    monitor-enter p0

    .line 78
    :try_start_2
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 85
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 81
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;

    if-nez v0, :cond_4

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bt;->a()V

    .line 104
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-object v2, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    if-nez v2, :cond_0

    .line 136
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/bt$a;

    .line 114
    .local v0, "delayTask":Lcom/laiwang/protocol/android/bt$a;
    invoke-static {v0}, Lcom/laiwang/protocol/android/bt$a;->a(Lcom/laiwang/protocol/android/bt$a;)Ljava/lang/Runnable;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 115
    iget-object v3, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v3, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 117
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    iget-object v3, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 119
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    .end local v0    # "delayTask":Lcom/laiwang/protocol/android/bt$a;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_3
    monitor-enter p0

    .line 130
    :try_start_3
    iget-object v2, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    if-eqz v2, :cond_5

    .line 131
    iget-object v2, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 135
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 136
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 133
    :cond_5
    :try_start_4
    iget-object v2, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;

    if-nez v2, :cond_4

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/laiwang/protocol/android/bt;->c:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2
.end method

.method public c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 180
    :goto_0
    iget-object v4, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 182
    iget-object v4, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/bt$a;

    .line 183
    .local v1, "task":Lcom/laiwang/protocol/android/bt$a;
    if-eqz v1, :cond_2

    .line 186
    iget-wide v4, v1, Lcom/laiwang/protocol/android/bt$a;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 187
    iget-object v4, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v5

    new-array v5, v5, [Lcom/laiwang/protocol/android/bt$a;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/laiwang/protocol/android/bt$a;

    .line 188
    .local v2, "tasks":[Lcom/laiwang/protocol/android/bt$a;
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 189
    .local v0, "t":Lcom/laiwang/protocol/android/bt$a;
    if-eqz v0, :cond_0

    .line 191
    iget-object v5, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-static {v0}, Lcom/laiwang/protocol/android/bt$a;->a(Lcom/laiwang/protocol/android/bt$a;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 192
    iget-object v5, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-static {v0}, Lcom/laiwang/protocol/android/bt$a;->a(Lcom/laiwang/protocol/android/bt$a;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/laiwang/protocol/android/bt$a;->a:J

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v5, v0, v6, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 188
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "t":Lcom/laiwang/protocol/android/bt$a;
    .end local v2    # "tasks":[Lcom/laiwang/protocol/android/bt$a;
    :cond_1
    const-string/jumbo v4, "(%s) task has correct to run (%d) now (%d)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bt$a;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x1

    iget-wide v8, v1, Lcom/laiwang/protocol/android/bt$a;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v4, p0, Lcom/laiwang/protocol/android/bt;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    .line 199
    iget-object v4, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-static {v1}, Lcom/laiwang/protocol/android/bt$a;->a(Lcom/laiwang/protocol/android/bt$a;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    iget-object v4, p0, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-static {v1}, Lcom/laiwang/protocol/android/bt$a;->a(Lcom/laiwang/protocol/android/bt$a;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto/16 :goto_0

    .line 203
    .end local v1    # "task":Lcom/laiwang/protocol/android/bt$a;
    :cond_2
    return-void
.end method
