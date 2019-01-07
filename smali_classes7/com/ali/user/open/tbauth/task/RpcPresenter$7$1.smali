.class Lcom/ali/user/open/tbauth/task/RpcPresenter$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/task/RpcPresenter$7;->onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/session/Session;

.field final synthetic b:Lcom/ali/user/open/tbauth/task/RpcPresenter$7;


# direct methods
.method constructor <init>(Lcom/ali/user/open/tbauth/task/RpcPresenter$7;Lcom/ali/user/open/session/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$7$1;->b:Lcom/ali/user/open/tbauth/task/RpcPresenter$7;

    iput-object p2, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$7$1;->a:Lcom/ali/user/open/session/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$7$1;->b:Lcom/ali/user/open/tbauth/task/RpcPresenter$7;

    iget-object v0, v0, Lcom/ali/user/open/tbauth/task/RpcPresenter$7;->a:Lcom/ali/user/open/callback/LoginCallback;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$7$1;->a:Lcom/ali/user/open/session/Session;

    invoke-static {v0, v1}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->a(Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V

    return-void
.end method
