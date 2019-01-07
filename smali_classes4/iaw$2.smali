.class final Liaw$2;
.super Liae;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->addMembersV2(Lcom/alibaba/wukong/Callback;Ljava/lang/String;ILjava/util/List;[Ljava/lang/Long;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Liaw;


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Liaw;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 647
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Ljava/lang/Long;>;>;"
    iput-object p1, p0, Liaw$2;->e:Liaw;

    iput-object p5, p0, Liaw$2;->a:Ljava/util/List;

    iput-object p6, p0, Liaw$2;->b:Ljava/lang/String;

    iput p7, p0, Liaw$2;->c:I

    iput-object p8, p0, Liaw$2;->d:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 647
    .line 1652
    const/4 v0, 0x0

    .line 1653
    iget-object v1, p0, Liaw$2;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Liaw$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1654
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1656
    iget-object v0, p0, Liaw$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    move-object v1, v0

    .line 1657
    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v4, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-static {v1, v4}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Message$CreatorType;)V

    .line 1658
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->o()Ljava/lang/String;

    invoke-static {v0}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    move-result-object v0

    .line 1659
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1660
    iget-object v1, p0, Liaw$2;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    .line 1662
    :cond_1
    if-eqz v0, :cond_0

    .line 1663
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 1667
    :cond_3
    new-instance v1, Lcom/alibaba/wukong/idl/im/models/AddMembersModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/im/models/AddMembersModel;-><init>()V

    .line 1668
    iget-object v2, p0, Liaw$2;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/AddMembersModel;->conversationId:Ljava/lang/String;

    .line 1669
    iget v2, p0, Liaw$2;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/AddMembersModel;->joinGroupOrigin:Ljava/lang/Integer;

    .line 1670
    iget-object v2, p0, Liaw$2;->d:Ljava/util/List;

    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/AddMembersModel;->openIds:Ljava/util/List;

    .line 1671
    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/AddMembersModel;->sendMessageModels:Ljava/util/List;

    .line 1672
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    .line 2575
    new-instance v2, Liav$1;

    invoke-direct {v2, v0, p2}, Liav$1;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 2583
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v3, "[RPC] addMemberV2"

    invoke-virtual {v2}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->addMembersV2(Lcom/alibaba/wukong/idl/im/models/AddMembersModel;Liyv;)V

    .line 647
    return-void
.end method
