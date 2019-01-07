.class Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;
.super Ljava/lang/Object;
.source "Alipay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->pay(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

.field final synthetic val$payInfo:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->val$payInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    :try_start_0
    new-instance v3, Lcom/alipay/sdk/app/PayTask;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-direct {v3, v5}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 41
    .local v3, "payTask":Lcom/alipay/sdk/app/PayTask;
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->val$payInfo:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;Ljava/lang/String;)V

    .line 43
    .local v2, "payResult":Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "resultStatus"

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v5, "result"

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v5, "memo"

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->getMemo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "payResult":Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;
    .end local v3    # "payTask":Lcom/alipay/sdk/app/PayTask;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 50
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    const/4 v6, 0x2

    const-string/jumbo v7, "error building json"

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v4

    .line 52
    .local v4, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    const/4 v6, 0x3

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
