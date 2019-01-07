.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateTitle(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 302
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->b:Ljava/lang/String;

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
    .line 314
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    .line 319
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 302
    .line 1307
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v1, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-static {v0, v1}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Message$CreatorType;)V

    .line 1308
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$12;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1309
    invoke-static {v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->access$200(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Liaq;

    invoke-static {}, Liaq;->o()Ljava/lang/String;

    invoke-static {v0}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    move-result-object v4

    .line 1634
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1635
    invoke-static {p2}, Liav;->a(Lcom/alibaba/wukong/Callback;)V

    .line 1636
    :goto_0
    return-void

    .line 1638
    :cond_0
    if-eqz v4, :cond_1

    .line 1639
    iput-object v2, v4, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    .line 1640
    :cond_1
    new-instance v5, Liav$3;

    invoke-direct {v5, v1, p2}, Liav$3;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 1648
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v1, "[RPC] updateTitle"

    invoke-virtual {v5}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->updateTitle(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/SendMessageModel;Liyv;)V

    goto :goto_0
.end method
