.class Lcom/ali/user/open/tbauth/TbAuthServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/user/open/callback/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->auth(Ljava/util/Map;Lcom/ali/user/open/callback/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/callback/LoginCallback;

.field final synthetic b:Lcom/ali/user/open/tbauth/TbAuthServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/user/open/tbauth/TbAuthServiceImpl;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$1;->b:Lcom/ali/user/open/tbauth/TbAuthServiceImpl;

    iput-object p2, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$1;->a:Lcom/ali/user/open/callback/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$1;->b:Lcom/ali/user/open/tbauth/TbAuthServiceImpl;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$1;->a:Lcom/ali/user/open/callback/LoginCallback;

    invoke-static {v0, v1}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->a(Lcom/ali/user/open/tbauth/TbAuthServiceImpl;Lcom/ali/user/open/callback/LoginCallback;)V

    return-void
.end method

.method public onSuccess(Lcom/ali/user/open/session/Session;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$1;->a:Lcom/ali/user/open/callback/LoginCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$1;->a:Lcom/ali/user/open/callback/LoginCallback;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$1;->b:Lcom/ali/user/open/tbauth/TbAuthServiceImpl;

    invoke-virtual {v1}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;->getSession()Lcom/ali/user/open/session/Session;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/user/open/callback/LoginCallback;->onSuccess(Lcom/ali/user/open/session/Session;)V

    :cond_0
    return-void
.end method
