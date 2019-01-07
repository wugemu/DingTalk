.class Lcom/ali/user/open/ucc/b$a;
.super Ljava/lang/Object;
.source "UccBindPresenter.java"

# interfaces
.implements Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/open/ucc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/ucc/b;

.field private b:Landroid/content/Context;

.field private c:Lcom/ali/user/open/ucc/UccCallback;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/ali/user/open/ucc/b;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/ali/user/open/ucc/b$a;->a:Lcom/ali/user/open/ucc/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/ali/user/open/ucc/b$a;->b:Landroid/content/Context;

    .line 260
    iput-object p4, p0, Lcom/ali/user/open/ucc/b$a;->d:Ljava/lang/String;

    .line 261
    iput-object p5, p0, Lcom/ali/user/open/ucc/b$a;->e:Ljava/lang/String;

    .line 262
    iput-object p7, p0, Lcom/ali/user/open/ucc/b$a;->c:Lcom/ali/user/open/ucc/UccCallback;

    .line 263
    iput-object p6, p0, Lcom/ali/user/open/ucc/b$a;->f:Ljava/lang/String;

    .line 264
    iput p3, p0, Lcom/ali/user/open/ucc/b$a;->g:I

    .line 265
    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/b$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/ali/user/open/ucc/b$a;)I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/ali/user/open/ucc/b$a;->g:I

    return v0
.end method

.method static synthetic c(Lcom/ali/user/open/ucc/b$a;)Lcom/ali/user/open/ucc/UccCallback;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->c:Lcom/ali/user/open/ucc/UccCallback;

    return-object v0
.end method

.method static synthetic d(Lcom/ali/user/open/ucc/b$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 336
    if-nez p2, :cond_0

    const-string/jumbo v0, ""

    move-object v1, v0

    .line 337
    :goto_0
    iget-object v2, p0, Lcom/ali/user/open/ucc/b$a;->a:Lcom/ali/user/open/ucc/b;

    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lcom/ali/user/open/ucc/b$a$3;

    invoke-direct {v3, p0, p2}, Lcom/ali/user/open/ucc/b$a$3;-><init>(Lcom/ali/user/open/ucc/b$a;Lcom/ali/user/open/core/model/RpcResponse;)V

    invoke-static {v2, v0, v1, v3}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V

    .line 353
    return-void

    .line 336
    :cond_0
    iget-object v0, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method public onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 269
    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 270
    const-string/jumbo v1, "CHANGEBIND"

    iget-object v2, p1, Lcom/ali/user/open/core/model/RpcResponse;->actionType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    const-class v1, Lcom/ali/user/open/ucc/model/BindResult;

    invoke-static {v0, v1}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ali/user/open/ucc/model/BindResult;

    .line 272
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->a:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    iget-object v4, v4, Lcom/ali/user/open/ucc/model/BindResult;->changeBindToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/ali/user/open/ucc/b$a;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/open/ucc/b$a;->c:Lcom/ali/user/open/ucc/UccCallback;

    invoke-static/range {v0 .. v6}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string/jumbo v1, "H5"

    iget-object v2, p1, Lcom/ali/user/open/core/model/RpcResponse;->actionType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 275
    invoke-static {v0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_2

    .line 277
    const-string/jumbo v1, "returnUrl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 279
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v0, "targetSite"

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v0, "userToken"

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v0, "needSession"

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$a;->c:Lcom/ali/user/open/ucc/UccCallback;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/ucc/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 284
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->a:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;)V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->a:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;)V

    .line 287
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->c:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->c:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$a;->d:Ljava/lang/String;

    const/16 v2, 0x3ed

    const-string/jumbo v3, "trust login fail"

    invoke-static {p1, v3}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 294
    iget-object v1, p0, Lcom/ali/user/open/ucc/b$a;->a:Lcom/ali/user/open/ucc/b;

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->b:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->f:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    const-class v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/user/open/ucc/b$a$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/open/ucc/b$a$1;-><init>(Lcom/ali/user/open/ucc/b$a;Lcom/ali/user/open/core/model/RpcResponse;)V

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->a:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;)V

    .line 306
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->c:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->c:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/ucc/UccCallback;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public onSystemError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 314
    if-nez p2, :cond_0

    const-string/jumbo v0, ""

    move-object v1, v0

    .line 315
    :goto_0
    iget-object v2, p0, Lcom/ali/user/open/ucc/b$a;->a:Lcom/ali/user/open/ucc/b;

    iget-object v0, p0, Lcom/ali/user/open/ucc/b$a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lcom/ali/user/open/ucc/b$a$2;

    invoke-direct {v3, p0, p2}, Lcom/ali/user/open/ucc/b$a$2;-><init>(Lcom/ali/user/open/ucc/b$a;Lcom/ali/user/open/core/model/RpcResponse;)V

    invoke-static {v2, v0, v1, v3}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V

    .line 332
    return-void

    .line 314
    :cond_0
    iget-object v0, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method
