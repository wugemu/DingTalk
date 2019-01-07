.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$20;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->stayOnTop(ZLcom/alibaba/wukong/Callback;)V
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
        "Ljava/lang/Long;",
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
    .line 1463
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$20;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-boolean p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$20;->a:Z

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Long;",
            ">.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Long;",
            ">.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1471
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Long;>.b;"
    iget-boolean v2, p1, Liae$b;->a:Z

    if-eqz v2, :cond_0

    .line 1472
    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 1473
    .local v0, "top":J
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$20;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v3, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Liar;->c(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1474
    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$20;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-wide v0, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    .line 1477
    .end local v0    # "top":J
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1463
    .line 2466
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$20;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$20;->a:Z

    .line 2897
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2898
    if-eqz p2, :cond_0

    .line 2899
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "101002"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    :cond_0
    :goto_0
    return-void

    .line 2903
    :cond_1
    new-instance v3, Liav$14;

    invoke-direct {v3, v0, p2}, Liav$14;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 2910
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v4, "[RPC] setTop"

    invoke-virtual {v3}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->setTop(Ljava/lang/String;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method
