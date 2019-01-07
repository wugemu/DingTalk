.class final Lcom/ali/user/open/ucc/c$1;
.super Ljava/lang/Object;
.source "UccH5Presenter.java"

# interfaces
.implements Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/ali/user/open/ucc/UccCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ali/user/open/ucc/c$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/open/ucc/c$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/open/ucc/c$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/open/ucc/c$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ali/user/open/ucc/c$1;->e:Landroid/content/Context;

    iput-object p6, p0, Lcom/ali/user/open/ucc/c$1;->f:Lcom/ali/user/open/ucc/UccCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ali/user/open/ucc/c$1;->f:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ali/user/open/ucc/c$1;->f:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/c$1;->a:Ljava/lang/String;

    const/16 v2, 0x57a

    const-string/jumbo v3, "fetchBindPageUrl fail"

    invoke-static {p2, v3}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/open/ucc/model/FetchBindPageUrlResult;

    .line 57
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/ali/user/open/ucc/model/FetchBindPageUrlResult;->returnUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string/jumbo v2, "url"

    iget-object v0, v0, Lcom/ali/user/open/ucc/model/FetchBindPageUrlResult;->returnUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "targetSite"

    iget-object v2, p0, Lcom/ali/user/open/ucc/c$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "userToken"

    iget-object v2, p0, Lcom/ali/user/open/ucc/c$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "needSession"

    iget-object v2, p0, Lcom/ali/user/open/ucc/c$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "needToast"

    iget-object v2, p0, Lcom/ali/user/open/ucc/c$1;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/ali/user/open/ucc/c$1;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/open/ucc/c$1;->f:Lcom/ali/user/open/ucc/UccCallback;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/ucc/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/ali/user/open/ucc/c$1;->f:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/ali/user/open/ucc/c$1;->f:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/c$1;->a:Ljava/lang/String;

    const/16 v2, 0x579

    const-string/jumbo v3, "url is null"

    invoke-static {p1, v3}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final onSystemError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ali/user/open/ucc/c$1;->f:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/ali/user/open/ucc/c$1;->f:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/c$1;->a:Ljava/lang/String;

    const/16 v2, 0x57a

    const-string/jumbo v3, "fetchBindPageUrl fail"

    invoke-static {p2, v3}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method
