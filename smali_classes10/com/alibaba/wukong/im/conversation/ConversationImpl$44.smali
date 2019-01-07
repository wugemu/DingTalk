.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateAtAllType(ILcom/alibaba/wukong/Callback;)V
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

.field final synthetic b:Lhzv;

.field final synthetic c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;ILhzv;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 2406
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;->a:I

    iput-object p6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;->b:Lhzv;

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
    .line 2415
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    if-eqz p1, :cond_0

    iget-boolean v1, p1, Liae$b;->a:Z

    if-eqz v1, :cond_0

    .line 2416
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;->a:I

    invoke-virtual {v1, v2, v3}, Liar;->i(Ljava/lang/String;I)Z

    move-result v0

    .line 2417
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 2418
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;->b:Lhzv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[API] update@AllType db fail, cid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v3, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 2421
    .end local v0    # "ret":Z
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2406
    .line 3410
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$44;->a:I

    .line 3609
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3610
    invoke-static {p2}, Liav;->a(Lcom/alibaba/wukong/Callback;)V

    .line 3611
    :goto_0
    return-void

    .line 3614
    :cond_0
    new-instance v3, Lcom/alibaba/wukong/idl/im/models/UpdateAtAllTypeModel;

    invoke-direct {v3}, Lcom/alibaba/wukong/idl/im/models/UpdateAtAllTypeModel;-><init>()V

    .line 3615
    iput-object v1, v3, Lcom/alibaba/wukong/idl/im/models/UpdateAtAllTypeModel;->conversationId:Ljava/lang/String;

    .line 3616
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/alibaba/wukong/idl/im/models/UpdateAtAllTypeModel;->atAllType:Ljava/lang/Integer;

    .line 3618
    new-instance v1, Liav$50;

    invoke-direct {v1, v0, p2}, Liav$50;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 3625
    const-string/jumbo v0, "[TAG] ConvRpc"

    const-string/jumbo v2, "[RPC] updateSearchable"

    invoke-virtual {v1}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3626
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v0, v3, v1}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->updateAtAllType(Lcom/alibaba/wukong/idl/im/models/UpdateAtAllTypeModel;Liyv;)V

    goto :goto_0
.end method
