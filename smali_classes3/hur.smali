.class public final Lhur;
.super Ljava/lang/Object;
.source "RestReqSend.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    .locals 17
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "adashxServerHost"    # Ljava/lang/String;
    .param p3, "aTimestamp"    # J
    .param p5, "aPage"    # Ljava/lang/String;
    .param p6, "aEventId"    # I
    .param p7, "aArg1"    # Ljava/lang/Object;
    .param p8, "aArg2"    # Ljava/lang/Object;
    .param p9, "aArg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
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
    .line 49
    .local p10, "aExtData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v3, p0

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    :try_start_0
    invoke-static/range {v3 .. v11}, Lhuq;->a(Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 1068
    .local v15, "requestData":Ljava/lang/String;
    invoke-static {v15}, Lhvb;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 50
    :goto_0
    if-eqz v3, :cond_1

    .line 53
    new-instance v13, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v13, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 54
    .local v13, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    const/4 v14, 0x0

    .line 58
    .local v14, "packRequest":[B
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lhum;->a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 63
    :goto_1
    if-eqz v14, :cond_1

    .line 65
    :try_start_2
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lhup;->a(Ljava/lang/String;[B)Lhun;

    move-result-object v2

    .line 3024
    .local v2, "bizResponse":Lhun;
    iget v3, v2, Lhun;->a:I

    if-nez v3, :cond_2

    const/4 v3, 0x1

    .end local v2    # "bizResponse":Lhun;
    .end local v13    # "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "packRequest":[B
    .end local v15    # "requestData":Ljava/lang/String;
    :goto_2
    return v3

    .line 1068
    .restart local v15    # "requestData":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 59
    .restart local v13    # "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "packRequest":[B
    :catch_0
    move-exception v12

    .line 60
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2029
    const-string/jumbo v4, "RestApi"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 71
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "packRequest":[B
    .end local v15    # "requestData":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 72
    .local v12, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "system error!"

    invoke-static {v3, v12}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v12    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 3024
    .restart local v2    # "bizResponse":Lhun;
    .restart local v13    # "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "packRequest":[B
    .restart local v15    # "requestData":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method
