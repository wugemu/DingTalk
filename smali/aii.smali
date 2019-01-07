.class public final Laii;
.super Ljava/lang/Object;
.source "AlimeiThreadRunner.java"

# interfaces
.implements Laij;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laii$d;,
        Laii$b;,
        Laii$e;,
        Laii$c;
    }
.end annotation


# static fields
.field private static d:Laii;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laii$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/concurrent/Callable",
            "<*>;",
            "Laii$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Laii$d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ScheduledExecutorService;

.field private f:Landroid/os/Handler;

.field private final g:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Laii;->a:Ljava/util/Map;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Laii;->b:Ljava/util/Map;

    .line 41
    new-instance v1, Ljava/util/PriorityQueue;

    const/16 v2, 0xa

    new-instance v3, Laii$e;

    invoke-direct {v3, p0}, Laii$e;-><init>(Laii;)V

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Laii;->c:Ljava/util/Queue;

    .line 49
    const/4 v1, 0x3

    iput v1, p0, Laii;->g:I

    .line 53
    invoke-direct {p0}, Laii;->b()I

    move-result v0

    .line 54
    .local v0, "coreNum":I
    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x2

    .line 56
    :cond_0
    mul-int/lit8 v1, v0, 0x3

    new-instance v2, Laii$1;

    invoke-direct {v2, p0}, Laii$1;-><init>(Laii;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Laii;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 66
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Laii;->f:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method public static declared-synchronized a()Laii;
    .locals 2

    .prologue
    .line 70
    const-class v1, Laii;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laii;->d:Laii;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Laii;

    invoke-direct {v0}, Laii;-><init>()V

    sput-object v0, Laii;->d:Laii;

    .line 72
    :cond_0
    sget-object v0, Laii;->d:Laii;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Laii;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Laii;

    .prologue
    .line 33
    iget-object v0, p0, Laii;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private b()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 86
    const/4 v3, 0x2

    .line 89
    .local v3, "size":I
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/sys/devices/system/cpu/"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "dir":Ljava/io/File;
    new-instance v4, Laii$a;

    invoke-direct {v4, p0}, Laii$a;-><init>(Laii;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 92
    .local v2, "files":[Ljava/io/File;
    array-length v4, v2

    if-lez v4, :cond_0

    .line 94
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/Handler$Callback;
    .param p4, "group"    # Ljava/lang/String;
    .param p5, "priority"    # Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<*>;",
            "Landroid/os/Handler$Callback;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 132
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    monitor-enter p0

    if-nez p2, :cond_0

    .line 164
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_0
    :try_start_0
    new-instance v1, Laii$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Laii$d;-><init>(B)V

    .line 137
    .local v1, "task":Laii$d;
    new-instance v2, Laii$b;

    invoke-direct {v2, p0, p2}, Laii$b;-><init>(Laii;Ljava/util/concurrent/Callable;)V

    .line 1446
    iput-object v2, v1, Laii$d;->a:Laii$b;

    .line 2446
    iput-object p3, v1, Laii$d;->b:Landroid/os/Handler$Callback;

    .line 3446
    iput-object p4, v1, Laii$d;->c:Ljava/lang/String;

    .line 4446
    iput-object p5, v1, Laii$d;->e:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 141
    const/4 v2, 0x0

    .line 5446
    iput-boolean v2, v1, Laii$d;->f:Z

    .line 143
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Laii;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6446
    iget-object v3, v1, Laii$d;->a:Laii$b;

    .line 145
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 7446
    iput-object v2, v1, Laii$d;->d:Ljava/util/concurrent/Future;

    .line 163
    :goto_1
    iget-object v2, p0, Laii;->b:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    .end local v1    # "task":Laii$d;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 148
    .restart local v1    # "task":Laii$d;
    :cond_1
    :try_start_1
    iget-object v2, p0, Laii;->a:Ljava/util/Map;

    invoke-interface {v2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laii$c;

    .line 149
    .local v0, "groupInfo":Laii$c;
    if-nez v0, :cond_2

    .line 151
    new-instance v0, Laii$c;

    .end local v0    # "groupInfo":Laii$c;
    invoke-direct {v0, p0}, Laii$c;-><init>(Laii;)V

    .line 152
    .restart local v0    # "groupInfo":Laii$c;
    iget-object v2, p0, Laii;->a:Ljava/util/Map;

    .line 8446
    iget-object v3, v1, Laii$d;->c:Ljava/lang/String;

    .line 152
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_2
    iget-object v2, v0, Laii$c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Laii$c;->a:I

    if-ge v2, v3, :cond_3

    .line 155
    iget-object v2, p0, Laii;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9446
    iget-object v3, v1, Laii$d;->a:Laii$b;

    .line 155
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 10446
    iput-object v2, v1, Laii$d;->d:Ljava/util/concurrent/Future;

    .line 156
    iget-object v2, v0, Laii$c;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    :cond_3
    iget-object v2, v0, Laii$c;->c:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, p0, Laii;->c:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)V
    .locals 6
    .param p2, "callback"    # Landroid/os/Handler$Callback;
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "priority"    # Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;",
            "Landroid/os/Handler$Callback;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 121
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    monitor-enter p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Laii;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;Ljava/lang/String;Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/concurrent/Callable;Z)V
    .locals 4
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 172
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Laii;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laii$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .local v1, "task":Laii$d;
    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_1
    const/4 v2, 0x1

    .line 11446
    :try_start_1
    iput-boolean v2, v1, Laii$d;->f:Z

    .line 12446
    iget-object v2, v1, Laii$d;->d:Ljava/util/concurrent/Future;

    .line 178
    if-eqz v2, :cond_2

    .line 13446
    iget-object v2, v1, Laii$d;->d:Ljava/util/concurrent/Future;

    .line 179
    invoke-interface {v2, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14446
    :cond_2
    iget-object v2, v1, Laii$d;->c:Ljava/lang/String;

    .line 185
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 186
    iget-object v2, p0, Laii;->a:Ljava/util/Map;

    .line 15446
    iget-object v3, v1, Laii$d;->c:Ljava/lang/String;

    .line 186
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laii$c;

    .line 187
    .local v0, "groupInfo":Laii$c;
    if-eqz v0, :cond_3

    .line 16446
    iget-object v2, v1, Laii$d;->d:Ljava/util/concurrent/Future;

    .line 188
    if-eqz v2, :cond_4

    .line 189
    iget-object v2, v0, Laii$c;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 198
    .end local v0    # "groupInfo":Laii$c;
    :cond_3
    :goto_1
    iget-object v2, p0, Laii;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    .end local v1    # "task":Laii$d;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 191
    .restart local v0    # "groupInfo":Laii$c;
    .restart local v1    # "task":Laii$d;
    :cond_4
    :try_start_2
    iget-object v2, v0, Laii$c;->c:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object v2, p0, Laii;->c:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 346
    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laii$b;

    .line 348
    .local v0, "callableWrapper":Laii$b;
    iget-object v10, p0, Laii;->b:Ljava/util/Map;

    invoke-static {v0}, Laii$b;->a(Laii$b;)Ljava/util/concurrent/Callable;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laii$d;

    .line 349
    .local v8, "task":Laii$d;
    if-eqz v8, :cond_4

    .line 17446
    iget-boolean v10, v8, Laii$d;->f:Z

    .line 352
    if-nez v10, :cond_1

    .line 18446
    iget-object v1, v8, Laii$d;->b:Landroid/os/Handler$Callback;

    .line 354
    .local v1, "callback":Landroid/os/Handler$Callback;
    if-eqz v1, :cond_1

    .line 355
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v5, v10, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 356
    .local v5, "mainThreadHandler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 19446
    .local v6, "message":Landroid/os/Message;
    :try_start_1
    iget-object v10, v8, Laii$d;->d:Ljava/util/concurrent/Future;

    .line 358
    invoke-interface {v10}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v7

    .line 359
    .local v7, "ret":Ljava/lang/Object;
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    instance-of v10, v7, Ljava/lang/Throwable;

    if-eqz v10, :cond_0

    .line 361
    const/4 v10, 0x0

    iput-object v10, v6, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    .end local v7    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    .end local v1    # "callback":Landroid/os/Handler$Callback;
    .end local v5    # "mainThreadHandler":Landroid/os/Handler;
    .end local v6    # "message":Landroid/os/Message;
    :cond_1
    iget-object v10, p0, Laii;->b:Ljava/util/Map;

    invoke-static {v0}, Laii$b;->a(Laii$b;)Ljava/util/concurrent/Callable;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20446
    iget-object v10, v8, Laii$d;->c:Ljava/lang/String;

    .line 374
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 375
    iget-object v10, p0, Laii;->a:Ljava/util/Map;

    .line 21446
    iget-object v11, v8, Laii$d;->c:Ljava/lang/String;

    .line 375
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laii$c;

    .line 376
    .local v3, "groupinfo":Laii$c;
    if-eqz v3, :cond_2

    .line 377
    iget-object v10, v3, Laii$c;->d:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 386
    .end local v3    # "groupinfo":Laii$c;
    :cond_2
    :goto_1
    iget-object v10, p0, Laii;->c:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 387
    .local v4, "interator":Ljava/util/Iterator;, "Ljava/util/Iterator<Laii$d;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 389
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laii$d;

    .line 23446
    .local v9, "toRun":Laii$d;
    iget-object v10, v9, Laii$d;->c:Ljava/lang/String;

    .line 391
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 394
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 395
    iget-object v10, p0, Laii;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24446
    iget-object v11, v9, Laii$d;->a:Laii$b;

    .line 395
    invoke-interface {v10, v11}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    .line 25446
    iput-object v10, v9, Laii$d;->d:Ljava/util/concurrent/Future;

    .line 396
    iget-object v10, p0, Laii;->b:Ljava/util/Map;

    .line 26446
    iget-object v11, v9, Laii$d;->a:Laii$b;

    .line 396
    invoke-static {v11}, Laii$b;->a(Laii$b;)Ljava/util/concurrent/Callable;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v9    # "toRun":Laii$d;
    :cond_3
    monitor-exit p0

    .line 418
    const/4 v10, 0x1

    return v10

    .line 362
    .end local v4    # "interator":Ljava/util/Iterator;, "Ljava/util/Iterator<Laii$d;>;"
    .restart local v1    # "callback":Landroid/os/Handler$Callback;
    .restart local v5    # "mainThreadHandler":Landroid/os/Handler;
    .restart local v6    # "message":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 363
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "TaskRunner--->>future get result failed:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Laig;->a(Ljava/lang/String;)I

    goto :goto_0

    .line 417
    .end local v0    # "callableWrapper":Laii$b;
    .end local v1    # "callback":Landroid/os/Handler$Callback;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "mainThreadHandler":Landroid/os/Handler;
    .end local v6    # "message":Landroid/os/Message;
    .end local v8    # "task":Laii$d;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 364
    .restart local v0    # "callableWrapper":Laii$b;
    .restart local v1    # "callback":Landroid/os/Handler$Callback;
    .restart local v5    # "mainThreadHandler":Landroid/os/Handler;
    .restart local v6    # "message":Landroid/os/Message;
    .restart local v8    # "task":Laii$d;
    :catch_1
    move-exception v2

    .line 365
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "TaskRunner--->>future get result failed:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Laig;->a(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 382
    .end local v1    # "callback":Landroid/os/Handler$Callback;
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v5    # "mainThreadHandler":Landroid/os/Handler;
    .end local v6    # "message":Landroid/os/Message;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "TaskRunner--->>An removed task has finished"

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, " is cancelled? "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22446
    iget-boolean v12, v8, Laii$d;->f:Z

    .line 382
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v10, ""

    goto :goto_3

    .line 399
    .restart local v4    # "interator":Ljava/util/Iterator;, "Ljava/util/Iterator<Laii$d;>;"
    .restart local v9    # "toRun":Laii$d;
    :cond_6
    iget-object v10, p0, Laii;->a:Ljava/util/Map;

    .line 27446
    iget-object v11, v9, Laii$d;->c:Ljava/lang/String;

    .line 399
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laii$c;

    .line 400
    .restart local v3    # "groupinfo":Laii$c;
    if-nez v3, :cond_7

    .line 401
    new-instance v3, Laii$c;

    .end local v3    # "groupinfo":Laii$c;
    invoke-direct {v3, p0}, Laii$c;-><init>(Laii;)V

    .line 403
    .restart local v3    # "groupinfo":Laii$c;
    iget-object v10, p0, Laii;->a:Ljava/util/Map;

    .line 28446
    iget-object v11, v9, Laii$d;->c:Ljava/lang/String;

    .line 403
    invoke-interface {v10, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_7
    iget-object v10, v3, Laii$c;->d:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget v11, v3, Laii$c;->a:I

    if-ge v10, v11, :cond_3

    .line 406
    iget-object v10, p0, Laii;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29446
    iget-object v11, v9, Laii$d;->a:Laii$b;

    .line 406
    invoke-interface {v10, v11}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    .line 30446
    iput-object v10, v9, Laii$d;->d:Ljava/util/concurrent/Future;

    .line 407
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 408
    iget-object v10, v3, Laii$c;->c:Ljava/util/Queue;

    invoke-interface {v10, v9}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 409
    iget-object v10, v3, Laii$c;->d:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method
