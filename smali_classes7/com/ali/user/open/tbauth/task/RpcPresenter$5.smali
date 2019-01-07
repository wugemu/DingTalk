.class final Lcom/ali/user/open/tbauth/task/RpcPresenter$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/task/RpcPresenter;->a(Lcom/ali/user/open/callback/LoginCallback;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ali/user/open/callback/LoginCallback;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 0

    iput p1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;->a:I

    iput-object p2, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;->c:Lcom/ali/user/open/callback/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "message"

    iget-object v2, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v2, Lcom/ali/user/open/tbauth/UTConstants;->E_H5_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;->c:Lcom/ali/user/open/callback/LoginCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;->c:Lcom/ali/user/open/callback/LoginCallback;

    iget v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;->a:I

    iget-object v2, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$5;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
