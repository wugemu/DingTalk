.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getMessage(JZLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLcom/alibaba/wukong/Callback;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1096
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-wide p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->a:J

    iput-object p7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->b:Lcom/alibaba/wukong/Callback;

    iput-boolean p8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->c:Z

    invoke-direct {p0, p2, p3, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">.b;)",
            "Liae",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1110
    .local p1, "rpcResult":Liae$b;, "Liae<Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/message/MessageImpl;>.b;"
    iget-boolean v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Liae$b;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Liae$b;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1111
    iget-object v1, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v2, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    or-int/lit8 v2, v2, 0x4

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 1113
    :try_start_0
    iget-object v1, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v1, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1114
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v3, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v1, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2061
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z
    :try_end_0
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    :cond_0
    :goto_0
    return-object p1

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Lcom/alibaba/wukong/im/base/WKException;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/base/WKException;->printStackTrace()V

    goto :goto_0
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1096
    .line 2100
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->a:J

    invoke-virtual {v0, v1, v2, v3}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    .line 2101
    if-eqz v0, :cond_0

    .line 2102
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 2104
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->a:J

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$16;->d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, p2}, Libz;->a(JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
