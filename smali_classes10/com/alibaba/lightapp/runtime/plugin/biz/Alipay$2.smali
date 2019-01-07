.class Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$2;
.super Ljava/lang/Object;
.source "Alipay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->auth(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

.field final synthetic val$authInfo:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$2;->val$authInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    new-instance v1, Lcom/alipay/sdk/app/AuthTask;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/alipay/sdk/app/AuthTask;-><init>(Landroid/app/Activity;)V

    .line 83
    .local v1, "authTask":Lcom/alipay/sdk/app/AuthTask;
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$2;->val$authInfo:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/alipay/sdk/app/AuthTask;->auth(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;Ljava/lang/String;)V

    .line 85
    .local v0, "authResult":Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "resultStatus"

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->getResultStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v4, "result"

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v4, "memo"

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->getMemo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 94
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    const/4 v5, 0x2

    const-string/jumbo v6, "error building json"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
