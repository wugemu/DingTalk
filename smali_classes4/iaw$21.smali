.class final Liaw$21;
.super Liae;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->deleteJoinGroup(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
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

.field final synthetic b:J

.field final synthetic c:Liaw;


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;J)V
    .locals 2
    .param p1, "this$0"    # Liaw;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1490
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Liaw$21;->c:Liaw;

    iput-object p5, p0, Liaw$21;->a:Ljava/lang/String;

    iput-wide p6, p0, Liaw$21;->b:J

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1490
    .line 2493
    new-instance v1, Liaw$21$1;

    invoke-direct {v1, p0, p2}, Liaw$21$1;-><init>(Liaw$21;Lcom/alibaba/wukong/Callback;)V

    .line 2499
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/AuditJoinGroupStatusModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/AuditJoinGroupStatusModel;-><init>()V

    .line 2500
    iget-object v0, p0, Liaw$21;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/AuditJoinGroupStatusModel;->conversationId:Ljava/lang/String;

    .line 2501
    iget-wide v4, p0, Liaw$21;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/AuditJoinGroupStatusModel;->applyId:Ljava/lang/Long;

    .line 2502
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/AuditJoinGroupStatusModel;->status:Ljava/lang/Integer;

    .line 2503
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;->auditJoinGroupStatus(Lcom/alibaba/wukong/idl/im/models/AuditJoinGroupStatusModel;Lcom/alibaba/wukong/idl/im/models/SendMessageModel;Liyv;)V

    .line 1490
    return-void
.end method
