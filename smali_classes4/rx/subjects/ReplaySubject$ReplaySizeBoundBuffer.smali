.class final Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySizeBoundBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field volatile b:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field d:I

.field volatile e:Z

.field f:Ljava/lang/Throwable;


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 800
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->e:Z

    .line 801
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 781
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-direct {v0, p1}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;-><init>(Ljava/lang/Object;)V

    .line 782
    .local v0, "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->c:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v2, v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->set(Ljava/lang/Object;)V

    .line 783
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->c:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 784
    iget v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->d:I

    .line 785
    .local v1, "s":I
    iget v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->a:I

    if-ne v1, v2, :cond_0

    .line 786
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->b:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    iput-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->b:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->d:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 794
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->f:Ljava/lang/Throwable;

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->e:Z

    .line 796
    return-void
.end method

.method public final a(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 805
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$ReplayProducer;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_0

    .line 886
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Llgy;

    .line 811
    .local v0, "a":Llgy;, "Llgy<-TT;>;"
    const/4 v6, 0x1

    .line 815
    .local v6, "missed":I
    :cond_1
    iget-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 816
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 819
    .local v2, "e":J
    iget-object v8, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    check-cast v8, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 820
    .local v8, "node":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    if-nez v8, :cond_2

    .line 821
    iget-object v8, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->b:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 824
    :cond_2
    :goto_1
    cmp-long v9, v2, v10

    if-eqz v9, :cond_7

    .line 825
    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 826
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_0

    .line 830
    :cond_3
    iget-boolean v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->e:Z

    .line 831
    .local v1, "d":Z
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 832
    .local v7, "next":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    if-nez v7, :cond_4

    const/4 v4, 0x1

    .line 834
    .local v4, "empty":Z
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 835
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 836
    iget-object v5, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->f:Ljava/lang/Throwable;

    .line 837
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_5

    .line 838
    invoke-virtual {v0, v5}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 832
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 840
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v0}, Llgy;->onCompleted()V

    goto :goto_0

    .line 845
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_6
    if-nez v4, :cond_7

    .line 849
    iget-object v9, v7, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v9}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 851
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 852
    move-object v8, v7

    .line 853
    goto :goto_1

    .line 855
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :cond_7
    cmp-long v9, v2, v10

    if-nez v9, :cond_b

    .line 856
    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 857
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_0

    .line 861
    :cond_8
    iget-boolean v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->e:Z

    .line 862
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_9

    const/4 v4, 0x1

    .line 864
    .restart local v4    # "empty":Z
    :goto_3
    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    .line 865
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 866
    iget-object v5, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->f:Ljava/lang/Throwable;

    .line 867
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_a

    .line 868
    invoke-virtual {v0, v5}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 862
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 870
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v0}, Llgy;->onCompleted()V

    goto/16 :goto_0

    .line 876
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_b
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_c

    .line 877
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-eqz v9, :cond_c

    .line 878
    iget-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v9, v2, v3}, Llhn;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 882
    :cond_c
    iput-object v8, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 884
    neg-int v9, v6

    invoke-virtual {p1, v9}, Lrx/subjects/ReplaySubject$ReplayProducer;->addAndGet(I)I

    move-result v6

    .line 885
    if-nez v6, :cond_1

    goto/16 :goto_0
.end method
