.class public Lcom/laiwang/protocol/android/bp;
.super Ljava/lang/Object;
.source "VipParser.java"


# direct methods
.method public static a(Lcom/laiwang/protocol/android/bi;)Lcom/laiwang/protocol/android/bi$a;
    .locals 6
    .param p0, "domains"    # Lcom/laiwang/protocol/android/bi;

    .prologue
    const/4 v3, 0x0

    .line 22
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bi;->a()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move-object v1, v3

    .line 32
    :goto_0
    return-object v1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bi;->a()Ljava/util/List;

    move-result-object v2

    .line 26
    .local v2, "routeList":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bi$a;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/bi$a;

    .line 27
    .local v1, "route":Lcom/laiwang/protocol/android/bi$a;
    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bi$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "name":Ljava/lang/String;
    sget-object v5, Lcom/laiwang/protocol/android/bh;->a:Lcom/laiwang/protocol/android/bh;

    iget-object v5, v5, Lcom/laiwang/protocol/android/bh;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "route":Lcom/laiwang/protocol/android/bi$a;
    :cond_3
    move-object v1, v3

    .line 32
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)Lcom/laiwang/protocol/android/bi;
    .locals 17
    .param p0, "payload"    # Ljava/lang/String;
    .param p1, "expired"    # J

    .prologue
    .line 37
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v10, "routers":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bi$a;>;"
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v7, "jObj":Lorg/json/JSONObject;
    const-string/jumbo v14, "domainList"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 40
    new-instance v9, Lcom/laiwang/protocol/android/bi$a;

    invoke-direct {v9}, Lcom/laiwang/protocol/android/bi$a;-><init>()V

    .line 41
    .local v9, "route":Lcom/laiwang/protocol/android/bi$a;
    const-string/jumbo v14, "domainList"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 42
    .local v2, "domainList":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v4, v14, :cond_4

    .line 43
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 44
    .local v6, "item":Lorg/json/JSONObject;
    const-string/jumbo v14, "name"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 45
    const-string/jumbo v14, "name"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v9, v8}, Lcom/laiwang/protocol/android/bi$a;->a(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v14, "ipList"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 48
    const-string/jumbo v14, "ipList"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-static {v14}, Lcom/laiwang/protocol/android/bp;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 49
    .local v5, "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9, v5}, Lcom/laiwang/protocol/android/bi$a;->a(Ljava/util/List;)V

    .line 51
    .end local v5    # "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v14, "shortList"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 52
    const-string/jumbo v14, "shortList"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-static {v14}, Lcom/laiwang/protocol/android/bp;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v11

    .line 53
    .local v11, "shortVipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9, v11}, Lcom/laiwang/protocol/android/bi$a;->b(Ljava/util/List;)V

    .line 59
    .end local v11    # "shortVipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Lcom/laiwang/protocol/android/bi$a;->a(J)V

    .line 60
    const-string/jumbo v14, "suits"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 61
    const-string/jumbo v14, "suits"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-static {v14}, Lcom/laiwang/protocol/android/bp;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v12

    .line 62
    .local v12, "suitsList":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bi$b;>;"
    invoke-virtual {v9, v12}, Lcom/laiwang/protocol/android/bi$a;->c(Ljava/util/List;)V

    .line 64
    .end local v12    # "suitsList":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bi$b;>;"
    :cond_2
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v8    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "domainList":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "item":Lorg/json/JSONObject;
    .end local v9    # "route":Lcom/laiwang/protocol/android/bi$a;
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 69
    new-instance v3, Lcom/laiwang/protocol/android/bi;

    invoke-direct {v3}, Lcom/laiwang/protocol/android/bi;-><init>()V

    .line 70
    .local v3, "domains":Lcom/laiwang/protocol/android/bi;
    invoke-virtual {v3, v10}, Lcom/laiwang/protocol/android/bi;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v3    # "domains":Lcom/laiwang/protocol/android/bi;
    .end local v7    # "jObj":Lorg/json/JSONObject;
    .end local v10    # "routers":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bi$a;>;"
    :goto_1
    return-object v3

    .line 73
    :catch_0
    move-exception v13

    .line 74
    .local v13, "th":Ljava/lang/Throwable;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "[Aladdin] parse domain json error: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .end local v13    # "th":Ljava/lang/Throwable;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 82
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "item":Ljava/lang/String;
    invoke-static {v1}, Lcom/laiwang/protocol/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bi$b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bi$b;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 94
    .local v1, "item":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 95
    const-string/jumbo v6, "key"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v6, "sni"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "sni":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 99
    new-instance v5, Lcom/laiwang/protocol/android/bi$b;

    invoke-direct {v5}, Lcom/laiwang/protocol/android/bi$b;-><init>()V

    .line 100
    .local v5, "suit":Lcom/laiwang/protocol/android/bi$b;
    invoke-virtual {v5, v2}, Lcom/laiwang/protocol/android/bi$b;->a(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v5, v4}, Lcom/laiwang/protocol/android/bi$b;->b(Ljava/lang/String;)V

    .line 102
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "sni":Ljava/lang/String;
    .end local v5    # "suit":Lcom/laiwang/protocol/android/bi$b;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "item":Lorg/json/JSONObject;
    :cond_1
    return-object v3
.end method
