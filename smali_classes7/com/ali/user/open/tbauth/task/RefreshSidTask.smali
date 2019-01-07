.class public Lcom/ali/user/open/tbauth/task/RefreshSidTask;
.super Lcom/ali/user/open/core/task/TaskWithDialog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/open/core/task/TaskWithDialog",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/ali/user/open/core/task/TaskWithDialog;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/RefreshSidTask;->a:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v2, 0x0

    const-class v0, Lcom/ali/user/open/service/SessionService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/service/SessionService;

    invoke-interface {v0}, Lcom/ali/user/open/service/SessionService;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RefreshSidTask;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ali/user/open/tbauth/ui/context/CallbackContext;->setActivity(Landroid/app/Activity;)V

    sget-object v0, Lcom/ali/user/open/tbauth/TbAuthComponent;->INSTANCE:Lcom/ali/user/open/tbauth/TbAuthComponent;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RefreshSidTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ali/user/open/tbauth/TbAuthComponent;->showLogin(Landroid/app/Activity;)V

    :cond_0
    return-object v2
.end method

.method protected synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/user/open/tbauth/task/RefreshSidTask;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Lcom/ali/user/open/core/util/CommonUtils;->toastSystemException()V

    return-void
.end method
