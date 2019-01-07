.class public Lcom/ali/user/open/service/impl/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/ali/user/open/service/SessionService;


# static fields
.field public static final INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

.field private static final a:Ljava/lang/String;


# instance fields
.field private volatile b:Lcom/ali/user/open/session/InternalSession;

.field public internalSessionStoreKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/open/service/impl/SessionManager;->a:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/ali/user/open/service/impl/SessionManager;

    invoke-direct {v0}, Lcom/ali/user/open/service/impl/SessionManager;-><init>()V

    sput-object v0, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "internal_session"

    iput-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->internalSessionStoreKey:Ljava/lang/String;

    .line 41
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/service/impl/SessionManager;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    new-instance v0, Lcom/ali/user/open/session/InternalSession;

    invoke-direct {v0}, Lcom/ali/user/open/session/InternalSession;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ali/user/open/core/util/ReflectionUtils;->newInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 297
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 48
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/ali/user/open/service/impl/SessionManager;->b()V

    .line 52
    :cond_0
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v1, "loginEnvironmentIndex"

    invoke-interface {v0, v1, v3}, Lcom/ali/user/open/core/service/StorageService;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getEnvironment()Lcom/ali/user/open/core/config/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/open/core/config/Environment;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    const-string/jumbo v2, "loginEnvironmentIndex"

    invoke-interface {v0, v2, v1, v3}, Lcom/ali/user/open/core/service/StorageService;->putValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    iget-object v1, p0, Lcom/ali/user/open/service/impl/SessionManager;->internalSessionStoreKey:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/ali/user/open/core/service/StorageService;->removeValue(Ljava/lang/String;Z)V

    .line 58
    new-instance v0, Lcom/ali/user/open/session/InternalSession;

    invoke-direct {v0}, Lcom/ali/user/open/session/InternalSession;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    .line 72
    :goto_0
    return-void

    .line 63
    :cond_1
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    iget-object v1, p0, Lcom/ali/user/open/service/impl/SessionManager;->internalSessionStoreKey:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/ali/user/open/core/service/StorageService;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    iget-object v1, p0, Lcom/ali/user/open/service/impl/SessionManager;->internalSessionStoreKey:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/ali/user/open/core/service/StorageService;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 68
    invoke-virtual {p0, v0}, Lcom/ali/user/open/service/impl/SessionManager;->createInternalSession(Ljava/lang/String;)Lcom/ali/user/open/session/InternalSession;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    goto :goto_0

    .line 70
    :cond_3
    new-instance v0, Lcom/ali/user/open/session/InternalSession;

    invoke-direct {v0}, Lcom/ali/user/open/session/InternalSession;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    goto :goto_0
.end method

.method private a(Lcom/ali/user/open/session/InternalSession;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    .line 129
    const-class v0, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/StorageService;

    iget-object v1, p0, Lcom/ali/user/open/service/impl/SessionManager;->internalSessionStoreKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/ali/user/open/util/SessionUtils;->toInternalSessionJSON(Lcom/ali/user/open/session/InternalSession;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/core/service/StorageService;->putValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    .line 273
    :try_start_0
    const-string/jumbo v2, "com.ali.user.open.securityguard.SecurityGuardWrapper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/ali/user/open/core/context/KernelContext;->isMini:Z

    .line 276
    const-string/jumbo v1, "a_1.5.1-std"

    sput-object v1, Lcom/ali/user/open/core/context/KernelContext;->sdkVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    :goto_0
    if-eqz v0, :cond_0

    .line 281
    :try_start_2
    const-string/jumbo v0, "com.ali.ucc.open.securityguard.SecurityGuardWrapper"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ali/user/open/service/impl/SessionManager;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/ali/user/open/core/service/StorageService;

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/ali/user/open/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/user/open/core/registry/ServiceRegistration;

    .line 289
    :goto_2
    return-void

    .line 283
    :cond_0
    const-string/jumbo v0, "com.ali.ucc.open.core.storage.CommonStorageServiceImpl"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ali/user/open/service/impl/SessionManager;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public adjustSessionExpireTime(JJ)J
    .locals 5

    .prologue
    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 233
    cmp-long v2, v0, p3

    if-lez v2, :cond_0

    .line 235
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 236
    sub-long/2addr v0, p3

    add-long/2addr p1, v0

    .line 242
    :cond_0
    :goto_0
    return-wide p1

    .line 239
    :cond_1
    const-wide/32 v2, 0x15180

    add-long p1, v0, v2

    goto :goto_0
.end method

.method public createInternalSession(Ljava/lang/String;)Lcom/ali/user/open/session/InternalSession;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 91
    new-instance v1, Lcom/ali/user/open/session/InternalSession;

    invoke-direct {v1}, Lcom/ali/user/open/session/InternalSession;-><init>()V

    .line 93
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "sid"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->sid:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "expireIn"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, v1, Lcom/ali/user/open/session/InternalSession;->expireIn:J

    .line 97
    const-string/jumbo v0, "avatarUrl"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->avatarUrl:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "userId"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "nick"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->nick:Ljava/lang/String;

    .line 100
    const-string/jumbo v0, "openId"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->openId:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, "openSid"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->openSid:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "deviceTokenKey"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->deviceTokenKey:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, "deviceTokenSalt"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->deviceTokenSalt:Ljava/lang/String;

    .line 105
    iget-object v0, v1, Lcom/ali/user/open/session/InternalSession;->sid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-class v0, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/service/RpcService;

    iget-object v3, v1, Lcom/ali/user/open/session/InternalSession;->sid:Ljava/lang/String;

    iget-object v4, v1, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lcom/ali/user/open/core/service/RpcService;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    const-string/jumbo v0, "loginTime"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/ali/user/open/session/InternalSession;->loginTime:J

    .line 110
    const-string/jumbo v0, "mobile"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->mobile:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "loginId"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->loginId:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "autoLoginToken"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->autoLoginToken:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "topAccessToken"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->topAccessToken:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "topExpireTime"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->topExpireTime:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, "topAuthCode"

    invoke-static {v2, v0}, Lcom/ali/user/open/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->topAuthCode:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, "otherInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/open/core/util/JSONUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/open/session/InternalSession;->otherInfo:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-object v2, Lcom/ali/user/open/service/impl/SessionManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getInternalSession()Lcom/ali/user/open/session/InternalSession;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    return-object v0
.end method

.method public getSession()Lcom/ali/user/open/session/Session;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 247
    new-instance v1, Lcom/ali/user/open/session/Session;

    invoke-direct {v1}, Lcom/ali/user/open/session/Session;-><init>()V

    .line 248
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, v1, Lcom/ali/user/open/session/Session;->nick:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, v1, Lcom/ali/user/open/session/Session;->avatarUrl:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    iput-object v0, v1, Lcom/ali/user/open/session/Session;->openId:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_3
    iput-object v0, v1, Lcom/ali/user/open/session/Session;->openSid:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_4
    iput-object v0, v1, Lcom/ali/user/open/session/Session;->topAccessToken:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_5
    iput-object v0, v1, Lcom/ali/user/open/session/Session;->topAuthCode:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    if-nez v0, :cond_6

    const-string/jumbo v0, ""

    :goto_6
    iput-object v0, v1, Lcom/ali/user/open/session/Session;->topExpireTime:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    if-nez v0, :cond_7

    const-string/jumbo v0, ""

    :goto_7
    iput-object v0, v1, Lcom/ali/user/open/session/Session;->bindToken:Ljava/lang/String;

    .line 257
    return-object v1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->nick:Ljava/lang/String;

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->avatarUrl:Ljava/lang/String;

    goto :goto_1

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->openId:Ljava/lang/String;

    goto :goto_2

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->openSid:Ljava/lang/String;

    goto :goto_3

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->topAccessToken:Ljava/lang/String;

    goto :goto_4

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->topAuthCode:Ljava/lang/String;

    goto :goto_5

    .line 255
    :cond_6
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->topExpireTime:Ljava/lang/String;

    goto :goto_6

    .line 256
    :cond_7
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->bindToken:Ljava/lang/String;

    goto :goto_7
.end method

.method public isSessionValid()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->a:Ljava/lang/String;

    const-string/jumbo v3, "func isSessionValid"

    invoke-static {v0, v3}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    if-nez v0, :cond_1

    .line 77
    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "isSessionValid()  internalSession is null"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-wide v4, v0, Lcom/ali/user/open/session/InternalSession;->loginTime:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-wide v4, v0, Lcom/ali/user/open/session/InternalSession;->expireIn:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 82
    :cond_2
    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "isSessionValid()  loginTime is 0 or expireIn is 0"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    sget-object v3, Lcom/ali/user/open/service/impl/SessionManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "isSessionValid()  "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v10

    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-wide v8, v0, Lcom/ali/user/open/session/InternalSession;->expireIn:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v10

    iget-object v0, p0, Lcom/ali/user/open/service/impl/SessionManager;->b:Lcom/ali/user/open/session/InternalSession;

    iget-wide v6, v0, Lcom/ali/user/open/session/InternalSession;->expireIn:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 85
    goto :goto_1
.end method

.method public logout()Lcom/ali/user/open/core/model/ResultCode;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/ali/user/open/a/b;->a:Lcom/ali/user/open/a/b;

    invoke-virtual {v0}, Lcom/ali/user/open/a/b;->a()V

    .line 263
    new-instance v0, Lcom/ali/user/open/session/InternalSession;

    invoke-direct {v0}, Lcom/ali/user/open/session/InternalSession;-><init>()V

    .line 264
    invoke-direct {p0, v0}, Lcom/ali/user/open/service/impl/SessionManager;->a(Lcom/ali/user/open/session/InternalSession;)V

    .line 266
    sget-object v0, Lcom/ali/user/open/core/model/ResultCode;->SUCCESS:Lcom/ali/user/open/core/model/ResultCode;

    return-object v0
.end method

.method public refreshCookie(Ljava/lang/String;Lcom/ali/user/open/core/model/LoginReturnData;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 207
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/ali/user/open/core/model/LoginReturnData;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/ali/user/open/core/model/LoginReturnData;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    const-class v1, Lcom/ali/user/open/core/model/LoginDataModel;

    invoke-static {v0, v1}, Lcom/ali/user/open/core/util/JSONUtils;->toPOJO(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/model/LoginDataModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    const/4 v2, 0x0

    .line 215
    :try_start_1
    iget-object v1, v0, Lcom/ali/user/open/core/model/LoginDataModel;->extendAttribute:Ljava/util/Map;

    const-string/jumbo v3, "ssoDomainList"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_2

    instance-of v3, v1, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 217
    check-cast v1, Ljava/util/ArrayList;

    .line 219
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :goto_1
    :try_start_2
    sget-object v2, Lcom/ali/user/open/a/b;->a:Lcom/ali/user/open/a/b;

    iget-object v0, v0, Lcom/ali/user/open/core/model/LoginDataModel;->cookies:[Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v1}, Lcom/ali/user/open/a/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0

    .line 221
    :catch_1
    move-exception v1

    .line 222
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public refreshWhenLogin(Lcom/ali/user/open/core/model/LoginReturnData;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 137
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/ali/user/open/core/model/LoginReturnData;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    new-instance v9, Lcom/ali/user/open/session/InternalSession;

    invoke-direct {v9}, Lcom/ali/user/open/session/InternalSession;-><init>()V

    .line 142
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/ali/user/open/core/model/LoginReturnData;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    const-class v3, Lcom/ali/user/open/core/model/LoginDataModel;

    invoke-static {v2, v3}, Lcom/ali/user/open/core/util/JSONUtils;->toPOJO(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/ali/user/open/core/model/LoginDataModel;

    move-object v8, v0

    .line 145
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->externalCookies:[Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->externalCookies:[Ljava/lang/String;

    .line 147
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->userId:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    .line 148
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->nick:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    .line 150
    :try_start_1
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->nick:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->nick:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->openId:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->openId:Ljava/lang/String;

    .line 156
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->openSid:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->openSid:Ljava/lang/String;

    .line 157
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->headPicLink:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->avatarUrl:Ljava/lang/String;

    .line 158
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->email:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->email:Ljava/lang/String;

    .line 160
    iget-object v2, p1, Lcom/ali/user/open/core/model/LoginReturnData;->deviceToken:Lcom/ali/user/open/core/model/DeviceTokenRO;

    if-eqz v2, :cond_3

    .line 161
    iget-object v2, p1, Lcom/ali/user/open/core/model/LoginReturnData;->deviceToken:Lcom/ali/user/open/core/model/DeviceTokenRO;

    iget-object v2, v2, Lcom/ali/user/open/core/model/DeviceTokenRO;->salt:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->deviceTokenSalt:Ljava/lang/String;

    .line 162
    iget-object v2, p1, Lcom/ali/user/open/core/model/LoginReturnData;->deviceToken:Lcom/ali/user/open/core/model/DeviceTokenRO;

    iget-object v2, v2, Lcom/ali/user/open/core/model/DeviceTokenRO;->key:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->deviceTokenKey:Ljava/lang/String;

    .line 164
    :cond_3
    new-instance v2, Lcom/ali/user/open/history/HistoryAccount;

    iget-object v3, v8, Lcom/ali/user/open/core/model/LoginDataModel;->userId:Ljava/lang/String;

    iget-object v4, v9, Lcom/ali/user/open/session/InternalSession;->deviceTokenKey:Ljava/lang/String;

    iget-object v5, v8, Lcom/ali/user/open/core/model/LoginDataModel;->nick:Ljava/lang/String;

    iget-object v6, v8, Lcom/ali/user/open/core/model/LoginDataModel;->phone:Ljava/lang/String;

    iget-object v7, v8, Lcom/ali/user/open/core/model/LoginDataModel;->email:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/ali/user/open/history/HistoryAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/ali/user/open/history/AccountHistoryManager;->getInstance()Lcom/ali/user/open/history/AccountHistoryManager;

    move-result-object v3

    iget-object v4, v9, Lcom/ali/user/open/session/InternalSession;->deviceTokenSalt:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/ali/user/open/history/AccountHistoryManager;->putLoginHistory(Lcom/ali/user/open/history/HistoryAccount;Ljava/lang/String;)V

    .line 168
    iget-wide v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->loginTime:J

    iput-wide v2, v9, Lcom/ali/user/open/session/InternalSession;->loginTime:J

    .line 169
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->sid:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->sid:Ljava/lang/String;

    .line 171
    iget-wide v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->expires:J

    iget-wide v4, v8, Lcom/ali/user/open/core/model/LoginDataModel;->loginTime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/ali/user/open/service/impl/SessionManager;->adjustSessionExpireTime(JJ)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/ali/user/open/session/InternalSession;->expireIn:J

    .line 172
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->loginPhone:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->mobile:Ljava/lang/String;

    .line 174
    iget-object v2, p1, Lcom/ali/user/open/core/model/LoginReturnData;->showLoginId:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->loginId:Ljava/lang/String;

    .line 175
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->autoLoginToken:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->autoLoginToken:Ljava/lang/String;

    .line 176
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->topAccessToken:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->topAccessToken:Ljava/lang/String;

    .line 177
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->topAuthCode:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->topAuthCode:Ljava/lang/String;

    .line 178
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->topExpireTime:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->topExpireTime:Ljava/lang/String;

    .line 179
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->extendAttribute:Ljava/util/Map;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->otherInfo:Ljava/util/Map;

    .line 181
    iget-object v2, p1, Lcom/ali/user/open/core/model/LoginReturnData;->extMap:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 182
    iget-object v2, p1, Lcom/ali/user/open/core/model/LoginReturnData;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "bind_token"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/user/open/session/InternalSession;->bindToken:Ljava/lang/String;

    .line 185
    :cond_4
    const-class v2, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v2}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ali/user/open/core/service/RpcService;

    iget-object v3, v8, Lcom/ali/user/open/core/model/LoginDataModel;->sid:Ljava/lang/String;

    iget-object v4, v8, Lcom/ali/user/open/core/model/LoginDataModel;->userId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/ali/user/open/core/service/RpcService;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    const/4 v3, 0x0

    .line 188
    :try_start_3
    iget-object v2, v8, Lcom/ali/user/open/core/model/LoginDataModel;->extendAttribute:Ljava/util/Map;

    const-string/jumbo v4, "ssoDomainList"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_5

    instance-of v4, v2, Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 190
    check-cast v2, Ljava/util/ArrayList;

    .line 192
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 197
    :goto_2
    :try_start_4
    sget-object v3, Lcom/ali/user/open/a/b;->a:Lcom/ali/user/open/a/b;

    const-string/jumbo v4, ".taobao.com"

    iget-object v5, v8, Lcom/ali/user/open/core/model/LoginDataModel;->cookies:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2}, Lcom/ali/user/open/a/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 201
    :goto_3
    const-string/jumbo v2, "session"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "session = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/ali/user/open/session/InternalSession;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v9}, Lcom/ali/user/open/service/impl/SessionManager;->a(Lcom/ali/user/open/session/InternalSession;)V

    goto/16 :goto_0

    .line 151
    :catch_0
    move-exception v2

    .line 152
    :try_start_5
    sget-object v3, Lcom/ali/user/open/service/impl/SessionManager;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto :goto_3

    .line 194
    :catch_2
    move-exception v2

    .line 195
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v2, v3

    goto :goto_2
.end method
