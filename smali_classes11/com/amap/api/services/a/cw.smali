.class public Lcom/amap/api/services/a/cw;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# static fields
.field private static a:Lcom/amap/api/services/a/cx;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljavax/net/ssl/SSLContext;

.field private f:Ljava/net/Proxy;

.field private volatile g:Z

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Lcom/amap/api/services/a/ct$a;

.field private l:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method constructor <init>(IILjava/net/Proxy;)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/services/a/cw;-><init>(IILjava/net/Proxy;Z)V

    .line 104
    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;Z)V
    .locals 6

    .prologue
    .line 74
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cw;-><init>(IILjava/net/Proxy;ZLcom/amap/api/services/a/ct$a;)V

    .line 75
    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;ZLcom/amap/api/services/a/ct$a;)V
    .locals 4

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/a/cw;->g:Z

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/services/a/cw;->h:J

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/services/a/cw;->i:J

    .line 495
    new-instance v0, Lcom/amap/api/services/a/cw$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/cw$1;-><init>(Lcom/amap/api/services/a/cw;)V

    iput-object v0, p0, Lcom/amap/api/services/a/cw;->l:Ljavax/net/ssl/HostnameVerifier;

    .line 82
    iput p1, p0, Lcom/amap/api/services/a/cw;->b:I

    .line 83
    iput p2, p0, Lcom/amap/api/services/a/cw;->c:I

    .line 84
    iput-object p3, p0, Lcom/amap/api/services/a/cw;->f:Ljava/net/Proxy;

    .line 85
    iput-boolean p4, p0, Lcom/amap/api/services/a/cw;->d:Z

    .line 86
    iput-object p5, p0, Lcom/amap/api/services/a/cw;->k:Lcom/amap/api/services/a/ct$a;

    .line 87
    invoke-direct {p0}, Lcom/amap/api/services/a/cw;->a()V

    .line 88
    if-eqz p4, :cond_0

    .line 91
    :try_start_0
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 93
    iput-object v0, p0, Lcom/amap/api/services/a/cw;->e:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string/jumbo v1, "HttpUtil"

    const-string/jumbo v2, "HttpUtil"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/amap/api/services/a/db;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/av;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 349
    .line 355
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    .line 358
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 362
    const/16 v0, 0xc8

    if-eq v3, v0, :cond_5

    .line 363
    const-string/jumbo v2, ""

    .line 364
    if-eqz v5, :cond_e

    .line 365
    const-string/jumbo v0, "gsid"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 366
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 367
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    :goto_0
    new-instance v2, Lcom/amap/api/services/a/av;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/services/a/cw;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 415
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 416
    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v4, :cond_0

    .line 420
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 427
    :cond_0
    :goto_3
    if-eqz v3, :cond_1

    .line 429
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 436
    :cond_1
    :goto_4
    if-eqz v1, :cond_2

    .line 438
    :try_start_4
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 446
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    .line 448
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 456
    :cond_3
    :goto_6
    if-eqz p1, :cond_4

    .line 458
    :try_start_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 418
    :cond_4
    :goto_7
    throw v0

    .line 377
    :cond_5
    :try_start_7
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 378
    :try_start_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v3

    .line 379
    :try_start_9
    new-instance v2, Ljava/io/PushbackInputStream;

    const/4 v0, 0x2

    invoke-direct {v2, v3, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 381
    const/4 v0, 0x2

    :try_start_a
    new-array v0, v0, [B

    .line 382
    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->read([B)I

    .line 383
    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 395
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    aget-byte v0, v0, v6

    const/16 v6, -0x75

    if-ne v0, v6, :cond_6

    .line 396
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v1, v0

    .line 403
    :goto_8
    const/16 v0, 0x400

    :try_start_b
    new-array v0, v0, [B

    .line 404
    :goto_9
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    .line 405
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 415
    :catch_1
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1

    :cond_6
    move-object v1, v2

    .line 398
    goto :goto_8

    .line 407
    :cond_7
    sget-object v0, Lcom/amap/api/services/a/cw;->a:Lcom/amap/api/services/a/cx;

    if-eqz v0, :cond_8

    .line 408
    sget-object v0, Lcom/amap/api/services/a/cw;->a:Lcom/amap/api/services/a/cx;

    invoke-interface {v0}, Lcom/amap/api/services/a/cx;->a()V

    .line 410
    :cond_8
    new-instance v0, Lcom/amap/api/services/a/db;

    invoke-direct {v0}, Lcom/amap/api/services/a/db;-><init>()V

    .line 411
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v0, Lcom/amap/api/services/a/db;->a:[B

    .line 412
    iput-object v5, v0, Lcom/amap/api/services/a/db;->b:Ljava/util/Map;

    .line 413
    iget-object v5, p0, Lcom/amap/api/services/a/cw;->j:Ljava/lang/String;

    iput-object v5, v0, Lcom/amap/api/services/a/db;->c:Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 418
    if-eqz v4, :cond_9

    .line 420
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 427
    :cond_9
    :goto_a
    if-eqz v3, :cond_a

    .line 429
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    .line 436
    :cond_a
    :goto_b
    if-eqz v2, :cond_b

    .line 438
    :try_start_e
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    .line 446
    :cond_b
    :goto_c
    if-eqz v1, :cond_c

    .line 448
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    .line 456
    :cond_c
    :goto_d
    if-eqz p1, :cond_d

    .line 458
    :try_start_10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    .line 414
    :cond_d
    :goto_e
    return-object v0

    .line 421
    :catch_2
    move-exception v4

    .line 422
    const-string/jumbo v5, "HttpUrlUtil"

    const-string/jumbo v6, "parseResult"

    invoke-static {v4, v5, v6}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 430
    :catch_3
    move-exception v3

    .line 431
    const-string/jumbo v4, "HttpUrlUtil"

    const-string/jumbo v5, "parseResult"

    invoke-static {v3, v4, v5}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 439
    :catch_4
    move-exception v1

    .line 440
    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "parseResult"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 449
    :catch_5
    move-exception v1

    .line 450
    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 459
    :catch_6
    move-exception v1

    .line 460
    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 421
    :catch_7
    move-exception v4

    .line 422
    const-string/jumbo v5, "HttpUrlUtil"

    const-string/jumbo v6, "parseResult"

    invoke-static {v4, v5, v6}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 430
    :catch_8
    move-exception v3

    .line 431
    const-string/jumbo v4, "HttpUrlUtil"

    const-string/jumbo v5, "parseResult"

    invoke-static {v3, v4, v5}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 439
    :catch_9
    move-exception v2

    .line 440
    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "parseResult"

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 449
    :catch_a
    move-exception v1

    .line 450
    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 459
    :catch_b
    move-exception v1

    .line 460
    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 418
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_2

    .line 415
    :catch_c
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    :catch_d
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    :catch_e
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_1

    :cond_e
    move-object v0, v2

    goto/16 :goto_0
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 509
    if-eqz p0, :cond_3

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 516
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 517
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 518
    if-nez v0, :cond_0

    .line 519
    const-string/jumbo v0, ""

    .line 521
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 522
    const-string/jumbo v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_1
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string/jumbo v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/cw;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "initCSID"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/services/a/cx;)V
    .locals 0

    .prologue
    .line 69
    sput-object p0, Lcom/amap/api/services/a/cw;->a:Lcom/amap/api/services/a/cx;

    .line 70
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 475
    if-eqz p1, :cond_0

    .line 476
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 477
    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_0
    :try_start_0
    const-string/jumbo v0, "csid"

    iget-object v1, p0, Lcom/amap/api/services/a/cw;->j:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_1
    iget v0, p0, Lcom/amap/api/services/a/cw;->b:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 487
    iget v0, p0, Lcom/amap/api/services/a/cw;->c:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 489
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "addHeaders"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/services/a/db;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/services/a/db;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/av;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    :try_start_0
    invoke-static {p3}, Lcom/amap/api/services/a/cw;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/amap/api/services/a/cw;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 220
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/cw;->a(Ljava/net/HttpURLConnection;)Lcom/amap/api/services/a/db;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v0

    return-object v0

    .line 223
    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :catch_2
    move-exception v0

    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :catch_3
    move-exception v0

    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :catch_4
    move-exception v0

    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :catch_5
    move-exception v0

    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :catch_6
    move-exception v0

    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :catch_7
    move-exception v0

    .line 239
    throw v0

    .line 240
    :catch_8
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/services/a/db;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/amap/api/services/a/db;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/av;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/services/a/cw;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 255
    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    .line 256
    new-instance v1, Ljava/io/DataOutputStream;

    .line 257
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 259
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 260
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 263
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/cw;->a(Ljava/net/HttpURLConnection;)Lcom/amap/api/services/a/db;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v0

    return-object v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 266
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :catch_1
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 269
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :catch_2
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 272
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :catch_3
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 275
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :catch_4
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 278
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :catch_5
    move-exception v0

    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :catch_6
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :catch_7
    move-exception v0

    .line 286
    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makePostReqeust"

    .line 287
    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    throw v0

    .line 289
    :catch_8
    move-exception v0

    .line 290
    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makePostReqeust"

    .line 291
    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/amap/api/services/a/av;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 298
    invoke-static {}, Lcom/amap/api/services/a/ba;->a()V

    .line 300
    const/4 v0, 0x0

    .line 301
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/amap/api/services/a/cw;->k:Lcom/amap/api/services/a/ct$a;

    if-eqz v2, :cond_0

    .line 303
    iget-object v0, p0, Lcom/amap/api/services/a/cw;->k:Lcom/amap/api/services/a/ct$a;

    iget-object v2, p0, Lcom/amap/api/services/a/cw;->f:Ljava/net/Proxy;

    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/a/ct$a;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 305
    :cond_0
    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/amap/api/services/a/cw;->f:Ljava/net/Proxy;

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/amap/api/services/a/cw;->f:Ljava/net/Proxy;

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .line 315
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/services/a/cw;->d:Z

    if-eqz v1, :cond_4

    .line 316
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    .line 317
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/amap/api/services/a/cw;->e:Ljavax/net/ssl/SSLContext;

    .line 318
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v1, v0

    .line 319
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/amap/api/services/a/cw;->l:Ljavax/net/ssl/HostnameVerifier;

    .line 320
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 327
    :goto_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_2

    .line 328
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/amap/api/services/a/cw;->a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    .line 331
    if-eqz p3, :cond_5

    .line 332
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 333
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 334
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 335
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 341
    :goto_2
    return-object v0

    .line 310
    :cond_3
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_4
    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 337
    :cond_5
    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_2
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/amap/api/services/a/cw;->i:J

    .line 112
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amap/api/services/a/cv$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amap/api/services/a/cv$a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v8, 0x400

    const/4 v3, 0x0

    .line 120
    .line 123
    if-nez p4, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    :try_start_0
    invoke-static {p3}, Lcom/amap/api/services/a/cw;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 128
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    if-eqz v2, :cond_2

    .line 131
    const-string/jumbo v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, p2, v4}, Lcom/amap/api/services/a/cw;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 136
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/amap/api/services/a/cw;->i:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    const-string/jumbo v5, "RANGE"

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 141
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 142
    const/16 v4, 0xc8

    if-eq v5, v4, :cond_6

    move v4, v0

    :goto_1
    const/16 v6, 0xce

    if-eq v5, v6, :cond_7

    :goto_2
    and-int/2addr v0, v4

    if-eqz v0, :cond_3

    .line 143
    new-instance v0, Lcom/amap/api/services/a/av;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/amap/api/services/a/av;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-interface {p4, v0}, Lcom/amap/api/services/a/cv$a;->a(Ljava/lang/Throwable;)V

    .line 148
    :cond_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 149
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 151
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/amap/api/services/a/cw;->g:Z

    if-nez v3, :cond_b

    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_b

    iget-wide v4, p0, Lcom/amap/api/services/a/cw;->h:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/amap/api/services/a/cw;->i:J

    iget-wide v6, p0, Lcom/amap/api/services/a/cw;->h:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 153
    :cond_4
    if-ne v3, v8, :cond_8

    .line 154
    iget-wide v4, p0, Lcom/amap/api/services/a/cw;->i:J

    invoke-interface {p4, v0, v4, v5}, Lcom/amap/api/services/a/cv$a;->a([BJ)V

    .line 160
    :goto_4
    iget-wide v4, p0, Lcom/amap/api/services/a/cw;->i:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amap/api/services/a/cw;->i:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 168
    :catch_0
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 169
    :goto_5
    :try_start_3
    invoke-interface {p4, v0}, Lcom/amap/api/services/a/cv$a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 171
    if-eqz v2, :cond_5

    .line 173
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    .line 185
    :cond_5
    :goto_6
    if-eqz v1, :cond_0

    .line 187
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 188
    :catch_1
    move-exception v0

    .line 190
    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v4, v3

    .line 142
    goto/16 :goto_1

    :cond_7
    move v0, v3

    goto/16 :goto_2

    .line 156
    :cond_8
    :try_start_6
    new-array v4, v3, [B

    .line 157
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-wide v6, p0, Lcom/amap/api/services/a/cw;->i:J

    invoke-interface {p4, v4, v6, v7}, Lcom/amap/api/services/a/cv$a;->a([BJ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 171
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v1, :cond_9

    .line 173
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    .line 185
    :cond_9
    :goto_8
    if-eqz v2, :cond_a

    .line 187
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    .line 192
    :cond_a
    :goto_9
    throw v0

    .line 163
    :cond_b
    :try_start_9
    iget-boolean v0, p0, Lcom/amap/api/services/a/cw;->g:Z

    if-eqz v0, :cond_d

    .line 164
    invoke-interface {p4}, Lcom/amap/api/services/a/cv$a;->e()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 171
    :goto_a
    if-eqz v1, :cond_c

    .line 173
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 185
    :cond_c
    :goto_b
    if-eqz v2, :cond_0

    .line 187
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .line 188
    :catch_2
    move-exception v0

    .line 190
    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_d
    :try_start_c
    invoke-interface {p4}, Lcom/amap/api/services/a/cv$a;->d()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_a

    .line 174
    :catch_3
    move-exception v0

    .line 176
    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 178
    :catch_4
    move-exception v0

    .line 180
    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 174
    :catch_5
    move-exception v0

    .line 176
    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 178
    :catch_6
    move-exception v0

    .line 180
    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 174
    :catch_7
    move-exception v1

    .line 176
    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "makeDownloadGetRequest"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 178
    :catch_8
    move-exception v1

    .line 180
    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "makeDownloadGetRequest"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 188
    :catch_9
    move-exception v1

    .line 190
    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 171
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    goto/16 :goto_7

    .line 168
    :catch_a
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_5
.end method

.method b(J)V
    .locals 1

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/amap/api/services/a/cw;->h:J

    .line 116
    return-void
.end method
