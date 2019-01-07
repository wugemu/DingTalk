.class final Lcom/alibaba/wukong/im/message/MessageImpl$12$1;
.super Ljava/lang/Object;
.source "MessageImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageImpl$12;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/wukong/im/message/MessageImpl$12;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl$12;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/wukong/im/message/MessageImpl$12;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$12;

    iput-object p2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 423
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$12;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$12;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl$12;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$12;

    iget-object v2, v2, Lcom/alibaba/wukong/im/message/MessageImpl$12;->e:Lcom/alibaba/wukong/im/VideoCompress;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$12;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl$12;->f:Lcom/alibaba/wukong/im/Uploader;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->access$000(Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/lang/String;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    .line 424
    const-string/jumbo v0, "MessageImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getSendNameAppend exception code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 411
    check-cast p1, Ljava/lang/String;

    .line 1414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1415
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$12;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendSenderName(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$12;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl$12;->j:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$12;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl$12;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$12;

    iget-object v2, v2, Lcom/alibaba/wukong/im/message/MessageImpl$12;->e:Lcom/alibaba/wukong/im/VideoCompress;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$12;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl$12;->f:Lcom/alibaba/wukong/im/Uploader;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$12$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->access$000(Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/lang/String;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    .line 411
    return-void
.end method
