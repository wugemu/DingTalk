.class final Liaw$18;
.super Liae;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->applyJoinGroup(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Lcom/alibaba/wukong/Callback;)V
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

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Liaw;


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Liaw;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1401
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Liaw$18;->f:Liaw;

    iput-object p5, p0, Liaw$18;->a:Ljava/lang/String;

    iput-wide p6, p0, Liaw$18;->b:J

    iput-object p8, p0, Liaw$18;->c:Ljava/lang/String;

    iput p9, p0, Liaw$18;->d:I

    iput-object p10, p0, Liaw$18;->e:Ljava/lang/String;

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
    .line 1401
    .line 2404
    new-instance v1, Liaw$18$1;

    invoke-direct {v1, p0, p2}, Liaw$18$1;-><init>(Liaw$18;Lcom/alibaba/wukong/Callback;)V

    .line 2410
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/JoinGroupValidationModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/JoinGroupValidationModel;-><init>()V

    .line 2411
    iget-object v0, p0, Liaw$18;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/JoinGroupValidationModel;->conversationId:Ljava/lang/String;

    .line 2412
    iget-wide v4, p0, Liaw$18;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/JoinGroupValidationModel;->inviterId:Ljava/lang/Long;

    .line 2413
    iget-object v0, p0, Liaw$18;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/JoinGroupValidationModel;->joinDescription:Ljava/lang/String;

    .line 2414
    iget v0, p0, Liaw$18;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/JoinGroupValidationModel;->origin:Ljava/lang/Integer;

    .line 2415
    iget-object v0, p0, Liaw$18;->e:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/JoinGroupValidationModel;->code:Ljava/lang/String;

    .line 2416
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/JoinGroupValidationModel;->applyerNickName:Ljava/lang/String;

    .line 2417
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;->applyJoinGroup(Lcom/alibaba/wukong/idl/im/models/JoinGroupValidationModel;Liyv;)V

    .line 1401
    return-void
.end method
