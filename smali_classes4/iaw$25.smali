.class final Liaw$25;
.super Liae;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->a(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/GroupNickObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Liaw;


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Liaw;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1546
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;>;"
    iput-object p1, p0, Liaw$25;->c:Liaw;

    iput-object p5, p0, Liaw$25;->a:Ljava/lang/String;

    iput-object p6, p0, Liaw$25;->b:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1546
    .line 2549
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Liaw$25;->a:Ljava/lang/String;

    iget-object v2, p0, Liaw$25;->b:Ljava/util/List;

    .line 3344
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3345
    if-eqz p2, :cond_0

    .line 3346
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR cid invalidate"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    :goto_0
    return-void

    .line 3350
    :cond_0
    new-instance v3, Liav$38;

    invoke-direct {v3, v0, p2, v1}, Liav$38;-><init>(Liav;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 3369
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->listRoles(Ljava/lang/String;Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
