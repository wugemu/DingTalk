.class final Libx$3$1;
.super Ljava/lang/Object;
.source "MessageMediaSender.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Uploader$UploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libx$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/im/Uploader$UploadListener",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Libx$3;


# direct methods
.method constructor <init>(Libx$3;)V
    .locals 0
    .param p1, "this$0"    # Libx$3;

    .prologue
    .line 278
    iput-object p1, p0, Libx$3$1;->a:Libx$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 292
    iget-object v0, p0, Libx$3$1;->a:Libx$3;

    iget-object v0, v0, Libx$3;->d:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Libx$3$1;->a:Libx$3;

    iget-object v0, v0, Libx$3;->d:Lcom/alibaba/wukong/Callback;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    return-void
.end method

.method public final onProgress(III)V
    .locals 2
    .param p1, "totalSize"    # I
    .param p2, "uploadSize"    # I
    .param p3, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 298
    iget-object v0, p0, Libx$3$1;->a:Libx$3;

    iget-object v0, v0, Libx$3;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->statSize:I

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Libx$3$1;->a:Libx$3;

    iget-object v0, v0, Libx$3;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Libx$3$1;->a:Libx$3;

    iget-object v1, v1, Libx$3;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->statSize:I

    .line 301
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 278
    check-cast p1, Lifx;

    .line 1281
    iget-object v0, p0, Libx$3$1;->a:Libx$3;

    iget-object v0, v0, Libx$3;->a:Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;

    .line 2026
    iget-object v1, p1, Lifx;->a:Ljava/lang/String;

    .line 1281
    invoke-static {v1}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->mPicUrl:Ljava/lang/String;

    .line 1282
    iget-object v0, p0, Libx$3$1;->a:Libx$3;

    iget-object v0, v0, Libx$3;->a:Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;

    .line 2034
    iget-object v1, p1, Lifx;->b:Ljava/lang/String;

    .line 1282
    invoke-static {v1}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->mPicAuthUrl:Ljava/lang/String;

    .line 1283
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    iget-object v1, p0, Libx$3$1;->a:Libx$3;

    iget-object v1, v1, Libx$3;->b:Ljava/lang/String;

    iget-object v2, p0, Libx$3$1;->a:Libx$3;

    iget-object v2, v2, Libx$3;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, p0, Libx$3$1;->a:Libx$3;

    iget-object v3, v3, Libx$3;->a:Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;

    invoke-virtual {v0, v1, v2, v3}, Libs;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/MessageContent;)Z

    .line 1285
    iget-object v0, p0, Libx$3$1;->a:Libx$3;

    iget-object v0, v0, Libx$3;->d:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Libx$3$1;->a:Libx$3;

    iget-object v0, v0, Libx$3;->d:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Libx$3$1;->a:Libx$3;

    iget-object v1, v1, Libx$3;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 1287
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-object v1, p0, Libx$3$1;->a:Libx$3;

    iget-object v1, v1, Libx$3;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v2, p0, Libx$3$1;->a:Libx$3;

    iget-object v2, v2, Libx$3;->d:Lcom/alibaba/wukong/Callback;

    invoke-virtual {v0, v1, v2}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    .line 278
    return-void
.end method
