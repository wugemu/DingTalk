.class public final Lkoe;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lkmx;


# instance fields
.field public a:Ljava/lang/Object;

.field public volatile b:Z

.field private final c:Lkna;

.field private final d:Z

.field private volatile e:Lknu;


# direct methods
.method public constructor <init>(Lkna;Z)V
    .locals 0
    .param p1, "client"    # Lkna;
    .param p2, "forWebSocket"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lkoe;->c:Lkna;

    .line 75
    iput-boolean p2, p0, Lkoe;->d:Z

    .line 76
    return-void
.end method

.method private static a(Lkne;I)I
    .locals 2
    .param p0, "userResponse"    # Lkne;
    .param p1, "defaultDelay"    # I

    .prologue
    .line 393
    const-string/jumbo v1, "Retry-After"

    invoke-virtual {p0, v1}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "header":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 405
    .end local p1    # "defaultDelay":I
    :goto_0
    return p1

    .line 401
    .restart local p1    # "defaultDelay":I
    :cond_0
    const-string/jumbo v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 405
    :cond_1
    const p1, 0x7fffffff

    goto :goto_0
.end method

.method private a(Lkmw;)Lkme;
    .locals 13
    .param p1, "url"    # Lkmw;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 201
    const/4 v5, 0x0

    .line 202
    .local v5, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v6, 0x0

    .line 203
    .local v6, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v7, 0x0

    .line 204
    .local v7, "certificatePinner":Lkmj;
    invoke-virtual {p1}, Lkmw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lkoe;->c:Lkna;

    .line 28339
    iget-object v5, v0, Lkna;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 206
    iget-object v0, p0, Lkoe;->c:Lkna;

    .line 28343
    iget-object v6, v0, Lkna;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 207
    iget-object v0, p0, Lkoe;->c:Lkna;

    .line 28347
    iget-object v7, v0, Lkna;->r:Lkmj;

    .line 210
    :cond_0
    new-instance v0, Lkme;

    .line 28486
    iget-object v1, p1, Lkmw;->b:Ljava/lang/String;

    .line 28502
    iget v2, p1, Lkmw;->c:I

    .line 210
    iget-object v3, p0, Lkoe;->c:Lkna;

    .line 29331
    iget-object v3, v3, Lkna;->v:Lkmr;

    .line 210
    iget-object v4, p0, Lkoe;->c:Lkna;

    .line 29335
    iget-object v4, v4, Lkna;->n:Ljavax/net/SocketFactory;

    .line 210
    iget-object v8, p0, Lkoe;->c:Lkna;

    .line 29355
    iget-object v8, v8, Lkna;->s:Lkmf;

    .line 211
    iget-object v9, p0, Lkoe;->c:Lkna;

    .line 30311
    iget-object v9, v9, Lkna;->d:Ljava/net/Proxy;

    .line 212
    iget-object v10, p0, Lkoe;->c:Lkna;

    .line 30379
    iget-object v10, v10, Lkna;->e:Ljava/util/List;

    .line 212
    iget-object v11, p0, Lkoe;->c:Lkna;

    .line 30383
    iget-object v11, v11, Lkna;->f:Ljava/util/List;

    .line 212
    iget-object v12, p0, Lkoe;->c:Lkna;

    .line 31315
    iget-object v12, v12, Lkna;->j:Ljava/net/ProxySelector;

    .line 212
    invoke-direct/range {v0 .. v12}, Lkme;-><init>(Ljava/lang/String;ILkmr;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lkmj;Lkmf;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 210
    return-object v0
.end method

.method private a(Ljava/io/IOException;Lknu;ZLknc;)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "streamAllocation"    # Lknu;
    .param p3, "requestSendStarted"    # Z
    .param p4, "userRequest"    # Lknc;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p2, p1}, Lknu;->a(Ljava/io/IOException;)V

    .line 226
    iget-object v2, p0, Lkoe;->c:Lkna;

    .line 31371
    iget-boolean v2, v2, Lkna;->y:Z

    .line 226
    if-nez v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    if-eqz p3, :cond_2

    .line 32069
    iget-object v2, p4, Lknc;->d:Lknd;

    .line 229
    instance-of v2, v2, Lkog;

    if-nez v2, :cond_0

    .line 32243
    :cond_2
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_5

    move v2, v0

    .line 232
    :goto_1
    if-eqz v2, :cond_0

    .line 32516
    iget-object v2, p2, Lknu;->c:Lkng;

    if-nez v2, :cond_4

    iget-object v2, p2, Lknu;->b:Lknt$a;

    if-eqz v2, :cond_3

    iget-object v2, p2, Lknu;->b:Lknt$a;

    .line 32517
    invoke-virtual {v2}, Lknt$a;->a()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p2, Lknu;->g:Lknt;

    .line 32518
    invoke-virtual {v2}, Lknt;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    move v2, v1

    .line 235
    :goto_2
    if-eqz v2, :cond_0

    move v0, v1

    .line 238
    goto :goto_0

    .line 32249
    :cond_5
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_7

    .line 32250
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_6

    if-nez p3, :cond_6

    move v2, v1

    goto :goto_1

    :cond_6
    move v2, v0

    goto :goto_1

    .line 32255
    :cond_7
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_8

    .line 32258
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_8

    move v2, v0

    .line 32259
    goto :goto_1

    .line 32262
    :cond_8
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v2, :cond_9

    move v2, v0

    .line 32264
    goto :goto_1

    :cond_9
    move v2, v1

    .line 32270
    goto :goto_1

    :cond_a
    move v2, v0

    .line 32518
    goto :goto_2
.end method

.method private static a(Lkne;Lkmw;)Z
    .locals 3
    .param p0, "response"    # Lkne;
    .param p1, "followUp"    # Lkmw;

    .prologue
    .line 413
    .line 33086
    iget-object v1, p0, Lkne;->a:Lknc;

    .line 34049
    iget-object v0, v1, Lknc;->a:Lkmw;

    .line 34486
    .local v0, "url":Lkmw;
    iget-object v1, v0, Lkmw;->b:Ljava/lang/String;

    .line 35486
    iget-object v2, p1, Lkmw;->b:Ljava/lang/String;

    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35502
    iget v1, v0, Lkmw;->c:I

    .line 36502
    iget v2, p1, Lkmw;->c:I

    .line 415
    if-ne v1, v2, :cond_0

    .line 37393
    iget-object v1, v0, Lkmw;->a:Ljava/lang/String;

    .line 38393
    iget-object v2, p1, Lkmw;->a:Ljava/lang/String;

    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    .line 414
    goto :goto_0
.end method


# virtual methods
.method public final a(Lkmx$a;)Lkne;
    .locals 17
    .param p1, "chain"    # Lkmx$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-interface/range {p1 .. p1}, Lkmx$a;->a()Lknc;

    move-result-object v12

    .local v12, "request":Lknc;
    move-object/from16 v11, p1

    .line 107
    check-cast v11, Lkob;

    .line 1109
    .local v11, "realChain":Lkob;
    iget-object v4, v11, Lkob;->e:Lkmi;

    .line 1113
    .local v4, "call":Lkmi;
    iget-object v5, v11, Lkob;->f:Lkms;

    .line 111
    .local v5, "eventListener":Lkms;
    new-instance v1, Lknu;

    move-object/from16 v0, p0

    iget-object v2, v0, Lkoe;->c:Lkna;

    .line 1359
    iget-object v2, v2, Lkna;->u:Lkmm;

    .line 2049
    iget-object v3, v12, Lknc;->a:Lkmw;

    .line 112
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lkoe;->a(Lkmw;)Lkme;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lkoe;->a:Ljava/lang/Object;

    invoke-direct/range {v1 .. v6}, Lknu;-><init>(Lkmm;Lkme;Lkmi;Lkms;Ljava/lang/Object;)V

    .line 113
    .local v1, "streamAllocation":Lknu;
    move-object/from16 v0, p0

    iput-object v1, v0, Lkoe;->e:Lknu;

    .line 115
    const/4 v9, 0x0

    .line 116
    .local v9, "followUpCount":I
    const/4 v10, 0x0

    .line 118
    .local v10, "priorResponse":Lkne;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lkoe;->b:Z

    .line 126
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v11, v12, v1, v2, v3}, Lkob;->a(Lknc;Lknu;Lknx;Lknr;)Lkne;
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 150
    .local v14, "response":Lkne;
    if-eqz v10, :cond_3

    .line 151
    invoke-virtual {v14}, Lkne;->e()Lkne$a;

    move-result-object v2

    .line 152
    invoke-virtual {v10}, Lkne;->e()Lkne$a;

    move-result-object v3

    const/4 v6, 0x0

    .line 2386
    iput-object v6, v3, Lkne$a;->g:Lknf;

    .line 154
    invoke-virtual {v3}, Lkne$a;->a()Lkne;

    move-result-object v3

    .line 2415
    if-eqz v3, :cond_2

    .line 2421
    iget-object v6, v3, Lkne;->g:Lknf;

    if-eqz v6, :cond_2

    .line 2422
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "priorResponse.body != null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .end local v14    # "response":Lkne;
    :catch_0
    move-exception v7

    .line 130
    .local v7, "e":Lokhttp3/internal/connection/RouteException;
    :try_start_1
    invoke-virtual {v7}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v12}, Lkoe;->a(Ljava/io/IOException;Lknu;ZLknc;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    invoke-virtual {v7}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .end local v7    # "e":Lokhttp3/internal/connection/RouteException;
    :catchall_0
    move-exception v2

    .line 144
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lknu;->a(Ljava/io/IOException;)V

    .line 145
    invoke-virtual {v1}, Lknu;->c()V

    throw v2

    .line 135
    :catch_1
    move-exception v7

    .line 137
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    instance-of v2, v7, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v2, :cond_1

    const/4 v13, 0x1

    .line 138
    .local v13, "requestSendStarted":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v13, v12}, Lkoe;->a(Ljava/io/IOException;Lknu;ZLknc;)Z

    move-result v2

    if-nez v2, :cond_0

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .end local v13    # "requestSendStarted":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 2416
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v14    # "response":Lkne;
    :cond_2
    iput-object v3, v2, Lkne$a;->j:Lkne;

    .line 155
    invoke-virtual {v2}, Lkne$a;->a()Lkne;

    move-result-object v14

    .line 3337
    :cond_3
    :try_start_3
    iget-object v2, v1, Lknu;->c:Lkng;

    .line 4279
    if-nez v14, :cond_4

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 161
    :catch_2
    move-exception v7

    .line 162
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Lknu;->c()V

    .line 163
    throw v7

    .line 5098
    .end local v7    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_4
    iget v3, v14, Lkne;->c:I

    .line 6086
    iget-object v6, v14, Lkne;->a:Lknc;

    .line 7053
    iget-object v6, v6, Lknc;->b:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4283
    sparse-switch v3, :sswitch_data_0

    .line 4388
    :cond_5
    const/4 v8, 0x0

    .line 166
    .local v8, "followUp":Lknc;
    :goto_2
    if-nez v8, :cond_14

    .line 167
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lkoe;->d:Z

    if-nez v2, :cond_6

    .line 168
    invoke-virtual {v1}, Lknu;->c()V

    .line 170
    :cond_6
    return-object v14

    .line 4285
    .end local v8    # "followUp":Lknc;
    :sswitch_0
    if-eqz v2, :cond_7

    .line 7068
    :try_start_5
    iget-object v2, v2, Lkng;->b:Ljava/net/Proxy;

    .line 4288
    :goto_3
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_8

    .line 4289
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4287
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lkoe;->c:Lkna;

    .line 7311
    iget-object v2, v2, Lkna;->d:Ljava/net/Proxy;

    goto :goto_3

    .line 4291
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lkoe;->c:Lkna;

    .line 7355
    iget-object v2, v2, Lkna;->s:Lkmf;

    .line 4291
    invoke-interface {v2}, Lkmf;->a()Lknc;

    move-result-object v8

    goto :goto_2

    .line 4294
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lkoe;->c:Lkna;

    .line 8351
    iget-object v2, v2, Lkna;->t:Lkmf;

    .line 4294
    invoke-interface {v2}, Lkmf;->a()Lknc;

    move-result-object v8

    goto :goto_2

    .line 4300
    :sswitch_2
    const-string/jumbo v2, "GET"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "HEAD"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4309
    :cond_9
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lkoe;->c:Lkna;

    .line 8367
    iget-boolean v2, v2, Lkna;->x:Z

    .line 4309
    if-eqz v2, :cond_5

    .line 4311
    const-string/jumbo v2, "Location"

    invoke-virtual {v14, v2}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4312
    if-eqz v2, :cond_5

    .line 9086
    iget-object v3, v14, Lkne;->a:Lknc;

    .line 10049
    iget-object v3, v3, Lknc;->a:Lkmw;

    .line 10867
    invoke-virtual {v3, v2}, Lkmw;->c(Ljava/lang/String;)Lkmw$a;

    move-result-object v2

    .line 10868
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lkmw$a;->b()Lkmw;

    move-result-object v2

    move-object v3, v2

    .line 4316
    :goto_4
    if-eqz v3, :cond_5

    .line 11393
    iget-object v2, v3, Lkmw;->a:Ljava/lang/String;

    .line 12086
    iget-object v15, v14, Lkne;->a:Lknc;

    .line 13049
    iget-object v15, v15, Lknc;->a:Lkmw;

    .line 13393
    iget-object v15, v15, Lkmw;->a:Ljava/lang/String;

    .line 4319
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4320
    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lkoe;->c:Lkna;

    .line 14363
    iget-boolean v2, v2, Lkna;->w:Z

    .line 4320
    if-eqz v2, :cond_5

    .line 15086
    :cond_a
    iget-object v2, v14, Lkne;->a:Lknc;

    .line 4323
    invoke-virtual {v2}, Lknc;->c()Lknc$a;

    move-result-object v15

    .line 4324
    invoke-static {v6}, Lkoa;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 16040
    const-string/jumbo v2, "PROPFIND"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 16045
    const-string/jumbo v2, "PROPFIND"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    .line 4326
    :goto_5
    if-eqz v2, :cond_f

    .line 4327
    const-string/jumbo v2, "GET"

    const/4 v6, 0x0

    invoke-virtual {v15, v2, v6}, Lknc$a;->a(Ljava/lang/String;Lknd;)Lknc$a;

    .line 4332
    :goto_6
    if-nez v16, :cond_b

    .line 4333
    const-string/jumbo v2, "Transfer-Encoding"

    invoke-virtual {v15, v2}, Lknc$a;->b(Ljava/lang/String;)Lknc$a;

    .line 4334
    const-string/jumbo v2, "Content-Length"

    invoke-virtual {v15, v2}, Lknc$a;->b(Ljava/lang/String;)Lknc$a;

    .line 4335
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v15, v2}, Lknc$a;->b(Ljava/lang/String;)Lknc$a;

    .line 4342
    :cond_b
    invoke-static {v14, v3}, Lkoe;->a(Lkne;Lkmw;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 4343
    const-string/jumbo v2, "Authorization"

    invoke-virtual {v15, v2}, Lknc$a;->b(Ljava/lang/String;)Lknc$a;

    .line 4346
    :cond_c
    invoke-virtual {v15, v3}, Lknc$a;->a(Lkmw;)Lknc$a;

    move-result-object v2

    invoke-virtual {v2}, Lknc$a;->a()Lknc;

    move-result-object v8

    goto/16 :goto_2

    .line 10868
    :cond_d
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_4

    .line 16045
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 4329
    :cond_f
    if-eqz v16, :cond_10

    .line 16086
    iget-object v2, v14, Lkne;->a:Lknc;

    .line 17069
    iget-object v2, v2, Lknc;->d:Lknd;

    .line 4330
    :goto_7
    invoke-virtual {v15, v6, v2}, Lknc$a;->a(Ljava/lang/String;Lknd;)Lknc$a;

    goto :goto_6

    .line 4329
    :cond_10
    const/4 v2, 0x0

    goto :goto_7

    .line 4352
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lkoe;->c:Lkna;

    .line 17371
    iget-boolean v2, v2, Lkna;->y:Z

    .line 4352
    if-eqz v2, :cond_5

    .line 18086
    iget-object v2, v14, Lkne;->a:Lknc;

    .line 19069
    iget-object v2, v2, Lknc;->d:Lknd;

    .line 4357
    instance-of v2, v2, Lkog;

    if-nez v2, :cond_5

    .line 19224
    iget-object v2, v14, Lkne;->j:Lkne;

    .line 4361
    if-eqz v2, :cond_11

    .line 20224
    iget-object v2, v14, Lkne;->j:Lkne;

    .line 21098
    iget v2, v2, Lkne;->c:I

    .line 4362
    const/16 v3, 0x198

    if-eq v2, v3, :cond_5

    .line 4367
    :cond_11
    const/4 v2, 0x0

    invoke-static {v14, v2}, Lkoe;->a(Lkne;I)I

    move-result v2

    if-gtz v2, :cond_5

    .line 22086
    iget-object v8, v14, Lkne;->a:Lknc;

    goto/16 :goto_2

    .line 22224
    :sswitch_5
    iget-object v2, v14, Lkne;->j:Lkne;

    .line 4374
    if-eqz v2, :cond_12

    .line 23224
    iget-object v2, v14, Lkne;->j:Lkne;

    .line 24098
    iget v2, v2, Lkne;->c:I

    .line 4375
    const/16 v3, 0x1f7

    if-eq v2, v3, :cond_5

    .line 4380
    :cond_12
    const v2, 0x7fffffff

    invoke-static {v14, v2}, Lkoe;->a(Lkne;I)I

    move-result v2

    if-nez v2, :cond_13

    .line 25086
    iget-object v8, v14, Lkne;->a:Lknc;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 4385
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 25177
    .restart local v8    # "followUp":Lknc;
    :cond_14
    iget-object v2, v14, Lkne;->g:Lknf;

    .line 173
    invoke-static {v2}, Lknj;->a(Ljava/io/Closeable;)V

    .line 175
    add-int/lit8 v9, v9, 0x1

    const/16 v2, 0x14

    if-le v9, v2, :cond_15

    .line 176
    invoke-virtual {v1}, Lknu;->c()V

    .line 177
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Too many follow-up requests: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 26069
    :cond_15
    iget-object v2, v8, Lknc;->d:Lknd;

    .line 180
    instance-of v2, v2, Lkog;

    if-eqz v2, :cond_16

    .line 181
    invoke-virtual {v1}, Lknu;->c()V

    .line 182
    new-instance v2, Ljava/net/HttpRetryException;

    const-string/jumbo v3, "Cannot retry streamed HTTP body"

    .line 26098
    iget v6, v14, Lkne;->c:I

    .line 182
    invoke-direct {v2, v3, v6}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 27049
    :cond_16
    iget-object v2, v8, Lknc;->a:Lkmw;

    .line 185
    invoke-static {v14, v2}, Lkoe;->a(Lkne;Lkmw;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 186
    invoke-virtual {v1}, Lknu;->c()V

    .line 187
    new-instance v1, Lknu;

    .end local v1    # "streamAllocation":Lknu;
    move-object/from16 v0, p0

    iget-object v2, v0, Lkoe;->c:Lkna;

    .line 27359
    iget-object v2, v2, Lkna;->u:Lkmm;

    .line 28049
    iget-object v3, v8, Lknc;->a:Lkmw;

    .line 188
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lkoe;->a(Lkmw;)Lkme;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lkoe;->a:Ljava/lang/Object;

    invoke-direct/range {v1 .. v6}, Lknu;-><init>(Lkmm;Lkme;Lkmi;Lkms;Ljava/lang/Object;)V

    .line 189
    .restart local v1    # "streamAllocation":Lknu;
    move-object/from16 v0, p0

    iput-object v1, v0, Lkoe;->e:Lknu;

    .line 195
    :cond_17
    move-object v12, v8

    .line 196
    move-object v10, v14

    .line 197
    goto/16 :goto_0

    .line 190
    :cond_18
    invoke-virtual {v1}, Lknu;->a()Lknx;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 191
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Closing the body of "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4283
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
        0x1f7 -> :sswitch_5
    .end sparse-switch
.end method
