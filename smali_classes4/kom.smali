.class public final Lkom;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkom$b;,
        Lkom$d;,
        Lkom$a;,
        Lkom$c;
    }
.end annotation


# static fields
.field static final synthetic s:Z

.field private static final t:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Z

.field final b:Lkom$b;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lkoo;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Z

.field final h:Lkor;

.field i:Z

.field j:J

.field k:J

.field public l:Lkos;

.field final m:Lkos;

.field n:Z

.field final o:Ljava/net/Socket;

.field public final p:Lkop;

.field public final q:Lkom$d;

.field final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/concurrent/ScheduledExecutorService;

.field private final v:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 60
    const-class v0, Lkom;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lkom;->s:Z

    .line 80
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp Http2Connection"

    .line 82
    invoke-static {v0, v8}, Lknj;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lkom;->t:Ljava/util/concurrent/ExecutorService;

    .line 80
    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0
.end method

.method public constructor <init>(Lkom$a;)V
    .locals 12
    .param p1, "builder"    # Lkom$a;

    .prologue
    const/4 v11, 0x7

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lkom;->c:Ljava/util/Map;

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkom;->j:J

    .line 124
    new-instance v0, Lkos;

    invoke-direct {v0}, Lkos;-><init>()V

    iput-object v0, p0, Lkom;->l:Lkos;

    .line 128
    new-instance v0, Lkos;

    invoke-direct {v0}, Lkos;-><init>()V

    iput-object v0, p0, Lkom;->m:Lkos;

    .line 130
    iput-boolean v10, p0, Lkom;->n:Z

    .line 829
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lkom;->r:Ljava/util/Set;

    .line 138
    iget-object v0, p1, Lkom$a;->f:Lkor;

    iput-object v0, p0, Lkom;->h:Lkor;

    .line 139
    iget-boolean v0, p1, Lkom$a;->g:Z

    iput-boolean v0, p0, Lkom;->a:Z

    .line 140
    iget-object v0, p1, Lkom$a;->e:Lkom$b;

    iput-object v0, p0, Lkom;->b:Lkom$b;

    .line 142
    iget-boolean v0, p1, Lkom$a;->g:Z

    if-eqz v0, :cond_3

    move v0, v9

    :goto_0
    iput v0, p0, Lkom;->f:I

    .line 143
    iget-boolean v0, p1, Lkom$a;->g:Z

    if-eqz v0, :cond_0

    .line 144
    iget v0, p0, Lkom;->f:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkom;->f:I

    .line 151
    :cond_0
    iget-boolean v0, p1, Lkom$a;->g:Z

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lkom;->l:Lkos;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v11, v1}, Lkos;->a(II)Lkos;

    .line 155
    :cond_1
    iget-object v0, p1, Lkom$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lkom;->d:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string/jumbo v1, "OkHttp %s Writer"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lkom;->d:Ljava/lang/String;

    aput-object v3, v2, v10

    .line 158
    invoke-static {v1, v2}, Lknj;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lknj;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lkom;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 159
    iget v0, p1, Lkom$a;->h:I

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lkom;->u:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lkom$c;

    invoke-direct {v1, p0, v10, v10, v10}, Lkom$c;-><init>(Lkom;ZII)V

    iget v2, p1, Lkom$a;->h:I

    int-to-long v2, v2

    iget v4, p1, Lkom$a;->h:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 165
    :cond_2
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v0, "OkHttp %s Push Observer"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lkom;->d:Ljava/lang/String;

    aput-object v3, v2, v10

    .line 167
    invoke-static {v0, v2}, Lknj;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lknj;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, v10

    move v3, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lkom;->v:Ljava/util/concurrent/ExecutorService;

    .line 168
    iget-object v0, p0, Lkom;->m:Lkos;

    const v1, 0xffff

    invoke-virtual {v0, v11, v1}, Lkos;->a(II)Lkos;

    .line 169
    iget-object v0, p0, Lkom;->m:Lkos;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lkos;->a(II)Lkos;

    .line 170
    iget-object v0, p0, Lkom;->m:Lkos;

    invoke-virtual {v0}, Lkos;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lkom;->k:J

    .line 171
    iget-object v0, p1, Lkom$a;->a:Ljava/net/Socket;

    iput-object v0, p0, Lkom;->o:Ljava/net/Socket;

    .line 172
    new-instance v0, Lkop;

    iget-object v1, p1, Lkom$a;->d:Lokio/BufferedSink;

    iget-boolean v2, p0, Lkom;->a:Z

    invoke-direct {v0, v1, v2}, Lkop;-><init>(Lokio/BufferedSink;Z)V

    iput-object v0, p0, Lkom;->p:Lkop;

    .line 174
    new-instance v0, Lkom$d;

    new-instance v1, Lkon;

    iget-object v2, p1, Lkom$a;->c:Lokio/BufferedSource;

    iget-boolean v3, p0, Lkom;->a:Z

    invoke-direct {v1, v2, v3}, Lkon;-><init>(Lokio/BufferedSource;Z)V

    invoke-direct {v0, p0, v1}, Lkom$d;-><init>(Lkom;Lkon;)V

    iput-object v0, p0, Lkom;->q:Lkom$d;

    .line 175
    return-void

    .line 142
    :cond_3
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method static synthetic a(Lkom;)V
    .locals 0
    .param p0, "x0"    # Lkom;

    .prologue
    .line 60
    invoke-virtual {p0}, Lkom;->b()V

    return-void
.end method

.method private a(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 4
    .param p1, "statusCode"    # Lokhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 421
    iget-object v2, p0, Lkom;->p:Lkop;

    monitor-enter v2

    .line 423
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :try_start_1
    iget-boolean v1, p0, Lkom;->g:Z

    if-eqz v1, :cond_0

    .line 425
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    :goto_0
    return-void

    .line 427
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lkom;->g:Z

    .line 428
    iget v0, p0, Lkom;->e:I

    .line 429
    .local v0, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 432
    :try_start_4
    iget-object v1, p0, Lkom;->p:Lkop;

    sget-object v3, Lknj;->a:[B

    invoke-virtual {v1, v0, p1, v3}, Lkop;->a(ILokhttp3/internal/http2/ErrorCode;[B)V

    .line 433
    monitor-exit v2

    goto :goto_0

    .end local v0    # "lastGoodStreamId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 429
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method static synthetic a(Lkom;Z)Z
    .locals 1
    .param p0, "x0"    # Lkom;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkom;->i:Z

    return v0
.end method

.method static synthetic b(Lkom;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lkom;

    .prologue
    .line 60
    iget-object v0, p0, Lkom;->u:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static c(I)Z
    .locals 1
    .param p0, "streamId"    # I

    .prologue
    .line 825
    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lkom;->t:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkom;->m:Lkos;

    .line 1099
    iget v1, v0, Lkos;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v0, v0, Lkos;->b:[I

    const/4 v1, 0x4

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const v0, 0x7fffffff

    .line 200
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(I)Lkoo;
    .locals 2
    .param p1, "id"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkom;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(ILjava/util/List;Z)Lkoo;
    .locals 12
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lkoi;",
            ">;Z)",
            "Lkoo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lkoi;>;"
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 235
    if-nez p3, :cond_1

    move v3, v7

    .line 241
    .local v3, "outFinished":Z
    :goto_0
    iget-object v9, p0, Lkom;->p:Lkop;

    monitor-enter v9

    .line 242
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :try_start_1
    iget v2, p0, Lkom;->f:I

    const v4, 0x3fffffff    # 1.9999999f

    if-le v2, v4, :cond_0

    .line 244
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, v2}, Lkom;->a(Lokhttp3/internal/http2/ErrorCode;)V

    .line 246
    :cond_0
    iget-boolean v2, p0, Lkom;->g:Z

    if-eqz v2, :cond_2

    .line 247
    new-instance v2, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v2}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v2

    .line 256
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 264
    :catchall_1
    move-exception v2

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .end local v3    # "outFinished":Z
    :cond_1
    move v3, v8

    .line 235
    goto :goto_0

    .line 249
    .restart local v3    # "outFinished":Z
    :cond_2
    :try_start_3
    iget v1, p0, Lkom;->f:I

    .line 250
    .local v1, "streamId":I
    iget v2, p0, Lkom;->f:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lkom;->f:I

    .line 251
    new-instance v0, Lkoo;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkoo;-><init>(ILkom;ZZLjava/util/List;)V

    .line 252
    .local v0, "stream":Lkoo;
    if-eqz p3, :cond_3

    iget-wide v4, p0, Lkom;->k:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_3

    iget-wide v4, v0, Lkoo;->b:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_6

    :cond_3
    move v6, v7

    .line 253
    .local v6, "flushHeaders":Z
    :goto_1
    invoke-virtual {v0}, Lkoo;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 254
    iget-object v2, p0, Lkom;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    :try_start_4
    iget-object v2, p0, Lkom;->p:Lkop;

    invoke-virtual {v2, v3, v1, p2}, Lkop;->a(ZILjava/util/List;)V

    .line 264
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 266
    if-eqz v6, :cond_5

    .line 267
    iget-object v2, p0, Lkom;->p:Lkop;

    invoke-virtual {v2}, Lkop;->b()V

    .line 270
    :cond_5
    return-object v0

    .end local v6    # "flushHeaders":Z
    :cond_6
    move v6, v8

    .line 252
    goto :goto_1
.end method

.method final a(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .prologue
    .line 346
    :try_start_0
    iget-object v0, p0, Lkom;->u:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lkom$2;

    const-string/jumbo v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lkom;->d:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lkom$2;-><init>(Lkom;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 346
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final a(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 326
    :try_start_0
    iget-object v6, p0, Lkom;->u:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lkom$1;

    const-string/jumbo v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lkom;->d:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkom$1;-><init>(Lkom;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(IZLokio/Buffer;J)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 292
    cmp-long v1, p4, v8

    if-nez v1, :cond_2

    .line 293
    iget-object v1, p0, Lkom;->p:Lkop;

    invoke-virtual {v1, p2, p1, p3, v2}, Lkop;->a(ZILokio/Buffer;I)V

    .line 322
    :cond_0
    return-void

    .line 314
    :cond_1
    :try_start_0
    iget-wide v4, p0, Lkom;->k:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 315
    .local v0, "toWrite":I
    iget-object v1, p0, Lkom;->p:Lkop;

    .line 1157
    iget v1, v1, Lkop;->a:I

    .line 315
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 316
    iget-wide v4, p0, Lkom;->k:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lkom;->k:J

    .line 317
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    int-to-long v4, v0

    sub-long/2addr p4, v4

    .line 320
    iget-object v3, p0, Lkom;->p:Lkop;

    if-eqz p2, :cond_4

    cmp-long v1, p4, v8

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1, p1, p3, v0}, Lkop;->a(ZILokio/Buffer;I)V

    .line 297
    .end local v0    # "toWrite":I
    :cond_2
    cmp-long v1, p4, v8

    if-lez v1, :cond_0

    .line 299
    monitor-enter p0

    .line 301
    :goto_1
    :try_start_1
    iget-wide v4, p0, Lkom;->k:J

    cmp-long v1, v4, v8

    if-gtz v1, :cond_1

    .line 304
    iget-object v1, p0, Lkom;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 305
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 311
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 307
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .restart local v0    # "toWrite":I
    :cond_4
    move v1, v2

    .line 320
    goto :goto_0
.end method

.method final declared-synchronized a(J)V
    .locals 5
    .param p1, "read"    # J

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lkom;->j:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lkom;->j:J

    .line 205
    iget-wide v0, p0, Lkom;->j:J

    iget-object v2, p0, Lkom;->l:Lkos;

    invoke-virtual {v2}, Lkos;->b()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    iget-wide v2, p0, Lkom;->j:J

    invoke-virtual {p0, v0, v2, v3}, Lkom;->a(IJ)V

    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkom;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lkni;)V
    .locals 1
    .param p1, "namedRunnable"    # Lkni;

    .prologue
    .line 919
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lkom;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lkom;->v:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    :cond_0
    monitor-exit p0

    return-void

    .line 919
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    .locals 7
    .param p1, "connectionCode"    # Lokhttp3/internal/http2/ErrorCode;
    .param p2, "streamCode"    # Lokhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 445
    sget-boolean v5, Lkom;->s:Z

    if-nez v5, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 446
    :cond_0
    const/4 v4, 0x0

    .line 448
    .local v4, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-direct {p0, p1}, Lkom;->a(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    const/4 v3, 0x0

    .line 454
    .local v3, "streamsToClose":[Lkoo;
    monitor-enter p0

    .line 455
    :try_start_1
    iget-object v5, p0, Lkom;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 456
    iget-object v5, p0, Lkom;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lkom;->c:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Lkoo;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Lkoo;

    move-object v3, v0

    .line 457
    iget-object v5, p0, Lkom;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 459
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    if-eqz v3, :cond_3

    .line 462
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v3, v5

    .line 464
    .local v2, "stream":Lkoo;
    :try_start_2
    invoke-virtual {v2, p2}, Lkoo;->a(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 462
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 449
    .end local v2    # "stream":Lkoo;
    .end local v3    # "streamsToClose":[Lkoo;
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Ljava/io/IOException;
    move-object v4, v1

    goto :goto_0

    .line 459
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "streamsToClose":[Lkoo;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 465
    .restart local v2    # "stream":Lkoo;
    :catch_1
    move-exception v1

    .line 466
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_2

    move-object v4, v1

    goto :goto_2

    .line 473
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Lkoo;
    :cond_3
    :try_start_4
    iget-object v5, p0, Lkom;->p:Lkop;

    invoke-virtual {v5}, Lkop;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 480
    :cond_4
    :goto_3
    :try_start_5
    iget-object v5, p0, Lkom;->o:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 486
    :goto_4
    iget-object v5, p0, Lkom;->u:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 487
    iget-object v5, p0, Lkom;->v:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 489
    if-eqz v4, :cond_5

    throw v4

    .line 474
    :catch_2
    move-exception v1

    .line 475
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v4, :cond_4

    move-object v4, v1

    goto :goto_3

    .line 481
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 482
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v1

    goto :goto_4

    .line 490
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    return-void
.end method

.method final declared-synchronized b(I)Lkoo;
    .locals 3
    .param p1, "streamId"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lkom;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoo;

    .line 195
    .local v0, "stream":Lkoo;
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-object v0

    .line 194
    .end local v0    # "stream":Lkoo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 494
    :try_start_0
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lkom;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final b(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lokhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lkom;->p:Lkop;

    invoke-virtual {v0, p1, p2}, Lkop;->a(ILokhttp3/internal/http2/ErrorCode;)V

    .line 342
    return-void
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkom;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 441
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lkom;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V

    .line 442
    return-void
.end method
