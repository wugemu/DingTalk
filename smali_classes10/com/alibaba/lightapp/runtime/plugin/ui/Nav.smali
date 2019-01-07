.class public Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;
.super Lcom/alibaba/lightapp/runtime/Component;
.source "Nav.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/Component",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOAD_STATUS_ERR:I = -0x1

.field public static final LOAD_STATUS_FINISHED:I = 0x1

.field public static final LOAD_STATUS_STARTED:I


# instance fields
.field private mGoPageCallbackId:Ljava/lang/String;

.field private mPopPageCallbackId:Ljava/lang/String;

.field private mPreloadCallbackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Component;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->createWebViewModelFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mGoPageCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private createWebViewModelFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 396
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;-><init>()V

    .line 397
    .local v0, "model":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setUrl(Ljava/lang/String;)V

    .line 398
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setId(Ljava/lang/String;)V

    .line 399
    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setTitle(Ljava/lang/String;)V

    .line 400
    return-object v0
.end method

.method private getNotInSafePathsAR(Lhqy;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "safeTunnelMicroAppInfo"    # Lhqy;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 456
    if-eqz p1, :cond_0

    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lhqw;->a(Ljava/lang/String;Lhqy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v2, 0xf

    const-string/jumbo v3, "url is not in safePaths"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 459
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "curl"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    const-string/jumbo v1, ""

    .line 383
    .local v1, "q":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 384
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 391
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public callbackGoFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 442
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mGoPageCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public callbackGoSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 428
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 431
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 433
    .local v2, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 434
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mGoPageCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->success(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v2    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 437
    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mGoPageCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callbackPopFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 452
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mPopPageCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public callbackPopSuccess()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 446
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 447
    .local v0, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 448
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mPopPageCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->success(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public callbackPreloadFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 421
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mPreloadCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public callbackPreloadSuccess(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 406
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 408
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 410
    const-string/jumbo v3, "extras"

    if-eqz p3, :cond_0

    .end local p3    # "extras":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 412
    .local v2, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 413
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mPreloadCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 418
    .end local v2    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :goto_1
    return-void

    .line 410
    .restart local p3    # "extras":Lorg/json/JSONObject;
    :cond_0
    new-instance p3, Lorg/json/JSONObject;

    .end local p3    # "extras":Lorg/json/JSONObject;
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 416
    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mPreloadCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public close(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$3;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method

.method public getCurrentId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    .line 355
    .local v4, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
    if-eqz v4, :cond_1

    .line 356
    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->getCurrentId()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 358
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 360
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "id"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 362
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 364
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 374
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .local v1, "errMsg":Ljava/lang/String;
    :goto_1
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    .line 375
    invoke-static {v7, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 368
    .end local v1    # "errMsg":Ljava/lang/String;
    .restart local v2    # "id":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "current nav id is null"

    .line 370
    .restart local v1    # "errMsg":Ljava/lang/String;
    goto :goto_1

    .line 372
    .end local v1    # "errMsg":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "nav model is null, this api is supposed to be called after resume event"

    .restart local v1    # "errMsg":Ljava/lang/String;
    goto :goto_1
.end method

.method public getDelegateModelType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    return-object v0
.end method

.method public go(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 176
    .local v4, "jsonObject":Lorg/json/JSONObject;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mGoPageCallbackId:Ljava/lang/String;

    .line 178
    :try_start_0
    const-string/jumbo v0, "id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "pageId":Ljava/lang/String;
    const-string/jumbo v0, "anim"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 181
    .local v6, "anim":I
    const-string/jumbo v0, "createIfNeeded"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 182
    .local v2, "createIfNeeded":Z
    const-string/jumbo v0, "url"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 183
    .local v11, "url":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "pageUrl":Ljava/lang/String;
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v0

    invoke-interface {v0, v8}, Lhqw;->a(Ljava/lang/String;)Lhqy;

    move-result-object v10

    .line 185
    .local v10, "safeTunnelMicroAppInfo":Lhqy;
    invoke-direct {p0, v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getNotInSafePathsAR(Lhqy;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v9

    .line 186
    .local v9, "safePathActionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    if-eqz v9, :cond_0

    .line 251
    .end local v2    # "createIfNeeded":Z
    .end local v3    # "pageId":Ljava/lang/String;
    .end local v6    # "anim":I
    .end local v8    # "pageUrl":Ljava/lang/String;
    .end local v9    # "safePathActionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .end local v10    # "safeTunnelMicroAppInfo":Lhqy;
    .end local v11    # "url":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 190
    .restart local v2    # "createIfNeeded":Z
    .restart local v3    # "pageId":Ljava/lang/String;
    .restart local v6    # "anim":I
    .restart local v8    # "pageUrl":Ljava/lang/String;
    .restart local v9    # "safePathActionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .restart local v10    # "safeTunnelMicroAppInfo":Lhqy;
    .restart local v11    # "url":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;ZLjava/lang/String;Lorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/ActionRequest;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v2    # "createIfNeeded":Z
    .end local v3    # "pageId":Ljava/lang/String;
    .end local v6    # "anim":I
    .end local v8    # "pageUrl":Ljava/lang/String;
    .end local v9    # "safePathActionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .end local v10    # "safeTunnelMicroAppInfo":Lhqy;
    .end local v11    # "url":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v9

    goto :goto_0

    .line 247
    :catch_0
    move-exception v7

    .line 248
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 249
    const/4 v0, 0x2

    const-string/jumbo v1, "invalid args"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mGoPageCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public pop(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 332
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mPopPageCallbackId:Ljava/lang/String;

    .line 333
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 334
    .local v0, "callbackId":Ljava/lang/String;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "to"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "to":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$6;

    invoke-direct {v2, p0, v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    return-object v2
.end method

.method public preload(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 25
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 49
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 50
    .local v9, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mPreloadCallbackId:Ljava/lang/String;

    .line 51
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 53
    .local v4, "baseUrl":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v23, "pages"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 54
    .local v8, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 55
    .local v3, "arrayLength":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v11, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 57
    .local v12, "pageUrl":Ljava/lang/String;
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Lhqw;->a(Ljava/lang/String;)Lhqy;

    move-result-object v14

    .line 58
    .local v14, "safeTunnelMicroAppInfo":Lhqy;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_5

    .line 59
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 60
    .local v22, "webviewModelObject":Lorg/json/JSONObject;
    const-string/jumbo v23, "tabs"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 61
    .local v16, "tabArray":Lorg/json/JSONArray;
    new-instance v21, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;-><init>()V

    .line 62
    .local v21, "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v23

    if-lez v23, :cond_3

    .line 63
    const-string/jumbo v23, "id"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "id":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setId(Ljava/lang/String;)V

    .line 66
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v19, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v17

    .line 69
    .local v17, "tabArrayLength":I
    const/16 v18, 0x0

    .local v18, "tabIndex":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 70
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 71
    .local v15, "sunTabObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->createWebViewModelFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    move-result-object v10

    .line 72
    .local v10, "model":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v10}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getUrl()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getNotInSafePathsAR(Lhqy;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v13

    .line 74
    .local v13, "safePathActionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    if-eqz v13, :cond_1

    .line 114
    .end local v3    # "arrayLength":I
    .end local v6    # "i":I
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "model":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .end local v11    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .end local v12    # "pageUrl":Ljava/lang/String;
    .end local v13    # "safePathActionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .end local v14    # "safeTunnelMicroAppInfo":Lhqy;
    .end local v15    # "sunTabObject":Lorg/json/JSONObject;
    .end local v16    # "tabArray":Lorg/json/JSONArray;
    .end local v17    # "tabArrayLength":I
    .end local v18    # "tabIndex":I
    .end local v19    # "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .end local v21    # "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .end local v22    # "webviewModelObject":Lorg/json/JSONObject;
    :cond_0
    :goto_2
    return-object v13

    .line 69
    .restart local v3    # "arrayLength":I
    .restart local v6    # "i":I
    .restart local v7    # "id":Ljava/lang/String;
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    .restart local v10    # "model":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .restart local v11    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .restart local v12    # "pageUrl":Ljava/lang/String;
    .restart local v13    # "safePathActionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .restart local v14    # "safeTunnelMicroAppInfo":Lhqy;
    .restart local v15    # "sunTabObject":Lorg/json/JSONObject;
    .restart local v16    # "tabArray":Lorg/json/JSONArray;
    .restart local v17    # "tabArrayLength":I
    .restart local v18    # "tabIndex":I
    .restart local v19    # "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .restart local v21    # "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .restart local v22    # "webviewModelObject":Lorg/json/JSONObject;
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 79
    .end local v10    # "model":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .end local v13    # "safePathActionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .end local v15    # "sunTabObject":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setTabs(Ljava/util/List;)V

    .line 88
    .end local v7    # "id":Ljava/lang/String;
    .end local v17    # "tabArrayLength":I
    .end local v18    # "tabIndex":I
    .end local v19    # "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getUrl()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getNotInSafePathsAR(Lhqy;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v13

    .line 89
    .restart local v13    # "safePathActionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    if-nez v13, :cond_0

    .line 93
    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    .end local v13    # "safePathActionResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_3
    const-string/jumbo v23, "url"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 84
    .local v20, "url":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setUrl(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v23, "id"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setId(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v23, "title"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 110
    .end local v3    # "arrayLength":I
    .end local v6    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .end local v12    # "pageUrl":Ljava/lang/String;
    .end local v14    # "safeTunnelMicroAppInfo":Lhqy;
    .end local v16    # "tabArray":Lorg/json/JSONArray;
    .end local v20    # "url":Ljava/lang/String;
    .end local v21    # "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .end local v22    # "webviewModelObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 111
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 112
    const/16 v23, 0x2

    const-string/jumbo v24, "invalid args"

    invoke-static/range {v23 .. v24}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mPreloadCallbackId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 114
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_4
    :goto_4
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v13

    goto :goto_2

    .line 97
    .restart local v3    # "arrayLength":I
    .restart local v6    # "i":I
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    .restart local v11    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .restart local v12    # "pageUrl":Ljava/lang/String;
    .restart local v14    # "safeTunnelMicroAppInfo":Lhqy;
    :cond_5
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_4

    .line 98
    new-instance v23, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public push(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 258
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mGoPageCallbackId:Ljava/lang/String;

    .line 260
    :try_start_0
    const-string/jumbo v8, "id"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "pageId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    .line 264
    .local v3, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
    if-nez v3, :cond_0

    .line 265
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x3

    const-string/jumbo v11, "nav model is null"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 326
    .end local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
    .end local v4    # "pageId":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 267
    .restart local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
    .restart local v4    # "pageId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->hasPage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "url"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 268
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x3

    const-string/jumbo v11, "no url provided"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    .end local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
    .end local v4    # "pageId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 324
    const/4 v8, 0x2

    const-string/jumbo v9, "invalid args"

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mGoPageCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 326
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v8

    goto :goto_0

    .line 271
    .restart local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
    .restart local v4    # "pageId":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v8, "anim"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 272
    .local v0, "anim":I
    const-string/jumbo v8, "title"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, "title":Ljava/lang/String;
    const-string/jumbo v8, "url"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "url":Ljava/lang/String;
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v8, v6}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 275
    new-instance v7, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-direct {v7}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;-><init>()V

    .line 276
    .local v7, "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    invoke-virtual {v7, v4}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setId(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v7, v6}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setUrl(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v7, v5}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setTitle(Ljava/lang/String;)V

    .line 280
    new-instance v8, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;

    invoke-direct {v8, p0, v0, v2, v7}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;ILorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/model/WebViewModel;)V

    invoke-virtual {p0, v8}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public quit(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 165
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 168
    :goto_0
    return-object v1

    .restart local v0    # "ctx":Landroid/content/Context;
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "invalid context"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recycle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    :try_start_0
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "ids"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 123
    .local v2, "ids":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$2;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "ids":Lorg/json/JSONArray;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    return-object v3

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 138
    const/4 v3, 0x2

    const-string/jumbo v4, "invalid args"

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->mPreloadCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
