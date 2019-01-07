.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$37;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->listUserBanModel(Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/UserBanObject;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/UserBanObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 2088
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/UserBanObject;>;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$37;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserBanObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserBanObject;",
            ">;>.b;)",
            "Liae",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserBanObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserBanObject;",
            ">;>.b;"
        }
    .end annotation

    .prologue
    .line 2097
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/util/List<Lcom/alibaba/wukong/im/UserBanObject;>;Ljava/util/List<Lcom/alibaba/wukong/im/UserBanObject;>;>.b;"
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2088
    .line 3092
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$37;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    .line 3532
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3533
    :cond_0
    if-eqz p2, :cond_1

    .line 3534
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "101002 conversationIds is empty"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3536
    :cond_1
    :goto_0
    return-void

    .line 3538
    :cond_2
    new-instance v2, Liav$47;

    invoke-direct {v2, v0, p2}, Liav$47;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 3553
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v3, "[RPC] listUserBanModel"

    invoke-virtual {v2}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3554
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->listUserBanModel(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
