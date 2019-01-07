.class final Lcom/ali/user/open/oauth/alipay3/b$1;
.super Ljava/lang/Object;
.source "AlipayRpcPresenter.java"

# interfaces
.implements Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/oauth/alipay3/b;->a(Lcom/ali/user/open/oauth/alipay3/c;Lcom/ali/user/open/oauth/alipay3/SignRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/oauth/alipay3/c;


# direct methods
.method constructor <init>(Lcom/ali/user/open/oauth/alipay3/c;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ali/user/open/oauth/alipay3/b$1;->a:Lcom/ali/user/open/oauth/alipay3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ali/user/open/oauth/alipay3/b$1;->a:Lcom/ali/user/open/oauth/alipay3/c;

    iget v1, p2, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    iget-object v2, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/core/util/CommonUtils;->onFailure(Lcom/ali/user/open/core/callback/FailureCallback;ILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public final onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 26
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/oauth/alipay3/SignResult;

    .line 28
    iget-object v1, v0, Lcom/ali/user/open/oauth/alipay3/SignResult;->queryUrlArgs:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/ali/user/open/oauth/alipay3/b$1;->a:Lcom/ali/user/open/oauth/alipay3/c;

    if-eqz v0, :cond_0

    .line 30
    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v2, Lcom/ali/user/open/oauth/alipay3/b$1$1;

    invoke-direct {v2, p0, v1}, Lcom/ali/user/open/oauth/alipay3/b$1$1;-><init>(Lcom/ali/user/open/oauth/alipay3/b$1;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/ali/user/open/oauth/alipay3/b$1;->a:Lcom/ali/user/open/oauth/alipay3/c;

    const/16 v1, 0xcb

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/core/util/CommonUtils;->onFailure(Lcom/ali/user/open/core/callback/FailureCallback;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final onSystemError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ali/user/open/oauth/alipay3/b$1;->a:Lcom/ali/user/open/oauth/alipay3/c;

    iget v1, p2, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    iget-object v2, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/core/util/CommonUtils;->onFailure(Lcom/ali/user/open/core/callback/FailureCallback;ILjava/lang/String;)V

    .line 47
    return-void
.end method
