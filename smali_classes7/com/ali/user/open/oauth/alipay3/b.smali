.class public Lcom/ali/user/open/oauth/alipay3/b;
.super Ljava/lang/Object;
.source "AlipayRpcPresenter.java"


# direct methods
.method public static a(Lcom/ali/user/open/oauth/alipay3/SignRequest;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 5

    .prologue
    .line 58
    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    .line 60
    const-string/jumbo v0, "mtop.taobao.login.signForAlipaySNSLogin"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    .line 63
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 65
    :try_start_0
    const-string/jumbo v3, "appName"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string/jumbo v0, "appVersion"

    const-string/jumbo v3, "android_1.0.2"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string/jumbo v0, "ttid"

    const-string/jumbo v3, "android_1.0.2"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string/jumbo v0, "utdid"

    sget-object v3, Lcom/ali/user/open/core/device/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v0, "sdkVersion"

    const-string/jumbo v3, "a_1.5.1-std"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v0, "deviceId"

    sget-object v3, Lcom/ali/user/open/core/device/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string/jumbo v0, "site"

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 75
    const-string/jumbo v0, "target_id"

    iget-object v4, p0, Lcom/ali/user/open/oauth/alipay3/SignRequest;->target_id:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string/jumbo v0, "pid"

    iget-object v4, p0, Lcom/ali/user/open/oauth/alipay3/SignRequest;->pid:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string/jumbo v0, "app_id"

    iget-object v4, p0, Lcom/ali/user/open/oauth/alipay3/SignRequest;->app_id:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v0, "sign_type"

    iget-object v4, p0, Lcom/ali/user/open/oauth/alipay3/SignRequest;->sign_type:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v0, "apiVersion"

    const-string/jumbo v4, "2.0"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :try_start_1
    const-string/jumbo v0, "deviceName"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :goto_0
    :try_start_2
    const-string/jumbo v0, "ext"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 91
    :goto_1
    const-string/jumbo v0, "loginInfo"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Lcom/ali/user/open/oauth/alipay3/SignResult;

    invoke-interface {v0, v1, v2, p1}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 93
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Lcom/ali/user/open/oauth/alipay3/c;Lcom/ali/user/open/oauth/alipay3/SignRequest;)V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/ali/user/open/oauth/alipay3/b$1;

    invoke-direct {v0, p0}, Lcom/ali/user/open/oauth/alipay3/b$1;-><init>(Lcom/ali/user/open/oauth/alipay3/c;)V

    invoke-static {p1, v0}, Lcom/ali/user/open/oauth/alipay3/b;->a(Lcom/ali/user/open/oauth/alipay3/SignRequest;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 54
    return-void
.end method
