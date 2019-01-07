.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateNotification(ZLcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1422
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-boolean p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;->a:Z

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
    .line 1431
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    .line 1432
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;->a:Z

    invoke-virtual {v0, v1, v2}, Liar;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-boolean v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;->a:Z

    iput-boolean v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    .line 1436
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1422
    .line 2426
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v3, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$19;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 2824
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2825
    if-eqz p2, :cond_0

    .line 2826
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "101002 conversation id is empty"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    :cond_0
    :goto_1
    return-void

    .line 2426
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 2831
    :cond_2
    new-instance v4, Liav$10;

    invoke-direct {v4, v2, p2}, Liav$10;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 2838
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v2, "[RPC] notifyOff"

    invoke-virtual {v4}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    .line 2840
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2839
    invoke-interface {v0, v3, v1, v4}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->updateNotificationOff(Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    goto :goto_1
.end method
