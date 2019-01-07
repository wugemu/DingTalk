.class final Lkoo$b;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkoo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field b:Z

.field final synthetic d:Lkoo;

.field private final e:Lokio/Buffer;

.field private final f:Lokio/Buffer;

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 320
    const-class v0, Lkoo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lkoo$b;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lkoo;J)V
    .locals 2
    .param p2, "maxByteCount"    # J

    .prologue
    .line 339
    iput-object p1, p0, Lkoo$b;->d:Lkoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lkoo$b;->e:Lokio/Buffer;

    .line 325
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lkoo$b;->f:Lokio/Buffer;

    .line 340
    iput-wide p2, p0, Lkoo$b;->g:J

    .line 341
    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 394
    iget-object v0, p0, Lkoo$b;->d:Lkoo;

    iget-object v0, v0, Lkoo;->i:Lkoo$c;

    invoke-virtual {v0}, Lkoo$c;->enter()V

    .line 396
    :goto_0
    :try_start_0
    iget-object v0, p0, Lkoo$b;->f:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lkoo$b;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lkoo$b;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkoo$b;->d:Lkoo;

    iget-object v0, v0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lkoo$b;->d:Lkoo;

    invoke-virtual {v0}, Lkoo;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lkoo$b;->d:Lkoo;

    iget-object v1, v1, Lkoo;->i:Lkoo$c;

    invoke-virtual {v1}, Lkoo$c;->a()V

    throw v0

    :cond_0
    iget-object v0, p0, Lkoo$b;->d:Lkoo;

    iget-object v0, v0, Lkoo;->i:Lkoo$c;

    invoke-virtual {v0}, Lkoo$c;->a()V

    .line 401
    return-void
.end method

.method private a(J)V
    .locals 1
    .param p1, "read"    # J

    .prologue
    .line 388
    sget-boolean v0, Lkoo$b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkoo$b;->d:Lkoo;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 389
    :cond_0
    iget-object v0, p0, Lkoo$b;->d:Lkoo;

    iget-object v0, v0, Lkoo;->d:Lkom;

    invoke-virtual {v0, p1, p2}, Lkom;->a(J)V

    .line 390
    return-void
.end method


# virtual methods
.method final a(Lokio/BufferedSource;J)V
    .locals 12
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    sget-boolean v5, Lkoo$b;->c:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lkoo$b;->d:Lkoo;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 431
    .local v0, "finished":Z
    .local v1, "flowControlError":Z
    .local v2, "read":J
    :cond_0
    sub-long/2addr p2, v2

    .line 434
    iget-object v6, p0, Lkoo$b;->d:Lkoo;

    monitor-enter v6

    .line 435
    :try_start_0
    iget-object v5, p0, Lkoo$b;->f:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_7

    const/4 v4, 0x1

    .line 436
    .local v4, "wasEmpty":Z
    :goto_0
    iget-object v5, p0, Lkoo$b;->f:Lokio/Buffer;

    iget-object v7, p0, Lkoo$b;->e:Lokio/Buffer;

    invoke-virtual {v5, v7}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 437
    if-eqz v4, :cond_1

    .line 438
    iget-object v5, p0, Lkoo$b;->d:Lkoo;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 440
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 407
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    .end local v2    # "read":J
    .end local v4    # "wasEmpty":Z
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-lez v5, :cond_3

    .line 410
    iget-object v6, p0, Lkoo$b;->d:Lkoo;

    monitor-enter v6

    .line 411
    :try_start_1
    iget-boolean v0, p0, Lkoo$b;->b:Z

    .line 412
    .restart local v0    # "finished":Z
    iget-object v5, p0, Lkoo$b;->f:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v8, p2

    iget-wide v10, p0, Lkoo$b;->g:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_4

    const/4 v1, 0x1

    .line 413
    .restart local v1    # "flowControlError":Z
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    if-eqz v1, :cond_5

    .line 417
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 418
    iget-object v5, p0, Lkoo$b;->d:Lkoo;

    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v5, v6}, Lkoo;->b(Lokhttp3/internal/http2/ErrorCode;)V

    .line 442
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    :cond_3
    :goto_2
    return-void

    .line 412
    .restart local v0    # "finished":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 413
    .end local v0    # "finished":Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 423
    .restart local v0    # "finished":Z
    .restart local v1    # "flowControlError":Z
    :cond_5
    if-eqz v0, :cond_6

    .line 424
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_2

    .line 429
    :cond_6
    iget-object v5, p0, Lkoo$b;->e:Lokio/Buffer;

    invoke-interface {p1, v5, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v2

    .line 430
    .restart local v2    # "read":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 435
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 440
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 450
    iget-object v3, p0, Lkoo$b;->d:Lkoo;

    monitor-enter v3

    .line 451
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lkoo$b;->a:Z

    .line 452
    iget-object v2, p0, Lkoo$b;->f:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 453
    .local v0, "bytesDiscarded":J
    iget-object v2, p0, Lkoo$b;->f:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->clear()V

    .line 454
    iget-object v2, p0, Lkoo$b;->d:Lkoo;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 455
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 457
    invoke-direct {p0, v0, v1}, Lkoo$b;->a(J)V

    .line 459
    :cond_0
    iget-object v2, p0, Lkoo$b;->d:Lkoo;

    invoke-virtual {v2}, Lkoo;->f()V

    .line 460
    return-void

    .line 455
    .end local v0    # "bytesDiscarded":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 12
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v10, 0x0

    .line 344
    cmp-long v1, p2, v10

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "byteCount < 0: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_0
    const-wide/16 v2, -0x1

    .line 348
    .local v2, "read":J
    iget-object v6, p0, Lkoo$b;->d:Lkoo;

    monitor-enter v6

    .line 349
    :try_start_0
    invoke-direct {p0}, Lkoo$b;->a()V

    .line 350
    iget-boolean v1, p0, Lkoo$b;->a:Z

    if-eqz v1, :cond_1

    .line 351
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v4, "stream closed"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 353
    :cond_1
    :try_start_1
    iget-object v1, p0, Lkoo$b;->d:Lkoo;

    iget-object v0, v1, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    .line 355
    .local v0, "errorCode":Lokhttp3/internal/http2/ErrorCode;
    iget-object v1, p0, Lkoo$b;->f:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v8

    cmp-long v1, v8, v10

    if-lez v1, :cond_2

    .line 357
    iget-object v1, p0, Lkoo$b;->f:Lokio/Buffer;

    iget-object v7, p0, Lkoo$b;->f:Lokio/Buffer;

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-static {p2, p3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v1, p1, v8, v9}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v2

    .line 358
    iget-object v1, p0, Lkoo$b;->d:Lkoo;

    iget-wide v8, v1, Lkoo;->a:J

    add-long/2addr v8, v2

    iput-wide v8, v1, Lkoo;->a:J

    .line 361
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lkoo$b;->d:Lkoo;

    iget-wide v8, v1, Lkoo;->a:J

    iget-object v1, p0, Lkoo$b;->d:Lkoo;

    iget-object v1, v1, Lkoo;->d:Lkom;

    iget-object v1, v1, Lkom;->l:Lkos;

    .line 362
    invoke-virtual {v1}, Lkos;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v10, v1

    cmp-long v1, v8, v10

    if-ltz v1, :cond_3

    .line 365
    iget-object v1, p0, Lkoo$b;->d:Lkoo;

    iget-object v1, v1, Lkoo;->d:Lkom;

    iget-object v7, p0, Lkoo$b;->d:Lkoo;

    iget v7, v7, Lkoo;->c:I

    iget-object v8, p0, Lkoo$b;->d:Lkoo;

    iget-wide v8, v8, Lkoo;->a:J

    invoke-virtual {v1, v7, v8, v9}, Lkom;->a(IJ)V

    .line 366
    iget-object v1, p0, Lkoo$b;->d:Lkoo;

    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lkoo;->a:J

    .line 368
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 372
    invoke-direct {p0, v2, v3}, Lkoo$b;->a(J)V

    .line 384
    .end local v2    # "read":J
    :goto_0
    return-wide v2

    .line 376
    .restart local v2    # "read":J
    :cond_4
    if-eqz v0, :cond_5

    .line 381
    new-instance v1, Lokhttp3/internal/http2/StreamResetException;

    invoke-direct {v1, v0}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v1

    :cond_5
    move-wide v2, v4

    .line 384
    goto :goto_0
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lkoo$b;->d:Lkoo;

    iget-object v0, v0, Lkoo;->i:Lkoo$c;

    return-object v0
.end method
