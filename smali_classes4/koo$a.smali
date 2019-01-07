.class final Lkoo$a;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkoo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field b:Z

.field final synthetic d:Lkoo;

.field private final e:Lokio/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 483
    const-class v0, Lkoo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lkoo$a;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lkoo;)V
    .locals 1
    .param p1, "this$0"    # Lkoo;

    .prologue
    .line 483
    iput-object p1, p0, Lkoo$a;->d:Lkoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lkoo$a;->e:Lokio/Buffer;

    return-void
.end method

.method private a(Z)V
    .locals 8
    .param p1, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 513
    iget-object v1, p0, Lkoo$a;->d:Lkoo;

    monitor-enter v1

    .line 514
    :try_start_0
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-object v0, v0, Lkoo;->j:Lkoo$c;

    invoke-virtual {v0}, Lkoo$c;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 516
    :goto_0
    :try_start_1
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-wide v2, v0, Lkoo;->b:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lkoo$a;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lkoo$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-object v0, v0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    invoke-virtual {v0}, Lkoo;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lkoo$a;->d:Lkoo;

    iget-object v2, v2, Lkoo;->j:Lkoo$c;

    invoke-virtual {v2}, Lkoo$c;->a()V

    throw v0

    .line 526
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 520
    :cond_0
    :try_start_3
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-object v0, v0, Lkoo;->j:Lkoo$c;

    invoke-virtual {v0}, Lkoo$c;->a()V

    .line 523
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    invoke-virtual {v0}, Lkoo;->g()V

    .line 524
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-wide v2, v0, Lkoo;->b:J

    iget-object v0, p0, Lkoo$a;->e:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 525
    .local v4, "toWrite":J
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-wide v2, v0, Lkoo;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lkoo;->b:J

    .line 526
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 528
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-object v0, v0, Lkoo;->j:Lkoo$c;

    invoke-virtual {v0}, Lkoo$c;->enter()V

    .line 530
    :try_start_4
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-object v0, v0, Lkoo;->d:Lkom;

    iget-object v1, p0, Lkoo$a;->d:Lkoo;

    iget v1, v1, Lkoo;->c:I

    if-eqz p1, :cond_1

    iget-object v2, p0, Lkoo$a;->e:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lkoo$a;->e:Lokio/Buffer;

    invoke-virtual/range {v0 .. v5}, Lkom;->a(IZLokio/Buffer;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 532
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-object v0, v0, Lkoo;->j:Lkoo$c;

    invoke-virtual {v0}, Lkoo$c;->a()V

    .line 533
    return-void

    .line 530
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 532
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lkoo$a;->d:Lkoo;

    iget-object v1, v1, Lkoo;->j:Lkoo$c;

    invoke-virtual {v1}, Lkoo$c;->a()V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 552
    sget-boolean v0, Lkoo$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 553
    :cond_0
    iget-object v1, p0, Lkoo$a;->d:Lkoo;

    monitor-enter v1

    .line 554
    :try_start_0
    iget-boolean v0, p0, Lkoo$a;->a:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 572
    :goto_0
    return-void

    .line 555
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-object v0, v0, Lkoo;->h:Lkoo$a;

    iget-boolean v0, v0, Lkoo$a;->b:Z

    if-nez v0, :cond_3

    .line 558
    iget-object v0, p0, Lkoo$a;->e:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 559
    :goto_1
    iget-object v0, p0, Lkoo$a;->e:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 560
    invoke-direct {p0, v2}, Lkoo$a;->a(Z)V

    goto :goto_1

    .line 555
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 564
    :cond_2
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-object v0, v0, Lkoo;->d:Lkom;

    iget-object v1, p0, Lkoo$a;->d:Lkoo;

    iget v1, v1, Lkoo;->c:I

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lkom;->a(IZLokio/Buffer;J)V

    .line 567
    :cond_3
    iget-object v1, p0, Lkoo$a;->d:Lkoo;

    monitor-enter v1

    .line 568
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lkoo$a;->a:Z

    .line 569
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 570
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-object v0, v0, Lkoo;->d:Lkom;

    .line 2412
    iget-object v0, v0, Lkom;->p:Lkop;

    invoke-virtual {v0}, Lkop;->b()V

    .line 571
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    invoke-virtual {v0}, Lkoo;->f()V

    goto :goto_0

    .line 569
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final flush()V
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
    .line 537
    sget-boolean v0, Lkoo$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 538
    :cond_0
    iget-object v1, p0, Lkoo$a;->d:Lkoo;

    monitor-enter v1

    .line 539
    :try_start_0
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    invoke-virtual {v0}, Lkoo;->g()V

    .line 540
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :goto_0
    iget-object v0, p0, Lkoo$a;->e:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 542
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkoo$a;->a(Z)V

    .line 543
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-object v0, v0, Lkoo;->d:Lkom;

    .line 1412
    iget-object v0, v0, Lkom;->p:Lkop;

    invoke-virtual {v0}, Lkop;->b()V

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 545
    :cond_1
    return-void
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    iget-object v0, v0, Lkoo;->j:Lkoo$c;

    return-object v0
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 4
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    sget-boolean v0, Lkoo$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkoo$a;->d:Lkoo;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 501
    :cond_0
    iget-object v0, p0, Lkoo$a;->e:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 502
    :goto_0
    iget-object v0, p0, Lkoo$a;->e:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkoo$a;->a(Z)V

    goto :goto_0

    .line 505
    :cond_1
    return-void
.end method
