.class public Lcom/laiwang/protocol/file/a;
.super Ljava/lang/Object;
.source "DefaultDownloadController.java"

# interfaces
.implements Lcom/laiwang/protocol/file/download/DownloadController;


# instance fields
.field private a:Lcom/laiwang/protocol/connection/LWPConnection;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/connection/LWPConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/laiwang/protocol/connection/LWPConnection;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/file/a;->c:Z

    .line 18
    iput-object p1, p0, Lcom/laiwang/protocol/file/a;->a:Lcom/laiwang/protocol/connection/LWPConnection;

    .line 19
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/laiwang/protocol/file/a;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/laiwang/protocol/file/a;->c:Z

    if-nez v0, :cond_1

    .line 24
    const-string/jumbo v0, "[down] down cancel %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/file/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/laiwang/protocol/file/a;->a:Lcom/laiwang/protocol/connection/LWPConnection;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/laiwang/protocol/file/a;->a:Lcom/laiwang/protocol/connection/LWPConnection;

    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/LWPConnection;->cancel()V

    .line 27
    iget-object v0, p0, Lcom/laiwang/protocol/file/a;->a:Lcom/laiwang/protocol/connection/LWPConnection;

    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/LWPConnection;->release()V

    .line 29
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/file/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/laiwang/protocol/file/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
