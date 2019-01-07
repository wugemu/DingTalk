.class Ljnv;
.super Ljava/lang/Object;
.source "ProxyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljnv$a;
    }
.end annotation


# instance fields
.field private final a:Ljnx;

.field private final b:Ljnj;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field protected e:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile g:Ljava/lang/Thread;

.field private volatile h:Z

.field private volatile i:I


# direct methods
.method public constructor <init>(Ljnx;Ljnj;Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V
    .locals 1
    .param p1, "source"    # Ljnx;
    .param p2, "cache"    # Ljnj;
    .param p3, "proxyCacheServer"    # Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljnv;->c:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljnv;->d:Ljava/lang/Object;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Ljnv;->i:I

    .line 34
    invoke-static {p1}, Ljnu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljnx;

    iput-object v0, p0, Ljnv;->a:Ljnx;

    .line 35
    invoke-static {p2}, Ljnu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljnj;

    iput-object v0, p0, Ljnv;->b:Ljnj;

    .line 36
    iput-object p3, p0, Ljnv;->e:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ljnv;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    return-void
.end method

.method private a(JJ)V
    .locals 9
    .param p1, "cacheAvailable"    # J
    .param p3, "sourceAvailable"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    .line 3108
    cmp-long v0, p3, v6

    if-nez v0, :cond_1

    move v0, v1

    .line 3109
    :goto_0
    if-eqz v0, :cond_2

    const/16 v0, 0x64

    .line 3110
    :goto_1
    iget v3, p0, Ljnv;->i:I

    if-eq v0, v3, :cond_3

    move v3, v1

    .line 3111
    :goto_2
    cmp-long v4, p3, v6

    if-ltz v4, :cond_4

    .line 3112
    :goto_3
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 3113
    invoke-virtual {p0, v0}, Ljnv;->a(I)V

    .line 3115
    :cond_0
    iput v0, p0, Ljnv;->i:I

    .line 102
    iget-object v1, p0, Ljnv;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Ljnv;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 104
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    move v0, v2

    .line 3108
    goto :goto_0

    .line 3109
    :cond_2
    const-wide/16 v4, 0x64

    mul-long/2addr v4, p1

    div-long/2addr v4, p3

    long-to-int v0, v4

    goto :goto_1

    :cond_3
    move v3, v2

    .line 3110
    goto :goto_2

    :cond_4
    move v1, v2

    .line 3111
    goto :goto_3

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ljnv;)V
    .locals 11
    .param p0, "x0"    # Ljnv;

    .prologue
    const/4 v3, -0x1

    .line 18
    .line 3124
    const/4 v0, 0x0

    .line 3126
    :try_start_0
    iget-object v1, p0, Ljnv;->b:Ljnj;

    invoke-interface {v1}, Ljnj;->a()I

    move-result v0

    .line 3127
    iget-object v1, p0, Ljnv;->a:Ljnx;

    invoke-interface {v1, v0}, Ljnx;->a(I)V

    .line 3128
    iget-object v1, p0, Ljnv;->a:Ljnx;

    invoke-interface {v1}, Ljnx;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v2

    .line 3129
    const/16 v1, 0x2000

    :try_start_1
    new-array v4, v1, [B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move v1, v0

    .line 3132
    :goto_0
    :try_start_2
    iget-object v0, p0, Ljnv;->a:Ljnx;

    invoke-interface {v0, v4}, Ljnx;->a([B)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 3133
    iget-object v5, p0, Ljnv;->d:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3134
    :try_start_3
    invoke-direct {p0}, Ljnv;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3135
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3148
    invoke-direct {p0}, Ljnv;->d()V

    .line 3149
    int-to-long v0, v1

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Ljnv;->a(JJ)V

    .line 3150
    :goto_1
    return-void

    .line 3137
    :cond_0
    :try_start_4
    iget-object v6, p0, Ljnv;->b:Ljnj;

    invoke-interface {v6, v4, v0}, Ljnj;->a([BI)V

    .line 3138
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3139
    add-int/2addr v0, v1

    .line 3141
    int-to-long v6, v0

    int-to-long v8, v2

    :try_start_5
    invoke-direct {p0, v6, v7, v8, v9}, Ljnv;->a(JJ)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move v1, v0

    goto :goto_0

    .line 3138
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3145
    :catch_0
    move-exception v0

    move v0, v1

    move v1, v2

    :goto_2
    :try_start_8
    iget-object v2, p0, Ljnv;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 3148
    invoke-direct {p0}, Ljnv;->d()V

    .line 3149
    int-to-long v2, v0

    int-to-long v0, v1

    invoke-direct {p0, v2, v3, v0, v1}, Ljnv;->a(JJ)V

    goto :goto_1

    .line 3154
    :cond_1
    :try_start_9
    iget-object v3, p0, Ljnv;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3155
    :try_start_a
    invoke-direct {p0}, Ljnv;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljnv;->b:Ljnj;

    invoke-interface {v0}, Ljnj;->a()I

    move-result v0

    iget-object v4, p0, Ljnv;->a:Ljnx;

    invoke-interface {v4}, Ljnx;->a()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 3156
    iget-object v0, p0, Ljnv;->b:Ljnj;

    invoke-interface {v0}, Ljnj;->c()V

    .line 3158
    :cond_2
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3148
    invoke-direct {p0}, Ljnv;->d()V

    .line 3149
    int-to-long v0, v1

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Ljnv;->a(JJ)V

    goto :goto_1

    .line 3158
    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 3148
    :catchall_2
    move-exception v0

    :goto_3
    invoke-direct {p0}, Ljnv;->d()V

    .line 3149
    int-to-long v4, v1

    int-to-long v2, v2

    invoke-direct {p0, v4, v5, v2, v3}, Ljnv;->a(JJ)V

    throw v0

    .line 3148
    :catchall_3
    move-exception v1

    move v2, v3

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_3

    :catchall_5
    move-exception v2

    move-object v10, v2

    move v2, v1

    move v1, v0

    move-object v0, v10

    goto :goto_3

    .line 3145
    :catch_1
    move-exception v1

    move v1, v3

    goto :goto_2

    :catch_2
    move-exception v1

    move v1, v2

    goto :goto_2
.end method

.method private declared-synchronized b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljnv;->g:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljnv;->g:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 83
    .local v0, "readingInProgress":Z
    :cond_0
    iget-boolean v1, p0, Ljnv;->h:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ljnv;->b:Ljnj;

    invoke-interface {v1}, Ljnj;->d()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 84
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljnv$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ljnv$a;-><init>(Ljnv;B)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Source reader for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljnv;->a:Ljnx;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Ljnv;->g:Ljava/lang/Thread;

    .line 85
    iget-object v1, p0, Ljnv;->g:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    monitor-exit p0

    return-void

    .line 82
    .end local v0    # "readingInProgress":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljnv;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Ljnv;->a:Ljnx;

    invoke-interface {v1}, Ljnx;->b()V
    :try_end_0
    .catch Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
    new-instance v1, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error closing source "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljnv;->a:Ljnx;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    .end local v0    # "e":Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "close source unknown exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljnv;->a:Ljnx;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a([BJI)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # J
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2000

    const/4 v2, 0x1

    const/16 v8, 0x64

    const/4 v3, 0x0

    .line 42
    .line 1038
    const-string/jumbo v1, "Buffer must be not null!"

    .line 2021
    if-nez p1, :cond_0

    .line 2022
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1039
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-ltz v1, :cond_2

    move v1, v2

    :goto_0
    const-string/jumbo v4, "Data offset must be positive!"

    invoke-static {v1, v4}, Ljnu;->a(ZLjava/lang/String;)V

    .line 1040
    array-length v1, p1

    if-gt v9, v1, :cond_3

    :goto_1
    const-string/jumbo v1, "Length must be in range [0..buffer.length]"

    invoke-static {v2, v1}, Ljnu;->a(ZLjava/lang/String;)V

    .line 44
    :cond_1
    iget-object v1, p0, Ljnv;->b:Ljnj;

    invoke-interface {v1}, Ljnj;->d()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Ljnv;->b:Ljnj;

    invoke-interface {v1}, Ljnj;->a()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x2000

    add-long/2addr v6, p2

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    iget-boolean v1, p0, Ljnv;->h:Z

    if-nez v1, :cond_4

    .line 45
    invoke-direct {p0}, Ljnv;->b()V

    .line 2090
    iget-object v2, p0, Ljnv;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 2092
    :try_start_0
    iget-object v1, p0, Ljnv;->c:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2096
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3058
    iget-object v1, p0, Ljnv;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 3059
    if-lez v1, :cond_1

    .line 3060
    iget-object v2, p0, Ljnv;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3061
    new-instance v2, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error reading source "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " times"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move v1, v3

    .line 1039
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1040
    goto :goto_1

    .line 2093
    :catch_0
    move-exception v1

    .line 2094
    :try_start_2
    new-instance v3, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;

    const-string/jumbo v4, "Waiting source data is interrupted!"

    invoke-direct {v3, v4, v1}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2096
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 49
    :cond_4
    iget-object v1, p0, Ljnv;->b:Ljnj;

    invoke-interface {v1, p1, p2, p3, v9}, Ljnj;->a([BJI)I

    move-result v0

    .line 50
    .local v0, "read":I
    iget-object v1, p0, Ljnv;->b:Ljnj;

    invoke-interface {v1}, Ljnj;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Ljnv;->i:I

    if-eq v1, v8, :cond_5

    .line 51
    iput v8, p0, Ljnv;->i:I

    .line 52
    invoke-virtual {p0, v8}, Ljnv;->a(I)V

    .line 54
    :cond_5
    return v0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 66
    iget-object v1, p0, Ljnv;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljnv;->h:Z

    .line 69
    iget-object v0, p0, Ljnv;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ljnv;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 72
    :cond_0
    iget-object v0, p0, Ljnv;->b:Ljnj;

    invoke-interface {v0}, Ljnj;->b()V
    :try_end_0
    .catch Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(I)V
    .locals 0
    .param p1, "percentsAvailable"    # I

    .prologue
    .line 119
    return-void
.end method
