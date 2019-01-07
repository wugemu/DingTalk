.class Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/core/model/RpcResponse;

.field final synthetic b:I

.field final synthetic c:Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;


# direct methods
.method constructor <init>(Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;Lcom/ali/user/open/core/model/RpcResponse;I)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$2;->c:Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;

    iput-object p2, p0, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$2;->a:Lcom/ali/user/open/core/model/RpcResponse;

    iput p3, p0, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    const-string/jumbo v0, "AbsLoginByCodeTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "15 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$2;->a:Lcom/ali/user/open/core/model/RpcResponse;

    iget-object v2, v2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$2;->c:Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;

    const/16 v1, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "login:code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$2;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask$2;->a:Lcom/ali/user/open/core/model/RpcResponse;

    iget-object v3, v3, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/open/tbauth/task/AbsLoginByCodeTask;->doWhenResultFail(ILjava/lang/String;)V

    return-void
.end method
