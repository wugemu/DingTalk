.class final Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;
.super Ljava/util/ArrayList;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/OperatorReplay$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lrx/internal/operators/OperatorReplay$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62057d556fa2a2d8L


# instance fields
.field volatile size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacityHint"    # I

    .prologue
    .line 854
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 855
    return-void
.end method


# virtual methods
.method public final complete()V
    .locals 1

    .prologue
    .line 870
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 871
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 872
    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 864
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 865
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 866
    return-void
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 859
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 860
    return-void
.end method

.method public final replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "output":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v10, 0x0

    .line 876
    monitor-enter p1

    .line 877
    :try_start_0
    iget-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    if-eqz v11, :cond_1

    .line 878
    const/4 v10, 0x1

    iput-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 879
    monitor-exit p1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 882
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    :goto_1
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_0

    .line 887
    iget v7, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 889
    .local v7, "sourceIndex":I
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->index()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 890
    .local v2, "destinationIndexObject":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 892
    .local v1, "destinationIndex":I
    :goto_2
    iget-object v0, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Llgy;

    .line 893
    .local v0, "child":Llgy;, "Llgy<-TT;>;"
    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v8

    .line 898
    .local v8, "r":J
    const-wide/16 v4, 0x0

    .line 900
    .local v4, "e":J
    :goto_3
    cmp-long v11, v4, v8

    if-eqz v11, :cond_3

    if-ge v1, v7, :cond_3

    .line 901
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 903
    .local v6, "o":Ljava/lang/Object;
    :try_start_1
    invoke-static {v0, v6}, Lrx/internal/operators/NotificationLite;->a(Llgt;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-nez v11, :cond_0

    .line 914
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_0

    .line 917
    add-int/lit8 v1, v1, 0x1

    .line 918
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 919
    goto :goto_3

    .line 882
    .end local v0    # "child":Llgy;, "Llgy<-TT;>;"
    .end local v1    # "destinationIndex":I
    .end local v2    # "destinationIndexObject":Ljava/lang/Integer;
    .end local v4    # "e":J
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "sourceIndex":I
    .end local v8    # "r":J
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .restart local v2    # "destinationIndexObject":Ljava/lang/Integer;
    .restart local v7    # "sourceIndex":I
    :cond_2
    move v1, v10

    .line 890
    goto :goto_2

    .line 906
    .restart local v0    # "child":Llgy;, "Llgy<-TT;>;"
    .restart local v1    # "destinationIndex":I
    .restart local v4    # "e":J
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v8    # "r":J
    :catch_0
    move-exception v3

    .line 907
    .local v3, "err":Ljava/lang/Throwable;
    invoke-static {v3}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 908
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->unsubscribe()V

    .line 909
    invoke-static {v6}, Lrx/internal/operators/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v6}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 910
    invoke-static {v6}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v0, v10}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 920
    .end local v3    # "err":Ljava/lang/Throwable;
    .end local v6    # "o":Ljava/lang/Object;
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_4

    .line 921
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 922
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_4

    .line 923
    invoke-virtual {p1, v4, v5}, Lrx/internal/operators/OperatorReplay$InnerProducer;->produced(J)J

    .line 927
    :cond_4
    monitor-enter p1

    .line 928
    :try_start_3
    iget-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    if-nez v11, :cond_5

    .line 929
    const/4 v10, 0x0

    iput-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 930
    monitor-exit p1

    goto/16 :goto_0

    .line 933
    :catchall_1
    move-exception v10

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 932
    :cond_5
    const/4 v11, 0x0

    :try_start_4
    iput-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 933
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method
