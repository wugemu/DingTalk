.class final Lcom/alibaba/wukong/im/message/MessageImpl$13;
.super Liae;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->tryToDecryptSync(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1535
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$13;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">.b;"
        }
    .end annotation

    .prologue
    .line 1553
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1535
    .line 2539
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$13;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2540
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$13;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$13;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    .line 2539
    invoke-virtual {v0, v1, v2, v3}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/MessageContent;)Z

    .line 2542
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$13;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$13;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2543
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$13;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->decrypt()Z

    .line 2544
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$13;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    .line 2546
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$13;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2547
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$13;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2546
    invoke-virtual {v0, v1, v2}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Z

    .line 1535
    :cond_0
    return-void
.end method
