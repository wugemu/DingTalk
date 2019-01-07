.class final Libx$1$1;
.super Ljava/lang/Object;
.source "MessageMediaSender.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libx$1;
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
.field final synthetic a:Libx$1;


# direct methods
.method constructor <init>(Libx$1;)V
    .locals 0
    .param p1, "this$0"    # Libx$1;

    .prologue
    .line 131
    iput-object p1, p0, Libx$1$1;->a:Libx$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 146
    const-string/jumbo v0, "[TAG] MsgSender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uploadMediaStream offlineUrl getSenderName error, cid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Libx$1$1;->a:Libx$1;

    iget-object v2, v2, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 147
    invoke-static {v2}, Lieb;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Libx$1$1;->a:Libx$1;

    iget-object v2, v2, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",errMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-object v1, p0, Libx$1$1;->a:Libx$1;

    iget-object v1, v1, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v2, p0, Libx$1$1;->a:Libx$1;

    iget-object v2, v2, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-virtual {v0, v1, v2}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    .line 149
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 131
    check-cast p1, Ljava/lang/String;

    .line 1134
    iget-object v0, p0, Libx$1$1;->a:Libx$1;

    iget-object v0, v0, Libx$1;->e:Libq;

    .line 2100
    iget v0, v0, Libq;->b:I

    .line 1134
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1135
    iget-object v0, p0, Libx$1$1;->a:Libx$1;

    iget-object v0, v0, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "101010"

    const-string/jumbo v2, "CANCELED_ERR"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1137
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1138
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    iget-object v1, p0, Libx$1$1;->a:Libx$1;

    iget-object v1, v1, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendSenderName(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    .line 1140
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-object v1, p0, Libx$1$1;->a:Libx$1;

    iget-object v1, v1, Libx$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v2, p0, Libx$1$1;->a:Libx$1;

    iget-object v2, v2, Libx$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-virtual {v0, v1, v2}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
