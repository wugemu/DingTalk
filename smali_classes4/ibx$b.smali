.class Libx$b;
.super Libx$a;
.source "MessageMediaSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Libx$a",
        "<",
        "Lcom/alibaba/wukong/im/MessageContent;",
        ">;"
    }
.end annotation


# instance fields
.field protected c:Z


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;Z)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "notifyChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-direct {p0, p1, p2}, Libx$a;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    .line 434
    iput-boolean p3, p0, Libx$b;->c:Z

    .line 435
    return-void
.end method


# virtual methods
.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 430
    check-cast p1, Lcom/alibaba/wukong/im/MessageContent;

    .line 1439
    invoke-super {p0, p1}, Libx$a;->onSuccess(Ljava/lang/Object;)V

    .line 1441
    iget-object v0, p0, Libx$b;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 1442
    iget-object v0, p0, Libx$b;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 1443
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Libx$b;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, p0, Libx$b;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    iget-boolean v4, p0, Libx$b;->c:Z

    invoke-virtual {v1, v0, v2, v3, v4}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/MessageContent;Z)Z

    .line 1444
    iget-object v0, p0, Libx$b;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Libx$b;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Libx$b;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 1446
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-object v1, p0, Libx$b;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v2, p0, Libx$b;->b:Lcom/alibaba/wukong/Callback;

    invoke-virtual {v0, v1, v2}, Libz;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V

    .line 430
    return-void
.end method
