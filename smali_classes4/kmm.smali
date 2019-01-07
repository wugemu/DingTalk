.class public final Lkmm;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final a:Ljava/util/concurrent/Executor;

.field static final synthetic g:Z


# instance fields
.field final b:I

.field final c:Ljava/lang/Runnable;

.field final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lknr;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lkns;

.field f:Z

.field private final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 44
    const-class v0, Lkmm;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lkmm;->g:Z

    .line 50
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp ConnectionPool"

    .line 52
    invoke-static {v0, v8}, Lknj;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lkmm;->a:Ljava/util/concurrent/Executor;

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 86
    const/4 v0, 0x5

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v2, v3, v1}, Lkmm;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 87
    return-void
.end method

.method private constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x5

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lkmm$1;

    invoke-direct {v0, p0}, Lkmm$1;-><init>(Lkmm;)V

    iput-object v0, p0, Lkmm;->c:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkmm;->d:Ljava/util/Deque;

    .line 77
    new-instance v0, Lkns;

    invoke-direct {v0}, Lkns;-><init>()V

    iput-object v0, p0, Lkmm;->e:Lkns;

    .line 90
    const/4 v0, 0x5

    iput v0, p0, Lkmm;->b:I

    .line 91
    invoke-virtual {p4, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lkmm;->h:J

    .line 94
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "keepAliveDuration <= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method final a(J)J
    .locals 15
    .param p1, "now"    # J

    .prologue
    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, "inUseConnectionCount":I
    const/4 v2, 0x0

    .line 202
    .local v2, "idleConnectionCount":I
    const/4 v6, 0x0

    .line 203
    .local v6, "longestIdleConnection":Lknr;
    const-wide/high16 v8, -0x8000000000000000L

    .line 206
    .local v8, "longestIdleDurationNs":J
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v7, p0, Lkmm;->d:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lknr;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lknr;

    .line 1257
    .local v0, "connection":Lknr;
    iget-object v11, v0, Lknr;->j:Ljava/util/List;

    .line 1258
    const/4 v7, 0x0

    move v10, v7

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-ge v10, v7, :cond_3

    .line 1259
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/Reference;

    .line 1261
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 1262
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    .line 1263
    goto :goto_1

    .line 1267
    :cond_2
    check-cast v7, Lknu$a;

    .line 1269
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "A connection to "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1510
    iget-object v13, v0, Lknr;->a:Lkng;

    .line 2058
    iget-object v13, v13, Lkng;->a:Lkme;

    .line 2093
    iget-object v13, v13, Lkme;->a:Lkmw;

    .line 1269
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1271
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v13

    iget-object v7, v7, Lknu$a;->a:Ljava/lang/Object;

    invoke-virtual {v13, v12, v7}, Lkoy;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1273
    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1274
    const/4 v7, 0x1

    iput-boolean v7, v0, Lknr;->g:Z

    .line 1277
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1278
    iget-wide v10, p0, Lkmm;->h:J

    sub-long v10, p1, v10

    iput-wide v10, v0, Lknr;->k:J

    .line 1279
    const/4 v7, 0x0

    .line 211
    :goto_2
    if-lez v7, :cond_4

    .line 212
    add-int/lit8 v3, v3, 0x1

    .line 213
    goto :goto_0

    .line 1283
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_2

    .line 216
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 219
    iget-wide v10, v0, Lknr;->k:J

    sub-long v4, p1, v10

    .line 220
    .local v4, "idleDurationNs":J
    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    .line 221
    move-wide v8, v4

    .line 222
    move-object v6, v0

    goto :goto_0

    .line 226
    .end local v0    # "connection":Lknr;
    .end local v4    # "idleDurationNs":J
    :cond_5
    iget-wide v10, p0, Lkmm;->h:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_6

    iget v7, p0, Lkmm;->b:I

    if-le v2, v7, :cond_7

    .line 230
    :cond_6
    iget-object v7, p0, Lkmm;->d:Ljava/util/Deque;

    invoke-interface {v7, v6}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 242
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2519
    iget-object v7, v6, Lknr;->b:Ljava/net/Socket;

    .line 244
    invoke-static {v7}, Lknj;->a(Ljava/net/Socket;)V

    .line 247
    const-wide/16 v10, 0x0

    :goto_3
    return-wide v10

    .line 231
    :cond_7
    if-lez v2, :cond_8

    .line 233
    :try_start_1
    iget-wide v10, p0, Lkmm;->h:J

    sub-long/2addr v10, v8

    monitor-exit p0

    goto :goto_3

    .line 242
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lknr;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 234
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lknr;>;"
    :cond_8
    if-lez v3, :cond_9

    .line 236
    :try_start_2
    iget-wide v10, p0, Lkmm;->h:J

    monitor-exit p0

    goto :goto_3

    .line 239
    :cond_9
    const/4 v7, 0x0

    iput-boolean v7, p0, Lkmm;->f:Z

    .line 240
    const-wide/16 v10, -0x1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
