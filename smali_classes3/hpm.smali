.class public final Lhpm;
.super Ljava/lang/Object;
.source "RocketUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "configKey"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v7

    .line 62
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 64
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 65
    .local v4, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 66
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    .line 67
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_0

    .line 68
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 69
    .local v5, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_2

    .line 70
    const-string/jumbo v9, "url"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "configUrl":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_2

    move v7, v8

    .line 72
    goto :goto_0

    .line 67
    .end local v1    # "configUrl":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "config":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "size":I
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "lightapp"

    const-string/jumbo v10, ""

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "isRequestViaRocket error="

    aput-object v12, v11, v7

    .line 80
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    .line 79
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "configKey"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    const-string/jumbo v7, ""

    .line 144
    :goto_0
    return-object v7

    .line 124
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 126
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 127
    .local v4, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 128
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    .line 129
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_2

    .line 130
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 131
    .local v5, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_1

    .line 132
    const-string/jumbo v7, "url"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "configUrl":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 134
    const-string/jumbo v7, "type"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 129
    .end local v1    # "configUrl":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "config":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "size":I
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, ""

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "getRocketType error="

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 142
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 141
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v7, ""

    goto :goto_0
.end method
