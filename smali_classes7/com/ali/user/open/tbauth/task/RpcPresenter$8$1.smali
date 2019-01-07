.class Lcom/ali/user/open/tbauth/task/RpcPresenter$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/task/RpcPresenter$8;->onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;

.field final synthetic b:Lcom/ali/user/open/tbauth/task/RpcPresenter$8;


# direct methods
.method constructor <init>(Lcom/ali/user/open/tbauth/task/RpcPresenter$8;Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$8$1;->b:Lcom/ali/user/open/tbauth/task/RpcPresenter$8;

    iput-object p2, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$8$1;->a:Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$8$1;->b:Lcom/ali/user/open/tbauth/task/RpcPresenter$8;

    iget-object v0, v0, Lcom/ali/user/open/tbauth/task/RpcPresenter$8;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->a(Landroid/app/Activity;)V

    new-instance v0, Lcom/ali/user/open/session/Session;

    invoke-direct {v0}, Lcom/ali/user/open/session/Session;-><init>()V

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$8$1;->a:Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;

    iget-object v1, v1, Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;->openId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/session/Session;->openId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$8$1;->a:Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;

    iget-object v1, v1, Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;->bindToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/session/Session;->bindToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$8$1;->a:Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;

    iget-object v1, v1, Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;->accessToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/session/Session;->topAccessToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$8$1;->a:Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;

    iget-object v1, v1, Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;->authCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/session/Session;->topAuthCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$8$1;->b:Lcom/ali/user/open/tbauth/task/RpcPresenter$8;

    iget-object v1, v1, Lcom/ali/user/open/tbauth/task/RpcPresenter$8;->b:Lcom/ali/user/open/callback/LoginCallback;

    invoke-interface {v1, v0}, Lcom/ali/user/open/callback/LoginCallback;->onSuccess(Lcom/ali/user/open/session/Session;)V

    return-void
.end method
