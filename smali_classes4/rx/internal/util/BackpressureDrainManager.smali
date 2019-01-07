.class public final Lrx/internal/util/BackpressureDrainManager;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "BackpressureDrainManager.java"

# interfaces
.implements Llgu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/BackpressureDrainManager$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2738d34f11cd4869L


# instance fields
.field final actual:Lrx/internal/util/BackpressureDrainManager$a;

.field emitting:Z

.field exception:Ljava/lang/Throwable;

.field volatile terminated:Z


# direct methods
.method public constructor <init>(Lrx/internal/util/BackpressureDrainManager$a;)V
    .locals 0
    .param p1, "actual"    # Lrx/internal/util/BackpressureDrainManager$a;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 81
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$a;

    .line 82
    return-void
.end method


# virtual methods
.method public final drain()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-boolean v8, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    if-eqz v8, :cond_1

    .line 169
    monitor-exit p0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 172
    iget-boolean v7, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 173
    .local v7, "term":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->get()J

    move-result-wide v4

    .line 175
    .local v4, "n":J
    const/4 v6, 0x0

    .line 177
    .local v6, "skipFinal":Z
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$a;

    .line 179
    .local v0, "a":Lrx/internal/util/BackpressureDrainManager$a;
    :goto_1
    const/4 v1, 0x0

    .line 180
    .local v1, "emitted":I
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_2

    if-eqz v7, :cond_5

    .line 182
    :cond_2
    if-eqz v7, :cond_4

    .line 183
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$a;->a()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 184
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 185
    const/4 v6, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$a;
    .end local v1    # "emitted":I
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "n":J
    .end local v6    # "skipFinal":Z
    .end local v7    # "term":Z
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 190
    .restart local v0    # "a":Lrx/internal/util/BackpressureDrainManager$a;
    .restart local v1    # "emitted":I
    .restart local v3    # "o":Ljava/lang/Object;
    .restart local v4    # "n":J
    .restart local v6    # "skipFinal":Z
    .restart local v7    # "term":Z
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_5

    .line 194
    .end local v3    # "o":Ljava/lang/Object;
    :cond_4
    :try_start_3
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$a;->b()Ljava/lang/Object;

    move-result-object v3

    .line 195
    .restart local v3    # "o":Ljava/lang/Object;
    if-eqz v3, :cond_5

    .line 198
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$a;->c()Z

    move-result v8

    if-nez v8, :cond_0

    .line 202
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 203
    add-int/lit8 v1, v1, 0x1

    .line 205
    goto :goto_2

    .line 206
    .end local v3    # "o":Ljava/lang/Object;
    :cond_5
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 207
    :try_start_4
    iget-boolean v7, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 208
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$a;->a()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    const/4 v2, 0x1

    .line 210
    .local v2, "more":Z
    :goto_3
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->get()J

    move-result-wide v8

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    .line 212
    if-nez v2, :cond_8

    if-nez v7, :cond_8

    .line 213
    const/4 v6, 0x1

    .line 214
    const/4 v8, 0x0

    iput-boolean v8, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 215
    monitor-exit p0

    goto :goto_0

    .line 226
    .end local v2    # "more":Z
    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 229
    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$a;
    .end local v1    # "emitted":I
    :catchall_2
    move-exception v8

    if-nez v6, :cond_6

    .line 230
    monitor-enter p0

    .line 231
    const/4 v9, 0x0

    :try_start_6
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 232
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_6
    throw v8

    .line 208
    .restart local v0    # "a":Lrx/internal/util/BackpressureDrainManager$a;
    .restart local v1    # "emitted":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 217
    .restart local v2    # "more":Z
    :cond_8
    const-wide v4, 0x7fffffffffffffffL

    .line 226
    :cond_9
    :try_start_7
    monitor-exit p0

    goto :goto_1

    .line 219
    :cond_a
    neg-int v8, v1

    int-to-long v8, v8

    invoke-virtual {p0, v8, v9}, Lrx/internal/util/BackpressureDrainManager;->addAndGet(J)J

    move-result-wide v4

    .line 220
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_b

    if-nez v2, :cond_9

    :cond_b
    if-eqz v7, :cond_c

    if-eqz v2, :cond_9

    .line 221
    :cond_c
    const/4 v6, 0x1

    .line 222
    const/4 v8, 0x0

    iput-boolean v8, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 223
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 232
    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$a;
    .end local v1    # "emitted":I
    .end local v2    # "more":Z
    :catchall_3
    move-exception v8

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v8
.end method

.method public final isTerminated()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    return v0
.end method

.method public final request(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide v8, 0x7fffffffffffffffL

    .line 132
    cmp-long v1, p1, v10

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->get()J

    move-result-wide v2

    .line 140
    .local v2, "r":J
    cmp-long v1, v2, v10

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 141
    .local v0, "mayDrain":Z
    :goto_1
    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    .line 144
    cmp-long v1, p1, v8

    if-nez v1, :cond_4

    .line 145
    move-wide v4, p1

    .line 146
    .local v4, "u":J
    const/4 v0, 0x1

    .line 154
    :goto_2
    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/util/BackpressureDrainManager;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    .end local v4    # "u":J
    :cond_2
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    goto :goto_0

    .line 140
    .end local v0    # "mayDrain":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 148
    .restart local v0    # "mayDrain":Z
    :cond_4
    sub-long v6, v8, p1

    cmp-long v1, v2, v6

    if-lez v1, :cond_5

    .line 149
    const-wide v4, 0x7fffffffffffffffL

    .restart local v4    # "u":J
    goto :goto_2

    .line 151
    .end local v4    # "u":J
    :cond_5
    add-long v4, v2, p1

    .restart local v4    # "u":J
    goto :goto_2
.end method

.method public final terminate()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 96
    return-void
.end method

.method public final terminate(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_0

    .line 106
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 109
    :cond_0
    return-void
.end method

.method public final terminateAndDrain()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 115
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    .line 116
    return-void
.end method

.method public final terminateAndDrain(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_0

    .line 125
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 127
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    .line 129
    :cond_0
    return-void
.end method
