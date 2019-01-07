.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;
.super Liae;
.source "ConversationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateMemberRoles(Ljava/util/List;Ljava/util/List;Lcom/alibaba/wukong/im/Member$RoleType;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/wukong/im/Member$RoleType;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Lcom/alibaba/wukong/im/Member$RoleType;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 2165
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->a:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->b:Lcom/alibaba/wukong/im/Member$RoleType;

    iput-object p7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->c:Ljava/util/List;

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
    .line 2165
    .line 3168
    new-instance v1, Lcom/alibaba/wukong/idl/im/models/UpdateRoleModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/im/models/UpdateRoleModel;-><init>()V

    .line 3169
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->a:Ljava/util/List;

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/UpdateRoleModel;->openIds:Ljava/util/List;

    .line 3170
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/UpdateRoleModel;->conversationId:Ljava/lang/String;

    .line 3171
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->b:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/Member$RoleType;->typeValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/UpdateRoleModel;->role:Ljava/lang/Integer;

    .line 3172
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/UpdateRoleModel;->sendMessageModels:Ljava/util/List;

    .line 3174
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 3175
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->access$200(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Liaq;

    invoke-static {}, Liaq;->o()Ljava/lang/String;

    invoke-static {v0}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    move-result-object v0

    .line 3176
    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3177
    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v3, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    .line 3179
    :cond_0
    iget-object v3, v1, Lcom/alibaba/wukong/idl/im/models/UpdateRoleModel;->sendMessageModels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3183
    :cond_1
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[API] updateMemberRoles onExecuteRpc cid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->d:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v3, v3, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "openId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$39;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/wukong/idl/im/models/UpdateRoleModel;->role:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4018
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3184
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    .line 4287
    iget-object v2, v1, Lcom/alibaba/wukong/idl/im/models/UpdateRoleModel;->openIds:Ljava/util/List;

    if-nez v2, :cond_2

    .line 4288
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "101002 updateRoleModel invalid"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4289
    :goto_1
    return-void

    .line 4291
    :cond_2
    new-instance v2, Liav$35;

    invoke-direct {v2, v0, p2}, Liav$35;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 4297
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->updateRoles(Lcom/alibaba/wukong/idl/im/models/UpdateRoleModel;Liyv;)V

    goto :goto_1
.end method
