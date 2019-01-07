.class public final Lifu;
.super Ljava/lang/Object;
.source "UploadController.java"


# instance fields
.field public a:Lcom/laiwang/protocol/upload/Uploader;

.field public b:Lcom/laiwang/protocol/upload/OnUploadListener;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lifu;->a:Lcom/laiwang/protocol/upload/Uploader;

    .line 13
    iput-object v0, p0, Lifu;->b:Lcom/laiwang/protocol/upload/OnUploadListener;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lifu;->c:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lifu;->a:Lcom/laiwang/protocol/upload/Uploader;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lifu;->a:Lcom/laiwang/protocol/upload/Uploader;

    iget-object v1, p0, Lifu;->b:Lcom/laiwang/protocol/upload/OnUploadListener;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/Uploader;->commitStreaming(Lcom/laiwang/protocol/upload/OnUploadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lifu;->c:Z

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lifu;->a:Lcom/laiwang/protocol/upload/Uploader;

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lifu;->a:Lcom/laiwang/protocol/upload/Uploader;

    invoke-virtual {v0}, Lcom/laiwang/protocol/upload/Uploader;->isCanceled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 37
    :cond_1
    :try_start_1
    iget-object v0, p0, Lifu;->a:Lcom/laiwang/protocol/upload/Uploader;

    invoke-virtual {v0}, Lcom/laiwang/protocol/upload/Uploader;->cancel()V

    .line 39
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lifu;->c:Z

    .line 40
    iget-object v0, p0, Lifu;->b:Lcom/laiwang/protocol/upload/OnUploadListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lifu;->b:Lcom/laiwang/protocol/upload/OnUploadListener;

    sget-object v1, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_CANCEL:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-interface {v0, v1}, Lcom/laiwang/protocol/upload/OnUploadListener;->onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
