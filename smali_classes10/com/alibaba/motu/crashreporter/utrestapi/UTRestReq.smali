.class public Lcom/alibaba/motu/crashreporter/utrestapi/UTRestReq;
.super Ljava/lang/Object;
.source "UTRestReq.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendLog(Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    .locals 15
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aTimestamp"    # J
    .param p3, "aPage"    # Ljava/lang/String;
    .param p4, "aEventId"    # I
    .param p5, "aArg1"    # Ljava/lang/Object;
    .param p6, "aArg2"    # Ljava/lang/Object;
    .param p7, "aArg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p8, "aExtData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v0

    const-string/jumbo v2, "APP_KEY"

    invoke-virtual {v0, v2}, Lhtf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 46
    .local v10, "appKey":Ljava/lang/String;
    invoke-static {v10}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 69
    .end local v10    # "appKey":Ljava/lang/String;
    :goto_0
    return v0

    .line 50
    .restart local v10    # "appKey":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v0

    const-string/jumbo v2, "APP_VERSION"

    invoke-virtual {v0, v2}, Lhtf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 51
    .local v11, "appVersion":Ljava/lang/String;
    invoke-static {v11}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "APP_KEY"

    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v0, "APP_VERSION"

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v0

    const-string/jumbo v2, "UTDID"

    invoke-virtual {v0, v2}, Lhtf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 60
    .local v13, "utdid":Ljava/lang/String;
    const-string/jumbo v0, "UTDID"

    invoke-interface {v1, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v0, "IMEI"

    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v2

    const-string/jumbo v3, "IMEI"

    invoke-virtual {v2, v3}, Lhtf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "IMSI"

    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v2

    const-string/jumbo v3, "IMSI"

    invoke-virtual {v2, v3}, Lhtf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v0, "USERNICK"

    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v2

    const-string/jumbo v3, "USERNICK"

    invoke-virtual {v2, v3}, Lhtf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v0, "CHANNEL"

    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v2

    const-string/jumbo v3, "CHANNEL"

    invoke-virtual {v2, v3}, Lhtf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 65
    invoke-static/range {v0 .. v9}, Lhuh;->a(Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 66
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "appKey":Ljava/lang/String;
    .end local v11    # "appVersion":Ljava/lang/String;
    .end local v13    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 67
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "sendLog"

    invoke-static {v0, v12}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static sendLog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    .locals 11
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aPage"    # Ljava/lang/String;
    .param p2, "aEventId"    # I
    .param p3, "aArg1"    # Ljava/lang/Object;
    .param p4, "aArg2"    # Ljava/lang/Object;
    .param p5, "aArg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 23
    .local p6, "aExtData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 24
    .local v9, "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p6, :cond_0

    .line 25
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "build extData"

    invoke-static {v2, v0}, Lhtj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 34
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "sendLog"

    invoke-static {v1, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v1

    .line 33
    .restart local v9    # "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v9}, Lcom/alibaba/motu/crashreporter/utrestapi/UTRestReq;->sendLog(Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    goto :goto_1
.end method

.method public static sendLogByUrl(Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aTimestamp"    # J
    .param p4, "aPage"    # Ljava/lang/String;
    .param p5, "aEventId"    # I
    .param p6, "aArg1"    # Ljava/lang/Object;
    .param p7, "aArg2"    # Ljava/lang/Object;
    .param p8, "aArg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 76
    .local p9, "aExtData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 77
    const-string/jumbo v1, "url is null"

    .line 105
    :goto_0
    return-object v1

    .line 81
    :cond_0
    :try_start_0
    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v1

    const-string/jumbo v2, "APP_KEY"

    invoke-virtual {v1, v2}, Lhtf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string/jumbo v1, "no appkey"

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v1

    const-string/jumbo v2, "APP_VERSION"

    invoke-virtual {v1, v2}, Lhtf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, "appVersion":Ljava/lang/String;
    invoke-static {v12}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    const-string/jumbo v1, "no appVersion"

    goto :goto_0

    .line 91
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "APP_KEY"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v1, "APP_VERSION"

    invoke-interface {v3, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v1

    const-string/jumbo v2, "UTDID"

    invoke-virtual {v1, v2}, Lhtf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 96
    .local v14, "utdid":Ljava/lang/String;
    const-string/jumbo v1, "UTDID"

    invoke-interface {v3, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v1, "IMEI"

    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v2

    const-string/jumbo v4, "IMEI"

    invoke-virtual {v2, v4}, Lhtf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v1, "IMSI"

    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v2

    const-string/jumbo v4, "IMSI"

    invoke-virtual {v2, v4}, Lhtf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v1, "USERNICK"

    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v2

    const-string/jumbo v4, "USERNICK"

    invoke-virtual {v2, v4}, Lhtf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v1, "CHANNEL"

    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v2

    const-string/jumbo v4, "CHANNEL"

    invoke-virtual {v2, v4}, Lhtf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 101
    invoke-static/range {v1 .. v11}, Lhuh;->a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 102
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v3    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "appVersion":Ljava/lang/String;
    .end local v14    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 103
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "sendLogByUrl"

    invoke-static {v1, v13}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
