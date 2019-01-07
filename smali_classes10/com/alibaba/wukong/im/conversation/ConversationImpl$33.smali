.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateBanWords(ZLcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
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

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;ZLcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1979
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-boolean p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;->a:Z

    iput-object p6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;->b:Lcom/alibaba/wukong/im/Message;

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
    .line 1992
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    .line 1993
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;->a:Z

    invoke-virtual {v0, v1, v2}, Liar;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-boolean v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;->a:Z

    iput-boolean v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    .line 1997
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1979
    .line 2983
    new-instance v1, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;-><init>()V

    .line 2984
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;->conversationId:Ljava/lang/String;

    .line 2985
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;->banWordsType:I

    .line 2986
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$33;->b:Lcom/alibaba/wukong/im/Message;

    iput-object v0, v1, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;->sendMessage:Lcom/alibaba/wukong/im/Message;

    .line 2987
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    .line 3484
    new-instance v2, Liav$44;

    invoke-direct {v2, v0, p2}, Liav$44;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 3490
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v3, "[RPC] updateBanWordsType"

    invoke-virtual {v2}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/UpdateBanWordsTypeObject;->toModel()Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsTypeModel;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->updateBanWordsType(Lcom/alibaba/wukong/idl/im/models/UpdateBanWordsTypeModel;Liyv;)V

    .line 1979
    return-void

    .line 2985
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
