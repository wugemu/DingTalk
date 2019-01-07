.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->getMembers(Lcom/alibaba/wukong/Callback;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Member;",
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
    .line 519
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 519
    .line 1522
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v0}, Liaw;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1523
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    :cond_0
    iput-object v0, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    .line 1524
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1525
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    const v2, 0x7ffffffe

    invoke-virtual {v0, v1, v3, v2, p2}, Liav;->a(Ljava/lang/String;IILcom/alibaba/wukong/Callback;)V

    :goto_0
    return-void

    .line 1527
    :cond_2
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$47;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    invoke-static {v0, v3, p2}, Lidr;->a(Ljava/util/List;ZLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
