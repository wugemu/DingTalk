.class Lcom/laiwang/protocol/upload/Uploader$5;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Lcom/laiwang/protocol/upload/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/upload/Uploader;->commitStreamingV2(Lcom/laiwang/protocol/upload/OnUploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/protocol/upload/Uploader;

.field final synthetic val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/upload/Uploader;JLcom/laiwang/protocol/upload/OnUploadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/upload/Uploader;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    iput-wide p2, p0, Lcom/laiwang/protocol/upload/Uploader$5;->val$startTime:J

    iput-object p4, p0, Lcom/laiwang/protocol/upload/Uploader$5;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V
    .locals 10
    .param p1, "errorStatus"    # Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/laiwang/protocol/upload/Uploader$5;->val$startTime:J

    sub-long v4, v6, v8

    .line 302
    .local v4, "rt":J
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v1}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->a()J

    move-result-wide v2

    .line 303
    .local v2, "fileLen":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[upload] commit stream failed, file "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v6}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", size "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", elapse "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v1}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v1}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/laiwang/protocol/android/log/PerfLogger;->logUploader(Ljava/lang/String;JJZLjava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    invoke-interface {v1, p1}, Lcom/laiwang/protocol/upload/OnUploadListener;->onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v1}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->w()Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v0

    .line 310
    .local v0, "connection":Lcom/laiwang/protocol/connection/LWPConnection;
    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/LWPConnection;->release()V

    .line 313
    .end local v0    # "connection":Lcom/laiwang/protocol/connection/LWPConnection;
    :cond_1
    return-void
.end method

.method public onProgress(JJLcom/laiwang/protocol/upload/UploaderExtra;)V
    .locals 7
    .param p1, "total"    # J
    .param p3, "offset"    # J
    .param p5, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;

    .prologue
    .line 317
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v1}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/laiwang/protocol/upload/OnUploadListener;->onProgress(JJLcom/laiwang/protocol/upload/UploaderExtra;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[upload] stream onProcess err, file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v2}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/laiwang/protocol/upload/UploadResult;)V
    .locals 12
    .param p1, "result"    # Lcom/laiwang/protocol/upload/UploadResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/laiwang/protocol/upload/Uploader$5;->val$startTime:J

    sub-long v4, v8, v10

    .line 286
    .local v4, "rt":J
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v1}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->a()J

    move-result-wide v2

    .line 287
    .local v2, "fileLen":J
    const-string/jumbo v1, "[upload] %s, commit stream success, file %s, size %d, elapse %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    .line 288
    invoke-static {v9}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    iget-object v8, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v8}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 287
    invoke-static {v1, v7}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v1}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v1}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/laiwang/protocol/android/log/PerfLogger;->logUploader(Ljava/lang/String;JJZLjava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->val$listener:Lcom/laiwang/protocol/upload/OnUploadListener;

    invoke-interface {v1, p1}, Lcom/laiwang/protocol/upload/OnUploadListener;->onSuccess(Lcom/laiwang/protocol/upload/UploadResult;)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/laiwang/protocol/upload/Uploader$5;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    invoke-static {v1}, Lcom/laiwang/protocol/upload/Uploader;->access$000(Lcom/laiwang/protocol/upload/Uploader;)Lcom/laiwang/protocol/android/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bv;->w()Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v0

    .line 294
    .local v0, "connection":Lcom/laiwang/protocol/connection/LWPConnection;
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/LWPConnection;->release()V

    .line 297
    .end local v0    # "connection":Lcom/laiwang/protocol/connection/LWPConnection;
    :cond_1
    return-void
.end method
