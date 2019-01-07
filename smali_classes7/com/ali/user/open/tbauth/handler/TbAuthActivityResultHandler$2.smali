.class Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/user/open/callback/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(ILandroid/content/Intent;Lcom/ali/user/open/callback/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/ali/user/open/callback/LoginCallback;

.field final synthetic c:Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;


# direct methods
.method constructor <init>(Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;Ljava/lang/ref/WeakReference;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2;->c:Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;

    iput-object p2, p0, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2;->b:Lcom/ali/user/open/callback/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2$1;

    invoke-direct {v1, p0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2$1;-><init>(Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2;)V

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Lcom/ali/user/open/session/Session;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2$2;

    invoke-direct {v1, p0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2$2;-><init>(Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$2;)V

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    return-void
.end method
