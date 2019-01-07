.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Store;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Store.java"


# instance fields
.field private mSerivce:Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Store;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Store;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Store;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Store;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Store;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Store;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Store;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Store;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method buildInappPayUrlModel(Lhje;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "inappPayUrlModel"    # Lhje;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 156
    .local v1, "res":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 157
    :try_start_0
    const-string/jumbo v2, "payUrl"

    iget-object v3, p1, Lhje;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string/jumbo v2, "unionPayUrl"

    iget-object v3, p1, Lhje;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method buildInappPurchaseResult(Lhjf;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "inappPurchaseResult"    # Lhjf;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 140
    .local v1, "res":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 141
    :try_start_0
    const-string/jumbo v2, "bizOrderId"

    iget-object v3, p1, Lhjf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string/jumbo v2, "totalFee"

    iget-object v3, p1, Lhjf;->b:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string/jumbo v2, "totalActualPayFee"

    iget-object v3, p1, Lhjf;->c:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v2, "totalActualPromFee"

    iget-object v3, p1, Lhjf;->d:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v2, "refundFee"

    iget-object v3, p1, Lhjf;->e:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeUnPayOrder(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->closeUnpayOrder(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public closeUnpayOrder(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "params":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->mSerivce:Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->mSerivce:Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;->closeUnPayOrder(Ljava/lang/String;Liyv;)V

    .line 110
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1

    .line 107
    :cond_0
    const/4 v1, 0x3

    const-string/jumbo v2, "no service"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createOrder(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "params":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->mSerivce:Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->mSerivce:Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;->createOrder(Ljava/lang/String;Liyv;)V

    .line 73
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1

    .line 70
    :cond_0
    const/4 v1, 0x3

    const-string/jumbo v2, "no service"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPayUrl(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "params":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->mSerivce:Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->mSerivce:Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$4;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;->getPayUrl(Ljava/lang/String;Liyv;)V

    .line 134
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1

    .line 131
    :cond_0
    const/4 v1, 0x3

    const-string/jumbo v2, "no service"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public inquiry(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "params":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->mSerivce:Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->mSerivce:Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;->inquiry(Ljava/lang/String;Liyv;)V

    .line 49
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1

    .line 46
    :cond_0
    const/4 v1, 0x3

    const-string/jumbo v2, "no service"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 25
    const-class v0, Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->mSerivce:Lcom/alibaba/lightapp/runtime/idl/StoreInappPurchaseIService;

    .line 26
    return-void
.end method
