.class public final Ljq;
.super Ljava/lang/Object;
.source "HttpConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljq$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lanet/channel/request/Request;)Ljava/net/HttpURLConnection;
    .locals 14
    .param p0, "request"    # Lanet/channel/request/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->i()Landroid/util/Pair;

    move-result-object v7

    .line 200
    .local v7, "proxyInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 201
    .local v6, "p":Ljava/net/Proxy;
    if-eqz v7, :cond_0

    .line 202
    new-instance v6, Ljava/net/Proxy;

    .end local v6    # "p":Ljava/net/Proxy;
    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v13, Ljava/net/InetSocketAddress;

    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v13, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v6, v12, v13}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 205
    .restart local v6    # "p":Ljava/net/Proxy;
    :cond_0
    const/4 v8, 0x0

    .line 206
    .local v8, "proxySetting":Lkw;
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v10

    invoke-virtual {v10}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lic;->l()Lkw;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 208
    iget-object v6, v8, Lkw;->a:Ljava/net/Proxy;

    .line 211
    :cond_1
    const/4 v1, 0x0

    .line 213
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {p0}, Lanet/channel/request/Request;->a()Ljava/net/URL;

    move-result-object v9

    .line 214
    .local v9, "url":Ljava/net/URL;
    if-eqz v6, :cond_4

    .line 215
    invoke-virtual {v9, v6}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 18184
    :goto_0
    iget v10, p0, Lanet/channel/request/Request;->i:I

    .line 220
    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 19180
    iget v10, p0, Lanet/channel/request/Request;->j:I

    .line 221
    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 20122
    iget-object v10, p0, Lanet/channel/request/Request;->c:Lanet/channel/request/Request$Method;

    .line 222
    invoke-virtual {v10}, Lanet/channel/request/Request$Method;->toString()Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "method":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v10, "POST"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 225
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 226
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 229
    :cond_2
    const-string/jumbo v10, "Host"

    invoke-virtual {p0}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->c()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "cmwap"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 231
    const-string/jumbo v10, "x-online-host"

    invoke-virtual {p0}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_3
    invoke-virtual {p0}, Lanet/channel/request/Request;->c()Ljava/util/Map;

    move-result-object v3

    .line 235
    .local v3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_6

    .line 236
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 237
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "method":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v10

    .line 257
    :goto_2
    return-object v1

    .line 217
    .restart local v9    # "url":Ljava/net/URL;
    :cond_4
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    goto :goto_0

    .line 239
    .restart local v3    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "method":Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "Accept-Encoding"

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 240
    const-string/jumbo v10, "Accept-Encoding"

    const-string/jumbo v11, "gzip"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    if-eqz v8, :cond_7

    .line 245
    const-string/jumbo v10, "Authorization"

    .line 21024
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21025
    iget-object v12, v8, Lkw;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lkw;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21026
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v11

    .line 21027
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x40

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21028
    const-string/jumbo v13, "Basic "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21029
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 245
    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_7
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 21261
    sget-object v10, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x8

    if-ge v10, v11, :cond_9

    .line 21262
    const-string/jumbo v10, "awcn.HttpConnector"

    const-string/jumbo v11, "supportHttps"

    const-string/jumbo v12, "[supportHttps]Froyo \u4ee5\u4e0b\u7248\u672c\u4e0d\u652f\u6301https"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12, v13}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_8
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto/16 :goto_2

    .line 21265
    :cond_9
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v10, v0

    .line 21268
    invoke-static {}, Lkv;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 21269
    invoke-static {}, Lkv;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 21272
    :cond_a
    invoke-static {}, Lkv;->b()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 21273
    invoke-static {}, Lkv;->b()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_3

    .line 22148
    :cond_b
    iget-boolean v11, p0, Lanet/channel/request/Request;->f:Z

    .line 21274
    if-nez v11, :cond_c

    .line 21275
    sget-object v11, Lkv;->c:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_3

    .line 21277
    :cond_c
    new-instance v11, Ljq$1;

    invoke-direct {v11, p0}, Ljq$1;-><init>(Lanet/channel/request/Request;)V

    invoke-virtual {v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method public static a(Lanet/channel/request/Request;Lie;)Ljq$a;
    .locals 19
    .param p0, "request"    # Lanet/channel/request/Request;
    .param p1, "requestCb"    # Lie;

    .prologue
    .line 56
    new-instance v4, Ljq$a;

    invoke-direct {v4}, Ljq$a;-><init>()V

    .line 57
    .local v4, "response":Ljq$a;
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lanet/channel/request/Request;->a()Ljava/net/URL;

    move-result-object v6

    if-nez v6, :cond_2

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    .line 59
    const/16 v6, -0x66

    const/16 v7, -0x66

    invoke-static {v7}, Lks;->a(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lanet/channel/statist/RequestStatistic;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7, v8}, Lie;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 172
    :cond_1
    :goto_0
    return-object v4

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    .local v2, "conn":Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v10, v7, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    .line 69
    :cond_3
    :goto_1
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->f()Z

    move-result v6

    if-nez v6, :cond_4

    .line 70
    const/16 v6, -0xc8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v7}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :cond_4
    const/4 v6, 0x2

    :try_start_0
    invoke-static {v6}, Lanet/channel/util/ALog;->a(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 74
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, ""

    .line 1176
    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 74
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "request URL"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 2079
    move-object/from16 v0, p0

    iget-object v11, v0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    .line 74
    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, ""

    .line 2176
    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 75
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "request headers"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lanet/channel/request/Request;->c()Ljava/util/Map;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_5
    invoke-static/range {p0 .. p0}, Ljq;->a(Lanet/channel/request/Request;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_1b

    .line 80
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 2287
    const-string/jumbo v6, "POST"

    .line 3122
    move-object/from16 v0, p0

    iget-object v7, v0, Lanet/channel/request/Request;->c:Lanet/channel/request/Request$Method;

    .line 2287
    invoke-virtual {v7}, Lanet/channel/request/Request$Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_17
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-wide v10

    .line 2289
    const/4 v7, 0x0

    .line 2290
    const/4 v8, 0x0

    .line 2292
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 2293
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lanet/channel/request/Request;->a(Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 2297
    if-eqz v7, :cond_20

    .line 2299
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 2300
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v6, v8

    .line 2306
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    int-to-long v8, v6

    iput-wide v8, v7, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    .line 2307
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 82
    :cond_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    iput v6, v4, Ljq$a;->a:I

    .line 83
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lku;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v4, Ljq$a;->c:Ljava/util/Map;

    .line 84
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, ""

    .line 7176
    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 84
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "response headers"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v4, Ljq$a;->c:Ljava/util/Map;

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget v6, v4, Ljq$a;->a:I

    iget-object v7, v4, Ljq$a;->c:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lku;->a(Lanet/channel/request/Request;ILjava/util/Map;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_17
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v6

    if-eqz v6, :cond_8

    .line 161
    if-eqz v2, :cond_3

    .line 162
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 164
    :catch_0
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2301
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 2302
    :try_start_5
    const-string/jumbo v7, "awcn.HttpConnector"

    const-string/jumbo v9, "postData"

    .line 3176
    move-object/from16 v0, p0

    iget-object v12, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 2302
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v7, v9, v12, v6, v13}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_17
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v6, v8

    .line 2303
    goto :goto_2

    .line 2294
    :catch_2
    move-exception v6

    .line 2295
    :try_start_6
    const-string/jumbo v9, "awcn.HttpConnector"

    const-string/jumbo v12, "postData error"

    .line 4176
    move-object/from16 v0, p0

    iget-object v13, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 2295
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v9, v12, v13, v6, v14}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2297
    if-eqz v7, :cond_20

    .line 2299
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 2300
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_17
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v6, v8

    .line 2303
    goto/16 :goto_2

    .line 2301
    :catch_3
    move-exception v6

    .line 2302
    :try_start_8
    const-string/jumbo v7, "awcn.HttpConnector"

    const-string/jumbo v9, "postData"

    .line 5176
    move-object/from16 v0, p0

    iget-object v12, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 2302
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v7, v9, v12, v6, v13}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_17
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move v6, v8

    .line 2303
    goto/16 :goto_2

    .line 2297
    :catchall_0
    move-exception v6

    if-eqz v7, :cond_7

    .line 2299
    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 2300
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_17
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2303
    :cond_7
    :goto_3
    :try_start_a
    throw v6
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_17
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 115
    :catch_4
    move-exception v3

    .line 116
    .local v3, "e":Ljava/net/UnknownHostException;
    const/16 v6, -0x195

    :try_start_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v3}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V

    .line 117
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "Unknown Host Exception"

    .line 9176
    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 117
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "host"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    invoke-static {v6, v7, v8, v9}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->j()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    .line 164
    :catch_5
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2301
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v7

    .line 2302
    :try_start_d
    const-string/jumbo v8, "awcn.HttpConnector"

    const-string/jumbo v9, "postData"

    .line 6176
    move-object/from16 v0, p0

    iget-object v10, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 2302
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v7, v11}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_17
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_3

    .line 120
    :catch_7
    move-exception v3

    .line 121
    .local v3, "e":Ljava/net/SocketTimeoutException;
    const/16 v6, -0x191

    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v3}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V

    .line 122
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Socket Timeout"

    .line 10176
    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 122
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->j()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_0

    .line 164
    :catch_8
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 91
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_10
    iget v6, v4, Ljq$a;->a:I

    const/16 v7, 0x130

    if-eq v6, v7, :cond_9

    iget v6, v4, Ljq$a;->a:I

    const/16 v7, 0xcc

    if-eq v6, v7, :cond_9

    iget v6, v4, Ljq$a;->a:I

    const/16 v7, 0x64

    if-lt v6, v7, :cond_c

    iget v6, v4, Ljq$a;->a:I

    const/16 v7, 0xc8

    if-ge v6, v7, :cond_c

    .line 92
    :cond_9
    if-eqz p1, :cond_a

    .line 93
    iget v6, v4, Ljq$a;->a:I

    iget-object v7, v4, Ljq$a;->c:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7}, Lie;->a(ILjava/util/Map;)V

    .line 105
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v10, v7, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 106
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget v7, v4, Ljq$a;->a:I

    iput v7, v6, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 107
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lanet/channel/statist/RequestStatistic;->ret:Z

    .line 109
    if-eqz p1, :cond_b

    .line 110
    iget v6, v4, Ljq$a;->a:I

    const-string/jumbo v7, "SUCCESS"

    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7, v8}, Lie;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_10
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_10 .. :try_end_10} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_17
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 161
    :cond_b
    :goto_5
    if-eqz v2, :cond_1

    .line 162
    :try_start_11
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_0

    .line 164
    :catch_9
    move-exception v3

    .line 165
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 96
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_12
    iget-object v6, v4, Ljq$a;->c:Ljava/util/Map;

    invoke-static {v6}, Lku;->b(Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 97
    if-eqz p1, :cond_d

    .line 98
    iget v6, v4, Ljq$a;->a:I

    iget-object v7, v4, Ljq$a;->c:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7}, Lie;->a(ILjava/util/Map;)V
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_17
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 7313
    :cond_d
    const/4 v7, 0x0

    .line 7315
    :try_start_13
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_13 .. :try_end_13} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_17
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move-result-object v7

    .line 7325
    :goto_6
    if-nez v7, :cond_e

    .line 7326
    const/16 v6, -0x194

    const/4 v7, 0x0

    :try_start_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v7}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_14 .. :try_end_14} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_17
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_4

    .line 125
    :catch_a
    move-exception v3

    .line 126
    .local v3, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    const/16 v6, -0x190

    :try_start_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v3}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V

    .line 127
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Connect Timeout"

    .line 11176
    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 127
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->j()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_16
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    goto/16 :goto_0

    .line 164
    :catch_b
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7316
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v6

    .line 7318
    :try_start_17
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_17 .. :try_end_17} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_17 .. :try_end_17} :catch_15
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    move-result-object v7

    .line 7322
    :goto_7
    :try_start_18
    const-string/jumbo v8, "awcn.HttpConnector"

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v6, v11}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_18 .. :try_end_18} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_18 .. :try_end_18} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_18 .. :try_end_18} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_18 .. :try_end_18} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_18 .. :try_end_18} :catch_15
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_17
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_6

    .line 130
    :catch_d
    move-exception v3

    .line 131
    .local v3, "e":Ljava/net/ConnectException;
    const/16 v6, -0x196

    :try_start_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v3}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V

    .line 132
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Connect Exception"

    .line 12176
    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 132
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->j()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_1a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e

    goto/16 :goto_0

    .line 164
    :catch_e
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7319
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_f
    move-exception v8

    .line 7320
    :try_start_1b
    const-string/jumbo v9, "awcn.HttpConnector"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "get error stream failed."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 8176
    move-object/from16 v0, p0

    iget-object v11, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 7320
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v8, v12}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/net/UnknownHostException; {:try_start_1b .. :try_end_1b} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1b .. :try_end_1b} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1b .. :try_end_1b} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1b .. :try_end_1b} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_17
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto :goto_7

    .line 135
    :catch_10
    move-exception v3

    .line 136
    .local v3, "e":Ljavax/net/ssl/SSLHandshakeException;
    :try_start_1c
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljf;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/16 v6, -0x192

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v3}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V

    .line 138
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Connect SSLHandshakeException"

    .line 13176
    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 138
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "host"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    invoke-static {v6, v7, v8, v9}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_1d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11

    goto/16 :goto_0

    .line 164
    :catch_11
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7330
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e
    :try_start_1e
    iget-object v6, v4, Ljq$a;->c:Ljava/util/Map;

    invoke-static {v6}, Lku;->c(Ljava/util/Map;)I

    move-result v8

    .line 7331
    iget-object v6, v4, Ljq$a;->c:Ljava/util/Map;

    invoke-static {v6}, Lku;->b(Ljava/util/Map;)Z

    move-result v10

    .line 7333
    if-eqz v10, :cond_f

    .line 7334
    iget-object v6, v4, Ljq$a;->c:Ljava/util/Map;

    const-string/jumbo v9, "Content-Encoding"

    invoke-interface {v6, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7337
    :cond_f
    const/4 v6, 0x0

    .line 7338
    if-eqz p1, :cond_10

    if-eqz v10, :cond_1f

    const/high16 v9, 0x100000

    if-gt v8, v9, :cond_1f

    .line 7339
    :cond_10
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    if-gtz v8, :cond_11

    const/16 v8, 0x400

    :cond_11
    invoke-direct {v6, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_1e .. :try_end_1e} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1e .. :try_end_1e} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1e .. :try_end_1e} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_1e .. :try_end_1e} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1e .. :try_end_1e} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_1e .. :try_end_1e} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1e .. :try_end_1e} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_17
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    move-object v9, v6

    .line 7343
    :goto_8
    if-eqz v10, :cond_1e

    .line 7344
    :try_start_1f
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 7347
    :goto_9
    const/4 v8, 0x0

    .line 7350
    const/4 v7, 0x0

    .line 7352
    :goto_a
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 7353
    new-instance v7, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v8, "task cancelled"

    invoke-direct {v7, v8}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 7398
    :catchall_1
    move-exception v7

    move-object/from16 v18, v7

    move-object v7, v6

    move-object/from16 v6, v18

    :goto_b
    if-eqz v7, :cond_12

    :try_start_21
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1a
    .catch Ljava/net/UnknownHostException; {:try_start_21 .. :try_end_21} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_21 .. :try_end_21} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_21 .. :try_end_21} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_21 .. :try_end_21} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_21 .. :try_end_21} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_21 .. :try_end_21} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_21 .. :try_end_21} :catch_15
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_17
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    :cond_12
    :goto_c
    :try_start_22
    throw v6
    :try_end_22
    .catch Ljava/net/UnknownHostException; {:try_start_22 .. :try_end_22} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_22} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_22 .. :try_end_22} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_22 .. :try_end_22} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_22 .. :try_end_22} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_22 .. :try_end_22} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_22 .. :try_end_22} :catch_15
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_17
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 140
    :catch_12
    move-exception v3

    .line 141
    .local v3, "e":Ljavax/net/ssl/SSLException;
    :try_start_23
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljf;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 v6, -0x192

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v3}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V

    .line 143
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "connect SSLException"

    .line 14176
    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 143
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "host"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    invoke-static {v6, v7, v8, v9}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_24
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_13

    goto/16 :goto_0

    .line 164
    :catch_13
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7355
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_13
    if-nez v7, :cond_14

    .line 9024
    :try_start_25
    sget-object v7, Lil$a;->a:Lil;

    .line 7356
    const/16 v11, 0x800

    invoke-virtual {v7, v11}, Lil;->a(I)Lik;

    move-result-object v7

    .line 7358
    :cond_14
    invoke-virtual {v7, v6}, Lik;->a(Ljava/io/InputStream;)I

    move-result v11

    .line 7359
    const/4 v12, -0x1

    if-eq v11, v12, :cond_17

    .line 7360
    move-object/from16 v0, p0

    iget-object v12, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v12, v12, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_15

    .line 7361
    move-object/from16 v0, p0

    iget-object v12, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, v13, Lanet/channel/statist/RequestStatistic;->start:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    iput-wide v14, v12, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 7363
    :cond_15
    add-int/2addr v8, v11

    .line 7364
    if-eqz v9, :cond_16

    .line 7365
    invoke-virtual {v7, v9}, Lik;->a(Ljava/io/OutputStream;)V

    goto/16 :goto_a

    .line 7367
    :cond_16
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v11}, Lie;->a(Lik;Z)V

    .line 7368
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 7371
    :cond_17
    if-eqz v9, :cond_1a

    .line 7372
    invoke-virtual {v7}, Lik;->a()V

    .line 7380
    :goto_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v14, v11, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v14, v11, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    sub-long/2addr v12, v14

    iput-wide v12, v7, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 7381
    move-object/from16 v0, p0

    iget-object v7, v0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    int-to-long v12, v8

    iput-wide v12, v7, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 7383
    if-eqz v9, :cond_19

    .line 7384
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v4, Ljq$a;->b:[B

    .line 7386
    if-eqz v10, :cond_18

    .line 7387
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7388
    iget-object v8, v4, Ljq$a;->b:[B

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7389
    iget-object v8, v4, Ljq$a;->c:Ljava/util/Map;

    const-string/jumbo v9, "Content-Length"

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7392
    :cond_18
    if-eqz p1, :cond_19

    .line 7393
    iget v7, v4, Ljq$a;->a:I

    iget-object v8, v4, Ljq$a;->c:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v8}, Lie;->a(ILjava/util/Map;)V

    .line 7394
    iget-object v7, v4, Ljq$a;->b:[B

    invoke-static {v7}, Lik;->a([B)Lik;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v8}, Lie;->a(Lik;Z)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 7398
    :cond_19
    if-eqz v6, :cond_a

    :try_start_26
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_14
    .catch Ljava/net/UnknownHostException; {:try_start_26 .. :try_end_26} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_26 .. :try_end_26} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_26 .. :try_end_26} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_26 .. :try_end_26} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_26 .. :try_end_26} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_26 .. :try_end_26} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_26 .. :try_end_26} :catch_15
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_17
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    goto/16 :goto_4

    .line 7399
    :catch_14
    move-exception v6

    goto/16 :goto_4

    .line 7374
    :cond_1a
    const/4 v11, 0x1

    :try_start_27
    move-object/from16 v0, p1

    invoke-interface {v0, v7, v11}, Lie;->a(Lik;Z)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    goto :goto_d

    .line 113
    :cond_1b
    const/16 v6, -0x197

    const/4 v7, 0x0

    :try_start_28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v7}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V
    :try_end_28
    .catch Ljava/net/UnknownHostException; {:try_start_28 .. :try_end_28} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_28 .. :try_end_28} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_28 .. :try_end_28} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_28 .. :try_end_28} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_28 .. :try_end_28} :catch_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_28 .. :try_end_28} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_28 .. :try_end_28} :catch_15
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_17
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    goto/16 :goto_5

    .line 145
    :catch_15
    move-exception v3

    .line 146
    .local v3, "e":Ljava/util/concurrent/CancellationException;
    const/16 v6, -0xcc

    :try_start_29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v3}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V

    .line 147
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Request Cancel"

    .line 15176
    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 147
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_2a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_16

    goto/16 :goto_0

    .line 164
    :catch_16
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 149
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_17
    move-exception v3

    .line 150
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_2b
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_1c

    const-string/jumbo v6, "not verified"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 152
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljf;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v6, -0x193

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v3}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V

    .line 157
    :goto_e
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Connect Exception"

    .line 16176
    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 157
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_2c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_18

    goto/16 :goto_0

    .line 164
    :catch_18
    move-exception v3

    .line 165
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v3, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    :cond_1c
    const/16 v6, -0x65

    :try_start_2d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1, v6, v3}, Ljq;->a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    goto :goto_e

    .line 160
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "s":Ljava/lang/String;
    :catchall_2
    move-exception v6

    .line 161
    if-eqz v2, :cond_1d

    .line 162
    :try_start_2e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_19

    .line 166
    :cond_1d
    :goto_f
    throw v6

    .line 164
    :catch_19
    move-exception v3

    .line 165
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "awcn.HttpConnector"

    const-string/jumbo v8, "http disconnect"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v3, v10}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_f

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1a
    move-exception v7

    goto/16 :goto_c

    .line 7398
    :catchall_3
    move-exception v6

    goto/16 :goto_b

    :cond_1e
    move-object v6, v7

    goto/16 :goto_9

    :cond_1f
    move-object v9, v6

    goto/16 :goto_8

    :cond_20
    move v6, v8

    goto/16 :goto_2
.end method

.method private static a(Lanet/channel/request/Request;Ljq$a;Lie;ILjava/lang/Throwable;)V
    .locals 8
    .param p0, "request"    # Lanet/channel/request/Request;
    .param p1, "response"    # Ljq$a;
    .param p2, "requestCb"    # Lie;
    .param p3, "errCode"    # I
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 176
    invoke-static {p3}, Lks;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "errMsg":Ljava/lang/String;
    const-string/jumbo v2, "awcn.HttpConnector"

    const-string/jumbo v3, "onException"

    .line 17176
    iget-object v4, p0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 177
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "errorCode"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "errMsg"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 18079
    iget-object v7, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    .line 177
    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "host"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-virtual {p0}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    if-eqz p1, :cond_0

    .line 182
    iput p3, p1, Ljq$a;->a:I

    .line 185
    :cond_0
    iget-object v2, p0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iput p3, v2, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 186
    iget-object v2, p0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v6, v3, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 188
    if-eqz p2, :cond_1

    .line 189
    iget-object v2, p0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    invoke-interface {p2, p3, v0, v2}, Lie;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 192
    :cond_1
    const/16 v2, -0xcc

    if-eq p3, v2, :cond_2

    .line 193
    new-instance v1, Lanet/channel/statist/ExceptionStatistic;

    iget-object v2, p0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    invoke-direct {v1, p3, v0, v2, p4}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    .line 194
    .local v1, "es":Lanet/channel/statist/ExceptionStatistic;
    invoke-static {}, Lih;->a()Lij;

    move-result-object v2

    invoke-interface {v2, v1}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 196
    .end local v1    # "es":Lanet/channel/statist/ExceptionStatistic;
    :cond_2
    return-void
.end method
