.class public final Lhhx;
.super Ljava/lang/Object;
.source "ClientContainerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lhin;
    .locals 10
    .param p0, "corpId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "result":Lhin;
    invoke-static {p0, p1, p2}, Lhhx;->c(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    .line 34
    .local v0, "localData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 36
    .local v3, "updateTime":Ljava/lang/Long;
    const-string/jumbo v4, "data"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lhin;
    check-cast v1, Lhin;

    .line 37
    .restart local v1    # "result":Lhin;
    const-string/jumbo v4, "updateTime"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "updateTime":Ljava/lang/Long;
    check-cast v3, Ljava/lang/Long;

    .line 39
    .restart local v3    # "updateTime":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 1060
    iget-object v4, v1, Lhin;->h:Ljava/lang/Long;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v1, Lhin;->h:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    const/4 v4, 0x1

    .line 39
    :goto_0
    if-eqz v4, :cond_1

    .line 40
    :cond_0
    const-class v4, Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;

    .line 42
    .local v2, "service":Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;
    new-instance v4, Lhhx$1;

    invoke-direct {v4, p0, p1, p2}, Lhhx$1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, p0, p1, p2, v4}, Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;->getAppStatement(Ljava/lang/String;Ljava/lang/String;ILiyv;)V

    .line 56
    .end local v2    # "service":Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;
    :cond_1
    return-object v1

    .line 1060
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 132
    const-string/jumbo v0, ""

    .line 133
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 134
    .local v1, "currentUserMainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    .line 135
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_0
    return-object v0
.end method

.method static a(Lhin;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p0, "model"    # Lhin;
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appType"    # I

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p0, :cond_0

    .line 103
    :goto_0
    return v1

    .line 95
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v2, "data"

    invoke-static {p0}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-static {p1, p2, p3}, Lhhx;->d(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v1, 0x1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p0, "corpId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "lightapp_show_announce"

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "_"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "key":Ljava/lang/String;
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v0, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 82
    .local v1, "showDid":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v4, :cond_1

    .line 83
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    move v2, v3

    .line 86
    :cond_1
    return v2
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 8
    .param p0, "corpId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p0, p1, p2}, Lhhx;->d(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "data":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 111
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lhin;

    invoke-static {v5, v6}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhin;

    .line 113
    .local v0, "appStatementModel":Lhin;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lhin;->b:Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lhin;->f:Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lhin;->d:Ljava/lang/Boolean;

    if-nez v5, :cond_1

    .line 123
    .end local v0    # "appStatementModel":Lhin;
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v3

    .line 116
    .restart local v0    # "appStatementModel":Lhin;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v5, "updateTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 117
    .local v4, "updateTime":Ljava/lang/Long;
    const-string/jumbo v5, "data"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v5, "updateTime"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v0    # "appStatementModel":Lhin;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "updateTime":Ljava/lang/Long;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "corpId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appType"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "LAST_APP_STATEMENT_PREFIX"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
