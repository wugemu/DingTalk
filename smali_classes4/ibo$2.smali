.class final Libo$2;
.super Liae;
.source "InvitationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libo;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Libo;


# direct methods
.method constructor <init>(Libo;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Libo;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 57
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;>;"
    iput-object p1, p0, Libo$2;->b:Libo;

    iput-object p5, p0, Libo$2;->a:Ljava/lang/String;

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
    .line 57
    .line 1061
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getInvitationRpc()Libm;

    move-result-object v0

    iget-object v1, p0, Libo$2;->a:Ljava/lang/String;

    .line 2045
    new-instance v2, Libm$2;

    invoke-direct {v2, v0, p2}, Libm$2;-><init>(Libm;Lcom/alibaba/wukong/Callback;)V

    .line 2065
    const-class v0, Lcom/alibaba/wukong/idl/group_invitation/client/GroupInvitationIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/group_invitation/client/GroupInvitationIService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/idl/group_invitation/client/GroupInvitationIService;->getTaoPasswordModel(Ljava/lang/String;Liyv;)V

    .line 57
    return-void
.end method
