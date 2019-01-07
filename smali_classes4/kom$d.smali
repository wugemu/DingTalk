.class final Lkom$d;
.super Lkni;
.source "Http2Connection.java"

# interfaces
.implements Lkon$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final a:Lkon;

.field final synthetic c:Lkom;


# direct methods
.method constructor <init>(Lkom;Lkon;)V
    .locals 4
    .param p1, "this$0"    # Lkom;
    .param p2, "reader"    # Lkon;

    .prologue
    .line 599
    iput-object p1, p0, Lkom$d;->c:Lkom;

    .line 600
    const-string/jumbo v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lkom;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lkni;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    iput-object p2, p0, Lkom$d;->a:Lkon;

    .line 602
    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .prologue
    .line 792
    if-nez p1, :cond_1

    .line 793
    iget-object v2, p0, Lkom$d;->c:Lkom;

    monitor-enter v2

    .line 794
    :try_start_0
    iget-object v1, p0, Lkom$d;->c:Lkom;

    iget-wide v4, v1, Lkom;->k:J

    add-long/2addr v4, p2

    iput-wide v4, v1, Lkom;->k:J

    .line 795
    iget-object v1, p0, Lkom$d;->c:Lkom;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 796
    monitor-exit v2

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 796
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 798
    :cond_1
    iget-object v1, p0, Lkom$d;->c:Lkom;

    invoke-virtual {v1, p1}, Lkom;->a(I)Lkoo;

    move-result-object v0

    .line 799
    .local v0, "stream":Lkoo;
    if-eqz v0, :cond_0

    .line 800
    monitor-enter v0

    .line 801
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lkoo;->a(J)V

    .line 802
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public final a(ILjava/util/List;)V
    .locals 6
    .param p1, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lkoi;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 814
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lkoi;>;"
    iget-object v1, p0, Lkom$d;->c:Lkom;

    .line 7832
    monitor-enter v1

    .line 7833
    :try_start_0
    iget-object v0, v1, Lkom;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7834
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, p1, v0}, Lkom;->a(ILokhttp3/internal/http2/ErrorCode;)V

    .line 7835
    monitor-exit v1

    .line 7856
    :goto_0
    return-void

    .line 7837
    :cond_0
    iget-object v0, v1, Lkom;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7838
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7840
    :try_start_1
    new-instance v0, Lkom$3;

    const-string/jumbo v2, "OkHttp %s Push Request[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lkom;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkom$3;-><init>(Lkom;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-virtual {v1, v0}, Lkom;->a(Lkni;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    goto :goto_0

    .line 7838
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final a(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 692
    invoke-static {p1}, Lkom;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    iget-object v1, p0, Lkom$d;->c:Lkom;

    .line 3908
    new-instance v0, Lkom$6;

    const-string/jumbo v2, "OkHttp %s Push Reset[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lkom;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkom$6;-><init>(Lkom;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-virtual {v1, v0}, Lkom;->a(Lkni;)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lkom$d;->c:Lkom;

    invoke-virtual {v0, p1}, Lkom;->b(I)Lkoo;

    move-result-object v6

    .line 697
    .local v6, "rstStream":Lkoo;
    if-eqz v6, :cond_0

    .line 698
    invoke-virtual {v6, p2}, Lkoo;->c(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_0
.end method

.method public final a(ILokio/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "debugData"    # Lokio/ByteString;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 772
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    .line 777
    iget-object v3, p0, Lkom$d;->c:Lkom;

    monitor-enter v3

    .line 778
    :try_start_0
    iget-object v2, p0, Lkom$d;->c:Lkom;

    iget-object v2, v2, Lkom;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v4, p0, Lkom$d;->c:Lkom;

    iget-object v4, v4, Lkom;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lkoo;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkoo;

    .line 779
    .local v1, "streamsCopy":[Lkoo;
    iget-object v2, p0, Lkom$d;->c:Lkom;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lkom;->g:Z

    .line 780
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 6091
    .local v0, "http2Stream":Lkoo;
    iget v4, v0, Lkoo;->c:I

    .line 784
    if-le v4, p1, :cond_0

    invoke-virtual {v0}, Lkoo;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 785
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v4}, Lkoo;->c(Lokhttp3/internal/http2/ErrorCode;)V

    .line 786
    iget-object v4, p0, Lkom$d;->c:Lkom;

    .line 7091
    iget v5, v0, Lkoo;->c:I

    .line 786
    invoke-virtual {v4, v5}, Lkom;->b(I)Lkoo;

    .line 783
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 780
    .end local v0    # "http2Stream":Lkoo;
    .end local v1    # "streamsCopy":[Lkoo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 789
    .restart local v1    # "streamsCopy":[Lkoo;
    :cond_1
    return-void
.end method

.method public final a(ZII)V
    .locals 4
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 756
    if-eqz p1, :cond_0

    .line 757
    iget-object v1, p0, Lkom$d;->c:Lkom;

    monitor-enter v1

    .line 758
    :try_start_0
    iget-object v0, p0, Lkom$d;->c:Lkom;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkom;->a(Lkom;Z)Z

    .line 759
    iget-object v0, p0, Lkom$d;->c:Lkom;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 760
    monitor-exit v1

    .line 769
    :goto_0
    return-void

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 764
    :cond_0
    :try_start_1
    iget-object v0, p0, Lkom$d;->c:Lkom;

    invoke-static {v0}, Lkom;->b(Lkom;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lkom$c;

    iget-object v2, p0, Lkom$d;->c:Lkom;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2, p3}, Lkom$c;-><init>(Lkom;ZII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(ZILjava/util/List;)V
    .locals 9
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lkoi;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lkoi;>;"
    const/4 v1, 0x1

    .line 646
    invoke-static {p2}, Lkom;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    iget-object v1, p0, Lkom$d;->c:Lkom;

    .line 2862
    :try_start_0
    new-instance v0, Lkom$4;

    const-string/jumbo v2, "OkHttp %s Push Headers[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lkom;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move v4, p2

    move-object v5, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lkom$4;-><init>(Lkom;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-virtual {v1, v0}, Lkom;->a(Lkni;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2878
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v6, p0, Lkom$d;->c:Lkom;

    monitor-enter v6

    .line 652
    :try_start_1
    iget-object v2, p0, Lkom$d;->c:Lkom;

    invoke-virtual {v2, p2}, Lkom;->a(I)Lkoo;

    move-result-object v7

    .line 654
    .local v7, "stream":Lkoo;
    if-nez v7, :cond_5

    .line 656
    iget-object v1, p0, Lkom$d;->c:Lkom;

    iget-boolean v1, v1, Lkom;->g:Z

    if-eqz v1, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 684
    .end local v7    # "stream":Lkoo;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 659
    .restart local v7    # "stream":Lkoo;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lkom$d;->c:Lkom;

    iget v1, v1, Lkom;->e:I

    if-gt p2, v1, :cond_3

    monitor-exit v6

    goto :goto_0

    .line 662
    :cond_3
    rem-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lkom$d;->c:Lkom;

    iget v2, v2, Lkom;->f:I

    rem-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 665
    :cond_4
    new-instance v0, Lkoo;

    iget-object v2, p0, Lkom$d;->c:Lkom;

    const/4 v3, 0x0

    move v1, p2

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkoo;-><init>(ILkom;ZZLjava/util/List;)V

    .line 667
    .local v0, "newStream":Lkoo;
    iget-object v1, p0, Lkom$d;->c:Lkom;

    iput p2, v1, Lkom;->e:I

    .line 668
    iget-object v1, p0, Lkom$d;->c:Lkom;

    iget-object v1, v1, Lkom;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-static {}, Lkom;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lkom$d$1;

    const-string/jumbo v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p0, Lkom$d;->c:Lkom;

    iget-object v8, v8, Lkom;->d:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lkom$d$1;-><init>(Lkom$d;Ljava/lang/String;[Ljava/lang/Object;Lkoo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 682
    monitor-exit v6

    goto :goto_0

    .line 684
    .end local v0    # "newStream":Lkoo;
    :cond_5
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3269
    sget-boolean v2, Lkoo;->l:Z

    if-nez v2, :cond_6

    invoke-static {v7}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3271
    :cond_6
    monitor-enter v7

    .line 3272
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, v7, Lkoo;->f:Z

    .line 3273
    iget-object v2, v7, Lkoo;->e:Ljava/util/List;

    if-nez v2, :cond_8

    .line 3274
    iput-object p3, v7, Lkoo;->e:Ljava/util/List;

    .line 3275
    invoke-virtual {v7}, Lkoo;->a()Z

    move-result v1

    .line 3276
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 3284
    :goto_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3285
    if-nez v1, :cond_7

    .line 3286
    iget-object v1, v7, Lkoo;->d:Lkom;

    iget v2, v7, Lkoo;->c:I

    invoke-virtual {v1, v2}, Lkom;->b(I)Lkoo;

    .line 688
    :cond_7
    if-eqz p1, :cond_0

    invoke-virtual {v7}, Lkoo;->e()V

    goto/16 :goto_0

    .line 3278
    :cond_8
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3279
    iget-object v3, v7, Lkoo;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3280
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3281
    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3282
    iput-object v2, v7, Lkoo;->e:Ljava/util/List;

    goto :goto_1

    .line 3284
    :catchall_1
    move-exception v1

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 648
    .end local v7    # "stream":Lkoo;
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public final a(ZILokio/BufferedSource;I)V
    .locals 9
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 627
    invoke-static {p2}, Lkom;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    iget-object v1, p0, Lkom$d;->c:Lkom;

    .line 1887
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 1888
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->require(J)V

    .line 1889
    int-to-long v2, p4

    invoke-interface {p3, v5, v2, v3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    .line 1890
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    int-to-long v6, p4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1891
    :cond_0
    new-instance v0, Lkom$5;

    const-string/jumbo v2, "OkHttp %s Push Data[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, v1, Lkom;->d:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    move v4, p2

    move v6, p4

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lkom$5;-><init>(Lkom;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-virtual {v1, v0}, Lkom;->a(Lkni;)V

    .line 642
    :cond_1
    :goto_0
    return-void

    .line 631
    :cond_2
    iget-object v0, p0, Lkom$d;->c:Lkom;

    invoke-virtual {v0, p2}, Lkom;->a(I)Lkoo;

    move-result-object v8

    .line 632
    .local v8, "dataStream":Lkoo;
    if-nez v8, :cond_3

    .line 633
    iget-object v0, p0, Lkom$d;->c:Lkom;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lkom;->a(ILokhttp3/internal/http2/ErrorCode;)V

    .line 634
    iget-object v0, p0, Lkom$d;->c:Lkom;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Lkom;->a(J)V

    .line 635
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 2291
    :cond_3
    sget-boolean v0, Lkoo;->l:Z

    if-nez v0, :cond_4

    invoke-static {v8}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2292
    :cond_4
    iget-object v0, v8, Lkoo;->g:Lkoo$b;

    int-to-long v2, p4

    invoke-virtual {v0, p3, v2, v3}, Lkoo$b;->a(Lokio/BufferedSource;J)V

    .line 639
    if-eqz p1, :cond_1

    .line 640
    invoke-virtual {v8}, Lkoo;->e()V

    goto :goto_0
.end method

.method public final a(ZLkos;)V
    .locals 15
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lkos;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 703
    const-wide/16 v2, 0x0

    .line 704
    .local v2, "delta":J
    const/4 v7, 0x0

    .line 705
    .local v7, "streamsToNotify":[Lkoo;
    iget-object v9, p0, Lkom$d;->c:Lkom;

    monitor-enter v9

    .line 706
    :try_start_0
    iget-object v8, p0, Lkom$d;->c:Lkom;

    iget-object v8, v8, Lkom;->m:Lkos;

    invoke-virtual {v8}, Lkos;->b()I

    move-result v5

    .line 708
    .local v5, "priorWriteWindowSize":I
    iget-object v8, p0, Lkom$d;->c:Lkom;

    iget-object v10, v8, Lkom;->m:Lkos;

    .line 4122
    const/4 v8, 0x0

    :goto_0
    const/16 v11, 0xa

    if-ge v8, v11, :cond_1

    .line 4123
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lkos;->a(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 5077
    move-object/from16 v0, p2

    iget-object v11, v0, Lkos;->b:[I

    aget v11, v11, v8

    .line 4124
    invoke-virtual {v10, v8, v11}, Lkos;->a(II)Lkos;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4122
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 5737
    :cond_1
    :try_start_1
    iget-object v8, p0, Lkom$d;->c:Lkom;

    invoke-static {v8}, Lkom;->b(Lkom;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    new-instance v10, Lkom$d$3;

    const-string/jumbo v11, "OkHttp %s ACK Settings"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lkom$d;->c:Lkom;

    iget-object v14, v14, Lkom;->d:Ljava/lang/String;

    aput-object v14, v12, v13

    move-object/from16 v0, p2

    invoke-direct {v10, p0, v11, v12, v0}, Lkom$d$3;-><init>(Lkom$d;Ljava/lang/String;[Ljava/lang/Object;Lkos;)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    :goto_1
    :try_start_2
    iget-object v8, p0, Lkom$d;->c:Lkom;

    iget-object v8, v8, Lkom;->m:Lkos;

    invoke-virtual {v8}, Lkos;->b()I

    move-result v4

    .line 711
    .local v4, "peerInitialWindowSize":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    if-eq v4, v5, :cond_3

    .line 712
    sub-int v8, v4, v5

    int-to-long v2, v8

    .line 713
    iget-object v8, p0, Lkom$d;->c:Lkom;

    iget-boolean v8, v8, Lkom;->n:Z

    if-nez v8, :cond_2

    .line 714
    iget-object v8, p0, Lkom$d;->c:Lkom;

    const/4 v10, 0x1

    iput-boolean v10, v8, Lkom;->n:Z

    .line 716
    :cond_2
    iget-object v8, p0, Lkom$d;->c:Lkom;

    iget-object v8, v8, Lkom;->c:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 717
    iget-object v8, p0, Lkom$d;->c:Lkom;

    iget-object v8, v8, Lkom;->c:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    iget-object v10, p0, Lkom$d;->c:Lkom;

    iget-object v10, v10, Lkom;->c:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Lkoo;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Lkoo;

    move-object v7, v0

    .line 720
    :cond_3
    invoke-static {}, Lkom;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v10, Lkom$d$2;

    const-string/jumbo v11, "OkHttp %s settings"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lkom$d;->c:Lkom;

    iget-object v14, v14, Lkom;->d:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-direct {v10, p0, v11, v12}, Lkom$d$2;-><init>(Lkom$d;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 725
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 726
    if-eqz v7, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_4

    .line 727
    array-length v9, v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_4

    aget-object v6, v7, v8

    .line 728
    .local v6, "stream":Lkoo;
    monitor-enter v6

    .line 729
    :try_start_3
    invoke-virtual {v6, v2, v3}, Lkoo;->a(J)V

    .line 730
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 727
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 725
    .end local v4    # "peerInitialWindowSize":I
    .end local v5    # "priorWriteWindowSize":I
    .end local v6    # "stream":Lkoo;
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 730
    .restart local v4    # "peerInitialWindowSize":I
    .restart local v5    # "priorWriteWindowSize":I
    .restart local v6    # "stream":Lkoo;
    :catchall_1
    move-exception v8

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v8

    .line 733
    .end local v6    # "stream":Lkoo;
    :cond_4
    return-void

    .end local v4    # "peerInitialWindowSize":I
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method protected final b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 605
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 606
    .local v0, "connectionErrorCode":Lokhttp3/internal/http2/ErrorCode;
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 608
    .local v1, "streamErrorCode":Lokhttp3/internal/http2/ErrorCode;
    :try_start_0
    iget-object v2, p0, Lkom$d;->a:Lkon;

    .line 1078
    iget-boolean v3, v2, Lkon;->c:Z

    if-eqz v3, :cond_0

    .line 1080
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p0}, Lkon;->a(ZLkon$b;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1081
    const-string/jumbo v2, "Required SETTINGS preface not received"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :catch_0
    move-exception v2

    :try_start_1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 615
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    :try_start_2
    iget-object v2, p0, Lkom$d;->c:Lkom;

    invoke-virtual {v2, v0, v1}, Lkom;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 621
    :goto_0
    iget-object v2, p0, Lkom$d;->a:Lkon;

    invoke-static {v2}, Lknj;->a(Ljava/io/Closeable;)V

    .line 622
    :goto_1
    return-void

    .line 1085
    :cond_0
    :try_start_3
    iget-object v2, v2, Lkon;->b:Lokio/BufferedSource;

    sget-object v3, Lkok;->a:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v2

    .line 1086
    sget-object v3, Lkon;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lkon;->a:Ljava/util/logging/Logger;

    const-string/jumbo v4, "<< CONNECTION %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lknj;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1087
    :cond_1
    sget-object v3, Lkok;->a:Lokio/ByteString;

    invoke-virtual {v3, v2}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1088
    const-string/jumbo v3, "Expected a connection header but was %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 617
    :catchall_0
    move-exception v2

    .line 618
    :try_start_4
    iget-object v3, p0, Lkom$d;->c:Lkom;

    invoke-virtual {v3, v0, v1}, Lkom;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 621
    :goto_2
    iget-object v3, p0, Lkom$d;->a:Lkon;

    invoke-static {v3}, Lknj;->a(Ljava/io/Closeable;)V

    throw v2

    .line 609
    :cond_2
    :try_start_5
    iget-object v2, p0, Lkom$d;->a:Lkon;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lkon;->a(ZLkon$b;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 611
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 612
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 618
    :try_start_6
    iget-object v2, p0, Lkom$d;->c:Lkom;

    invoke-virtual {v2, v0, v1}, Lkom;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 621
    :goto_3
    iget-object v2, p0, Lkom$d;->a:Lkon;

    invoke-static {v2}, Lknj;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_3
.end method
