.class Lcom/laiwang/protocol/upload/Uploader$4;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Lcom/laiwang/protocol/upload/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/upload/Uploader;->commitStreaming(Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/protocol/upload/Uploader;

.field final synthetic val$listener:Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/upload/Uploader;Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/upload/Uploader;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/laiwang/protocol/upload/Uploader$4;->this$0:Lcom/laiwang/protocol/upload/Uploader;

    iput-object p2, p0, Lcom/laiwang/protocol/upload/Uploader$4;->val$listener:Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V
    .locals 2
    .param p1, "errorStatus"    # Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$4;->val$listener:Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$4;->val$listener:Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;

    new-instance v1, Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-direct {v1}, Lcom/laiwang/protocol/upload/UploaderExtra;-><init>()V

    invoke-interface {v0, v1, p1}, Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;->onFailed(Lcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 259
    :cond_0
    return-void
.end method

.method public onProgress(JJLcom/laiwang/protocol/upload/UploaderExtra;)V
    .locals 3
    .param p1, "totalLength"    # J
    .param p3, "position"    # J
    .param p5, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$4;->val$listener:Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$4;->val$listener:Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;

    long-to-int v1, p1

    long-to-int v2, p3

    invoke-interface {v0, p5, v1, v2}, Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;->onUploadProcess(Lcom/laiwang/protocol/upload/UploaderExtra;II)V

    .line 265
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/laiwang/protocol/upload/UploadResult;)V
    .locals 2
    .param p1, "result"    # Lcom/laiwang/protocol/upload/UploadResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$4;->val$listener:Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/laiwang/protocol/upload/Uploader$4;->val$listener:Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;

    invoke-static {p1}, Lcom/laiwang/protocol/android/by;->a(Lcom/laiwang/protocol/upload/UploadResult;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;->onSuccess(Ljava/util/Map;)V

    .line 253
    :cond_0
    return-void
.end method
