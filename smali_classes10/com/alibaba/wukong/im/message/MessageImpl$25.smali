.class final Lcom/alibaba/wukong/im/message/MessageImpl$25;
.super Liae;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->updatePrivateTag(J)V
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
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V
    .locals 3
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1014
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$25;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-wide p5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$25;->a:J

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1030
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    iget-boolean v1, p1, Liae$b;->a:Z

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$25;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1032
    .local v0, "cid":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$25;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$25;->a:J

    invoke-virtual {v1, v0, v2, v4, v5}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;J)Z

    .line 1034
    .end local v0    # "cid":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 1031
    :cond_1
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$25;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1014
    .line 2018
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$25;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v0, v1}, Liaf;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2019
    if-eqz p2, :cond_0

    .line 2020
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 2493
    :cond_0
    :goto_0
    return-void

    .line 2022
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2023
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$25;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->access$500(Lcom/alibaba/wukong/im/message/MessageImpl;)Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2024
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$25;->b:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v2, v2, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$25;->a:J

    .line 2484
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_2

    .line 2485
    if-eqz p2, :cond_0

    .line 2486
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid messageId"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2489
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2490
    if-eqz p2, :cond_0

    .line 2491
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR openIds is null or empty"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2496
    :cond_3
    new-instance v6, Libz$20;

    invoke-direct {v6, v0, p2}, Libz$20;-><init>(Libz;Lcom/alibaba/wukong/Callback;)V

    .line 2503
    const-string/jumbo v0, "[TAG] MsgRpc"

    const-string/jumbo v7, "[RPC] updateMsgPriTag"

    invoke-virtual {v6}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLMessageService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLMessageService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v6}, Lcom/alibaba/wukong/idl/im/client/IDLMessageService;->updateMemberTag(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
