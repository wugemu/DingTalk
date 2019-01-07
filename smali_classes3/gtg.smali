.class public final Lgtg;
.super Ljava/lang/Object;
.source "HttpOverLWPClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lgti;)Lgtj;
    .locals 9
    .param p0, "request"    # Lgti;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 27
    invoke-static {p0}, Lgto;->a(Lgti;)Lcom/laiwang/protocol/core/Request;

    move-result-object v4

    .line 28
    .local v4, "req":Lcom/laiwang/protocol/core/Request;
    if-nez v4, :cond_0

    .line 29
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Invalid Http over lwp request"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 31
    :cond_0
    const/4 v5, 0x1

    new-array v1, v5, [Lgtj;

    .line 32
    .local v1, "httpResponse":[Lgtj;
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 33
    .local v2, "lock":Ljava/lang/Object;
    new-instance v3, Lgtg$1;

    invoke-direct {v3, v1, v2}, Lgtg$1;-><init>([Lgtj;Ljava/lang/Object;)V

    .line 46
    .local v3, "reply":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    invoke-static {v4, v3}, Lcom/laiwang/protocol/android/LWP;->ask(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V

    .line 47
    monitor-enter v2

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lgti;->f()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    aget-object v5, v1, v8

    if-nez v5, :cond_1

    .line 55
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid Http over lwp response"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 57
    :cond_1
    aget-object v5, v1, v8

    return-object v5
.end method

.method public static a(Lgti;Lgte;)V
    .locals 4
    .param p0, "request"    # Lgti;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgti;",
            "Lgte",
            "<",
            "Lgtj;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "callback":Lgte;, "Lgte<Lgtj;>;"
    invoke-static {p0}, Lgto;->a(Lgti;)Lcom/laiwang/protocol/core/Request;

    move-result-object v1

    .line 68
    .local v1, "req":Lcom/laiwang/protocol/core/Request;
    if-nez v1, :cond_0

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid Http over lwp request"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_0
    new-instance v0, Lgtg$2;

    invoke-direct {v0, p1}, Lgtg$2;-><init>(Lgte;)V

    .line 90
    .local v0, "reply":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/LWP;->ask(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V

    .line 91
    return-void
.end method
