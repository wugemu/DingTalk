.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateShowHistoryType(ILcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 2275
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;->a:I

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
    .line 2284
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    .line 2285
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;->a:I

    invoke-virtual {v0, v1, v2}, Liar;->h(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2286
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;->a:I

    iput v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    .line 2289
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2275
    .line 3279
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$41;->a:I

    .line 3406
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3407
    invoke-static {p2}, Liav;->a(Lcom/alibaba/wukong/Callback;)V

    .line 3408
    :goto_0
    return-void

    .line 3411
    :cond_0
    new-instance v3, Liav$40;

    invoke-direct {v3, v0, p2}, Liav$40;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 3418
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v4, "[RPC] updateIcon"

    invoke-virtual {v3}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    new-instance v4, Lcom/alibaba/wukong/idl/im/models/UpdateShowHistoryTypeModel;

    invoke-direct {v4}, Lcom/alibaba/wukong/idl/im/models/UpdateShowHistoryTypeModel;-><init>()V

    .line 3420
    iput-object v1, v4, Lcom/alibaba/wukong/idl/im/models/UpdateShowHistoryTypeModel;->conversationId:Ljava/lang/String;

    .line 3421
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/alibaba/wukong/idl/im/models/UpdateShowHistoryTypeModel;->showHistoryType:Ljava/lang/Integer;

    .line 3422
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v0, v4, v3}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->updateShowHistoryType(Lcom/alibaba/wukong/idl/im/models/UpdateShowHistoryTypeModel;Liyv;)V

    goto :goto_0
.end method
