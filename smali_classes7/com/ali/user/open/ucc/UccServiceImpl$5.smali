.class Lcom/ali/user/open/ucc/UccServiceImpl$5;
.super Ljava/lang/Object;
.source "UccServiceImpl.java"

# interfaces
.implements Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/UccServiceImpl;->a(Lcom/ali/user/open/ucc/model/BindParams;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ali/user/open/ucc/UccCallback;

.field final synthetic c:Lcom/ali/user/open/ucc/UccServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->c:Lcom/ali/user/open/ucc/UccServiceImpl;

    iput-object p2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->b:Lcom/ali/user/open/ucc/UccCallback;

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
    .line 241
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->b:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->b:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->a:Ljava/lang/String;

    const/16 v2, 0x3ed

    const-string/jumbo v3, "unbind fail"

    invoke-static {p2, v3}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    const-string/jumbo v0, "SUCCESS"

    iget-object v1, p1, Lcom/ali/user/open/core/model/RpcResponse;->actionType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->c:Lcom/ali/user/open/ucc/UccServiceImpl;

    iget-object v2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ali/user/open/ucc/UccServiceImpl;->a(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->b:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->b:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ali/user/open/ucc/UccCallback;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->b:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->b:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->a:Ljava/lang/String;

    const/16 v2, 0x3ed

    const-string/jumbo v3, "unbind fail"

    invoke-static {p1, v3}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onSystemError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->b:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->b:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$5;->a:Ljava/lang/String;

    const/16 v2, 0x3ed

    const-string/jumbo v3, "unbind fail"

    invoke-static {p2, v3}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method
