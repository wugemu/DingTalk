.class final Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorOnBackpressureLatest.java"

# interfaces
.implements Llgt;
.implements Llgu;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Llgt",
        "<TT;>;",
        "Llgu;",
        "Llgz;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;

.field static final NOT_REQUESTED:J = -0x4000000000000000L

.field private static final serialVersionUID:J = -0x12ef4cd3e08498a2L


# instance fields
.field final child:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field missed:Z

.field parent:Lrx/internal/operators/OperatorOnBackpressureLatest$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureLatest$a",
            "<-TT;>;"
        }
    .end annotation
.end field

.field terminal:Ljava/lang/Throwable;

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llgy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Llgy;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->lazySet(J)V

    .line 77
    return-void
.end method


# virtual methods
.method final emit()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 145
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    if-eqz v6, :cond_0

    .line 147
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 148
    monitor-exit p0

    .line 194
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 151
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    const/4 v1, 0x0

    .line 156
    .local v1, "skipFinal":Z
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v2

    .line 157
    .local v2, "r":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    .line 158
    const/4 v1, 0x1

    .line 159
    goto :goto_0

    .line 152
    .end local v1    # "skipFinal":Z
    .end local v2    # "r":J
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 161
    .restart local v1    # "skipFinal":Z
    .restart local v2    # "r":J
    :cond_1
    :try_start_3
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 162
    .local v4, "v":Ljava/lang/Object;
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    sget-object v6, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    if-eq v4, v6, :cond_2

    .line 164
    move-object v5, v4

    .line 165
    .local v5, "v2":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Llgy;

    invoke-virtual {v6, v5}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 166
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->produced(J)J

    .line 168
    sget-object v4, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    .line 170
    .end local v5    # "v2":Ljava/lang/Object;, "TT;"
    :cond_2
    sget-object v6, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    if-ne v4, v6, :cond_3

    iget-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    if-eqz v6, :cond_3

    .line 171
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->terminal:Ljava/lang/Throwable;

    .line 172
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 173
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Llgy;

    invoke-virtual {v6, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 178
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 179
    :try_start_4
    iget-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    if-nez v6, :cond_6

    .line 180
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 181
    const/4 v1, 0x1

    .line 182
    monitor-exit p0

    goto :goto_0

    .line 185
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 188
    .end local v2    # "r":J
    .end local v4    # "v":Ljava/lang/Object;
    :catchall_2
    move-exception v6

    if-nez v1, :cond_4

    .line 189
    monitor-enter p0

    .line 190
    const/4 v7, 0x0

    :try_start_6
    iput-boolean v7, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 191
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_4
    throw v6

    .line 175
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "r":J
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_5
    :try_start_7
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Llgy;

    invoke-virtual {v6}, Llgy;->onCompleted()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 184
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    const/4 v6, 0x0

    :try_start_8
    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 185
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 191
    .end local v2    # "r":J
    .end local v4    # "v":Ljava/lang/Object;
    :catchall_3
    move-exception v6

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v6
.end method

.method public final isUnsubscribed()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    .line 142
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 143
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->terminal:Ljava/lang/Throwable;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    .line 137
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 138
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 132
    return-void
.end method

.method final produced(J)J
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    .line 108
    .local v0, "r":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 113
    .end local v0    # "r":J
    :goto_0
    return-wide v0

    .line 111
    .restart local v0    # "r":J
    :cond_1
    sub-long v2, v0, p1

    .line 112
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 113
    goto :goto_0
.end method

.method public final request(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    .line 80
    cmp-long v4, p1, v8

    if-ltz v4, :cond_1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    .line 83
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 104
    .end local v0    # "r":J
    :cond_1
    :goto_0
    return-void

    .line 87
    .restart local v0    # "r":J
    :cond_2
    cmp-long v4, v0, v6

    if-nez v4, :cond_5

    .line 88
    move-wide v2, p1

    .line 95
    .local v2, "u":J
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    cmp-long v4, v0, v6

    if-nez v4, :cond_4

    .line 97
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->parent:Lrx/internal/operators/OperatorOnBackpressureLatest$a;

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v4, v6, v7}, Lrx/internal/operators/OperatorOnBackpressureLatest$a;->b(J)V

    .line 99
    :cond_4
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    goto :goto_0

    .line 90
    .end local v2    # "u":J
    :cond_5
    add-long v2, v0, p1

    .line 91
    .restart local v2    # "u":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_3

    .line 92
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method public final unsubscribe()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 124
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->getAndSet(J)J

    .line 126
    :cond_0
    return-void
.end method
