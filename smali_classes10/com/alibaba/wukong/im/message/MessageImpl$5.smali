.class final Lcom/alibaba/wukong/im/message/MessageImpl$5;
.super Liae;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->updateLocalExtras(Ljava/util/Map;)V
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
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/Map;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1224
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->a:Ljava/util/Map;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1224
    .line 2227
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 2228
    :goto_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->a:Ljava/util/Map;

    .line 2265
    invoke-virtual {v2, v0, v3, v4, v6}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/Map;Z)Z

    .line 2229
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2230
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v4, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 2232
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2233
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->a:Ljava/util/Map;

    if-nez v4, :cond_2

    .line 2723
    :goto_1
    invoke-virtual {v0, v2, v3, v1, v6}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Z)Z

    .line 1224
    :cond_0
    return-void

    .line 2227
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2233
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$5;->a:Ljava/util/Map;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1
.end method
