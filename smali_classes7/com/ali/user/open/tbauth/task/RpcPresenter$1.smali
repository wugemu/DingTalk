.class final Lcom/ali/user/open/tbauth/task/RpcPresenter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/task/RpcPresenter;->refreshPageAfterOpenTb(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/callback/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/ali/user/open/callback/LoginCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$1;->b:Lcom/ali/user/open/callback/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "code"

    const-string/jumbo v2, "10010"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "message"

    const-string/jumbo v2, "exception"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v2, Lcom/ali/user/open/tbauth/UTConstants;->E_TB_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$1;->b:Lcom/ali/user/open/callback/LoginCallback;

    const/16 v1, 0x271a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ali/user/open/core/model/ResultCode;->create(I[Ljava/lang/Object;)Lcom/ali/user/open/core/model/ResultCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/util/CommonUtils;->onFailure(Lcom/ali/user/open/core/callback/FailureCallback;Lcom/ali/user/open/core/model/ResultCode;)V

    return-void
.end method

.method public final onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$1;->b:Lcom/ali/user/open/callback/LoginCallback;

    invoke-static {p1, v0, v1}, Lcom/ali/user/open/tbauth/task/RpcPresenter;->a(Lcom/ali/user/open/core/model/RpcResponse;Landroid/app/Activity;Lcom/ali/user/open/callback/LoginCallback;)V

    return-void
.end method

.method public final onSystemError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "code"

    const-string/jumbo v2, "10010"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "message"

    const-string/jumbo v2, "exception"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    sget-object v2, Lcom/ali/user/open/tbauth/UTConstants;->E_TB_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/RpcPresenter$1;->b:Lcom/ali/user/open/callback/LoginCallback;

    const/16 v1, 0x271a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ali/user/open/core/model/ResultCode;->create(I[Ljava/lang/Object;)Lcom/ali/user/open/core/model/ResultCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/util/CommonUtils;->onFailure(Lcom/ali/user/open/core/callback/FailureCallback;Lcom/ali/user/open/core/model/ResultCode;)V

    return-void
.end method
