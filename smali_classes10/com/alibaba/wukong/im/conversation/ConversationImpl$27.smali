.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateOwner(JLcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
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

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1734
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->a:Lcom/alibaba/wukong/im/Message;

    iput-wide p6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->b:J

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 8
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

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1745
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    iget-boolean v2, p1, Liae$b;->a:Z

    if-eqz v2, :cond_3

    .line 1746
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v5, v5, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->b:J

    invoke-virtual {v2, v3, v4, v5}, Liar;->a([Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1748
    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 1749
    const/4 v0, 0x2

    .line 1750
    .local v0, "count":I
    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/conversation/MemberRole;

    .line 1751
    .local v1, "role":Lcom/alibaba/wukong/im/conversation/MemberRole;
    if-lez v0, :cond_2

    .line 1753
    iget-wide v4, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mOpenId:J

    iget-wide v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->b:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1754
    sget-object v3, Lcom/alibaba/wukong/im/Member$RoleType;->MASTER:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Member$RoleType;->typeValue()I

    move-result v3

    iput v3, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mRole:I

    .line 1755
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1756
    :cond_1
    iget v3, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mRole:I

    sget-object v4, Lcom/alibaba/wukong/im/Member$RoleType;->MASTER:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Member$RoleType;->typeValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1757
    sget-object v3, Lcom/alibaba/wukong/im/Member$RoleType;->ORDINARY:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Member$RoleType;->typeValue()I

    move-result v3

    iput v3, v1, Lcom/alibaba/wukong/im/conversation/MemberRole;->mRole:I

    .line 1758
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1762
    .end local v0    # "count":I
    .end local v1    # "role":Lcom/alibaba/wukong/im/conversation/MemberRole;
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v3, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v4, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Liar;->a(Ljava/lang/String;Ljava/util/List;)Z

    .line 1765
    :cond_3
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1734
    .line 2737
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v1, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-static {v0, v1}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Message$CreatorType;)V

    .line 2739
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2740
    invoke-static {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->access$200(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Liaq;

    invoke-static {}, Liaq;->o()Ljava/lang/String;

    invoke-static {v0}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$27;->b:J

    .line 3106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3107
    invoke-static {p2}, Liav;->a(Lcom/alibaba/wukong/Callback;)V

    .line 3108
    :goto_0
    return-void

    .line 3111
    :cond_0
    new-instance v6, Liav$25;

    invoke-direct {v6, v1, p2}, Liav$25;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 3118
    if-eqz v3, :cond_1

    .line 3119
    iput-object v2, v3, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    .line 3121
    :cond_1
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v2, v1, v3, v6}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->updateOwner(Ljava/lang/String;Ljava/lang/Long;Lcom/alibaba/wukong/idl/im/models/SendMessageModel;Liyv;)V

    goto :goto_0
.end method
