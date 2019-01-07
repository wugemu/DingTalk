.class public final Lamh;
.super Ljava/lang/Object;
.source "UrlWrapper.java"


# static fields
.field public static a:I

.field public static final b:Lalo;

.field private static c:Lamj;

.field private static d:Lami;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput v0, Lamh;->a:I

    .line 57
    sput-object v2, Lamh;->c:Lamj;

    .line 58
    sput-object v2, Lamh;->d:Lami;

    .line 60
    new-instance v0, Lalo;

    invoke-direct {v0}, Lalo;-><init>()V

    sput-object v0, Lamh;->b:Lalo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Lalw;
    .locals 28
    .param p0, "bytes"    # [B

    .prologue
    .line 66
    invoke-static {}, Lamu;->b()V

    .line 67
    new-instance v4, Lalw;

    invoke-direct {v4}, Lalw;-><init>()V

    .line 74
    .local v4, "bizResponse":Lalw;
    :try_start_0
    new-instance v21, Ljava/net/URL;

    invoke-static {}, Lalx;->a()Lalx;

    move-result-object v22

    .line 1056
    const-string/jumbo v23, ""

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "mHttpsUrl"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, v22

    iget-object v0, v0, Lalx;->b:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    move-object/from16 v0, v22

    iget-object v0, v0, Lalx;->b:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 74
    invoke-direct/range {v21 .. v22}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    .local v21, "url":Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 87
    .local v7, "conn":Ljava/net/HttpURLConnection;
    instance-of v0, v7, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 88
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    .line 89
    .local v13, "host":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 224
    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    .end local v13    # "host":Ljava/lang/String;
    .end local v21    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v4

    .line 93
    .restart local v7    # "conn":Ljava/net/HttpURLConnection;
    .restart local v13    # "host":Ljava/lang/String;
    .restart local v21    # "url":Ljava/net/URL;
    :cond_1
    sget-object v22, Lamh;->c:Lamj;

    if-eqz v22, :cond_2

    sget-object v22, Lamh;->c:Lamj;

    .line 1121
    move-object/from16 v0, v22

    iget-object v0, v0, Lamj;->a:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 93
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 94
    :cond_2
    const-string/jumbo v22, "UrlWrapper"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "new SslSocketFactory"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    new-instance v22, Lamj;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Lamj;-><init>(Ljava/lang/String;)V

    sput-object v22, Lamh;->c:Lamj;

    .line 97
    :cond_3
    move-object v0, v7

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v22, v0

    sget-object v23, Lamh;->c:Lamj;

    invoke-virtual/range {v22 .. v23}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 99
    sget-object v22, Lamh;->d:Lami;

    if-eqz v22, :cond_4

    sget-object v22, Lamh;->d:Lami;

    .line 2040
    move-object/from16 v0, v22

    iget-object v0, v0, Lami;->a:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 99
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 100
    :cond_4
    const-string/jumbo v22, "UrlWrapper"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "new HostnameVerifier"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v22, Lami;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Lami;-><init>(Ljava/lang/String;)V

    sput-object v22, Lamh;->d:Lami;

    .line 103
    :cond_5
    move-object v0, v7

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v22, v0

    sget-object v23, Lamh;->d:Lami;

    invoke-virtual/range {v22 .. v23}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 113
    .end local v13    # "host":Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_0

    .line 114
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 115
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 117
    :try_start_1
    const-string/jumbo v22, "POST"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3

    .line 122
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 123
    const/16 v22, 0x2710

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 124
    const v22, 0xea60

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 125
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 126
    const-string/jumbo v22, "Content-Type"

    const-string/jumbo v23, "application/x-www-form-urlencoded"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v22, "Charset"

    const-string/jumbo v23, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v22

    .line 2309
    move-object/from16 v0, v22

    iget-object v2, v0, Lajw;->d:Ljava/lang/String;

    .line 131
    .local v2, "appkey":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 132
    const-string/jumbo v22, "x-k"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_7
    :try_start_2
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v22

    .line 2342
    move-object/from16 v0, v22

    iget-object v0, v0, Lajw;->e:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    move-object/from16 v19, v0

    .line 139
    .local v19, "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    if-eqz v19, :cond_8

    .line 140
    invoke-static/range {p0 .. p0}, Lamv;->b([B)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ut/mini/core/sign/IUTRequestAuthentication;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 141
    .local v20, "signValue":Ljava/lang/String;
    const-string/jumbo v22, ""

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "signValue"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v20, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const-string/jumbo v22, "x-s"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 144
    check-cast v19, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    .end local v19    # "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    invoke-virtual/range {v19 .. v19}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->isEncode()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 145
    const-string/jumbo v22, "x-t"

    const-string/jumbo v23, "2"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v22, ""

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "x-t"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 162
    .end local v20    # "signValue":Ljava/lang/String;
    :cond_8
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 163
    .local v16, "now":J
    const/4 v15, 0x0

    .line 165
    .local v15, "out":Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 166
    if-eqz p0, :cond_9

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_9

    .line 167
    new-instance v18, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    .end local v15    # "out":Ljava/io/DataOutputStream;
    .local v18, "out":Ljava/io/DataOutputStream;
    :try_start_4
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 169
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v15, v18

    .line 187
    .end local v18    # "out":Ljava/io/DataOutputStream;
    .restart local v15    # "out":Ljava/io/DataOutputStream;
    :cond_9
    if-eqz v15, :cond_a

    .line 189
    :try_start_5
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 196
    :cond_a
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v16

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lalw;->b:J

    .line 198
    const/4 v8, 0x0

    .line 199
    .local v8, "dis":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    .local v5, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_6
    new-instance v9, Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 202
    .end local v8    # "dis":Ljava/io/InputStream;
    .local v9, "dis":Ljava/io/InputStream;
    const/16 v22, 0x800

    :try_start_7
    move/from16 v0, v22

    new-array v6, v0, [B

    .line 204
    .local v6, "buffer":[B
    :goto_3
    const/16 v22, 0x0

    const/16 v23, 0x800

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v6, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    .local v14, "i":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_11

    .line 205
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v6, v0, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 207
    .end local v6    # "buffer":[B
    .end local v14    # "i":I
    :catch_0
    move-exception v10

    move-object v8, v9

    .line 208
    .end local v9    # "dis":Ljava/io/InputStream;
    .restart local v8    # "dis":Ljava/io/InputStream;
    .local v10, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 210
    if-eqz v8, :cond_b

    .line 212
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    .line 218
    .end local v10    # "e":Ljava/io/IOException;
    :cond_b
    :goto_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v22

    if-lez v22, :cond_0

    .line 219
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lalv;->a([B)I

    move-result v22

    sput v22, Lamh;->a:I

    .line 220
    sget v22, Lamh;->a:I

    move/from16 v0, v22

    iput v0, v4, Lalw;->a:I

    .line 221
    sget-object v22, Lalv;->b:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v0, v4, Lalw;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 105
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v5    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "dis":Ljava/io/InputStream;
    .end local v15    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "now":J
    .end local v21    # "url":Ljava/net/URL;
    :catch_1
    move-exception v11

    .line 106
    .local v11, "e1":Ljava/net/MalformedURLException;
    const-string/jumbo v22, ""

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v11, v1}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 108
    .end local v11    # "e1":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v12

    .line 109
    .local v12, "e2":Ljava/io/IOException;
    const-string/jumbo v22, ""

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v12, v1}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 118
    .end local v12    # "e2":Ljava/io/IOException;
    .restart local v7    # "conn":Ljava/net/HttpURLConnection;
    .restart local v21    # "url":Ljava/net/URL;
    :catch_3
    move-exception v10

    .line 119
    .local v10, "e":Ljava/net/ProtocolException;
    const-string/jumbo v22, ""

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v10, v1}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 148
    .end local v10    # "e":Ljava/net/ProtocolException;
    .restart local v2    # "appkey":Ljava/lang/String;
    .restart local v20    # "signValue":Ljava/lang/String;
    :cond_c
    :try_start_a
    const-string/jumbo v22, "x-t"

    const-string/jumbo v23, "3"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v22, ""

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "x-t"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    .line 157
    .end local v20    # "signValue":Ljava/lang/String;
    :catch_4
    move-exception v10

    .line 158
    .local v10, "e":Ljava/lang/Throwable;
    const-string/jumbo v22, ""

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v10, v1}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 151
    .end local v10    # "e":Ljava/lang/Throwable;
    .restart local v19    # "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .restart local v20    # "signValue":Ljava/lang/String;
    :cond_d
    :try_start_b
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;

    move/from16 v22, v0

    if-nez v22, :cond_e

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 153
    :cond_e
    const-string/jumbo v22, "x-t"

    const-string/jumbo v23, "1"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v22, ""

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "x-t"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    .line 190
    .end local v19    # "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .end local v20    # "signValue":Ljava/lang/String;
    .restart local v15    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "now":J
    :catch_5
    move-exception v10

    .line 191
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 171
    .end local v10    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    .line 172
    .local v10, "e":Ljavax/net/ssl/SSLHandshakeException;
    :goto_6
    :try_start_c
    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v22

    .line 3123
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lajw;->s:Z

    move/from16 v22, v0

    .line 174
    if-eqz v22, :cond_f

    .line 175
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v22, "type"

    const-string/jumbo v23, "3"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v22, Lamh;->b:Lalo;

    sget v23, Laln;->c:I

    invoke-static {v3}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lalo;->a(Laln;)V

    .line 180
    .end local v3    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v16

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lalw;->b:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 187
    if-eqz v15, :cond_0

    .line 189
    :try_start_d
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    .line 190
    :catch_7
    move-exception v10

    .line 191
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 182
    .end local v10    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v10

    .line 183
    .local v10, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_e
    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v16

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lalw;->b:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 187
    if-eqz v15, :cond_0

    .line 189
    :try_start_f
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_0

    .line 190
    :catch_9
    move-exception v10

    .line 191
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 187
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    :goto_8
    if-eqz v15, :cond_10

    .line 189
    :try_start_10
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 192
    :cond_10
    :goto_9
    throw v22

    .line 190
    :catch_a
    move-exception v10

    .line 191
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v23, ""

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v10, v24, v25

    invoke-static/range {v23 .. v24}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 212
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v9    # "dis":Ljava/io/InputStream;
    .restart local v14    # "i":I
    :cond_11
    :try_start_11
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    move-object v8, v9

    .line 215
    .end local v9    # "dis":Ljava/io/InputStream;
    .restart local v8    # "dis":Ljava/io/InputStream;
    goto/16 :goto_5

    .line 213
    .end local v8    # "dis":Ljava/io/InputStream;
    .restart local v9    # "dis":Ljava/io/InputStream;
    :catch_b
    move-exception v10

    .line 214
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v8, v9

    .line 215
    .end local v9    # "dis":Ljava/io/InputStream;
    .restart local v8    # "dis":Ljava/io/InputStream;
    goto/16 :goto_5

    .line 213
    .end local v6    # "buffer":[B
    .end local v14    # "i":I
    .local v10, "e":Ljava/io/IOException;
    :catch_c
    move-exception v10

    .line 214
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 210
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v22

    :goto_a
    if-eqz v8, :cond_12

    .line 212
    :try_start_12
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    .line 215
    :cond_12
    :goto_b
    throw v22

    .line 213
    :catch_d
    move-exception v10

    .line 214
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v23, ""

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v10, v24, v25

    invoke-static/range {v23 .. v24}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    .line 210
    .end local v8    # "dis":Ljava/io/InputStream;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "dis":Ljava/io/InputStream;
    :catchall_2
    move-exception v22

    move-object v8, v9

    .end local v9    # "dis":Ljava/io/InputStream;
    .restart local v8    # "dis":Ljava/io/InputStream;
    goto :goto_a

    .line 207
    :catch_e
    move-exception v10

    goto/16 :goto_4

    .line 187
    .end local v5    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "dis":Ljava/io/InputStream;
    .end local v15    # "out":Ljava/io/DataOutputStream;
    .restart local v18    # "out":Ljava/io/DataOutputStream;
    :catchall_3
    move-exception v22

    move-object/from16 v15, v18

    .end local v18    # "out":Ljava/io/DataOutputStream;
    .restart local v15    # "out":Ljava/io/DataOutputStream;
    goto :goto_8

    .line 182
    .end local v15    # "out":Ljava/io/DataOutputStream;
    .restart local v18    # "out":Ljava/io/DataOutputStream;
    :catch_f
    move-exception v10

    move-object/from16 v15, v18

    .end local v18    # "out":Ljava/io/DataOutputStream;
    .restart local v15    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_7

    .line 171
    .end local v15    # "out":Ljava/io/DataOutputStream;
    .restart local v18    # "out":Ljava/io/DataOutputStream;
    :catch_10
    move-exception v10

    move-object/from16 v15, v18

    .end local v18    # "out":Ljava/io/DataOutputStream;
    .restart local v15    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_6
.end method
