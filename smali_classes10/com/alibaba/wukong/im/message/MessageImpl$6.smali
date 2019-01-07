.class final Lcom/alibaba/wukong/im/message/MessageImpl$6;
.super Liae;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->updateLocalExtrasByKeys(Ljava/util/Map;Z)V
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

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/Map;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1251
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->a:Ljava/util/Map;

    iput-boolean p6, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->b:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1251
    .line 2255
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 3020
    new-instance v0, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    move-object v2, v0

    .line 2260
    :goto_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2262
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2258
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Liea;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 2265
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2268
    :cond_2
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 2269
    :goto_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-boolean v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->b:Z

    invoke-virtual {v1, v0, v3, v2, v4}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/util/Map;Z)Z

    .line 2270
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2271
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v4, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 2273
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2274
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-boolean v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->b:Z

    .line 2273
    invoke-virtual {v0, v1, v3, v4, v2}, Liar;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Z)Z

    .line 1251
    :cond_3
    return-void

    .line 2268
    :cond_4
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$6;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
