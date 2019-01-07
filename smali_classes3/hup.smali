.class public final Lhup;
.super Ljava/lang/Object;
.source "UrlWrapper.java"


# static fields
.field public static a:I

.field private static b:Lhuo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lhup;->a:I

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lhup;->b:Lhuo;

    .line 44
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[B)Lhun;
    .locals 21
    .param p0, "appkey"    # Ljava/lang/String;
    .param p1, "adashUrl"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 48
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "sendRequest use adashx, bytes length : "

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_7

    const-string/jumbo v18, "0"

    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v2, Lhun;

    invoke-direct {v2}, Lhun;-><init>()V

    .line 54
    .local v2, "bizResponse":Lhun;
    :try_start_0
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lhul;->i:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 55
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    .local v17, "url":Ljava/net/URL;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 61
    .local v5, "conn":Ljava/net/HttpURLConnection;
    instance-of v0, v5, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 62
    sget-object v18, Lhup;->b:Lhuo;

    if-nez v18, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 63
    new-instance v18, Lhuo;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lhuo;-><init>(Ljava/lang/String;)V

    sput-object v18, Lhup;->b:Lhuo;

    .line 65
    :cond_0
    move-object v0, v5

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v18, v0

    sget-object v19, Lhup;->b:Lhuo;

    invoke-virtual/range {v18 .. v19}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f

    .line 73
    :cond_1
    if-eqz v5, :cond_6

    .line 74
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 75
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 77
    :try_start_1
    const-string/jumbo v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_e

    .line 81
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 82
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    const v18, 0xea60

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 84
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 85
    const-string/jumbo v18, "Content-Type"

    const-string/jumbo v19, "application/x-www-form-urlencoded"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v18, "Charset"

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 90
    const-string/jumbo v18, "x-k"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    :try_start_2
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lhul;->d:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 104
    const-string/jumbo v15, ""

    .line 105
    .local v15, "secret":Ljava/lang/String;
    new-instance v14, Lhus;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v14, v0, v15, v1}, Lhus;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    .local v14, "requestAuthentication":Lhus;
    invoke-static/range {p2 .. p2}, Lhuz;->b([B)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lhus;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 107
    .local v16, "signValue":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "signValue:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v18, "x-s"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v18, "x-t"

    const-string/jumbo v19, "3"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    .end local v14    # "requestAuthentication":Lhus;
    .end local v15    # "secret":Ljava/lang/String;
    .end local v16    # "signValue":Ljava/lang/String;
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 117
    .local v10, "now":J
    const/4 v12, 0x0

    .line 119
    .local v12, "out":Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 120
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_3

    .line 121
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    .end local v12    # "out":Ljava/io/DataOutputStream;
    .local v13, "out":Ljava/io/DataOutputStream;
    :try_start_4
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 123
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v12, v13

    .line 134
    .end local v13    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "out":Ljava/io/DataOutputStream;
    :cond_3
    if-eqz v12, :cond_4

    .line 136
    :try_start_5
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 143
    :cond_4
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v10

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lhun;->b:J

    .line 145
    const/4 v6, 0x0

    .line 146
    .local v6, "dis":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v3, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_6
    new-instance v7, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 149
    .end local v6    # "dis":Ljava/io/InputStream;
    .local v7, "dis":Ljava/io/InputStream;
    const/16 v18, 0x800

    :try_start_7
    move/from16 v0, v18

    new-array v4, v0, [B

    .line 151
    .local v4, "buffer":[B
    :goto_4
    const/16 v18, 0x0

    const/16 v19, 0x800

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .local v9, "i":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_a

    .line 152
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 154
    .end local v4    # "buffer":[B
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    move-object v6, v7

    .line 155
    .end local v7    # "dis":Ljava/io/InputStream;
    .restart local v6    # "dis":Ljava/io/InputStream;
    .local v8, "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    .line 9029
    const-string/jumbo v19, "RestApi"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 157
    if-eqz v6, :cond_5

    .line 159
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 165
    .end local v8    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 166
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lhum;->a([B)I

    move-result v18

    sput v18, Lhup;->a:I

    .line 167
    sget v18, Lhup;->a:I

    move/from16 v0, v18

    iput v0, v2, Lhun;->a:I

    .line 168
    sget-object v18, Lhum;->b:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v0, v2, Lhun;->c:Ljava/lang/String;

    .line 171
    .end local v3    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "dis":Ljava/io/InputStream;
    .end local v10    # "now":J
    .end local v12    # "out":Ljava/io/DataOutputStream;
    .end local v17    # "url":Ljava/net/URL;
    :cond_6
    :goto_7
    return-object v2

    .line 48
    .end local v2    # "bizResponse":Lhun;
    :cond_7
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_0

    .line 57
    .restart local v2    # "bizResponse":Lhun;
    :cond_8
    :try_start_a
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    .restart local v17    # "url":Ljava/net/URL;
    goto/16 :goto_1

    .line 111
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v8

    .line 112
    .local v8, "e":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1029
    const-string/jumbo v19, "RestApi"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 137
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v10    # "now":J
    .restart local v12    # "out":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v8

    .line 138
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2029
    const-string/jumbo v19, "RestApi"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 125
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 126
    .local v8, "e":Ljavax/net/ssl/SSLHandshakeException;
    :goto_8
    :try_start_b
    invoke-virtual {v8}, Ljavax/net/ssl/SSLHandshakeException;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3029
    const-string/jumbo v19, "RestApi"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v10

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lhun;->b:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 134
    if-eqz v12, :cond_6

    .line 136
    :try_start_c
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_7

    .line 137
    :catch_4
    move-exception v8

    .line 138
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4029
    const-string/jumbo v19, "RestApi"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 129
    .end local v8    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    .line 130
    .local v8, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_d
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    .line 5029
    const-string/jumbo v19, "RestApi"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v10

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lhun;->b:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 134
    if-eqz v12, :cond_6

    .line 136
    :try_start_e
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_7

    .line 137
    :catch_6
    move-exception v8

    .line 138
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    .line 6029
    const-string/jumbo v19, "RestApi"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 134
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_a
    if-eqz v12, :cond_9

    .line 136
    :try_start_f
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 139
    :cond_9
    :goto_b
    throw v18

    .line 137
    :catch_7
    move-exception v8

    .line 138
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    .line 7029
    const-string/jumbo v20, "RestApi"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 159
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v3    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v7    # "dis":Ljava/io/InputStream;
    .restart local v9    # "i":I
    :cond_a
    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    move-object v6, v7

    .line 162
    .end local v7    # "dis":Ljava/io/InputStream;
    .restart local v6    # "dis":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 160
    .end local v6    # "dis":Ljava/io/InputStream;
    .restart local v7    # "dis":Ljava/io/InputStream;
    :catch_8
    move-exception v8

    .line 161
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    .line 8029
    const-string/jumbo v19, "RestApi"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 162
    .end local v7    # "dis":Ljava/io/InputStream;
    .restart local v6    # "dis":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 160
    .end local v4    # "buffer":[B
    .end local v9    # "i":I
    .local v8, "e":Ljava/io/IOException;
    :catch_9
    move-exception v8

    .line 161
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    .line 10029
    const-string/jumbo v19, "RestApi"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 157
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v18

    :goto_c
    if-eqz v6, :cond_b

    .line 159
    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    .line 162
    :cond_b
    :goto_d
    throw v18

    .line 160
    :catch_a
    move-exception v8

    .line 161
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    .line 11029
    const-string/jumbo v20, "RestApi"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 157
    .end local v6    # "dis":Ljava/io/InputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "dis":Ljava/io/InputStream;
    :catchall_2
    move-exception v18

    move-object v6, v7

    .end local v7    # "dis":Ljava/io/InputStream;
    .restart local v6    # "dis":Ljava/io/InputStream;
    goto :goto_c

    .line 154
    :catch_b
    move-exception v8

    goto/16 :goto_5

    .line 134
    .end local v3    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dis":Ljava/io/InputStream;
    .end local v12    # "out":Ljava/io/DataOutputStream;
    .restart local v13    # "out":Ljava/io/DataOutputStream;
    :catchall_3
    move-exception v18

    move-object v12, v13

    .end local v13    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "out":Ljava/io/DataOutputStream;
    goto :goto_a

    .line 129
    .end local v12    # "out":Ljava/io/DataOutputStream;
    .restart local v13    # "out":Ljava/io/DataOutputStream;
    :catch_c
    move-exception v8

    move-object v12, v13

    .end local v13    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_9

    .line 125
    .end local v12    # "out":Ljava/io/DataOutputStream;
    .restart local v13    # "out":Ljava/io/DataOutputStream;
    :catch_d
    move-exception v8

    move-object v12, v13

    .end local v13    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_8

    .line 79
    .end local v10    # "now":J
    .end local v12    # "out":Ljava/io/DataOutputStream;
    :catch_e
    move-exception v18

    goto/16 :goto_7

    .line 70
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v17    # "url":Ljava/net/URL;
    :catch_f
    move-exception v18

    goto/16 :goto_7

    .line 68
    :catch_10
    move-exception v18

    goto/16 :goto_7
.end method

.method public static a(Ljava/lang/String;[B)Lhun;
    .locals 4
    .param p0, "adashxHost"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    .line 178
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v2

    iget-object v1, v2, Lhul;->c:Ljava/lang/String;

    .line 180
    .local v1, "appkey":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v2

    iget-object v2, v2, Lhul;->i:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/upload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "adashUrl":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0, p1}, Lhup;->a(Ljava/lang/String;Ljava/lang/String;[B)Lhun;

    move-result-object v2

    return-object v2

    .line 183
    .end local v0    # "adashUrl":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/upload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "adashUrl":Ljava/lang/String;
    goto :goto_0
.end method
