.class Lcom/ali/user/open/ucc/UccServiceImpl$7;
.super Ljava/lang/Object;
.source "UccServiceImpl.java"

# interfaces
.implements Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/UccServiceImpl;->a(Landroid/app/Activity;Lcom/ali/user/open/ucc/model/BindParams;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ali/user/open/ucc/UccCallback;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/ali/user/open/ucc/model/BindParams;

.field final synthetic e:Lcom/ali/user/open/ucc/UccServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;Landroid/app/Activity;Lcom/ali/user/open/ucc/model/BindParams;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->e:Lcom/ali/user/open/ucc/UccServiceImpl;

    iput-object p2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    iput-object p4, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->d:Lcom/ali/user/open/ucc/model/BindParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x3ed

    .line 336
    const-string/jumbo v0, "NEED_BIND"

    iget-object v1, p2, Lcom/ali/user/open/core/model/RpcResponse;->actionType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    iget-object v0, p2, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 339
    const-string/jumbo v1, "icbu"

    iget-object v2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "dingding"

    invoke-static {}, Lcom/ali/user/open/core/AliMemberSDK;->getMasterSite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    iget v2, p2, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    iget-object v3, p2, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-static {v0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 346
    const-string/jumbo v0, ""

    .line 347
    if-eqz v1, :cond_2

    .line 348
    const-string/jumbo v0, "h5Url"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 352
    const-string/jumbo v1, "bindUrl"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_3
    const-string/jumbo v0, "needSession"

    const-string/jumbo v1, "1"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string/jumbo v0, "needToast"

    const-string/jumbo v1, "0"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->e:Lcom/ali/user/open/ucc/UccServiceImpl;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->d:Lcom/ali/user/open/ucc/model/BindParams;

    iget-object v2, v2, Lcom/ali/user/open/ucc/model/BindParams;->userToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/ali/user/open/ucc/UccServiceImpl;->bind(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    goto :goto_0

    .line 358
    :cond_4
    const-string/jumbo v0, "H5"

    iget-object v1, p2, Lcom/ali/user/open/core/model/RpcResponse;->actionType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 359
    iget-object v0, p2, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 360
    invoke-static {v0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_5

    .line 362
    const-string/jumbo v1, "h5Url"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    const-string/jumbo v3, "scene"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 366
    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v1, "targetSite"

    iget-object v4, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v1, "userToken"

    iget-object v4, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->d:Lcom/ali/user/open/ucc/model/BindParams;

    iget-object v4, v4, Lcom/ali/user/open/ucc/model/BindParams;->userToken:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v1, "needSession"

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v1, "token"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string/jumbo v1, "scene"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    invoke-static {v0, v3, v1}, Lcom/ali/user/open/ucc/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/open/ucc/UccCallback;)V

    goto/16 :goto_0

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    const-string/jumbo v2, "trust login fail"

    invoke-static {p2, v2}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 379
    :cond_6
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    const-string/jumbo v2, "trust login fail"

    invoke-static {p2, v2}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 306
    if-eqz p1, :cond_1

    .line 307
    iget v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "SUCCESS"

    iget-object v1, p1, Lcom/ali/user/open/core/model/RpcResponse;->actionType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    :cond_0
    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->e:Lcom/ali/user/open/ucc/UccServiceImpl;

    iget-object v2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ali/user/open/ucc/UccServiceImpl;->a(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_1

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 312
    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ali/user/open/ucc/UccCallback;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    const/16 v2, 0x3ed

    const-string/jumbo v3, "trust login response is null"

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
    .line 324
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->e:Lcom/ali/user/open/ucc/UccServiceImpl;

    invoke-static {v0}, Lcom/ali/user/open/ucc/UccServiceImpl;->a(Lcom/ali/user/open/ucc/UccServiceImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 325
    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->e:Lcom/ali/user/open/ucc/UccServiceImpl;

    invoke-static {v1}, Lcom/ali/user/open/ucc/UccServiceImpl;->a(Lcom/ali/user/open/ucc/UccServiceImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->b:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$7;->a:Ljava/lang/String;

    const/16 v2, 0x3ed

    const-string/jumbo v3, "trust login fail"

    invoke-static {p2, v3}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 332
    :cond_1
    return-void
.end method
