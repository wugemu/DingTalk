.class public Lcom/alibaba/lightapp/runtime/monitor/NetworkDetector;
.super Ljava/lang/Object;
.source "NetworkDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNetInspectParams(Ljava/util/Map;Lclm$b;)Ljava/util/Map;
    .locals 5
    .param p1, "netInspectInfo"    # Lclm$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lclm$b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 61
    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object p0

    .line 24
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "hasProxy"

    iget-boolean v4, p1, Lclm$b;->a:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 27
    const-string/jumbo v3, "checkDNSResult"

    iget-boolean v4, p1, Lclm$b;->b:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 28
    const-string/jumbo v3, "isVPNUseed"

    iget-boolean v4, p1, Lclm$b;->c:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 29
    const-string/jumbo v3, "isNetWorkAvailable"

    iget-boolean v4, p1, Lclm$b;->d:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v3, "isWifiAvailable"

    iget-boolean v4, p1, Lclm$b;->e:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 31
    const-string/jumbo v3, "isMobileAvailable"

    iget-boolean v4, p1, Lclm$b;->f:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 32
    const-string/jumbo v3, "isHttpOK"

    iget-boolean v4, p1, Lclm$b;->g:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 33
    const-string/jumbo v3, "isHttpsOK"

    iget-boolean v4, p1, Lclm$b;->h:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 34
    const-string/jumbo v4, "isLWPOK"

    iget-object v3, p1, Lclm$b;->m:Lcll$b;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lclm$b;->m:Lcll$b;

    iget-boolean v3, v3, Lcll$b;->a:Z

    :goto_1
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    const-string/jumbo v4, "lwpConnectInfo"

    iget-object v3, p1, Lclm$b;->m:Lcll$b;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lclm$b;->m:Lcll$b;

    iget-object v3, v3, Lcll$b;->b:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string/jumbo v3, "wifiName"

    iget-object v4, p1, Lclm$b;->i:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v3, "apnType"

    iget-object v4, p1, Lclm$b;->j:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v3, "netInfo"

    iget-object v4, p1, Lclm$b;->k:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v3, "netSpeed"

    iget-object v4, p1, Lclm$b;->l:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "netInspectResult":Ljava/lang/String;
    const-string/jumbo v3, "netInspectResult"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 34
    .end local v2    # "netInspectResult":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 35
    :cond_3
    :try_start_1
    const-string/jumbo v3, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method
