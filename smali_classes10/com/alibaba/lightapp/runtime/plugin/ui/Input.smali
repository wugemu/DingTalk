.class public Lcom/alibaba/lightapp/runtime/plugin/ui/Input;
.super Lcom/alibaba/lightapp/runtime/Component;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/Component",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallbackName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Component;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/ui/Input;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Input;

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Input;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callbackResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Input;->mCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Input;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 48
    const/4 v2, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Input;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Input;->mCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Input;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
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
    .line 55
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;

    return-object v0
.end method

.method public plain(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 22
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Input;->mCallbackName:Ljava/lang/String;

    .line 23
    const-string/jumbo v3, "placeholder"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "placeHolder":Ljava/lang/String;
    const-string/jumbo v3, "text"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/ui/Input$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Input$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Input;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Input;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    return-object v3
.end method
