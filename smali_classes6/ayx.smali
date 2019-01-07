.class public final Layx;
.super Ljava/lang/Object;
.source "AttachAuthUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Layw;
    .locals 8
    .param p0, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Layw;"
        }
    .end annotation

    .prologue
    .local p1, "dingExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 27
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move-object v1, v6

    .line 59
    :goto_0
    return-object v1

    .line 31
    :cond_1
    const-string/jumbo v7, "attachAuths"

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 33
    :try_start_0
    const-string/jumbo v7, "attachAuths"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    .local v2, "authInfos":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v1, v6

    .line 35
    goto :goto_0

    .line 38
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 40
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 41
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 42
    .local v5, "jsonObject":Lorg/json/JSONObject;
    if-eqz v5, :cond_4

    const-string/jumbo v7, "mediaId"

    .line 43
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 44
    new-instance v1, Layw;

    invoke-direct {v1}, Layw;-><init>()V

    .line 45
    .local v1, "authInfo":Layw;
    iput-object p0, v1, Layw;->a:Ljava/lang/String;

    .line 46
    const-string/jumbo v7, "authMediaId"

    .line 47
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Layw;->b:Ljava/lang/String;

    .line 48
    const-string/jumbo v7, "authCode"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Layw;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 53
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "authInfo":Layw;
    .end local v2    # "authInfos":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .end local v3    # "e":Lorg/json/JSONException;
    :cond_3
    :goto_2
    move-object v1, v6

    .line 59
    goto :goto_0

    .line 40
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "authInfos":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "authInfos":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Layw;
    .locals 6
    .param p0, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Layw;"
        }
    .end annotation

    .prologue
    .local p1, "dingExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 63
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v1, v4

    .line 85
    :goto_0
    return-object v1

    .line 67
    :cond_1
    const-string/jumbo v5, "audioAuth"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 68
    const-string/jumbo v5, "audioAuth"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "audioAuth":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 71
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "mediaId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    new-instance v1, Layw;

    invoke-direct {v1}, Layw;-><init>()V

    .line 74
    .local v1, "authInfo":Layw;
    iput-object p0, v1, Layw;->a:Ljava/lang/String;

    .line 75
    const-string/jumbo v5, "authMediaId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Layw;->b:Ljava/lang/String;

    .line 76
    const-string/jumbo v5, "authCode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Layw;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v1    # "authInfo":Layw;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0    # "audioAuth":Ljava/lang/String;
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    move-object v1, v4

    .line 85
    goto :goto_0
.end method
