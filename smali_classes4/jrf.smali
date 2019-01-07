.class public final Ljrf;
.super Ljava/lang/Object;
.source "HttpDownloadProtocol.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x800

    const/4 v4, 0x0

    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v3, 0x0

    .line 117
    :goto_0
    return-object v3

    .line 106
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-array v1, v5, [B

    .line 111
    .local v1, "data":[B
    :goto_1
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "nRead":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 112
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 117
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    const/4 v4, 0x0

    .line 135
    :goto_0
    return-object v4

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    const/16 v4, 0x800

    new-array v1, v4, [C

    .line 130
    .local v1, "data":[C
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .local v2, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 131
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 28
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 29
    .local v1, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Ljpq$a;

    invoke-direct {v2}, Ljpq$a;-><init>()V

    .line 30
    .local v2, "date":Ljpq$a;, "Ljpq$a<[B>;"
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v7

    .line 1153
    iget-object v7, v7, Ljpo;->c:Ljpo$a;

    iget-object v3, v7, Ljpo$a;->j:Ljpr;

    .line 31
    .local v3, "httpAdapter":Ljpr;
    if-eqz v3, :cond_0

    .line 32
    const/4 v7, 0x0

    new-instance v8, Ljrf$1;

    invoke-direct {v8, p0, v2, v1}, Ljrf$1;-><init>(Ljrf;Ljpq$a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v3, p1, v7, v8}, Ljpr;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljpr$a;)V

    .line 82
    :goto_0
    const-wide/16 v8, 0xf

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :goto_1
    iget-object v7, v2, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v7, [B

    return-object v7

    .line 2090
    :cond_0
    :try_start_1
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2140
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 2092
    const/16 v7, 0x3a98

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2093
    const/16 v7, 0x2710

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2094
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2095
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2097
    const-string/jumbo v7, "GET"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 65
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    .line 66
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 67
    .local v5, "responseCode":I
    const/16 v7, 0xc8

    if-lt v5, v7, :cond_1

    const/16 v7, 0x12b

    if-gt v5, v7, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 69
    .local v4, "rawStream":Ljava/io/InputStream;
    invoke-static {v4}, Ljrf;->a(Ljava/io/InputStream;)[B

    move-result-object v7

    iput-object v7, v2, Ljpq$a;->d:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "rawStream":Ljava/io/InputStream;
    .end local v5    # "responseCode":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 71
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "responseCode":I
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Ljrf;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Ljpq$a;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 73
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "responseCode":I
    :catch_0
    move-exception v6

    .line 75
    .local v6, "var8":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string/jumbo v7, "-1"

    iput-object v7, v2, Ljpq$a;->b:Ljava/lang/String;

    .line 77
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Ljpq$a;->c:Ljava/lang/String;

    goto :goto_2

    .end local v6    # "var8":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_1

    .line 73
    :catch_2
    move-exception v6

    goto :goto_3
.end method
