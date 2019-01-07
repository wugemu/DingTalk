.class final Lcom/ali/user/open/tbauth/task/RpcPresenter$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/task/RpcPresenter;->b(Lcom/ali/user/open/core/model/RpcResponse;Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/core/model/RpcResponse;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/ali/user/open/callback/LoginCallback;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/ali/user/open/core/model/RpcResponse;Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;I)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$3;->a:Lcom/ali/user/open/core/model/RpcResponse;

    iput-object p2, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$3;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$3;->c:Lcom/ali/user/open/callback/LoginCallback;

    iput p4, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    sget-object v0, Lcom/ali/user/open/tbauth/task/RpcPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "15 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$3;->a:Lcom/ali/user/open/core/model/RpcResponse;

    iget-object v2, v2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$3;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$3;->c:Lcom/ali/user/open/callback/LoginCallback;

    const/16 v2, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "login:code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$3;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$3;->a:Lcom/ali/user/open/core/model/RpcResponse;

    iget-object v4, v4, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->doWhenResultFail(Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;ILjava/lang/String;)V

    return-void
.end method
