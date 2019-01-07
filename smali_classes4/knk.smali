.class public final Lknk;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lkmx;


# instance fields
.field final a:Lkno;


# direct methods
.method public constructor <init>(Lkno;)V
    .locals 0
    .param p1, "cache"    # Lkno;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lknk;->a:Lkno;

    .line 50
    return-void
.end method

.method private static a(Lkmv;Lkmv;)Lkmv;
    .locals 7
    .param p0, "cachedHeaders"    # Lkmv;
    .param p1, "networkHeaders"    # Lkmv;

    .prologue
    .line 219
    new-instance v2, Lkmv$a;

    invoke-direct {v2}, Lkmv$a;-><init>()V

    .line 221
    .local v2, "result":Lkmv$a;
    const/4 v1, 0x0

    .line 31077
    .local v1, "i":I
    iget-object v5, p0, Lkmv;->a:[Ljava/lang/String;

    array-length v5, v5

    div-int/lit8 v3, v5, 0x2

    .line 221
    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 222
    invoke-virtual {p0, v1}, Lkmv;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lkmv;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "Warning"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 227
    :cond_0
    invoke-static {v0}, Lknk;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Lknk;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    invoke-virtual {p1, v0}, Lkmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 229
    :cond_1
    sget-object v5, Lknh;->a:Lknh;

    invoke-virtual {v5, v2, v0, v4}, Lknh;->a(Lkmv$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 32077
    iget-object v5, p1, Lkmv;->a:[Ljava/lang/String;

    array-length v5, v5

    div-int/lit8 v3, v5, 0x2

    .line 233
    :goto_1
    if-ge v1, v3, :cond_5

    .line 234
    invoke-virtual {p1, v1}, Lkmv;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0    # "fieldName":Ljava/lang/String;
    invoke-static {v0}, Lknk;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Lknk;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 236
    sget-object v5, Lknh;->a:Lknh;

    invoke-virtual {p1, v1}, Lkmv;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v0, v6}, Lknh;->a(Lkmv$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 240
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Lkmv$a;->a()Lkmv;

    move-result-object v5

    return-object v5
.end method

.method private static a(Lkne;)Lkne;
    .locals 2
    .param p0, "response"    # Lkne;

    .prologue
    .line 148
    if-eqz p0, :cond_0

    .line 30177
    iget-object v0, p0, Lkne;->g:Lknf;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lkne;->e()Lkne$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 30386
    iput-object v1, v0, Lkne$a;->g:Lknf;

    .line 149
    invoke-virtual {v0}, Lkne$a;->a()Lkne;

    move-result-object p0

    .end local p0    # "response":Lkne;
    :cond_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string/jumbo v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Keep-Alive"

    .line 249
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authenticate"

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authorization"

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TE"

    .line 252
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Trailers"

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Transfer-Encoding"

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Upgrade"

    .line 255
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 248
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 263
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Content-Encoding"

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Content-Type"

    .line 265
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 263
    goto :goto_0
.end method


# virtual methods
.method public final a(Lkmx$a;)Lkne;
    .locals 24
    .param p1, "chain"    # Lkmx$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    move-object/from16 v0, p0

    iget-object v11, v0, Lknk;->a:Lkno;

    if-eqz v11, :cond_2

    .line 54
    move-object/from16 v0, p0

    iget-object v11, v0, Lknk;->a:Lkno;

    invoke-interface {v11}, Lkno;->a()Lkne;

    move-result-object v2

    .line 57
    .local v2, "cacheCandidate":Lkne;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 59
    .local v8, "now":J
    new-instance v18, Lknm$a;

    invoke-interface/range {p1 .. p1}, Lkmx$a;->a()Lknc;

    move-result-object v11

    move-object/from16 v0, v18

    invoke-direct {v0, v8, v9, v11, v2}, Lknm$a;-><init>(JLknc;Lkne;)V

    .line 1186
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->c:Lkne;

    if-nez v11, :cond_3

    .line 1187
    new-instance v11, Lknm;

    move-object/from16 v0, v18

    iget-object v12, v0, Lknm$a;->b:Lknc;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lknm;-><init>(Lknc;Lkne;)V

    .line 1175
    :goto_1
    iget-object v12, v11, Lknm;->a:Lknc;

    if-eqz v12, :cond_1f

    move-object/from16 v0, v18

    iget-object v12, v0, Lknm$a;->b:Lknc;

    invoke-virtual {v12}, Lknc;->d()Lkmh;

    move-result-object v12

    .line 18137
    iget-boolean v12, v12, Lkmh;->k:Z

    .line 1175
    if-eqz v12, :cond_1f

    .line 1177
    new-instance v10, Lknm;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lknm;-><init>(Lknc;Lkne;)V

    .line 60
    .local v10, "strategy":Lknm;
    :goto_2
    iget-object v5, v10, Lknm;->a:Lknc;

    .line 61
    .local v5, "networkRequest":Lknc;
    iget-object v4, v10, Lknm;->b:Lkne;

    .line 67
    .local v4, "cacheResponse":Lkne;
    if-eqz v2, :cond_0

    if-nez v4, :cond_0

    .line 18177
    iget-object v11, v2, Lkne;->g:Lknf;

    .line 68
    invoke-static {v11}, Lknj;->a(Ljava/io/Closeable;)V

    .line 72
    :cond_0
    if-nez v5, :cond_20

    if-nez v4, :cond_20

    .line 73
    new-instance v11, Lkne$a;

    invoke-direct {v11}, Lkne$a;-><init>()V

    .line 74
    invoke-interface/range {p1 .. p1}, Lkmx$a;->a()Lknc;

    move-result-object v12

    .line 18332
    iput-object v12, v11, Lkne$a;->a:Lknc;

    .line 74
    sget-object v12, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 18337
    iput-object v12, v11, Lkne$a;->b:Lokhttp3/Protocol;

    .line 75
    const/16 v12, 0x1f8

    .line 18342
    iput v12, v11, Lkne$a;->c:I

    .line 76
    const-string/jumbo v12, "Unsatisfiable Request (only-if-cached)"

    .line 18347
    iput-object v12, v11, Lkne$a;->d:Ljava/lang/String;

    .line 77
    sget-object v12, Lknj;->c:Lknf;

    .line 18386
    iput-object v12, v11, Lkne$a;->g:Lknf;

    .line 78
    const-wide/16 v12, -0x1

    .line 18427
    iput-wide v12, v11, Lkne$a;->k:J

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 18432
    iput-wide v12, v11, Lkne$a;->l:J

    .line 81
    invoke-virtual {v11}, Lkne$a;->a()Lkne;

    move-result-object v7

    .line 26163
    :cond_1
    :goto_3
    return-object v7

    .line 55
    .end local v2    # "cacheCandidate":Lkne;
    .end local v4    # "cacheResponse":Lkne;
    .end local v5    # "networkRequest":Lknc;
    .end local v8    # "now":J
    .end local v10    # "strategy":Lknm;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1191
    .restart local v2    # "cacheCandidate":Lkne;
    .restart local v8    # "now":J
    :cond_3
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->b:Lknc;

    .line 2106
    iget-object v11, v11, Lknc;->a:Lkmw;

    invoke-virtual {v11}, Lkmw;->b()Z

    move-result v11

    .line 1191
    if-eqz v11, :cond_4

    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->c:Lkne;

    .line 2119
    iget-object v11, v11, Lkne;->e:Lkmu;

    .line 1191
    if-nez v11, :cond_4

    .line 1192
    new-instance v11, Lknm;

    move-object/from16 v0, v18

    iget-object v12, v0, Lknm$a;->b:Lknc;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lknm;-><init>(Lknc;Lkne;)V

    goto :goto_1

    .line 1198
    :cond_4
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->c:Lkne;

    move-object/from16 v0, v18

    iget-object v12, v0, Lknm$a;->b:Lknc;

    invoke-static {v11, v12}, Lknm;->a(Lkne;Lknc;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1199
    new-instance v11, Lknm;

    move-object/from16 v0, v18

    iget-object v12, v0, Lknm$a;->b:Lknc;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lknm;-><init>(Lknc;Lkne;)V

    goto/16 :goto_1

    .line 1202
    :cond_5
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->b:Lknc;

    invoke-virtual {v11}, Lknc;->d()Lkmh;

    move-result-object v19

    .line 3087
    move-object/from16 v0, v19

    iget-boolean v11, v0, Lkmh;->c:Z

    .line 1203
    if-nez v11, :cond_7

    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->b:Lknc;

    .line 3326
    const-string/jumbo v12, "If-Modified-Since"

    invoke-virtual {v11, v12}, Lknc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    const-string/jumbo v12, "If-None-Match"

    invoke-virtual {v11, v12}, Lknc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    :cond_6
    const/4 v11, 0x1

    .line 1203
    :goto_4
    if-eqz v11, :cond_9

    .line 1204
    :cond_7
    new-instance v11, Lknm;

    move-object/from16 v0, v18

    iget-object v12, v0, Lknm$a;->b:Lknc;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lknm;-><init>(Lknc;Lkne;)V

    goto/16 :goto_1

    .line 3326
    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    .line 1207
    :cond_9
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->c:Lkne;

    invoke-virtual {v11}, Lkne;->f()Lkmh;

    move-result-object v20

    .line 4145
    move-object/from16 v0, v20

    iget-boolean v11, v0, Lkmh;->l:Z

    .line 1208
    if-eqz v11, :cond_a

    .line 1209
    new-instance v11, Lknm;

    const/4 v12, 0x0

    move-object/from16 v0, v18

    iget-object v13, v0, Lknm$a;->c:Lkne;

    invoke-direct {v11, v12, v13}, Lknm;-><init>(Lknc;Lkne;)V

    goto/16 :goto_1

    .line 4301
    :cond_a
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->d:Ljava/util/Date;

    if-eqz v11, :cond_12

    .line 4302
    const-wide/16 v12, 0x0

    move-object/from16 v0, v18

    iget-wide v14, v0, Lknm$a;->j:J

    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->d:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 4304
    :goto_5
    move-object/from16 v0, v18

    iget v11, v0, Lknm$a;->l:I

    const/4 v14, -0x1

    if-eq v11, v14, :cond_b

    .line 4305
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v18

    iget v14, v0, Lknm$a;->l:I

    int-to-long v14, v14

    invoke-virtual {v11, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 4307
    :cond_b
    move-object/from16 v0, v18

    iget-wide v14, v0, Lknm$a;->j:J

    move-object/from16 v0, v18

    iget-wide v0, v0, Lknm$a;->i:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    .line 4308
    move-object/from16 v0, v18

    iget-wide v0, v0, Lknm$a;->a:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lknm$a;->j:J

    move-wide/from16 v22, v0

    sub-long v16, v16, v22

    .line 4309
    add-long/2addr v12, v14

    add-long v22, v12, v16

    .line 5272
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->c:Lkne;

    invoke-virtual {v11}, Lkne;->f()Lkmh;

    move-result-object v11

    .line 6099
    iget v12, v11, Lkmh;->e:I

    .line 5273
    const/4 v13, -0x1

    if-eq v12, v13, :cond_13

    .line 5274
    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7099
    iget v11, v11, Lkmh;->e:I

    .line 5274
    int-to-long v14, v11

    invoke-virtual {v12, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 10099
    :cond_c
    :goto_6
    move-object/from16 v0, v19

    iget v11, v0, Lkmh;->e:I

    .line 1215
    const/4 v14, -0x1

    if-eq v11, v14, :cond_d

    .line 1216
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11099
    move-object/from16 v0, v19

    iget v14, v0, Lkmh;->e:I

    .line 1216
    int-to-long v14, v14

    invoke-virtual {v11, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 1219
    :cond_d
    const-wide/16 v14, 0x0

    .line 11127
    move-object/from16 v0, v19

    iget v11, v0, Lkmh;->j:I

    .line 1220
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_e

    .line 1221
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12127
    move-object/from16 v0, v19

    iget v14, v0, Lkmh;->j:I

    .line 1221
    int-to-long v14, v14

    invoke-virtual {v11, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 1224
    :cond_e
    const-wide/16 v16, 0x0

    .line 13119
    move-object/from16 v0, v20

    iget-boolean v11, v0, Lkmh;->h:Z

    .line 1225
    if-nez v11, :cond_f

    .line 13123
    move-object/from16 v0, v19

    iget v11, v0, Lkmh;->i:I

    .line 1225
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_f

    .line 1226
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14123
    move-object/from16 v0, v19

    iget v0, v0, Lkmh;->i:I

    move/from16 v16, v0

    .line 1226
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    .line 15087
    :cond_f
    move-object/from16 v0, v20

    iget-boolean v11, v0, Lkmh;->c:Z

    .line 1229
    if-nez v11, :cond_1b

    add-long v20, v22, v14

    add-long v16, v16, v12

    cmp-long v11, v20, v16

    if-gez v11, :cond_1b

    .line 1230
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->c:Lkne;

    invoke-virtual {v11}, Lkne;->e()Lkne$a;

    move-result-object v16

    .line 1231
    add-long v14, v14, v22

    cmp-long v11, v14, v12

    if-ltz v11, :cond_10

    .line 1232
    const-string/jumbo v11, "Warning"

    const-string/jumbo v12, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Lkne$a;->a(Ljava/lang/String;Ljava/lang/String;)Lkne$a;

    .line 1235
    :cond_10
    const-wide/32 v12, 0x5265c00

    cmp-long v11, v22, v12

    if-lez v11, :cond_11

    .line 15317
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->c:Lkne;

    invoke-virtual {v11}, Lkne;->f()Lkmh;

    move-result-object v11

    .line 16099
    iget v11, v11, Lkmh;->e:I

    .line 15317
    const/4 v12, -0x1

    if-ne v11, v12, :cond_1a

    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->h:Ljava/util/Date;

    if-nez v11, :cond_1a

    const/4 v11, 0x1

    .line 1235
    :goto_7
    if-eqz v11, :cond_11

    .line 1236
    const-string/jumbo v11, "Warning"

    const-string/jumbo v12, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Lkne$a;->a(Ljava/lang/String;Ljava/lang/String;)Lkne$a;

    .line 1238
    :cond_11
    new-instance v11, Lknm;

    const/4 v12, 0x0

    invoke-virtual/range {v16 .. v16}, Lkne$a;->a()Lkne;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lknm;-><init>(Lknc;Lkne;)V

    goto/16 :goto_1

    .line 4303
    :cond_12
    const-wide/16 v12, 0x0

    goto/16 :goto_5

    .line 5275
    :cond_13
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->h:Ljava/util/Date;

    if-eqz v11, :cond_15

    .line 5276
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->d:Ljava/util/Date;

    if-eqz v11, :cond_14

    .line 5277
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->d:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 5279
    :goto_8
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->h:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long v12, v14, v12

    .line 5280
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-gtz v11, :cond_c

    const-wide/16 v12, 0x0

    goto/16 :goto_6

    .line 5278
    :cond_14
    move-object/from16 v0, v18

    iget-wide v12, v0, Lknm$a;->j:J

    goto :goto_8

    .line 5281
    :cond_15
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->f:Ljava/util/Date;

    if-eqz v11, :cond_19

    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->c:Lkne;

    .line 8086
    iget-object v11, v11, Lkne;->a:Lknc;

    .line 9049
    iget-object v11, v11, Lknc;->a:Lkmw;

    .line 9673
    iget-object v12, v11, Lkmw;->d:Ljava/util/List;

    if-nez v12, :cond_16

    const/4 v11, 0x0

    .line 5282
    :goto_9
    if-nez v11, :cond_19

    .line 5287
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->d:Ljava/util/Date;

    if-eqz v11, :cond_17

    .line 5288
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->d:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 5290
    :goto_a
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->f:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    .line 5291
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_18

    const-wide/16 v14, 0xa

    div-long/2addr v12, v14

    goto/16 :goto_6

    .line 9674
    :cond_16
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 9675
    iget-object v11, v11, Lkmw;->d:Ljava/util/List;

    invoke-static {v12, v11}, Lkmw;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 9676
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    .line 5289
    :cond_17
    move-object/from16 v0, v18

    iget-wide v12, v0, Lknm$a;->i:J

    goto :goto_a

    .line 5291
    :cond_18
    const-wide/16 v12, 0x0

    goto/16 :goto_6

    .line 5293
    :cond_19
    const-wide/16 v12, 0x0

    goto/16 :goto_6

    .line 15317
    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1245
    :cond_1b
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->k:Ljava/lang/String;

    if-eqz v11, :cond_1c

    .line 1246
    const-string/jumbo v12, "If-None-Match"

    .line 1247
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->k:Ljava/lang/String;

    .line 1258
    :goto_b
    move-object/from16 v0, v18

    iget-object v13, v0, Lknm$a;->b:Lknc;

    .line 17057
    iget-object v13, v13, Lknc;->c:Lkmv;

    .line 1258
    invoke-virtual {v13}, Lkmv;->a()Lkmv$a;

    move-result-object v13

    .line 1259
    sget-object v14, Lknh;->a:Lknh;

    invoke-virtual {v14, v13, v12, v11}, Lknh;->a(Lkmv$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->b:Lknc;

    invoke-virtual {v11}, Lknc;->c()Lknc$a;

    move-result-object v11

    .line 1262
    invoke-virtual {v13}, Lkmv$a;->a()Lkmv;

    move-result-object v12

    .line 17208
    invoke-virtual {v12}, Lkmv;->a()Lkmv$a;

    move-result-object v12

    iput-object v12, v11, Lknc$a;->c:Lkmv$a;

    .line 1263
    invoke-virtual {v11}, Lknc$a;->a()Lknc;

    move-result-object v12

    .line 1264
    new-instance v11, Lknm;

    move-object/from16 v0, v18

    iget-object v13, v0, Lknm$a;->c:Lkne;

    invoke-direct {v11, v12, v13}, Lknm;-><init>(Lknc;Lkne;)V

    goto/16 :goto_1

    .line 1248
    :cond_1c
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->f:Ljava/util/Date;

    if-eqz v11, :cond_1d

    .line 1249
    const-string/jumbo v12, "If-Modified-Since"

    .line 1250
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->g:Ljava/lang/String;

    goto :goto_b

    .line 1251
    :cond_1d
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->d:Ljava/util/Date;

    if-eqz v11, :cond_1e

    .line 1252
    const-string/jumbo v12, "If-Modified-Since"

    .line 1253
    move-object/from16 v0, v18

    iget-object v11, v0, Lknm$a;->e:Ljava/lang/String;

    goto :goto_b

    .line 1255
    :cond_1e
    new-instance v11, Lknm;

    move-object/from16 v0, v18

    iget-object v12, v0, Lknm$a;->b:Lknc;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lknm;-><init>(Lknc;Lkne;)V

    goto/16 :goto_1

    :cond_1f
    move-object v10, v11

    .line 1180
    goto/16 :goto_2

    .line 85
    .restart local v4    # "cacheResponse":Lkne;
    .restart local v5    # "networkRequest":Lknc;
    .restart local v10    # "strategy":Lknm;
    :cond_20
    if-nez v5, :cond_21

    .line 86
    invoke-virtual {v4}, Lkne;->e()Lkne$a;

    move-result-object v11

    .line 87
    invoke-static {v4}, Lknk;->a(Lkne;)Lkne;

    move-result-object v12

    invoke-virtual {v11, v12}, Lkne$a;->b(Lkne;)Lkne$a;

    move-result-object v11

    .line 88
    invoke-virtual {v11}, Lkne$a;->a()Lkne;

    move-result-object v7

    goto/16 :goto_3

    .line 93
    :cond_21
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lkmx$a;->a(Lknc;)Lkne;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 96
    .local v6, "networkResponse":Lkne;
    if-nez v6, :cond_22

    if-eqz v2, :cond_22

    .line 19177
    iget-object v11, v2, Lkne;->g:Lknf;

    .line 97
    invoke-static {v11}, Lknj;->a(Ljava/io/Closeable;)V

    .line 102
    :cond_22
    if-eqz v4, :cond_25

    .line 21098
    iget v11, v6, Lkne;->c:I

    .line 103
    const/16 v12, 0x130

    if-ne v11, v12, :cond_24

    .line 104
    invoke-virtual {v4}, Lkne;->e()Lkne$a;

    move-result-object v11

    .line 21136
    iget-object v12, v4, Lkne;->f:Lkmv;

    .line 22136
    iget-object v13, v6, Lkne;->f:Lkmv;

    .line 105
    invoke-static {v12, v13}, Lknk;->a(Lkmv;Lkmv;)Lkmv;

    move-result-object v12

    invoke-virtual {v11, v12}, Lkne$a;->a(Lkmv;)Lkne$a;

    move-result-object v11

    .line 22260
    iget-wide v12, v6, Lkne;->k:J

    .line 22427
    iput-wide v12, v11, Lkne$a;->k:J

    .line 23269
    iget-wide v12, v6, Lkne;->l:J

    .line 23432
    iput-wide v12, v11, Lkne$a;->l:J

    .line 108
    invoke-static {v4}, Lknk;->a(Lkne;)Lkne;

    move-result-object v12

    invoke-virtual {v11, v12}, Lkne$a;->b(Lkne;)Lkne$a;

    move-result-object v11

    .line 109
    invoke-static {v6}, Lknk;->a(Lkne;)Lkne;

    move-result-object v12

    invoke-virtual {v11, v12}, Lkne$a;->a(Lkne;)Lkne$a;

    move-result-object v11

    .line 110
    invoke-virtual {v11}, Lkne$a;->a()Lkne;

    move-result-object v7

    .line 24177
    .local v7, "response":Lkne;
    iget-object v11, v6, Lkne;->g:Lknf;

    .line 111
    invoke-virtual {v11}, Lknf;->close()V

    goto/16 :goto_3

    .line 96
    .end local v6    # "networkResponse":Lkne;
    .end local v7    # "response":Lkne;
    :catchall_0
    move-exception v11

    if-eqz v2, :cond_23

    .line 20177
    iget-object v12, v2, Lkne;->g:Lknf;

    .line 97
    invoke-static {v12}, Lknj;->a(Ljava/io/Closeable;)V

    :cond_23
    throw v11

    .line 25177
    .restart local v6    # "networkResponse":Lkne;
    :cond_24
    iget-object v11, v4, Lkne;->g:Lknf;

    .line 119
    invoke-static {v11}, Lknj;->a(Ljava/io/Closeable;)V

    .line 123
    :cond_25
    invoke-virtual {v6}, Lkne;->e()Lkne$a;

    move-result-object v11

    .line 124
    invoke-static {v4}, Lknk;->a(Lkne;)Lkne;

    move-result-object v12

    invoke-virtual {v11, v12}, Lkne$a;->b(Lkne;)Lkne$a;

    move-result-object v11

    .line 125
    invoke-static {v6}, Lknk;->a(Lkne;)Lkne;

    move-result-object v12

    invoke-virtual {v11, v12}, Lkne$a;->a(Lkne;)Lkne$a;

    move-result-object v11

    .line 126
    invoke-virtual {v11}, Lkne$a;->a()Lkne;

    move-result-object v7

    .line 128
    .restart local v7    # "response":Lkne;
    move-object/from16 v0, p0

    iget-object v11, v0, Lknk;->a:Lkno;

    if-eqz v11, :cond_1

    .line 129
    invoke-static {v7}, Lknz;->b(Lkne;)Z

    move-result v11

    if-eqz v11, :cond_26

    invoke-static {v7, v5}, Lknm;->a(Lkne;Lknc;)Z

    move-result v11

    if-eqz v11, :cond_26

    .line 131
    move-object/from16 v0, p0

    iget-object v11, v0, Lknk;->a:Lkno;

    invoke-interface {v11}, Lkno;->b()Lknl;

    move-result-object v3

    .line 26161
    .local v3, "cacheRequest":Lknl;
    if-eqz v3, :cond_1

    .line 26162
    invoke-interface {v3}, Lknl;->a()Lokio/Sink;

    move-result-object v11

    .line 26163
    if-eqz v11, :cond_1

    .line 27177
    iget-object v12, v7, Lkne;->g:Lknf;

    .line 26165
    invoke-virtual {v12}, Lknf;->c()Lokio/BufferedSource;

    move-result-object v12

    .line 26166
    invoke-static {v11}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v11

    .line 26168
    new-instance v13, Lknk$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12, v3, v11}, Lknk$1;-><init>(Lknk;Lokio/BufferedSource;Lknl;Lokio/BufferedSink;)V

    .line 26210
    const-string/jumbo v11, "Content-Type"

    invoke-virtual {v7, v11}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 28177
    iget-object v12, v7, Lkne;->g:Lknf;

    .line 26211
    invoke-virtual {v12}, Lknf;->a()J

    move-result-wide v14

    .line 26212
    invoke-virtual {v7}, Lkne;->e()Lkne$a;

    move-result-object v12

    new-instance v16, Lkoc;

    .line 26213
    invoke-static {v13}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-direct {v0, v11, v14, v15, v13}, Lkoc;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    .line 28386
    move-object/from16 v0, v16

    iput-object v0, v12, Lkne$a;->g:Lknf;

    .line 26214
    invoke-virtual {v12}, Lkne$a;->a()Lkne;

    move-result-object v7

    goto/16 :goto_3

    .line 29053
    .end local v3    # "cacheRequest":Lknl;
    :cond_26
    iget-object v11, v5, Lknc;->b:Ljava/lang/String;

    .line 30020
    const-string/jumbo v12, "POST"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "PATCH"

    .line 30021
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "PUT"

    .line 30022
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "DELETE"

    .line 30023
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "MOVE"

    .line 30024
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_3
.end method
