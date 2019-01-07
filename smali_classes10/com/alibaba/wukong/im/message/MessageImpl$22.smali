.class final Lcom/alibaba/wukong/im/message/MessageImpl$22;
.super Liae;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->forwardMsg(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/wukong/im/SendNameAppender;

.field final synthetic d:Lcom/alibaba/wukong/Callback;

.field final synthetic e:Lhzs$a;

.field final synthetic f:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;Lhzs$a;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 648
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->f:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p7, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->c:Lcom/alibaba/wukong/im/SendNameAppender;

    iput-object p8, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->d:Lcom/alibaba/wukong/Callback;

    iput-object p9, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->e:Lhzs$a;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 658
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Lcom/alibaba/wukong/im/message/MessageImpl;>.b;"
    const/4 v10, 0x0

    .line 660
    .local v10, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Msg"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v10

    .line 661
    iget-boolean v1, p1, Liae$b;->a:Z

    if-eqz v1, :cond_1

    .line 662
    iget-object v1, p1, Liae$b;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] Rpc forward msg "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " suc,t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 665
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-virtual {v10, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 666
    iget-object v7, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 667
    .local v7, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    .line 668
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    .line 669
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->a:Ljava/lang/String;

    .line 1061
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v7, v3}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z

    .line 671
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_0
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    .end local v7    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_0
    :goto_0
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    .line 699
    :goto_1
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->e:Lhzs$a;

    invoke-virtual {v1}, Lhzs$a;->a()V

    .line 700
    return-object p1

    .line 674
    :cond_1
    :try_start_1
    const-string/jumbo v1, "130001"

    iget-object v2, p1, Liae$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "130011"

    iget-object v2, p1, Liae$b;->b:Ljava/lang/String;

    .line 675
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/im/message/MessageImpl;->newInstance()Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    .line 677
    .local v0, "newMessage":Lcom/alibaba/wukong/im/message/MessageImpl;
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->f:Lcom/alibaba/wukong/im/message/MessageImpl;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/message/MessageImpl;Z)V

    .line 678
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 680
    invoke-static {}, Liaf;->b()J

    move-result-wide v8

    .line 681
    .local v8, "seqId":J
    invoke-static {v8, v9}, Liaf;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    .line 682
    neg-long v2, v8

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 683
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    .line 684
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    .line 685
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    .line 686
    iget-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    .line 687
    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 688
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mController:Libq;

    .line 689
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    .line 690
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->b:Lcom/alibaba/wukong/im/Conversation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->c:Lcom/alibaba/wukong/im/SendNameAppender;

    iget-object v6, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->d:Lcom/alibaba/wukong/Callback;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/wukong/im/message/MessageImpl;->access$400(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/im/SendNameAppender;Lcom/alibaba/wukong/Callback;)V
    :try_end_1
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 695
    .end local v0    # "newMessage":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v8    # "seqId":J
    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v1, "[API] forward save msg err"

    invoke-virtual {v10, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto :goto_1

    .line 697
    :catchall_0
    move-exception v1

    .line 4030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    .line 697
    throw v1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 648
    .line 4653
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->f:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$22;->a:Ljava/lang/String;

    .line 5218
    if-nez v3, :cond_1

    .line 5219
    if-eqz p2, :cond_0

    .line 5220
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR forward message is null"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5227
    :cond_0
    :goto_0
    return-void

    .line 5223
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5224
    if-eqz p2, :cond_0

    .line 5225
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR toConversationId is empty"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5230
    :cond_2
    invoke-static {}, Liaf;->a()Ljava/lang/String;

    move-result-object v5

    .line 5231
    new-instance v0, Libz$16;

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Libz$16;-><init>(Libz;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 5266
    const-string/jumbo v1, "[TAG] MsgRpc"

    const-string/jumbo v2, "[RPC] fwdMsg"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5267
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLSendService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLSendService;

    .line 5268
    iget-wide v6, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 5269
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->o()Ljava/lang/String;

    move-result-object v9

    iget v10, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mTemplateId:I

    iget-object v11, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mXPNInfo:Lcom/alibaba/wukong/im/XPNInfo;

    move-object v8, v4

    .line 5268
    invoke-static/range {v5 .. v11}, Libt;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/idl/im/client/IDLSendService;->forward(Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;Liyv;)V

    goto :goto_0
.end method
