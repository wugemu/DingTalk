.class Lcom/ali/user/open/ucc/b$a$3;
.super Ljava/lang/Object;
.source "UccBindPresenter.java"

# interfaces
.implements Lcom/ali/user/open/core/callback/MemberCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/b$a;->onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ali/user/open/core/callback/MemberCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/core/model/RpcResponse;

.field final synthetic b:Lcom/ali/user/open/ucc/b$a;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/b$a;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/ali/user/open/ucc/b$a$3;->b:Lcom/ali/user/open/ucc/b$a;

    iput-object p2, p0, Lcom/ali/user/open/ucc/b$a$3;->a:Lcom/ali/user/open/core/model/RpcResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a$3;->b:Lcom/ali/user/open/ucc/b$a;

    invoke-static {v0}, Lcom/ali/user/open/ucc/b$a;->b(Lcom/ali/user/open/ucc/b$a;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a$3;->b:Lcom/ali/user/open/ucc/b$a;

    iget-object v0, v0, Lcom/ali/user/open/ucc/b$a;->a:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$a$3;->b:Lcom/ali/user/open/ucc/b$a;

    invoke-static {v1}, Lcom/ali/user/open/ucc/b$a;->a(Lcom/ali/user/open/ucc/b$a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a$3;->b:Lcom/ali/user/open/ucc/b$a;

    invoke-static {v0}, Lcom/ali/user/open/ucc/b$a;->c(Lcom/ali/user/open/ucc/b$a;)Lcom/ali/user/open/ucc/UccCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a$3;->b:Lcom/ali/user/open/ucc/b$a;

    invoke-static {v0}, Lcom/ali/user/open/ucc/b$a;->c(Lcom/ali/user/open/ucc/b$a;)Lcom/ali/user/open/ucc/UccCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a$3;->b:Lcom/ali/user/open/ucc/b$a;

    invoke-static {v0}, Lcom/ali/user/open/ucc/b$a;->d(Lcom/ali/user/open/ucc/b$a;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a$3;->a:Lcom/ali/user/open/core/model/RpcResponse;

    if-nez v0, :cond_2

    const/16 v0, 0x3ef

    :goto_0
    iget-object v3, p0, Lcom/ali/user/open/ucc/b$a$3;->a:Lcom/ali/user/open/core/model/RpcResponse;

    const-string/jumbo v4, "BIND_FAIL"

    invoke-static {v3, v4}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 346
    :cond_1
    return-void

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a$3;->a:Lcom/ali/user/open/core/model/RpcResponse;

    iget v0, v0, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    goto :goto_0
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 337
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/user/open/ucc/b$a$3;->a(Ljava/lang/String;)V

    return-void
.end method
