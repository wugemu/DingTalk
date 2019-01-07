.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Auth.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public postLoginTempCode(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;-><init>()V

    .line 25
    .local v1, "dt3rdPartyAuthObject":Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;
    const/4 v6, 0x0

    .line 27
    .local v6, "jsCallbackSuccess":Z
    :try_start_0
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "isCancel"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 29
    .local v5, "isCancel":Z
    if-eqz v5, :cond_0

    .line 30
    const/4 v7, -0x2

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->setErrorCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    const/4 v6, 0x1

    .line 59
    .end local v5    # "isCancel":Z
    :goto_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v8, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth$1;

    invoke-direct {v8, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;)V

    const-wide/16 v10, 0xa

    invoke-virtual {v7, v8, v10, v11}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    if-eqz v6, :cond_2

    .line 70
    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 72
    :goto_2
    return-object v7

    .line 32
    .restart local v5    # "isCancel":Z
    :cond_0
    :try_start_1
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "code"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->setAuthCode(Ljava/lang/String;)V

    .line 35
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "errorCode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 36
    .local v3, "errorCode":I
    if-nez v3, :cond_1

    .line 37
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->setErrorCode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 51
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "errorCode":I
    .end local v5    # "isCancel":Z
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const-string/jumbo v7, "JsApi"

    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v9, "postLoginTempCode"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "reason= "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 54
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 53
    invoke-static {v7, v8, v9, v10}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->setErrorCode(I)V

    .line 56
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v3    # "errorCode":I
    .restart local v5    # "isCancel":Z
    :cond_1
    const/4 v7, -0x4

    :try_start_2
    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->setErrorCode(I)V

    .line 42
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "errorMsg"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "errorMsg":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->setErrorMsg(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v7, "JsApi"

    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v9, "postLoginTempCode"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "reason= "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 72
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "errorCode":I
    .end local v4    # "errorMsg":Ljava/lang/String;
    .end local v5    # "isCancel":Z
    :cond_2
    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v9, 0x2

    const-string/jumbo v10, "invalid args"

    invoke-static {v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_2
.end method
