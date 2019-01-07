.class Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$1;->c:Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;

    iput-object p2, p0, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$1;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$1;->b:Lcom/ali/user/open/callback/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$1;->a:Ljava/lang/ref/WeakReference;

    sput-object v0, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$1;->c:Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;

    iget-object v0, p0, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/ali/user/open/tbauth/UTConstants;->E_IV_LOGIN_FAILURE:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler$1;->b:Lcom/ali/user/open/callback/LoginCallback;

    const/16 v4, 0x2775

    invoke-static {v1, v0, v2, v3, v4}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;->a(Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method
