.class final Libx$4;
.super Ljava/lang/Object;
.source "MessageMediaSender.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libx;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lifu;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Uploader$UploadListener;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Libx$4;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 387
    iget-object v0, p0, Libx$4;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Libx$4;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 3
    .param p1, "totalSize"    # J
    .param p3, "uploadSize"    # J
    .param p5, "progress"    # I

    .prologue
    .line 360
    const/16 v0, 0x64

    if-lt p5, v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Libx$4;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Libx$4;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    long-to-int v1, p1

    long-to-int v2, p3

    invoke-interface {v0, v1, v2, p5}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onProgress(III)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 357
    check-cast p1, Lifx;

    .line 1368
    invoke-static {}, Lieb;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->c()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v0

    new-instance v1, Libx$4$1;

    invoke-direct {v1, p0, p1}, Libx$4$1;-><init>(Libx$4;Lifx;)V

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/WKExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    .line 1379
    :cond_1
    iget-object v0, p0, Libx$4;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Libx$4;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
