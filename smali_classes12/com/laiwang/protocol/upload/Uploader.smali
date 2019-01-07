.class public Lcom/laiwang/protocol/upload/Uploader;
.super Ljava/lang/Object;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;
    }
.end annotation


# instance fields
.field private upFileItem:Lcom/laiwang/protocol/android/bv;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/bv;)V
    .locals 0
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/upload/Uploader;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    return-object v0
.end method

.method private declared-synchronized commitStreamingV2(Lcom/laiwang/protocol/upload/OnUploadListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/laiwang/protocol/upload/OnUploadListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 279
    .local v2, "startTime":J
    const-string/jumbo v1, "[upload] %s, commitStreaming %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v6}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v6}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-static {}, Lcom/laiwang/protocol/android/bx;->a()Lcom/laiwang/protocol/android/bx;

    move-result-object v0

    .line 281
    .local v0, "manager":Lcom/laiwang/protocol/android/bx;
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    new-instance v4, Lcom/laiwang/protocol/upload/Uploader$5;

    invoke-direct {v4, p0, v2, v3, p1}, Lcom/laiwang/protocol/upload/Uploader$5;-><init>(Lcom/laiwang/protocol/upload/Uploader;JLcom/laiwang/protocol/upload/OnUploadListener;)V

    invoke-virtual {v1, v4}, Lcom/laiwang/protocol/android/bv;->b(Lcom/laiwang/protocol/upload/OnUploadListener;)V

    .line 327
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bx;->b(Lcom/laiwang/protocol/android/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    .line 278
    .end local v0    # "manager":Lcom/laiwang/protocol/android/bx;
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized uploadFile(Lcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/OnUploadListener;)Lcom/laiwang/protocol/upload/Uploader;
    .locals 2
    .param p0, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;
    .param p1, "listener"    # Lcom/laiwang/protocol/upload/OnUploadListener;

    .prologue
    .line 28
    const-class v1, Lcom/laiwang/protocol/upload/Uploader;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->isNg()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->isCSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    invoke-static {p0, p1}, Lcom/laiwang/protocol/upload/Uploader;->uploadFileNg(Lcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/OnUploadListener;)Lcom/laiwang/protocol/upload/Uploader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 31
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->isStreaming()Z

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/laiwang/protocol/upload/Uploader;->uploadFileV2(ZLcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/OnUploadListener;)Lcom/laiwang/protocol/upload/Uploader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized uploadFile(Ljava/lang/String;JZLcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;)Lcom/laiwang/protocol/upload/Uploader;
    .locals 3
    .param p0, "uploadUrl"    # Ljava/lang/String;
    .param p1, "timeout"    # J
    .param p3, "isStreaming"    # Z
    .param p4, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;
    .param p5, "listener"    # Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    const-class v2, Lcom/laiwang/protocol/upload/Uploader;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/laiwang/protocol/upload/Uploader$1;

    invoke-direct {v0, p5, p4}, Lcom/laiwang/protocol/upload/Uploader$1;-><init>(Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;Lcom/laiwang/protocol/upload/UploaderExtra;)V

    .line 70
    .local v0, "uploadListener":Lcom/laiwang/protocol/upload/OnUploadListener;
    invoke-virtual {p4}, Lcom/laiwang/protocol/upload/UploaderExtra;->isNg()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Lcom/laiwang/protocol/upload/UploaderExtra;->isCSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    invoke-static {p4, v0}, Lcom/laiwang/protocol/upload/Uploader;->uploadFileNg(Lcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/OnUploadListener;)Lcom/laiwang/protocol/upload/Uploader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 73
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_1
    :try_start_1
    invoke-static {p3, p4, v0}, Lcom/laiwang/protocol/upload/Uploader;->uploadFileV2(ZLcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/OnUploadListener;)Lcom/laiwang/protocol/upload/Uploader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 51
    .end local v0    # "uploadListener":Lcom/laiwang/protocol/upload/OnUploadListener;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized uploadFile(ZLcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;)Lcom/laiwang/protocol/upload/Uploader;
    .locals 7
    .param p0, "isStreaming"    # Z
    .param p1, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;
    .param p2, "listener"    # Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    const-class v0, Lcom/laiwang/protocol/upload/Uploader;

    monitor-enter v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, p0

    move-object v5, p1

    move-object v6, p2

    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/laiwang/protocol/upload/Uploader;->uploadFile(Ljava/lang/String;JZLcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;)Lcom/laiwang/protocol/upload/Uploader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static uploadFileNg(Lcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/OnUploadListener;)Lcom/laiwang/protocol/upload/Uploader;
    .locals 11
    .param p0, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;
    .param p1, "listener"    # Lcom/laiwang/protocol/upload/OnUploadListener;

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 160
    .local v2, "startTime":J
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    :cond_0
    if-eqz p1, :cond_1

    .line 162
    sget-object v6, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_PARAMETER_EMPTY:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-interface {p1, v6}, Lcom/laiwang/protocol/upload/OnUploadListener;->onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 163
    :cond_1
    const-string/jumbo v6, "[uploadNg] Upload file params empty"

    invoke-static {v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-object v1

    .line 167
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 169
    if-eqz p1, :cond_3

    .line 170
    sget-object v6, Lcom/laiwang/protocol/upload/ErrorMsg;->FILE_NOT_FOUND:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-interface {p1, v6}, Lcom/laiwang/protocol/upload/OnUploadListener;->onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 171
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[uploadNg] Upload file not exist: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/android/bx;->a()Lcom/laiwang/protocol/android/bx;

    move-result-object v9

    .line 178
    .local v9, "manager":Lcom/laiwang/protocol/android/bx;
    new-instance v5, Lcom/laiwang/protocol/android/bv;

    invoke-direct {v5, v8}, Lcom/laiwang/protocol/android/bv;-><init>(Ljava/lang/String;)V

    .line 179
    .local v5, "upFileItem":Lcom/laiwang/protocol/android/bv;
    invoke-virtual {v5, p0}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/UploaderExtra;)V

    .line 181
    invoke-virtual {v5}, Lcom/laiwang/protocol/android/bv;->v()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    sget-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->UP_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 186
    .local v0, "connType":Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    :goto_1
    invoke-static {}, Lcom/laiwang/protocol/connection/ConnectionFactory;->getInstance()Lcom/laiwang/protocol/connection/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/connection/ConnectionFactory;->create(Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v7

    .line 187
    .local v7, "connection":Lcom/laiwang/protocol/connection/LWPConnection;
    invoke-virtual {v5, v7}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/connection/LWPConnection;)V

    .line 188
    invoke-virtual {v7}, Lcom/laiwang/protocol/connection/LWPConnection;->connect()V

    .line 189
    new-instance v1, Lcom/laiwang/protocol/upload/Uploader$3;

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/laiwang/protocol/upload/Uploader$3;-><init>(JLjava/io/File;Lcom/laiwang/protocol/android/bv;Lcom/laiwang/protocol/upload/OnUploadListener;Lcom/laiwang/protocol/connection/LWPConnection;)V

    invoke-virtual {v5, v1}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/OnUploadListener;)V

    .line 232
    invoke-virtual {v9, v5}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bv;)V

    .line 233
    const-string/jumbo v1, "[uploadNg] uploadFile %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v6, v10

    invoke-static {v1, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    new-instance v1, Lcom/laiwang/protocol/upload/Uploader;

    invoke-direct {v1, v5}, Lcom/laiwang/protocol/upload/Uploader;-><init>(Lcom/laiwang/protocol/android/bv;)V

    goto :goto_0

    .line 184
    .end local v0    # "connType":Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    .end local v7    # "connection":Lcom/laiwang/protocol/connection/LWPConnection;
    :cond_5
    sget-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->UP_SMALL:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .restart local v0    # "connType":Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    goto :goto_1
.end method

.method private static uploadFileV2(ZLcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/OnUploadListener;)Lcom/laiwang/protocol/upload/Uploader;
    .locals 11
    .param p0, "isStreaming"    # Z
    .param p1, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;
    .param p2, "listener"    # Lcom/laiwang/protocol/upload/OnUploadListener;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 80
    .local v2, "startTime":J
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    :cond_0
    sget-object v6, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_PARAMETER_EMPTY:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-interface {p2, v6}, Lcom/laiwang/protocol/upload/OnUploadListener;->onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 82
    const-string/jumbo v6, "[upload] Upload file params empty"

    invoke-static {v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-object v1

    .line 86
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 88
    sget-object v6, Lcom/laiwang/protocol/upload/ErrorMsg;->FILE_NOT_FOUND:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-interface {p2, v6}, Lcom/laiwang/protocol/upload/OnUploadListener;->onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[upload] Upload file not exist: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/android/bx;->a()Lcom/laiwang/protocol/android/bx;

    move-result-object v10

    .line 96
    .local v10, "manager":Lcom/laiwang/protocol/android/bx;
    new-instance v5, Lcom/laiwang/protocol/android/bv;

    invoke-direct {v5, v9}, Lcom/laiwang/protocol/android/bv;-><init>(Ljava/lang/String;)V

    .line 97
    .local v5, "upFileItem":Lcom/laiwang/protocol/android/bv;
    invoke-virtual {v5, p1}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/UploaderExtra;)V

    .line 98
    iput-boolean p0, v5, Lcom/laiwang/protocol/android/bv;->c:Z

    .line 100
    invoke-virtual {v5}, Lcom/laiwang/protocol/android/bv;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    sget-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->UP_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 105
    .local v0, "connType":Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    :goto_1
    invoke-static {}, Lcom/laiwang/protocol/connection/ConnectionFactory;->getInstance()Lcom/laiwang/protocol/connection/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/connection/ConnectionFactory;->create(Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v8

    .line 106
    .local v8, "connection":Lcom/laiwang/protocol/connection/LWPConnection;
    invoke-virtual {v5, v8}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/connection/LWPConnection;)V

    .line 107
    invoke-virtual {v8}, Lcom/laiwang/protocol/connection/LWPConnection;->connect()V

    .line 108
    new-instance v1, Lcom/laiwang/protocol/upload/Uploader$2;

    move v6, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/laiwang/protocol/upload/Uploader$2;-><init>(JLjava/io/File;Lcom/laiwang/protocol/android/bv;ZLcom/laiwang/protocol/upload/OnUploadListener;Lcom/laiwang/protocol/connection/LWPConnection;)V

    invoke-virtual {v5, v1}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/OnUploadListener;)V

    .line 153
    invoke-virtual {v10, v5}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bv;)V

    .line 154
    const-string/jumbo v1, "[upload] uploadFile %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    invoke-static {v1, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v1, Lcom/laiwang/protocol/upload/Uploader;

    invoke-direct {v1, v5}, Lcom/laiwang/protocol/upload/Uploader;-><init>(Lcom/laiwang/protocol/android/bv;)V

    goto :goto_0

    .line 103
    .end local v0    # "connType":Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    .end local v8    # "connection":Lcom/laiwang/protocol/connection/LWPConnection;
    :cond_3
    sget-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->UP_SMALL:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .restart local v0    # "connType":Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    const-string/jumbo v1, "[upload] upload cancel %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->w()Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v0

    .line 334
    .local v0, "connection":Lcom/laiwang/protocol/connection/LWPConnection;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/LWPConnection;->cancel()V

    .line 336
    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/LWPConnection;->release()V

    .line 338
    :cond_0
    invoke-static {}, Lcom/laiwang/protocol/android/bx;->a()Lcom/laiwang/protocol/android/bx;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bx;->e(Lcom/laiwang/protocol/android/bv;)V

    .line 339
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v0    # "connection":Lcom/laiwang/protocol/connection/LWPConnection;
    :cond_1
    monitor-exit p0

    return-void

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public commitStreaming(JLcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;)V
    .locals 0
    .param p1, "timeout"    # J
    .param p3, "listener"    # Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0, p3}, Lcom/laiwang/protocol/upload/Uploader;->commitStreaming(Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;)V

    .line 240
    return-void
.end method

.method public commitStreaming(Lcom/laiwang/protocol/upload/OnUploadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/laiwang/protocol/upload/OnUploadListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[upload] upload is already canceled %s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/upload/Uploader;->commitStreamingV2(Lcom/laiwang/protocol/upload/OnUploadListener;)V

    goto :goto_0
.end method

.method public commitStreaming(Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[upload] upload is already canceled %s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 248
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/upload/Uploader$4;

    invoke-direct {v0, p0, p1}, Lcom/laiwang/protocol/upload/Uploader$4;-><init>(Lcom/laiwang/protocol/upload/Uploader;Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;)V

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/upload/Uploader;->commitStreamingV2(Lcom/laiwang/protocol/upload/OnUploadListener;)V

    goto :goto_0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader;->upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bv;->x()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPrivate(Z)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    return-void
.end method
