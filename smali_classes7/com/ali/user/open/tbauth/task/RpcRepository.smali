.class public Lcom/ali/user/open/tbauth/task/RpcRepository;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getAccessTokenWithAuthCode(Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 4

    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    const-string/jumbo v0, "mtop.alibaba.ucc.convertAuthCodeToAccessToken"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "appName"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "authCode"

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "site"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "convertAccessTokenRequest"

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;

    invoke-interface {v0, v1, v2, p2}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static loginByIVToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 6

    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    const-string/jumbo v0, "com.taobao.mtop.mloginService.mloginTokenLogin"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-boolean v0, Lcom/ali/user/open/core/context/KernelContext;->isMini:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "app_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/ali/user/open/core/util/SystemUtils;->getApkPublicKeyDigest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string/jumbo v0, "site"

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "appName"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "token"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "t"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "scene"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sdkVersion"

    sget-object v3, Lcom/ali/user/open/core/context/KernelContext;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "clientIp"

    invoke-static {}, Lcom/ali/user/open/core/util/CommonUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "aliusersdk_h5querystring"

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "ext"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    const-string/jumbo v0, "tokenInfo"

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "umidToken"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getUmid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "riskControlInfo"

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "ext"

    invoke-static {v0}, Lcom/ali/user/open/core/util/JSONUtils;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Lcom/ali/user/open/core/model/LoginReturnData;

    invoke-interface {v0, v1, v2, p4}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    return-void

    :cond_0
    :try_start_3
    const-string/jumbo v3, "utdid"

    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/RpcService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public static loginByRefreshToken(Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 9

    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    const-string/jumbo v0, "com.taobao.mtop.mLoginUnitService.autoLogin"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v0}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v0

    iget-object v2, v0, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    const-string/jumbo v0, "userId"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "appName"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "token"

    sget-object v4, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v4}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v4

    iget-object v4, v4, Lcom/ali/user/open/session/InternalSession;->autoLoginToken:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sdkVersion"

    sget-object v4, Lcom/ali/user/open/core/context/KernelContext;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v0, "t"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "clientIp"

    invoke-static {}, Lcom/ali/user/open/core/util/CommonUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-boolean v0, Lcom/ali/user/open/core/context/KernelContext;->isMini:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "app_id"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/ali/user/open/core/util/SystemUtils;->getApkPublicKeyDigest()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ali/user/open/history/AccountHistoryManager;->getInstance()Lcom/ali/user/open/history/AccountHistoryManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ali/user/open/history/AccountHistoryManager;->findHistoryAccount(Ljava/lang/String;)Lcom/ali/user/open/history/HistoryAccount;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/ali/user/open/history/HistoryAccount;->tokenKey:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    const-string/jumbo v8, "appKey"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v0}, Lcom/ali/user/open/tbauth/task/RpcRepository;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "havanaId"

    iget-object v8, v2, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    invoke-static {v7, v0, v8}, Lcom/ali/user/open/tbauth/task/RpcRepository;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v0, v4}, Lcom/ali/user/open/tbauth/task/RpcRepository;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "appVersion"

    invoke-static {}, Lcom/ali/user/open/core/util/CommonUtils;->getAndroidAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v0, v4}, Lcom/ali/user/open/tbauth/task/RpcRepository;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sdkVersion"

    sget-object v4, Lcom/ali/user/open/core/context/KernelContext;->sdkVersion:Ljava/lang/String;

    invoke-static {v7, v0, v4}, Lcom/ali/user/open/tbauth/task/RpcRepository;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0, v6, v7}, Lcom/ali/user/open/core/service/StorageService;->signMap(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "deviceTokenSign"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "deviceTokenKey"

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "hid"

    iget-object v2, v2, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v0, "tokenInfo"

    invoke-virtual {v1, v0, v3}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "umidToken"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getUmid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "riskControlInfo"

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ext"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Lcom/ali/user/open/core/model/LoginReturnData;

    invoke-interface {v0, v1, v2, p0}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v6, "utdid"

    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/RpcService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static logout(Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 6

    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    const-string/jumbo v0, "mtop.taobao.havana.mlogin.logout"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "appKey"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sid"

    sget-object v3, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v3}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v3

    iget-object v3, v3, Lcom/ali/user/open/session/InternalSession;->sid:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ip"

    invoke-static {}, Lcom/ali/user/open/core/util/CommonUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "userId"

    sget-object v3, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v3}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v3

    iget-object v3, v3, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "request"

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static refreshPageAfterOpenTb(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 6

    const-class v0, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/UserTrackerService;

    const-string/jumbo v1, "TOP_TOKEN_LOGIN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    const-string/jumbo v0, "com.taobao.mtop.mloginService.topTokenLogin"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-boolean v0, Lcom/ali/user/open/core/context/KernelContext;->isMini:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "app_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/ali/user/open/core/util/SystemUtils;->getApkPublicKeyDigest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string/jumbo v3, "appName"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "token"

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "t"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sdkVersion"

    sget-object v3, Lcom/ali/user/open/core/context/KernelContext;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "clientIp"

    invoke-static {}, Lcom/ali/user/open/core/util/CommonUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "tokenInfo"

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "umidToken"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getUmid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "riskControlInfo"

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ext"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Lcom/ali/user/open/core/model/LoginReturnData;

    invoke-interface {v0, v1, v2, p1}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v3, "utdid"

    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/RpcService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static validateAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 3

    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    const-string/jumbo v0, "mtop.alibaba.ucc.authcodet.validate"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    const-string/jumbo v2, "appKey"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "authCode"

    invoke-virtual {v1, v0, p0}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "site"

    invoke-virtual {v1, v0, p1}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "targetSite"

    invoke-virtual {v1, v0, p2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Lcom/ali/user/open/tbauth/task/ConvertAuthCodeToAccessTokenData;

    invoke-interface {v0, v1, v2, p3}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    return-void
.end method
