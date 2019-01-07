.class final Lcom/laiwang/protocol/upload/Uploader$2;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Lcom/laiwang/protocol/upload/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/upload/Uploader;->uploadFileV2(ZLcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/OnUploadListener;)Lcom/laiwang/protocol/upload/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connection:Lcom/laiwang/protocol/connection/LWPConnection;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$isStreaming:Z

.field final synthetic val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

.field final synthetic val$startTime:J

.field final synthetic val$upFileItem:Lcom/laiwang/protocol/android/bv;


# direct methods
.method constructor <init>(JLjava/io/File;Lcom/laiwang/protocol/android/bv;ZLcom/laiwang/protocol/upload/OnUploadListener;Lcom/laiwang/protocol/connection/LWPConnection;)V
    .locals 1

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$startTime:J

    iput-object p3, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$upFileItem:Lcom/laiwang/protocol/android/bv;

    iput-boolean p5, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$isStreaming:Z

    iput-object p6, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    iput-object p7, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$connection:Lcom/laiwang/protocol/connection/LWPConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V
    .locals 8
    .param p1, "errorStatus"    # Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$startTime:J

    sub-long v4, v0, v6

    .line 127
    .local v4, "rt":J
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 128
    .local v2, "fileLen":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[upload] failed, file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", elapse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-boolean v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$isStreaming:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bv;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/laiwang/protocol/android/log/PerfLogger;->logUploader(Ljava/lang/String;JJZLjava/lang/String;)V

    .line 133
    :cond_0
    const-string/jumbo v0, "Uploader"

    const/4 v1, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/laiwang/protocol/android/i;->a(Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    invoke-interface {v0, p1}, Lcom/laiwang/protocol/upload/OnUploadListener;->onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$connection:Lcom/laiwang/protocol/connection/LWPConnection;

    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/LWPConnection;->release()V

    .line 138
    :cond_2
    return-void
.end method

.method public final onProgress(JJLcom/laiwang/protocol/upload/UploaderExtra;)V
    .locals 7
    .param p1, "total"    # J
    .param p3, "offset"    # J
    .param p5, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/laiwang/protocol/upload/OnUploadListener;->onProgress(JJLcom/laiwang/protocol/upload/UploaderExtra;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[upload] onProcess err, file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onSuccess(Lcom/laiwang/protocol/upload/UploadResult;)V
    .locals 10
    .param p1, "result"    # Lcom/laiwang/protocol/upload/UploadResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$startTime:J

    sub-long v4, v0, v8

    .line 113
    .local v4, "rt":J
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 114
    .local v2, "fileLen":J
    const-string/jumbo v0, "[upload] %s success, file %s, size %d, elapse %d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v8}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    iget-object v7, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v7, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    iget-boolean v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$isStreaming:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$upFileItem:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bv;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/laiwang/protocol/android/log/PerfLogger;->logUploader(Ljava/lang/String;JJZLjava/lang/String;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    invoke-interface {v0, p1}, Lcom/laiwang/protocol/upload/OnUploadListener;->onSuccess(Lcom/laiwang/protocol/upload/UploadResult;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$2;->val$connection:Lcom/laiwang/protocol/connection/LWPConnection;

    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/LWPConnection;->release()V

    .line 122
    :cond_2
    return-void
.end method
