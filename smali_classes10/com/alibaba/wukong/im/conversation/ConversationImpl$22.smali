.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateNotificationSound(Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1597
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1606
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    .line 1607
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;->a:Ljava/lang/String;

    .line 2941
    const-string/jumbo v3, "notificationSound"

    invoke-virtual {v0, v1, v3, v2}, Liar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 2942
    if-nez v0, :cond_1

    .line 2943
    const/4 v0, 0x0

    .line 1607
    :goto_0
    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mNotificationSound:Ljava/lang/String;

    .line 1611
    :cond_0
    return-object p1

    .line 2944
    :cond_1
    iget-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mNotificationSound:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2947
    iput-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mNotificationSound:Ljava/lang/String;

    .line 2948
    invoke-static {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2949
    invoke-static {v0}, Liau;->o(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2950
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1597
    .line 3601
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$22;->a:Ljava/lang/String;

    .line 4088
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4089
    invoke-static {p2}, Liav;->a(Lcom/alibaba/wukong/Callback;)V

    .line 4090
    :goto_0
    return-void

    .line 4093
    :cond_0
    new-instance v3, Liav$24;

    invoke-direct {v3, v0, p2}, Liav$24;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 4100
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v4, "[RPC] notifySound"

    invoke-virtual {v3}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4101
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->updateNotificationSound(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
