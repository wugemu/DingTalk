.class public final Lhug;
.super Ljava/lang/Object;
.source "UTRestHttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/util/Map;Z)[B
    .locals 24
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
            ">;Z)[B"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "pMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static/range {p1 .. p1}, Lhua;->a(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 61
    const/16 v19, 0x0

    .line 222
    :goto_0
    return-object v19

    .line 66
    :cond_0
    :try_start_0
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 67
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .local v4, "conn":Ljava/net/HttpURLConnection;
    if-eqz v4, :cond_e

    .line 78
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 80
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 83
    :try_start_1
    const-string/jumbo v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 92
    const/16 v19, 0x2710

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 93
    const v19, 0xea60

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 94
    const-string/jumbo v19, "Connection"

    const-string/jumbo v20, "close"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v19, "Accept-Encoding"

    const-string/jumbo v20, "gzip,deflate"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 100
    const/4 v6, 0x0

    .line 105
    .local v6, "data":[B
    const-string/jumbo v19, "Content-Type"

    const-string/jumbo v20, "multipart/form-data; boundary=GJircTeP"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v5, 0x0

    .line 111
    .local v5, "contentLength":I
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_3

    .line 112
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v13, "lBaos":Ljava/io/ByteArrayOutputStream;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 115
    .local v12, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    .line 116
    .local v14, "lKeysArr":[Ljava/lang/String;
    invoke-interface {v12, v14}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    invoke-static {}, Lhuc;->a()Lhuc;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lhuc;->a([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v14

    .line 120
    array-length v0, v14

    move/from16 v21, v0

    const/16 v19, 0x0

    move/from16 v20, v19

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    aget-object v11, v14, v20

    .line 122
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    move-object/from16 v15, v19

    check-cast v15, [B

    .line 123
    .local v15, "lValue":[B
    if-eqz v15, :cond_1

    .line 125
    :try_start_2
    const-string/jumbo v19, "--GJircTeP\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: application/octet-stream \r\n\r\n"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v11, v22, v23

    const/16 v23, 0x1

    aput-object v11, v22, v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 126
    invoke-virtual {v13, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 127
    const-string/jumbo v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 120
    :cond_1
    :goto_2
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto :goto_1

    .line 68
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "contentLength":I
    .end local v6    # "data":[B
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "lKeysArr":[Ljava/lang/String;
    .end local v15    # "lValue":[B
    .end local v18    # "url":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 69
    .local v9, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v19, "connection error!"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 71
    .end local v9    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v9

    .line 72
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v19, "connection error!"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 87
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v18    # "url":Ljava/net/URL;
    :catch_2
    move-exception v9

    .line 88
    .local v9, "e":Ljava/net/ProtocolException;
    const-string/jumbo v19, "connection error!"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 128
    .end local v9    # "e":Ljava/net/ProtocolException;
    .restart local v5    # "contentLength":I
    .restart local v6    # "data":[B
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "lKeysArr":[Ljava/lang/String;
    .restart local v15    # "lValue":[B
    :catch_3
    move-exception v9

    .line 129
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v19, "write lBaos error!"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 151
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "key":Ljava/lang/String;
    .end local v15    # "lValue":[B
    :cond_2
    :try_start_3
    const-string/jumbo v19, "--GJircTeP--\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 156
    :goto_3
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 158
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "lKeysArr":[Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 159
    array-length v5, v6

    .line 161
    :cond_4
    const-string/jumbo v19, "Content-Length"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/16 v16, 0x0

    .line 167
    .local v16, "out":Ljava/io/DataOutputStream;
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 169
    if-eqz v6, :cond_5

    array-length v0, v6

    move/from16 v19, v0

    if-lez v19, :cond_5

    .line 171
    new-instance v17, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    .end local v16    # "out":Ljava/io/DataOutputStream;
    .local v17, "out":Ljava/io/DataOutputStream;
    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 173
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v16, v17

    .line 179
    .end local v17    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "out":Ljava/io/DataOutputStream;
    :cond_5
    if-eqz v16, :cond_6

    .line 181
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 189
    :cond_6
    :goto_4
    const/4 v7, 0x0

    .line 191
    .local v7, "dis":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    .local v2, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_7
    const-string/jumbo v19, "gzip"

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 194
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v7    # "dis":Ljava/io/InputStream;
    .local v8, "dis":Ljava/io/InputStream;
    move-object v7, v8

    .line 198
    .end local v8    # "dis":Ljava/io/InputStream;
    .restart local v7    # "dis":Ljava/io/InputStream;
    :goto_5
    const/16 v19, 0x800

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 200
    .local v3, "buffer":[B
    :goto_6
    const/16 v19, 0x0

    const/16 v20, 0x800

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .local v10, "i":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_b

    .line 201
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    .line 203
    .end local v3    # "buffer":[B
    .end local v10    # "i":I
    :catch_4
    move-exception v9

    .line 204
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v19, "write out error!"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 207
    if-eqz v7, :cond_7

    .line 209
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    .line 212
    .end local v9    # "e":Ljava/io/IOException;
    :cond_7
    :goto_7
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 153
    .end local v2    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "dis":Ljava/io/InputStream;
    .end local v16    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "lKeysArr":[Ljava/lang/String;
    :catch_5
    move-exception v9

    .line 154
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "write lBaos error!"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 182
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "lKeysArr":[Ljava/lang/String;
    .restart local v16    # "out":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v9

    .line 183
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "out close error!"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 175
    .end local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v9

    .line 176
    .local v9, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_a
    const-string/jumbo v19, "write out error!"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 179
    if-eqz v16, :cond_8

    .line 181
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 184
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_9
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 182
    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v9

    .line 183
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v19, "out close error!"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 179
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_a
    if-eqz v16, :cond_9

    .line 181
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 184
    :cond_9
    :goto_b
    throw v19

    .line 182
    :catch_9
    move-exception v9

    .line 183
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "out close error!"

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 196
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v2    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "dis":Ljava/io/InputStream;
    :cond_a
    :try_start_d
    new-instance v8, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .end local v7    # "dis":Ljava/io/InputStream;
    .restart local v8    # "dis":Ljava/io/InputStream;
    move-object v7, v8

    .end local v8    # "dis":Ljava/io/InputStream;
    .restart local v7    # "dis":Ljava/io/InputStream;
    goto/16 :goto_5

    .line 209
    .restart local v3    # "buffer":[B
    .restart local v10    # "i":I
    :cond_b
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 216
    :goto_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v19

    if-lez v19, :cond_d

    .line 217
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    goto/16 :goto_0

    .line 210
    :catch_a
    move-exception v9

    .line 211
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "out close error!"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 210
    .end local v3    # "buffer":[B
    .end local v10    # "i":I
    .local v9, "e":Ljava/io/IOException;
    :catch_b
    move-exception v9

    .line 211
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "out close error!"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 207
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v19

    if-eqz v7, :cond_c

    .line 209
    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 212
    :cond_c
    :goto_d
    throw v19

    .line 210
    :catch_c
    move-exception v9

    .line 211
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string/jumbo v20, "out close error!"

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 219
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "buffer":[B
    .restart local v10    # "i":I
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 222
    .end local v2    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buffer":[B
    .end local v5    # "contentLength":I
    .end local v6    # "data":[B
    .end local v7    # "dis":Ljava/io/InputStream;
    .end local v10    # "i":I
    .end local v16    # "out":Ljava/io/DataOutputStream;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 179
    .restart local v5    # "contentLength":I
    .restart local v6    # "data":[B
    .restart local v17    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "out":Ljava/io/DataOutputStream;
    goto :goto_a

    .line 175
    .end local v16    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "out":Ljava/io/DataOutputStream;
    :catch_d
    move-exception v9

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_8
.end method
