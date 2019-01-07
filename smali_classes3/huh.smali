.class public final Lhuh;
.super Ljava/lang/Object;
.source "UTRestReqSend.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
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
    .line 114
    .line 115
    .local p2, "aData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p10, "aExtData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static/range {p0 .. p10}, Lhuf;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lhue;

    move-result-object v3

    .line 117
    .local v3, "lRQBR":Lhue;
    if-eqz v3, :cond_3

    .line 2023
    iget-object v1, v3, Lhue;->b:Ljava/util/Map;

    .line 121
    .local v1, "lPostReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_1

    .line 123
    const/4 v5, 0x0

    .line 152
    .end local v1    # "lPostReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "lRQBR":Lhue;
    :cond_0
    :goto_0
    return-object v5

    .line 3015
    .restart local v1    # "lPostReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "lRQBR":Lhue;
    :cond_1
    iget-object v4, v3, Lhue;->a:Ljava/lang/String;

    .line 127
    .local v4, "lReqUrl":Ljava/lang/String;
    invoke-static {v4}, Lhua;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    const/4 v5, 0x0

    goto :goto_0

    .line 132
    :cond_2
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v6, v4, v1, v7}, Lhug;->a(ILjava/lang/String;Ljava/util/Map;Z)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 135
    .local v2, "lREPData":[B
    if-eqz v2, :cond_3

    .line 137
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 138
    .local v5, "lStr":Ljava/lang/String;
    invoke-static {v5}, Lhua;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 152
    .end local v1    # "lPostReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "lREPData":[B
    .end local v3    # "lRQBR":Lhue;
    .end local v4    # "lReqUrl":Ljava/lang/String;
    .end local v5    # "lStr":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 141
    .restart local v1    # "lPostReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "lREPData":[B
    .restart local v3    # "lRQBR":Lhue;
    .restart local v4    # "lReqUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string/jumbo v6, "sendLogByUrl result encoding UTF-8 error!"

    invoke-static {v6, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 149
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "lPostReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "lREPData":[B
    .end local v3    # "lRQBR":Lhue;
    .end local v4    # "lReqUrl":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "sendLogByUrl system error!"

    invoke-static {v6, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    .locals 22
    .param p0, "aContext"    # Landroid/content/Context;
    .param p2, "aTimestamp"    # J
    .param p4, "aPage"    # Ljava/lang/String;
    .param p5, "aEventId"    # I
    .param p6, "aArg1"    # Ljava/lang/Object;
    .param p7, "aArg2"    # Ljava/lang/Object;
    .param p8, "aArg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
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
    .line 37
    .local p1, "aData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p9, "aExtData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lhub;->a()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-static/range {v3 .. v13}, Lhuf;->a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lhue;

    move-result-object v17

    .line 39
    .local v17, "lRQBR":Lhue;
    if-eqz v17, :cond_4

    .line 1023
    move-object/from16 v0, v17

    iget-object v15, v0, Lhue;->b:Ljava/util/Map;

    .line 43
    .local v15, "lPostReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v15, :cond_0

    .line 45
    const/4 v3, 0x0

    .line 91
    .end local v15    # "lPostReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "lRQBR":Lhue;
    :goto_0
    return v3

    .line 2015
    .restart local v15    # "lPostReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v17    # "lRQBR":Lhue;
    :cond_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lhue;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 49
    .local v18, "lReqUrl":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lhua;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    const/4 v3, 0x0

    goto :goto_0

    .line 54
    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-static {v3, v0, v15, v4}, Lhug;->a(ILjava/lang/String;Ljava/util/Map;Z)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v16

    .line 57
    .local v16, "lREPData":[B
    if-eqz v16, :cond_4

    .line 59
    :try_start_1
    new-instance v19, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 60
    .local v19, "lStr":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lhua;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    if-nez v3, :cond_4

    .line 63
    :try_start_2
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v14, "lJson":Lorg/json/JSONObject;
    const-string/jumbo v3, "success"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    const-string/jumbo v3, "success"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 66
    .local v20, "lValue":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "success"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    const/4 v3, 0x1

    goto :goto_0

    .line 70
    .end local v14    # "lJson":Lorg/json/JSONObject;
    .end local v20    # "lValue":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Lorg/json/JSONException;
    :try_start_3
    const-string/jumbo v3, "result to json error!"

    invoke-static {v3, v2}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v3, "success"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "SUCCESS"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v3

    if-eqz v3, :cond_4

    .line 76
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 80
    .end local v19    # "lStr":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    const-string/jumbo v3, "result encoding UTF-8 error!"

    invoke-static {v3, v2}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 91
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v15    # "lPostReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "lREPData":[B
    .end local v17    # "lRQBR":Lhue;
    .end local v18    # "lReqUrl":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 88
    :catch_2
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "system error!"

    invoke-static {v3, v2}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
