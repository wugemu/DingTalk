.class final Liaw$17;
.super Liae;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->hasApplyJoinGroupRecently(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Liaw;


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Liaw;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1368
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Boolean;>;"
    iput-object p1, p0, Liaw$17;->c:Liaw;

    iput-object p5, p0, Liaw$17;->a:Ljava/lang/String;

    iput-object p6, p0, Liaw$17;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1368
    .line 2371
    new-instance v1, Liaw$17$1;

    invoke-direct {v1, p0, p2}, Liaw$17$1;-><init>(Liaw$17;Lcom/alibaba/wukong/Callback;)V

    .line 2377
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyModel;-><init>()V

    .line 2378
    iget-object v0, p0, Liaw$17;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyModel;->conversationId:Ljava/lang/String;

    .line 2379
    iget-object v0, p0, Liaw$17;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyModel;->code:Ljava/lang/String;

    .line 2380
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;->hasApplyJoinGroupRecently(Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyModel;Liyv;)V

    .line 1368
    return-void
.end method
