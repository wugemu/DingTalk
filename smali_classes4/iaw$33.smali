.class final Liaw$33;
.super Liae;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;ZLcom/alibaba/wukong/im/Conversation$ConversationSourceType;)V
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
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Z

.field final synthetic e:Liaw;


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;Ljava/lang/String;Lcom/alibaba/wukong/Callback;Z)V
    .locals 1
    .param p1, "this$0"    # Liaw;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 369
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    iput-object p1, p0, Liaw$33;->e:Liaw;

    iput-object p5, p0, Liaw$33;->a:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    iput-object p6, p0, Liaw$33;->b:Ljava/lang/String;

    iput-object p7, p0, Liaw$33;->c:Lcom/alibaba/wukong/Callback;

    iput-boolean p8, p0, Liaw$33;->d:Z

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 393
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>.b;"
    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Liae$b;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 395
    iget-boolean v0, p0, Liaw$33;->d:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v0, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v1, v0}, Liar;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)I

    .line 397
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v0, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    iput-object v0, p1, Liae$b;->d:Ljava/lang/Object;

    .line 400
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 369
    .line 1375
    iget-object v0, p0, Liaw$33;->a:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->LOCAL_NOT_EXIST_FROM_SERVER:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    if-ne v0, v1, :cond_1

    .line 1376
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Liaw$33;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1378
    if-eqz v0, :cond_0

    .line 1379
    iget-object v1, p0, Liaw$33;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1386
    :goto_0
    return-void

    .line 1381
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Liaw$33;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Liav;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 1383
    :cond_1
    iget-object v0, p0, Liaw$33;->a:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->FORCE_FROM_LOCAL:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    if-ne v0, v1, :cond_2

    .line 1384
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Liaw$33;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1385
    iget-object v1, p0, Liaw$33;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 1388
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Liaw$33;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Liav;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
