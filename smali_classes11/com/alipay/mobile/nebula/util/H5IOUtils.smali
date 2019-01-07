.class public Lcom/alipay/mobile/nebula/util/H5IOUtils;
.super Ljava/lang/Object;
.source "H5IOUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5IOUtils"

.field private static final sByteArrayPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    const/16 v1, 0x5000

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5IOUtils;->sByteArrayPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 42
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "H5IOUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getBuf(I)[B
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 29
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5IOUtils;->sByteArrayPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    return-object v0
.end method

.method public static inputToByte(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, "buffer":[B
    const/4 v0, 0x0

    .line 53
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 66
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 67
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 69
    :goto_0
    return-object v5

    .line 56
    :cond_0
    const/16 v6, 0x800

    :try_start_0
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v2

    .line 58
    new-instance v1, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 60
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 63
    .end local v3    # "count":I
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 64
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string/jumbo v6, "H5IOUtils"

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 67
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 62
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "count":I
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 66
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 67
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 62
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 66
    .end local v3    # "count":I
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 67
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .line 66
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 63
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static returnBuf([B)V
    .locals 1
    .param p0, "buffer"    # [B

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->returnBuf([B)V

    .line 37
    return-void
.end method
