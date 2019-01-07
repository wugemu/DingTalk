.class public Lcom/alibaba/doraemon/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 96
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "exp":Ljava/io/IOException;
    const-string/jumbo v1, "IOUtils"

    const-string/jumbo v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "b":[B
    const/16 v2, 0x1000

    :try_start_0
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 80
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 81
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    .end local v1    # "read":I
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v2

    .restart local v1    # "read":I
    :cond_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 85
    return-void
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 59
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/alibaba/doraemon/utils/IOUtils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string/jumbo v5, ""

    .line 34
    .local v5, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 36
    .local v0, "bfIptStream":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v0    # "bfIptStream":Ljava/io/BufferedInputStream;
    .local v1, "bfIptStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v6, 0x32

    invoke-direct {v2, v6}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 39
    .local v2, "btAryBuffer":Lorg/apache/http/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    .local v3, "current":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 40
    int-to-byte v6, v3

    invoke-virtual {v2, v6}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 43
    .end local v2    # "btAryBuffer":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3    # "current":I
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 44
    .end local v1    # "bfIptStream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bfIptStream":Ljava/io/BufferedInputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v6, "IOUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "inputStreamToString Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 48
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 42
    .end local v0    # "bfIptStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bfIptStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "btAryBuffer":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v3    # "current":I
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v6

    invoke-static {v6, p1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 46
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 47
    .end local v1    # "bfIptStream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bfIptStream":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 46
    .end local v2    # "btAryBuffer":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3    # "current":I
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v6

    .end local v0    # "bfIptStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bfIptStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bfIptStream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bfIptStream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 43
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    :goto_0
    return-object p0

    .line 110
    :cond_0
    :try_start_0
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 122
    .local v2, "hash":[B
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    .local v3, "hex":Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-byte v0, v2, v4

    .line 124
    .local v0, "b":B
    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    const-string/jumbo v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_1
    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "b":B
    .end local v2    # "hash":[B
    .end local v3    # "hex":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "IOUtils"

    const-string/jumbo v5, "MD5 should be supported"

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :catch_1
    move-exception v4

    const-string/jumbo v4, "IOUtils"

    const-string/jumbo v5, "UTF-8 should be supported"

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :catch_2
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "IOUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "hash":[B
    .restart local v3    # "hex":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
