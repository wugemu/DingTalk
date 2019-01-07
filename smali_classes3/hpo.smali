.class public final Lhpo;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const-string/jumbo p0, ""

    .line 96
    .end local p0    # "url":Ljava/lang/String;
    .local v0, "qm":I
    :cond_0
    :goto_0
    return-object p0

    .line 91
    .end local v0    # "qm":I
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 92
    .restart local v0    # "qm":I
    if-lez v0, :cond_0

    .line 93
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 48
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .local v1, "byteArrayOs":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 52
    .local v0, "buf":[B
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-ltz v3, :cond_1

    .line 53
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    .end local v3    # "len":I
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/io/EOFException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/EOFException;->printStackTrace()V

    .line 63
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 67
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 70
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 75
    .end local v2    # "e":Ljava/io/EOFException;
    :goto_1
    if-eqz p0, :cond_0

    .line 77
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 83
    :cond_0
    :goto_2
    return-object v4

    .line 55
    .restart local v3    # "len":I
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 56
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 67
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 70
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 75
    :goto_3
    if-eqz p0, :cond_0

    .line 77
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 78
    :catch_1
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 71
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 72
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 71
    .end local v3    # "len":I
    .local v2, "e":Ljava/io/EOFException;
    :catch_3
    move-exception v2

    .line 72
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 78
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 79
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 64
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 65
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 67
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 70
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 75
    :goto_4
    if-eqz p0, :cond_2

    .line 77
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 83
    :cond_2
    :goto_5
    const/4 v4, 0x0

    goto :goto_2

    .line 71
    :catch_6
    move-exception v2

    .line 72
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 78
    :catch_7
    move-exception v2

    .line 79
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 67
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 70
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 75
    :goto_6
    if-eqz p0, :cond_3

    .line 77
    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 80
    :cond_3
    :goto_7
    throw v4

    .line 71
    :catch_8
    move-exception v2

    .line 72
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 78
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 79
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    .line 1159
    invoke-static {p0}, Lhpo;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1160
    const/4 v0, 0x0

    .line 1161
    if-eqz v1, :cond_0

    .line 1162
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2141
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2142
    const-string/jumbo v0, "*/*"

    .line 2151
    :goto_0
    return-object v0

    .line 3129
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3130
    const-string/jumbo v1, ""

    .line 2145
    :goto_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 2146
    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2148
    const-string/jumbo v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2149
    const-string/jumbo v0, "application/javascript"

    goto :goto_0

    .line 3133
    :cond_2
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 3134
    if-ltz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_4

    .line 3135
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_1

    .line 3137
    :cond_4
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2151
    :cond_5
    const-string/jumbo v0, "*/*"

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 101
    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    .line 118
    :goto_0
    return-object v3

    .line 109
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 111
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 113
    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "start":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 115
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 118
    .end local v1    # "start":I
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 177
    :goto_0
    return-object v1

    .line 171
    :cond_0
    const/4 v1, 0x0

    .line 173
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0
.end method
