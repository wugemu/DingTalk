.class public Lcom/alibaba/wukong/auth/bh;
.super Lcom/alibaba/wukong/auth/bi;
.source "UploaderStreamingTask.java"


# instance fields
.field private final bI:Lcom/laiwang/protocol/upload/OnUploadListener;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/upload/UploaderExtra;)V
    .locals 1
    .param p1, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/auth/bi;-><init>(Lcom/laiwang/protocol/upload/UploaderExtra;)V

    .line 31
    new-instance v0, Lcom/alibaba/wukong/auth/bh$1;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/bh$1;-><init>(Lcom/alibaba/wukong/auth/bh;)V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bh;->bI:Lcom/laiwang/protocol/upload/OnUploadListener;

    .line 17
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bh;->bK:Lifu;

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bh;->bK:Lifu;

    iget-object v2, p0, Lcom/alibaba/wukong/auth/bh;->bI:Lcom/laiwang/protocol/upload/OnUploadListener;

    .line 1055
    iput-object v2, v1, Lifu;->b:Lcom/laiwang/protocol/upload/OnUploadListener;

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bh;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/upload/UploaderExtra;->setStreaming(Z)V

    .line 25
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bh;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    iget-object v2, p0, Lcom/alibaba/wukong/auth/bh;->bI:Lcom/laiwang/protocol/upload/OnUploadListener;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/upload/Uploader;->uploadFile(Lcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/OnUploadListener;)Lcom/laiwang/protocol/upload/Uploader;

    move-result-object v0

    .line 26
    .local v0, "mUploader":Lcom/laiwang/protocol/upload/Uploader;
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bh;->bK:Lifu;

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bh;->bK:Lifu;

    .line 2051
    iput-object v0, v1, Lifu;->a:Lcom/laiwang/protocol/upload/Uploader;

    .line 29
    :cond_1
    return-void
.end method
