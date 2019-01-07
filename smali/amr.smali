.class public final Lamr;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamr$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/util/Map;Z)Lamr$a;
    .locals 14
    .param p0, "requestType"    # I
    .param p1, "aUrl"    # Ljava/lang/String;
    .param p3, "openGzip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lamr$a;"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "pMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v10, Lamr$a;

    invoke-direct {v10}, Lamr$a;-><init>()V

    .line 62
    .local v10, "repsonse":Lamr$a;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v10

    .line 69
    :cond_1
    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 70
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 79
    .local v2, "conn":Ljava/net/HttpURLConnection;
    if-eqz v2, :cond_0

    .line 83
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 88
    :try_start_1
    const-string/jumbo v12, "GET"

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_4

    .line 94
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 95
    const/16 v12, 0x2710

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 96
    const v12, 0xea60

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 97
    const-string/jumbo v12, "Connection"

    const-string/jumbo v13, "close"

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 172
    .local v8, "now":J
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    iput v12, v10, Lamr$a;->a:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 199
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    iput-wide v12, v10, Lamr$a;->c:J

    .line 201
    const/4 v3, 0x0

    .line 203
    .local v3, "dis":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 208
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 210
    .end local v3    # "dis":Ljava/io/InputStream;
    .local v4, "dis":Ljava/io/InputStream;
    const/16 v12, 0x800

    :try_start_5
    new-array v1, v12, [B

    .line 212
    .local v1, "buffer":[B
    :goto_2
    const/4 v12, 0x0

    const/16 v13, 0x800

    invoke-virtual {v4, v1, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .local v7, "i":I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_2

    .line 213
    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 215
    .end local v1    # "buffer":[B
    .end local v7    # "i":I
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 216
    .end local v4    # "dis":Ljava/io/InputStream;
    .restart local v3    # "dis":Ljava/io/InputStream;
    .local v5, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 219
    if-eqz v3, :cond_0

    .line 221
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 222
    :catch_1
    move-exception v5

    .line 223
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "dis":Ljava/io/InputStream;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "now":J
    .end local v11    # "url":Ljava/net/URL;
    :catch_2
    move-exception v6

    .line 72
    .local v6, "e1":Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 74
    .end local v6    # "e1":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v6

    .line 75
    .local v6, "e1":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 90
    .end local v6    # "e1":Ljava/io/IOException;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "url":Ljava/net/URL;
    :catch_4
    move-exception v5

    .line 91
    .local v5, "e":Ljava/net/ProtocolException;
    invoke-virtual {v5}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_0

    .line 179
    .end local v5    # "e":Ljava/net/ProtocolException;
    .restart local v8    # "now":J
    :catch_5
    move-exception v5

    .line 180
    .local v5, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    iput-wide v12, v10, Lamr$a;->c:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 184
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 190
    throw v12

    .line 195
    :catch_6
    move-exception v6

    .line 197
    .restart local v6    # "e1":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 221
    .end local v6    # "e1":Ljava/io/IOException;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "dis":Ljava/io/InputStream;
    .restart local v7    # "i":I
    :cond_2
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 227
    :goto_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 228
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v10, Lamr$a;->b:[B

    goto/16 :goto_0

    .line 222
    :catch_7
    move-exception v5

    .line 223
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 219
    .end local v1    # "buffer":[B
    .end local v4    # "dis":Ljava/io/InputStream;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "i":I
    .restart local v3    # "dis":Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    :goto_5
    if-eqz v3, :cond_3

    .line 221
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 224
    :cond_3
    :goto_6
    throw v12

    .line 222
    :catch_8
    move-exception v5

    .line 223
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 219
    .end local v3    # "dis":Ljava/io/InputStream;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "dis":Ljava/io/InputStream;
    :catchall_2
    move-exception v12

    move-object v3, v4

    .end local v4    # "dis":Ljava/io/InputStream;
    .restart local v3    # "dis":Ljava/io/InputStream;
    goto :goto_5

    .line 215
    :catch_9
    move-exception v5

    goto :goto_3
.end method
