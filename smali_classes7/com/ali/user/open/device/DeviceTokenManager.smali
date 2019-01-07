.class public Lcom/ali/user/open/device/DeviceTokenManager;
.super Ljava/lang/Object;
.source "DeviceTokenManager.java"


# static fields
.field private static volatile a:Lcom/ali/user/open/device/DeviceTokenManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ali/user/open/device/DeviceTokenAccount;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 78
    new-instance v0, Lcom/ali/user/open/device/DeviceTokenAccount;

    invoke-direct {v0}, Lcom/ali/user/open/device/DeviceTokenAccount;-><init>()V

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v2, "openId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/open/device/DeviceTokenAccount;->openId:Ljava/lang/String;

    .line 84
    const-string/jumbo v2, "tokenKey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/open/device/DeviceTokenAccount;->tokenKey:Ljava/lang/String;

    .line 85
    const-string/jumbo v2, "site"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/open/device/DeviceTokenAccount;->site:Ljava/lang/String;

    .line 86
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/open/device/DeviceTokenAccount;->hid:Ljava/lang/String;

    .line 87
    const-string/jumbo v2, "t"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/open/device/DeviceTokenAccount;->t:Ljava/lang/String;

    .line 91
    :cond_0
    return-object v0
.end method

.method private a(Lcom/ali/user/open/device/DeviceTokenAccount;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    :try_start_0
    const-string/jumbo v1, "openId"

    iget-object v2, p1, Lcom/ali/user/open/device/DeviceTokenAccount;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v1, "tokenKey"

    iget-object v2, p1, Lcom/ali/user/open/device/DeviceTokenAccount;->tokenKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v1, "site"

    iget-object v2, p1, Lcom/ali/user/open/device/DeviceTokenAccount;->site:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v1, "userId"

    iget-object v2, p1, Lcom/ali/user/open/device/DeviceTokenAccount;->hid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    const-string/jumbo v0, ""

    goto :goto_0

    .line 110
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getInstance()Lcom/ali/user/open/device/DeviceTokenManager;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/ali/user/open/device/DeviceTokenManager;->a:Lcom/ali/user/open/device/DeviceTokenManager;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/ali/user/open/device/DeviceTokenManager;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/ali/user/open/device/DeviceTokenManager;->a:Lcom/ali/user/open/device/DeviceTokenManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/ali/user/open/device/DeviceTokenManager;

    invoke-direct {v0}, Lcom/ali/user/open/device/DeviceTokenManager;-><init>()V

    sput-object v0, Lcom/ali/user/open/device/DeviceTokenManager;->a:Lcom/ali/user/open/device/DeviceTokenManager;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/ali/user/open/device/DeviceTokenManager;->a:Lcom/ali/user/open/device/DeviceTokenManager;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearDeviceToken()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v1, "device_token"

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/StorageService;->removeDDpExValue(Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceToken()Lcom/ali/user/open/device/DeviceTokenAccount;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v2, "device_token"

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/StorageService;->getDDpExValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ali/user/open/device/DeviceTokenManager;->a(Ljava/lang/String;)Lcom/ali/user/open/device/DeviceTokenAccount;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v2, "device_token"

    invoke-interface {v0, v2}, Lcom/ali/user/open/core/service/StorageService;->removeDDpExValue(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public putDeviceToken(Lcom/ali/user/open/device/DeviceTokenAccount;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 52
    invoke-static {}, Lcom/ali/user/open/core/config/ConfigManager;->getInstance()Lcom/ali/user/open/core/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/open/core/config/ConfigManager;->isSaveHistoryWithSalt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    iget-object v1, p1, Lcom/ali/user/open/device/DeviceTokenAccount;->tokenKey:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/ali/user/open/core/service/StorageService;->saveSafeToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lcom/ali/user/open/device/DeviceTokenManager;->a(Lcom/ali/user/open/device/DeviceTokenAccount;)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v2, "device_token"

    invoke-interface {v0, v2, v1}, Lcom/ali/user/open/core/service/StorageService;->putDDpExValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeDeviceToken(Lcom/ali/user/open/device/DeviceTokenAccount;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    iget-object v1, p1, Lcom/ali/user/open/device/DeviceTokenAccount;->tokenKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/StorageService;->removeSafeToken(Ljava/lang/String;)V

    .line 43
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v1, "device_token"

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/StorageService;->removeDDpExValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
