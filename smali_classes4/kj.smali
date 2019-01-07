.class final Lkj;
.super Ljava/lang/Object;
.source "DispatchCore.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljy;ILjava/lang/StringBuilder;)I
    .locals 20
    .param p1, "connStrategy"    # Ljy;
    .param p2, "retry"    # I
    .param p3, "networkTrace"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljy;",
            "I",
            "Ljava/lang/StringBuilder;",
            ")I"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 159
    .local v4, "request":Lanet/channel/request/Request;
    :try_start_0
    new-instance v3, Lanet/channel/request/Request$a;

    invoke-direct {v3}, Lanet/channel/request/Request$a;-><init>()V

    sget-object v5, Lanet/channel/request/Request$Method;->POST:Lanet/channel/request/Request$Method;

    .line 1235
    iput-object v5, v3, Lanet/channel/request/Request$a;->b:Lanet/channel/request/Request$Method;

    .line 2137
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2139
    const-string/jumbo v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    const-string/jumbo v7, "://"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2141
    invoke-static {}, Lki;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    const-string/jumbo v7, "/amdc/mobileDispatch"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2144
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2145
    const-string/jumbo v9, "appkey"

    const-string/jumbo v10, "appkey"

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    const-string/jumbo v9, "v"

    const-string/jumbo v10, "v"

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    const-string/jumbo v9, "deviceId"

    const-string/jumbo v10, "deviceId"

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    const-string/jumbo v9, "platform"

    const-string/jumbo v10, "platform"

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    const/16 v9, 0x3f

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2151
    const-string/jumbo v9, "utf-8"

    invoke-static {v7, v9}, Lla;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2230
    iput-object v5, v3, Lanet/channel/request/Request$a;->a:Ljava/lang/String;

    .line 2253
    move-object/from16 v0, p0

    iput-object v0, v3, Lanet/channel/request/Request$a;->d:Ljava/util/Map;

    .line 159
    const-string/jumbo v5, "Connection"

    const-string/jumbo v7, "close"

    invoke-virtual {v3, v5, v7}, Lanet/channel/request/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$a;

    move-result-object v3

    const-string/jumbo v5, "Accept-Encoding"

    const-string/jumbo v7, "gzip"

    invoke-virtual {v3, v5, v7}, Lanet/channel/request/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$a;

    move-result-object v3

    const/4 v5, 0x0

    .line 2276
    iput-boolean v5, v3, Lanet/channel/request/Request$a;->g:Z

    .line 159
    const/16 v5, 0x4e20

    .line 2306
    iput v5, v3, Lanet/channel/request/Request$a;->l:I

    .line 159
    const/16 v5, 0x4e20

    .line 3301
    iput v5, v3, Lanet/channel/request/Request$a;->m:I

    .line 159
    invoke-virtual {v3}, Lanet/channel/request/Request$a;->a()Lanet/channel/request/Request;

    move-result-object v4

    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-interface/range {p1 .. p1}, Ljy;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljy;->getPort()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lanet/channel/request/Request;->a(Ljava/lang/String;I)V

    .line 4047
    :cond_0
    const/4 v3, 0x0

    invoke-static {v4, v3}, Ljq;->a(Lanet/channel/request/Request;Lie;)Ljq$a;

    move-result-object v17

    .line 176
    .local v17, "response":Ljq$a;
    invoke-virtual {v4}, Lanet/channel/request/Request;->a()Ljava/net/URL;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 177
    if-eqz p1, :cond_3

    .line 178
    invoke-interface/range {p1 .. p1}, Ljy;->getIp()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljy;->getPort()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    :goto_0
    const/16 v3, 0x2d

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v5, v0, Ljq$a;->a:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    :cond_1
    new-instance v16, Lit;

    invoke-direct/range {v16 .. v16}, Lit;-><init>()V

    .line 186
    .local v16, "flow":Lit;
    const-string/jumbo v3, "amdc"

    move-object/from16 v0, v16

    iput-object v3, v0, Lit;->a:Ljava/lang/String;

    .line 187
    const-string/jumbo v3, "http"

    move-object/from16 v0, v16

    iput-object v3, v0, Lit;->b:Ljava/lang/String;

    .line 4079
    iget-object v3, v4, Lanet/channel/request/Request;->a:Ljava/lang/String;

    .line 188
    move-object/from16 v0, v16

    iput-object v3, v0, Lit;->c:Ljava/lang/String;

    .line 189
    iget-object v3, v4, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v10, v3, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    move-object/from16 v0, v16

    iput-wide v10, v0, Lit;->d:J

    .line 190
    iget-object v3, v4, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v10, v3, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    move-object/from16 v0, v16

    iput-wide v10, v0, Lit;->e:J

    .line 191
    invoke-static {}, Liv;->a()Liu;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Liu;->a(Lit;)V

    .line 193
    move-object/from16 v0, v17

    iget v3, v0, Ljq$a;->a:I

    if-gez v3, :cond_5

    .line 194
    move-object/from16 v0, v17

    iget v3, v0, Ljq$a;->a:I

    const/16 v5, -0xc8

    if-eq v3, v5, :cond_2

    .line 195
    move-object/from16 v0, v17

    iget v3, v0, Ljq$a;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "request fail."

    const/4 v6, 0x1

    move/from16 v5, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lkj;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/request/Request;IILjava/lang/StringBuilder;)V

    .line 197
    :cond_2
    const/4 v6, 0x1

    .line 259
    .end local v16    # "flow":Lit;
    .end local v17    # "response":Ljq$a;
    :goto_1
    return v6

    .line 180
    .restart local v17    # "response":Ljq$a;
    :cond_3
    invoke-virtual {v4}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    .end local v17    # "response":Ljq$a;
    :catch_0
    move-exception v15

    .line 252
    .local v15, "ex":Ljava/lang/Throwable;
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "errorMsg":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    :cond_4
    const-string/jumbo v7, "-1000"

    const/4 v11, 0x1

    move-object v9, v4

    move/from16 v10, p2

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lkj;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/request/Request;IILjava/lang/StringBuilder;)V

    .line 259
    const/4 v6, 0x1

    goto :goto_1

    .line 200
    .end local v8    # "errorMsg":Ljava/lang/String;
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v16    # "flow":Lit;
    .restart local v17    # "response":Ljq$a;
    :cond_5
    :try_start_1
    move-object/from16 v0, v17

    iget v0, v0, Ljq$a;->a:I

    move/from16 v18, v0

    .line 201
    .local v18, "responseCode":I
    const/4 v3, 0x1

    invoke-static {v3}, Lanet/channel/util/ALog;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 202
    const-string/jumbo v3, "awcn.DispatchCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "amdc response. code: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "\nheaders"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, v17

    iget-object v11, v0, Ljq$a;->c:Ljava/util/Map;

    aput-object v11, v9, v10

    invoke-static {v3, v5, v7, v9}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_6
    const/16 v3, 0xc8

    move/from16 v0, v18

    if-eq v0, v3, :cond_9

    .line 206
    const/16 v3, 0x12e

    move/from16 v0, v18

    if-eq v0, v3, :cond_7

    const/16 v3, 0x133

    move/from16 v0, v18

    if-ne v0, v3, :cond_8

    :cond_7
    const/4 v6, 0x2

    .line 209
    .local v6, "ret":I
    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "response code not 200"

    move/from16 v5, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lkj;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/request/Request;IILjava/lang/StringBuilder;)V

    goto/16 :goto_1

    .line 206
    .end local v6    # "ret":I
    :cond_8
    const/4 v6, 0x1

    goto :goto_2

    .line 213
    :cond_9
    move-object/from16 v0, v17

    iget-object v3, v0, Ljq$a;->c:Ljava/util/Map;

    const-string/jumbo v5, "x-am-code"

    invoke-static {v3, v5}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "code":Ljava/lang/String;
    const-string/jumbo v3, "1000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 215
    const-string/jumbo v3, "1007"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "1008"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    const/4 v6, 0x2

    .line 216
    .restart local v6    # "ret":I
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "return code: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v5, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lkj;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/request/Request;IILjava/lang/StringBuilder;)V

    goto/16 :goto_1

    .line 215
    .end local v6    # "ret":I
    :cond_b
    const/4 v6, 0x1

    goto :goto_3

    .line 220
    :cond_c
    move-object/from16 v0, v17

    iget-object v3, v0, Ljq$a;->c:Ljava/util/Map;

    const-string/jumbo v5, "x-am-sign"

    invoke-static {v3, v5}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 221
    .local v19, "retSign":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 222
    const-string/jumbo v7, "-1001"

    const-string/jumbo v8, "response sign is empty"

    const/4 v11, 0x1

    move-object v9, v4

    move/from16 v10, p2

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lkj;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/request/Request;IILjava/lang/StringBuilder;)V

    .line 223
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 226
    :cond_d
    move-object/from16 v0, v17

    iget-object v3, v0, Ljq$a;->b:[B

    invoke-static {v3}, Lkj;->a([B)Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, "answer":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3}, Lanet/channel/util/ALog;->a(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 228
    const-string/jumbo v3, "awcn.DispatchCore"

    const-string/jumbo v5, "amdc response body"

    const/4 v7, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "\nbody"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v13, v9, v10

    invoke-static {v3, v5, v7, v9}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_e
    if-nez v13, :cond_f

    .line 232
    const-string/jumbo v7, "-1002"

    const-string/jumbo v8, "read answer error"

    const/4 v11, 0x1

    move-object v9, v4

    move/from16 v10, p2

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lkj;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/request/Request;IILjava/lang/StringBuilder;)V

    .line 233
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 236
    :cond_f
    invoke-static {v13}, Lkm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 237
    .local v14, "checkSign":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 238
    const-string/jumbo v3, "awcn.DispatchCore"

    const-string/jumbo v5, "check ret sign failed"

    const/4 v7, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "retSign"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v19, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "checkSign"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v14, v9, v10

    invoke-static {v3, v5, v7, v9}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    const-string/jumbo v7, "-1003"

    const-string/jumbo v8, "check sign failed"

    const/4 v11, 0x1

    move-object v9, v4

    move/from16 v10, p2

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lkj;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/request/Request;IILjava/lang/StringBuilder;)V

    .line 240
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 243
    :cond_10
    invoke-static {v13}, Lkj;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 244
    const-string/jumbo v3, "awcn.DispatchCore"

    const-string/jumbo v5, "resolve amdc anser failed"

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v5, v7, v9}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    const-string/jumbo v7, "-1004"

    const-string/jumbo v8, "resolve answer failed"

    const/4 v11, 0x1

    move-object v9, v4

    move/from16 v10, p2

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lkj;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/request/Request;IILjava/lang/StringBuilder;)V

    .line 246
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 249
    :cond_11
    const-string/jumbo v8, "request success"

    const/4 v11, 0x0

    move-object v7, v2

    move-object v9, v4

    move/from16 v10, p2

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lkj;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/request/Request;IILjava/lang/StringBuilder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    const/16 v4, 0x400

    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 266
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Landroid/util/Base64InputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5024
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    sget-object v4, Lil$a;->a:Lil;

    .line 267
    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Lil;->a(I)Lik;

    move-result-object v1

    .line 268
    .local v1, "byteArray":Lik;
    :goto_0
    invoke-virtual {v1, v3}, Lik;->a(Ljava/io/InputStream;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 269
    invoke-virtual {v1, v0}, Lik;->a(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v1    # "byteArray":Lik;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 275
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 277
    :cond_0
    :goto_2
    const/4 v4, 0x0

    :goto_3
    return-object v4

    .line 271
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "byteArray":Lik;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lik;->a()V

    .line 272
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string/jumbo v6, "utf-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 275
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v1    # "byteArray":Lik;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_6
    throw v4

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "byteArray":Lik;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    goto :goto_4

    .line 276
    .end local v1    # "byteArray":Lik;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v5

    goto :goto_6

    .line 275
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method static a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 85
    .local v1, "connStrategyList":Ljava/util/List;, "Ljava/util/List<Ljy;>;"
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v6

    if-nez v6, :cond_2

    .line 86
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v6

    invoke-static {}, Lki;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lka;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 89
    .local v4, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljy;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 90
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljy;

    .line 91
    .local v0, "connStrategy":Ljy;
    invoke-interface {v0}, Ljy;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v6

    sget-object v7, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-virtual {v6, v7}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 92
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 97
    .end local v0    # "connStrategy":Ljy;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 98
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .line 99
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    if-lez v5, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_2

    .line 100
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    rem-int v6, v3, v5

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 104
    .end local v3    # "i":I
    .end local v4    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljy;>;"
    .end local v5    # "length":I
    :cond_2
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/request/Request;IILjava/lang/StringBuilder;)V
    .locals 2
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "request"    # Lanet/channel/request/Request;
    .param p3, "retryTimes"    # I
    .param p4, "ret"    # I
    .param p5, "networkTrace"    # Ljava/lang/StringBuilder;

    .prologue
    .line 302
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_3

    :cond_0
    invoke-static {}, Lic;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    :try_start_0
    new-instance v0, Lanet/channel/statist/AmdcStatistic;

    invoke-direct {v0}, Lanet/channel/statist/AmdcStatistic;-><init>()V

    .line 305
    .local v0, "as":Lanet/channel/statist/AmdcStatistic;
    iput-object p0, v0, Lanet/channel/statist/AmdcStatistic;->errorCode:Ljava/lang/String;

    .line 306
    iput-object p1, v0, Lanet/channel/statist/AmdcStatistic;->errorMsg:Ljava/lang/String;

    .line 307
    if-eqz p2, :cond_1

    .line 308
    invoke-virtual {p2}, Lanet/channel/request/Request;->a()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/AmdcStatistic;->host:Ljava/lang/String;

    .line 7079
    iget-object v1, p2, Lanet/channel/request/Request;->a:Ljava/lang/String;

    .line 309
    iput-object v1, v0, Lanet/channel/statist/AmdcStatistic;->url:Ljava/lang/String;

    .line 311
    :cond_1
    iput p3, v0, Lanet/channel/statist/AmdcStatistic;->retryTimes:I

    .line 312
    if-eqz p5, :cond_2

    .line 313
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/AmdcStatistic;->trace:Ljava/lang/String;

    .line 315
    :cond_2
    invoke-static {}, Lih;->a()Lij;

    move-result-object v1

    invoke-interface {v1, v0}, Lij;->a(Lanet/channel/statist/StatObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v0    # "as":Lanet/channel/statist/AmdcStatistic;
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 8
    .param p0, "answer"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    :goto_0
    return v2

    .line 286
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 287
    .local v1, "jsonResponse":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 5043
    sget-object v3, Lkn$b;->a:Lkn;

    .line 288
    new-instance v4, Lkk;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lkk;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Lkn;->a(Lkk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v1    # "jsonResponse":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "awcn.DispatchCore"

    const-string/jumbo v4, "answerJsonResolve exception"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v7, v0, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 7043
    sget-object v3, Lkn$b;->a:Lkn;

    .line 295
    new-instance v4, Lkk;

    invoke-direct {v4, v2, v7}, Lkk;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Lkn;->a(Lkk;)V

    goto :goto_0

    .line 6043
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsonResponse":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    sget-object v4, Lkn$b;->a:Lkn;

    .line 291
    new-instance v5, Lkk;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v1}, Lkk;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lkn;->a(Lkk;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 292
    goto :goto_0
.end method
