.class final Lcom/alibaba/wukong/im/message/MessageImpl$24;
.super Liae;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->delete(Lcom/alibaba/wukong/Callback;)V
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
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 951
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$24;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 3
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 966
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    iget-boolean v1, p1, Liae$b;->a:Z

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$24;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 968
    .local v0, "cid":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$24;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v1, v0, v2}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z

    .line 970
    .end local v0    # "cid":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$24;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 951
    .line 1954
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$24;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v0, v1}, Liaf;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1955
    if-eqz p2, :cond_0

    .line 1956
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 1958
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1959
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$24;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v2, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1960
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Libz;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
