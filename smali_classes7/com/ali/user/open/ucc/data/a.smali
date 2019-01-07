.class public Lcom/ali/user/open/ucc/data/a;
.super Ljava/lang/Object;
.source "DataRepository.java"


# direct methods
.method private static a()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 299
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 300
    invoke-static {}, Lcom/ali/user/open/device/DeviceTokenManager;->getInstance()Lcom/ali/user/open/device/DeviceTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/open/device/DeviceTokenManager;->getDeviceToken()Lcom/ali/user/open/device/DeviceTokenAccount;

    move-result-object v2

    .line 301
    invoke-static {}, Lcom/ali/user/open/history/AccountHistoryManager;->getInstance()Lcom/ali/user/open/history/AccountHistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/open/history/AccountHistoryManager;->getHistoryAccounts()Ljava/util/List;

    move-result-object v3

    .line 302
    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/ali/user/open/device/DeviceTokenAccount;->tokenKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 303
    :cond_0
    const-string/jumbo v0, "deviceTokenKey"

    iget-object v3, v2, Lcom/ali/user/open/device/DeviceTokenAccount;->tokenKey:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v0, "userId"

    iget-object v2, v2, Lcom/ali/user/open/device/DeviceTokenAccount;->hid:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_1
    :goto_0
    return-object v1

    .line 305
    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 306
    const-string/jumbo v2, "deviceTokenKey"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/history/HistoryAccount;

    iget-object v0, v0, Lcom/ali/user/open/history/HistoryAccount;->tokenKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v2, "userId"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/history/HistoryAccount;

    iget-object v0, v0, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 308
    :cond_3
    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/ali/user/open/device/DeviceTokenAccount;->tokenKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 309
    iget-object v0, v2, Lcom/ali/user/open/device/DeviceTokenAccount;->t:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 310
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/history/HistoryAccount;

    iget-object v0, v0, Lcom/ali/user/open/history/HistoryAccount;->t:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 311
    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    .line 312
    const-string/jumbo v2, "deviceTokenKey"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/history/HistoryAccount;

    iget-object v0, v0, Lcom/ali/user/open/history/HistoryAccount;->tokenKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v2, "userId"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/history/HistoryAccount;

    iget-object v0, v0, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 315
    :cond_4
    const-string/jumbo v0, "deviceTokenKey"

    iget-object v3, v2, Lcom/ali/user/open/device/DeviceTokenAccount;->tokenKey:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v0, "userId"

    iget-object v2, v2, Lcom/ali/user/open/device/DeviceTokenAccount;->hid:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private static a(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequest;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 179
    new-instance v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;

    invoke-direct {v2}, Lcom/ali/user/open/ucc/data/AuthorizationRequest;-><init>()V

    .line 180
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;->appName:Ljava/lang/String;

    .line 181
    invoke-static {}, Lcom/ali/user/open/core/device/DeviceInfo;->getInstance()Lcom/ali/user/open/core/device/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/open/core/device/DeviceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;->appVersion:Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/ali/user/open/core/device/DeviceInfo;->deviceId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;->utdid:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "a_1.5.1-std"

    iput-object v0, v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;->sdkVersion:Ljava/lang/String;

    .line 184
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;->deviceName:Ljava/lang/String;

    .line 185
    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/open/core/device/DeviceInfo;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;->locale:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/ali/user/open/ucc/model/BindParams;->site:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;->localSite:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/ali/user/open/ucc/model/BindParams;->userToken:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;->userToken:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/ali/user/open/ucc/model/BindParams;->bindSite:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;->targetSite:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/ali/user/open/ucc/model/BindParams;->scene:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;->scene:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, "icbu"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->bindSite:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 193
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 195
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 196
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 197
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string/jumbo v5, ".alibaba.com"

    invoke-virtual {v0, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 199
    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 200
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 201
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 202
    :goto_0
    array-length v1, v5

    if-ge v0, v1, :cond_2

    .line 203
    aget-object v1, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 205
    const-string/jumbo v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 206
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 207
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string/jumbo v7, "xman_us_f"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "xman_t"

    .line 209
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "xman_f"

    .line 210
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "intl_common_forever"

    .line 211
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "acs_usuc_t"

    .line 212
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 215
    :cond_0
    invoke-interface {v6, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_2
    const-string/jumbo v0, "alibaba.com"

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string/jumbo v0, "clientCookies"

    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iput-object v3, v2, Lcom/ali/user/open/ucc/data/AuthorizationRequest;->ext:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_3
    :goto_1
    const-string/jumbo v0, "authorizationRequest"

    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 4

    .prologue
    .line 36
    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    .line 38
    const-string/jumbo v0, "mtop.alibaba.ucc.getLocalSiteAuthUrl"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    .line 40
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 42
    :try_start_0
    invoke-static {v2}, Lcom/ali/user/open/ucc/data/a;->a(Lorg/json/JSONObject;)V

    .line 43
    const-string/jumbo v0, "site"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->site:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string/jumbo v0, "userToken"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->userToken:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v0, "bindSite"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->bindSite:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v0, "scene"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->scene:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string/jumbo v0, "createBindSiteSession"

    iget-boolean v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->createBindSiteSession:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    const-string/jumbo v0, "request"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string/jumbo v0, "riskControlInfo"

    invoke-static {}, Lcom/ali/user/open/ucc/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Lcom/ali/user/open/ucc/model/FetchBindPageUrlResult;

    invoke-interface {v0, v1, v2, p1}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 55
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 3

    .prologue
    .line 137
    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    .line 139
    const-string/jumbo v0, "mtop.alibaba.ucc.bind.change"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    .line 140
    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    .line 141
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_0
    invoke-static {v2}, Lcom/ali/user/open/ucc/data/a;->a(Lorg/json/JSONObject;)V

    .line 144
    const-string/jumbo v0, "requestToken"

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    const-string/jumbo v0, "request"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string/jumbo v0, "riskControlInfo"

    invoke-static {}, Lcom/ali/user/open/ucc/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 152
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 325
    :try_start_0
    const-string/jumbo v1, "appName"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string/jumbo v0, "appVersion"

    invoke-static {}, Lcom/ali/user/open/core/device/DeviceInfo;->getInstance()Lcom/ali/user/open/core/device/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/open/core/device/DeviceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string/jumbo v0, "utdid"

    sget-object v1, Lcom/ali/user/open/core/device/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string/jumbo v0, "sdkVersion"

    const-string/jumbo v1, "a_1.5.1-std"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string/jumbo v0, "deviceName"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string/jumbo v0, "locale"

    sget-object v1, Lcom/ali/user/open/core/context/KernelContext;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/open/core/device/DeviceInfo;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 4

    .prologue
    .line 58
    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    .line 60
    const-string/jumbo v0, "mtop.alibaba.ucc.bindByNativeAuth"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    .line 62
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 64
    :try_start_0
    invoke-static {v2}, Lcom/ali/user/open/ucc/data/a;->a(Lorg/json/JSONObject;)V

    .line 65
    const-string/jumbo v0, "site"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->site:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string/jumbo v0, "userToken"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->userToken:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string/jumbo v0, "bindSite"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->bindSite:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string/jumbo v0, "bindUserToken"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->bindUserToken:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v0, "bindUserTokenType"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->bindUserTokenType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v0, "createBindSiteSession"

    iget-boolean v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->createBindSiteSession:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    const-string/jumbo v0, "request"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string/jumbo v0, "riskControlInfo"

    invoke-static {}, Lcom/ali/user/open/ucc/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 77
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 3

    .prologue
    .line 289
    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    .line 291
    const-string/jumbo v0, "mtop.alibaba.ucc.bind.pure.oauth"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    .line 292
    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    .line 293
    const-string/jumbo v0, "trustLoginToken"

    invoke-virtual {v1, v0, p0}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    const-string/jumbo v0, "riskControlInfo"

    invoke-static {}, Lcom/ali/user/open/ucc/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 296
    return-void
.end method

.method public static c(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 4

    .prologue
    .line 80
    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    .line 82
    const-string/jumbo v0, "mtop.alibaba.ucc.unbind"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    .line 84
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 86
    :try_start_0
    invoke-static {v2}, Lcom/ali/user/open/ucc/data/a;->a(Lorg/json/JSONObject;)V

    .line 87
    const-string/jumbo v0, "site"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->site:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v0, "userToken"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->userToken:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v0, "bindSite"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->bindSite:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    const-string/jumbo v0, "request"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string/jumbo v0, "riskControlInfo"

    invoke-static {}, Lcom/ali/user/open/ucc/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 96
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 4

    .prologue
    .line 99
    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    .line 101
    const-string/jumbo v0, "mtop.alibaba.ucc.recommend.bind"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    .line 103
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 105
    :try_start_0
    invoke-static {v2}, Lcom/ali/user/open/ucc/data/a;->a(Lorg/json/JSONObject;)V

    .line 106
    const-string/jumbo v0, "requestToken"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->requestToken:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string/jumbo v0, "bindUserToken"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->bindUserToken:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    const-string/jumbo v0, "request"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string/jumbo v0, "riskControlInfo"

    invoke-static {}, Lcom/ali/user/open/ucc/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 114
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static e(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 4

    .prologue
    .line 117
    new-instance v1, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v1}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    .line 119
    const-string/jumbo v0, "mtop.alibaba.ucc.bind.identify"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    .line 121
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 123
    :try_start_0
    invoke-static {v2}, Lcom/ali/user/open/ucc/data/a;->a(Lorg/json/JSONObject;)V

    .line 124
    const-string/jumbo v0, "requestToken"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->requestToken:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v0, "ivToken"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->ivToken:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v0, "bindUserToken"

    iget-object v3, p0, Lcom/ali/user/open/ucc/model/BindParams;->bindUserToken:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    const-string/jumbo v0, "request"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string/jumbo v0, "riskControlInfo"

    invoke-static {}, Lcom/ali/user/open/ucc/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 133
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static f(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 6

    .prologue
    .line 156
    new-instance v2, Lcom/ali/user/open/core/model/RpcRequest;

    invoke-direct {v2}, Lcom/ali/user/open/core/model/RpcRequest;-><init>()V

    .line 158
    const-string/jumbo v0, "mtop.alibaba.ucc.oauthLogin"

    iput-object v0, v2, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, "1.0"

    iput-object v0, v2, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    .line 160
    invoke-static {p0, v2}, Lcom/ali/user/open/ucc/data/a;->a(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequest;)V

    .line 162
    invoke-static {}, Lcom/ali/user/open/ucc/data/a;->a()Ljava/util/Map;

    move-result-object v1

    .line 163
    const-string/jumbo v0, "deviceTokenKey"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const-string/jumbo v0, "deviceTokenKey"

    const-string/jumbo v3, "deviceTokenKey"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 167
    const-string/jumbo v4, "appKey"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-interface {v0}, Lcom/ali/user/open/core/service/StorageService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v0, "appVersion"

    invoke-static {}, Lcom/ali/user/open/core/device/DeviceInfo;->getInstance()Lcom/ali/user/open/core/device/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/open/core/device/DeviceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v0, "havanaId"

    const-string/jumbo v4, "userId"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v0, "sdkVersion"

    const-string/jumbo v4, "a_1.5.1-std"

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v4, "deviceTokenSign"

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v5, "deviceTokenKey"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/ali/user/open/core/service/StorageService;->signMap(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    :cond_0
    const-string/jumbo v0, "riskControlInfo"

    invoke-static {}, Lcom/ali/user/open/ucc/util/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/ali/user/open/core/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1, p1}, Lcom/ali/user/open/core/service/RpcService;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 177
    return-void
.end method
