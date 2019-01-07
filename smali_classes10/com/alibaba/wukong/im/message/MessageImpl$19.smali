.class final Lcom/alibaba/wukong/im/message/MessageImpl$19;
.super Ljava/lang/Object;
.source "MessageImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->doSendByMsgType(Ljava/lang/String;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$19;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$19;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 519
    const-string/jumbo v0, "MessageImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[VideoCompress] exception errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$19;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 522
    const-string/jumbo v0, "101021"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$19;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$19;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "101020"

    const-string/jumbo v2, "COMPRESS_FAILED"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 509
    check-cast p1, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 1512
    const-string/jumbo v0, "MessageImpl"

    const-string/jumbo v1, "[VideoCompress] success"

    .line 2018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$19;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 1514
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$19;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$19;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    .line 509
    return-void
.end method
