.class Lcom/ali/user/open/ucc/b$4;
.super Ljava/lang/Object;
.source "UccBindPresenter.java"

# interfaces
.implements Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/ali/user/open/ucc/UccCallback;

.field final synthetic f:Lcom/ali/user/open/ucc/b;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/b;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/ali/user/open/ucc/b$4;->f:Lcom/ali/user/open/ucc/b;

    iput-object p2, p0, Lcom/ali/user/open/ucc/b$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/open/ucc/b$4;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/ali/user/open/ucc/b$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ali/user/open/ucc/b$4;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/ali/user/open/ucc/b$4;->e:Lcom/ali/user/open/ucc/UccCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 422
    if-nez p2, :cond_0

    const-string/jumbo v0, ""

    move-object v1, v0

    .line 423
    :goto_0
    iget-object v2, p0, Lcom/ali/user/open/ucc/b$4;->f:Lcom/ali/user/open/ucc/b;

    iget-object v0, p0, Lcom/ali/user/open/ucc/b$4;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lcom/ali/user/open/ucc/b$4$3;

    invoke-direct {v3, p0, p2}, Lcom/ali/user/open/ucc/b$4$3;-><init>(Lcom/ali/user/open/ucc/b$4;Lcom/ali/user/open/core/model/RpcResponse;)V

    invoke-static {v2, v0, v1, v3}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V

    .line 438
    return-void

    .line 422
    :cond_0
    iget-object v0, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method public onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 381
    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 382
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/ali/user/open/ucc/b$4;->f:Lcom/ali/user/open/ucc/b;

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$4;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$4;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/open/ucc/b$4;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/open/ucc/b$4;->d:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/user/open/ucc/b$4$1;

    invoke-direct {v1, p0}, Lcom/ali/user/open/ucc/b$4$1;-><init>(Lcom/ali/user/open/ucc/b$4;)V

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$4;->f:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$4;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;)V

    .line 396
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$4;->e:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$4;->e:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$4;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/ucc/UccCallback;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V

    .line 399
    :cond_2
    return-void
.end method

.method public onSystemError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 403
    if-nez p2, :cond_0

    const-string/jumbo v0, ""

    move-object v1, v0

    .line 404
    :goto_0
    iget-object v2, p0, Lcom/ali/user/open/ucc/b$4;->f:Lcom/ali/user/open/ucc/b;

    iget-object v0, p0, Lcom/ali/user/open/ucc/b$4;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lcom/ali/user/open/ucc/b$4$2;

    invoke-direct {v3, p0, p2}, Lcom/ali/user/open/ucc/b$4$2;-><init>(Lcom/ali/user/open/ucc/b$4;Lcom/ali/user/open/core/model/RpcResponse;)V

    invoke-static {v2, v0, v1, v3}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V

    .line 418
    return-void

    .line 403
    :cond_0
    iget-object v0, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method
