.class public Lcom/alibaba/doraemon/impl/request/RequestFuture;
.super Ljava/lang/Object;
.source "RequestFuture.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;
.implements Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;",
        "Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener",
        "<TT;>;",
        "Ljava/util/concurrent/Future",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mException:Lcom/alibaba/doraemon/impl/request/VolleyError;

.field private mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResultReceived:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/RequestFuture;, "Lcom/alibaba/doraemon/impl/request/RequestFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mResultReceived:Z

    .line 62
    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 4
    .param p1, "timeoutMs"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/RequestFuture;, "Lcom/alibaba/doraemon/impl/request/RequestFuture<TT;>;"
    const-wide/16 v2, 0x0

    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mException:Lcom/alibaba/doraemon/impl/request/VolleyError;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mException:Lcom/alibaba/doraemon/impl/request/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mResultReceived:Z

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-object v0

    .line 107
    :cond_1
    if-nez p1, :cond_3

    .line 108
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 113
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mException:Lcom/alibaba/doraemon/impl/request/VolleyError;

    if-eqz v0, :cond_4

    .line 114
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mException:Lcom/alibaba/doraemon/impl/request/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 109
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 110
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 117
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mResultReceived:Z

    if-nez v0, :cond_5

    .line 118
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static newFuture()Lcom/alibaba/doraemon/impl/request/RequestFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/alibaba/doraemon/impl/request/RequestFuture",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/alibaba/doraemon/impl/request/RequestFuture;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/RequestFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/RequestFuture;, "Lcom/alibaba/doraemon/impl/request/RequestFuture<TT;>;"
    const/4 v0, 0x0

    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 74
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/RequestFuture;, "Lcom/alibaba/doraemon/impl/request/RequestFuture<TT;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/request/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/RequestFuture;, "Lcom/alibaba/doraemon/impl/request/RequestFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/request/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/RequestFuture;, "Lcom/alibaba/doraemon/impl/request/RequestFuture<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->isCanceled()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/RequestFuture;, "Lcom/alibaba/doraemon/impl/request/RequestFuture<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mResultReceived:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mException:Lcom/alibaba/doraemon/impl/request/VolleyError;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestFuture;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onErrorResponse(Lcom/alibaba/doraemon/impl/request/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/alibaba/doraemon/impl/request/VolleyError;

    .prologue
    .line 151
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/RequestFuture;, "Lcom/alibaba/doraemon/impl/request/RequestFuture<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mException:Lcom/alibaba/doraemon/impl/request/VolleyError;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onProgressChange(JJ)V
    .locals 0
    .param p1, "totalSize"    # J
    .param p3, "downloadSize"    # J

    .prologue
    .line 147
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/RequestFuture;, "Lcom/alibaba/doraemon/impl/request/RequestFuture<TT;>;"
    return-void
.end method

.method public declared-synchronized onResponse(ILjava/lang/Object;JLjava/util/Map;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/RequestFuture;, "Lcom/alibaba/doraemon/impl/request/RequestFuture<TT;>;"
    .local p2, "response":Ljava/lang/Object;, "TT;"
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mResultReceived:Z

    .line 140
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mResult:Ljava/lang/Object;

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequest(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/RequestFuture;, "Lcom/alibaba/doraemon/impl/request/RequestFuture<TT;>;"
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestFuture;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 66
    return-void
.end method
