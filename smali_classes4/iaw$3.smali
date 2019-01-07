.class final Liaw$3;
.super Liae;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->removeMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;[Ljava/lang/Long;)V
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
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Liaw;


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Liaw;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 703
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Ljava/lang/Long;>;>;"
    iput-object p1, p0, Liaw$3;->d:Liaw;

    iput-object p5, p0, Liaw$3;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p6, p0, Liaw$3;->b:Ljava/lang/String;

    iput-object p7, p0, Liaw$3;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 703
    .line 1708
    iget-object v0, p0, Liaw$3;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v1, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-static {v0, v1}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Message$CreatorType;)V

    .line 1709
    iget-object v0, p0, Liaw$3;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->o()Ljava/lang/String;

    invoke-static {v0}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    move-result-object v4

    .line 1710
    if-eqz v4, :cond_0

    .line 1711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->receivers:Ljava/util/List;

    .line 1712
    iget-object v0, v4, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->receivers:Ljava/util/List;

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1714
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Liaw$3;->b:Ljava/lang/String;

    iget-object v2, p0, Liaw$3;->c:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2597
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2598
    if-eqz p2, :cond_1

    .line 2599
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "101002 conversation id is empty"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    :cond_1
    :goto_0
    return-void

    .line 2605
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 2606
    :cond_3
    if-eqz p2, :cond_1

    .line 2607
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "101002 openid is empty"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2611
    :cond_4
    if-eqz v4, :cond_5

    .line 2612
    iput-object v1, v4, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    .line 2613
    :cond_5
    new-instance v5, Liav$2;

    invoke-direct {v5, v0, p2}, Liav$2;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 2621
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v6, "[RPC] removeMember"

    invoke-virtual {v5}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->removeMembers(Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/alibaba/wukong/idl/im/models/SendMessageModel;Liyv;)V

    goto :goto_0
.end method
