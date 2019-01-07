.class final Liaw$22;
.super Liae;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->cleanJoinGroupValidationByOwner(JLcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:J

.field final synthetic b:Liaw;


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V
    .locals 1
    .param p1, "this$0"    # Liaw;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1514
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Liaw$22;->b:Liaw;

    iput-wide p5, p0, Liaw$22;->a:J

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
    .line 1514
    .line 2517
    new-instance v1, Liaw$22$1;

    invoke-direct {v1, p0, p2}, Liaw$22$1;-><init>(Liaw$22;Lcom/alibaba/wukong/Callback;)V

    .line 2523
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;

    iget-wide v2, p0, Liaw$22;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;->cleanJoinGroupValidationByOwner(Ljava/lang/Long;Liyv;)V

    .line 1514
    return-void
.end method
