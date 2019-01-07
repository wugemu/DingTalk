.class final Lcom/ali/user/open/tbauth/task/RpcPresenter$2;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/ali/user/open/callback/LoginCallback;

.field final synthetic c:Lcom/ali/user/open/session/Session;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$2;->b:Lcom/ali/user/open/callback/LoginCallback;

    iput-object p3, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$2;->c:Lcom/ali/user/open/session/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$2;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$2;->b:Lcom/ali/user/open/callback/LoginCallback;

    iget-object v2, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$2;->c:Lcom/ali/user/open/session/Session;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->doWhenResultOk(Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;Lcom/ali/user/open/session/Session;)V

    return-void
.end method
