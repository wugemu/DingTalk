.class Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/OperatorReplay$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/operators/OperatorReplay$Node;",
        ">;",
        "Lrx/internal/operators/OperatorReplay$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field index:J

.field size:I

.field tail:Lrx/internal/operators/OperatorReplay$Node;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 972
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 973
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 974
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 975
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 976
    return-void
.end method


# virtual methods
.method final addLast(Lrx/internal/operators/OperatorReplay$Node;)V
    .locals 1
    .param p1, "n"    # Lrx/internal/operators/OperatorReplay$Node;

    .prologue
    .line 983
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorReplay$Node;->set(Ljava/lang/Object;)V

    .line 984
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 985
    iget v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    .line 986
    return-void
.end method

.method final collect(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1171
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->getInitialHead()Lrx/internal/operators/OperatorReplay$Node;

    move-result-object v0

    .line 1173
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    :goto_0
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1174
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    if-eqz v1, :cond_0

    .line 1175
    iget-object v2, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    .line 1176
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1177
    .local v3, "v":Ljava/lang/Object;
    invoke-static {v3}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lrx/internal/operators/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1180
    invoke-static {v3}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1181
    move-object v0, v1

    .line 1185
    goto :goto_0

    .line 1186
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final complete()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1047
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1048
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 1049
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1050
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 1051
    return-void
.end method

.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1144
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1039
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1040
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 1041
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1042
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 1043
    return-void
.end method

.method getInitialHead()Lrx/internal/operators/OperatorReplay$Node;
    .locals 1

    .prologue
    .line 1026
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    return-object v0
.end method

.method hasCompleted()Z
    .locals 1

    .prologue
    .line 1191
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasError()Z
    .locals 1

    .prologue
    .line 1188
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lrx/internal/operators/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1154
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1031
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1032
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 1033
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1034
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncate()V

    .line 1035
    return-void
.end method

.method final removeFirst()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 991
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 992
    .local v0, "head":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 993
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    if-nez v1, :cond_0

    .line 994
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Empty list!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 996
    :cond_0
    iget v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    .line 999
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1000
    return-void
.end method

.method final removeSome(I)V
    .locals 2
    .param p1, "n"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1002
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1003
    .local v0, "head":Lrx/internal/operators/OperatorReplay$Node;
    :goto_0
    if-lez p1, :cond_0

    .line 1004
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "head":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1005
    .restart local v0    # "head":Lrx/internal/operators/OperatorReplay$Node;
    add-int/lit8 p1, p1, -0x1

    .line 1006
    iget v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    goto :goto_0

    .line 1009
    :cond_0
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1010
    return-void
.end method

.method public final replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v12, 0x0

    .line 1055
    monitor-enter p1

    .line 1056
    :try_start_0
    iget-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    if-eqz v9, :cond_1

    .line 1057
    const/4 v9, 0x1

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 1058
    monitor-exit p1

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 1061
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    :goto_1
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1067
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->index()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/internal/operators/OperatorReplay$Node;

    .line 1068
    .local v4, "node":Lrx/internal/operators/OperatorReplay$Node;
    if-nez v4, :cond_2

    .line 1069
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->getInitialHead()Lrx/internal/operators/OperatorReplay$Node;

    move-result-object v4

    .line 1070
    iput-object v4, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1076
    iget-wide v10, v4, Lrx/internal/operators/OperatorReplay$Node;->index:J

    invoke-virtual {p1, v10, v11}, Lrx/internal/operators/OperatorReplay$InnerProducer;->addTotalRequested(J)V

    .line 1079
    :cond_2
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1083
    iget-object v0, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Llgy;

    .line 1084
    .local v0, "child":Llgy;, "Llgy<-TT;>;"
    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v6

    .line 1089
    .local v6, "r":J
    const-wide/16 v2, 0x0

    .line 1091
    .local v2, "e":J
    :cond_3
    cmp-long v9, v2, v6

    if-eqz v9, :cond_5

    .line 1092
    invoke-virtual {v4}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/internal/operators/OperatorReplay$Node;

    .line 1093
    .local v8, "v":Lrx/internal/operators/OperatorReplay$Node;
    if-eqz v8, :cond_5

    .line 1094
    iget-object v9, v8, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1096
    .local v5, "o":Ljava/lang/Object;
    :try_start_1
    invoke-static {v0, v5}, Lrx/internal/operators/NotificationLite;->a(Llgt;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1097
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v1

    .line 1101
    .local v1, "err":Ljava/lang/Throwable;
    iput-object v12, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1102
    invoke-static {v1}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1103
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->unsubscribe()V

    .line 1104
    invoke-static {v5}, Lrx/internal/operators/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v5}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1105
    invoke-static {v5}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v1, v9}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v0, v9}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1061
    .end local v0    # "child":Llgy;, "Llgy<-TT;>;"
    .end local v1    # "err":Ljava/lang/Throwable;
    .end local v2    # "e":J
    .end local v4    # "node":Lrx/internal/operators/OperatorReplay$Node;
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "r":J
    .end local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 1109
    .restart local v0    # "child":Llgy;, "Llgy<-TT;>;"
    .restart local v2    # "e":J
    .restart local v4    # "node":Lrx/internal/operators/OperatorReplay$Node;
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v6    # "r":J
    .restart local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :cond_4
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 1110
    move-object v4, v8

    .line 1114
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    .line 1119
    .end local v5    # "o":Ljava/lang/Object;
    .end local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-eqz v9, :cond_6

    .line 1120
    iput-object v4, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1121
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v9, v6, v10

    if-eqz v9, :cond_6

    .line 1122
    invoke-virtual {p1, v2, v3}, Lrx/internal/operators/OperatorReplay$InnerProducer;->produced(J)J

    .line 1126
    :cond_6
    monitor-enter p1

    .line 1127
    :try_start_3
    iget-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    if-nez v9, :cond_7

    .line 1128
    const/4 v9, 0x0

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 1129
    monitor-exit p1

    goto/16 :goto_0

    .line 1132
    :catchall_1
    move-exception v9

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 1131
    :cond_7
    const/4 v9, 0x0

    :try_start_4
    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 1132
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method

.method final setFirst(Lrx/internal/operators/OperatorReplay$Node;)V
    .locals 0
    .param p1, "n"    # Lrx/internal/operators/OperatorReplay$Node;

    .prologue
    .line 1016
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 1017
    return-void
.end method

.method truncate()V
    .locals 0

    .prologue
    .line 1162
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method

.method truncateFinal()V
    .locals 0

    .prologue
    .line 1169
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method
