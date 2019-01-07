.class public Lcom/ali/user/open/util/SessionUtils;
.super Ljava/lang/Object;
.source "SessionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toInternalSessionJSON(Lcom/ali/user/open/session/InternalSession;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    :try_start_0
    const-string/jumbo v1, "loginTime"

    iget-wide v2, p0, Lcom/ali/user/open/session/InternalSession;->loginTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 14
    const-string/jumbo v1, "expireIn"

    iget-wide v2, p0, Lcom/ali/user/open/session/InternalSession;->expireIn:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 15
    const-string/jumbo v1, "sid"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string/jumbo v1, "mobile"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string/jumbo v1, "loginId"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->loginId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string/jumbo v1, "autoLoginToken"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->autoLoginToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string/jumbo v1, "topAccessToken"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->topAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string/jumbo v1, "topAuthCode"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->topAuthCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string/jumbo v1, "topExpireTime"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->topExpireTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string/jumbo v1, "avatarUrl"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string/jumbo v1, "userId"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string/jumbo v1, "openId"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string/jumbo v1, "openSid"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->openSid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string/jumbo v1, "nick"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v1, "deviceTokenKey"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->deviceTokenKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string/jumbo v1, "deviceTokenSalt"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->deviceTokenSalt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object v1, p0, Lcom/ali/user/open/session/InternalSession;->otherInfo:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 34
    const-string/jumbo v1, "otherInfo"

    iget-object v2, p0, Lcom/ali/user/open/session/InternalSession;->otherInfo:Ljava/util/Map;

    invoke-static {v2}, Lcom/ali/user/open/core/util/JSONUtils;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
