.class Lcom/laiwang/protocol/android/ac$d;
.super Ljava/lang/Object;
.source "LwsKeepAlive.java"

# interfaces
.implements Lcom/laiwang/protocol/android/ab$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/ac;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/ac;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 129
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 127
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 133
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 137
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 75
    return-void
.end method

.method public c(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 135
    return-void
.end method

.method public d(Lcom/laiwang/protocol/android/k;)V
    .locals 5
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 78
    const-string/jumbo v1, "[heartbeat] Ping failed"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    monitor-enter v2

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ac;->a(Lcom/laiwang/protocol/android/ac;)Z

    move-result v0

    .line 82
    .local v0, "cur":Z
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/laiwang/protocol/android/ac;->a(Lcom/laiwang/protocol/android/ac;Z)Z

    .line 83
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ac;->b(Lcom/laiwang/protocol/android/ac;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/ac;->a(Lcom/laiwang/protocol/android/ac;I)V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ac;->c(Lcom/laiwang/protocol/android/ac;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ac;->c(Lcom/laiwang/protocol/android/ac;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 90
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ac;->d(Lcom/laiwang/protocol/android/ac;)Lcom/laiwang/protocol/android/aa;

    move-result-object v1

    new-instance v2, Lcom/laiwang/protocol/android/ab$k;

    invoke-direct {v2}, Lcom/laiwang/protocol/android/ab$k;-><init>()V

    invoke-interface {v1, v2}, Lcom/laiwang/protocol/android/aa;->a(Ljava/lang/Throwable;)V

    .line 96
    :goto_0
    return-void

    .line 83
    .end local v0    # "cur":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 93
    .restart local v0    # "cur":Z
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/ac;->a(Z)V

    .line 94
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ac;->c(Lcom/laiwang/protocol/android/ac;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0
.end method

.method public e(Lcom/laiwang/protocol/android/k;)V
    .locals 5
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 100
    const-string/jumbo v1, "[heartbeat] Ping success"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    monitor-enter v2

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ac;->a(Lcom/laiwang/protocol/android/ac;)Z

    move-result v0

    .line 104
    .local v0, "cur":Z
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/laiwang/protocol/android/ac;->a(Lcom/laiwang/protocol/android/ac;Z)Z

    .line 105
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ac;->b(Lcom/laiwang/protocol/android/ac;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/ac;->a(Lcom/laiwang/protocol/android/ac;I)V

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac$d;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v1}, Lcom/laiwang/protocol/android/ac;->c(Lcom/laiwang/protocol/android/ac;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 112
    :cond_1
    return-void

    .line 105
    .end local v0    # "cur":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public f(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 116
    return-void
.end method

.method public g(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 120
    return-void
.end method

.method public h(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 124
    return-void
.end method
