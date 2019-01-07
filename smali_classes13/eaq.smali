.class public Leaq;
.super Ljava/lang/Object;
.source "GroupRingDownload.java"


# static fields
.field private static volatile b:Leaq;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v0, "group_voice"

    iput-object v0, p0, Leaq;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private static a(Lcom/alibaba/doraemon/request/Response;)Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .locals 10
    .param p0, "response"    # Lcom/alibaba/doraemon/request/Response;

    .prologue
    const/4 v4, 0x0

    .line 256
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 257
    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v1

    .line 259
    .local v1, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/request/RequestInputStream;->mark(I)V

    .line 260
    new-instance v2, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .local v2, "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    .end local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v2    # "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :goto_0
    return-object v2

    .line 267
    .restart local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .restart local v2    # "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :catch_1
    move-exception v3

    .line 263
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v5, "im"

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[GroupRingDownload]"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, " readFromResponse error"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move-object v2, v4

    .line 271
    goto :goto_0

    .line 267
    :catch_2
    move-exception v0

    .line 268
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 265
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    .line 266
    :try_start_4
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 269
    :goto_2
    throw v4

    .line 267
    :catch_3
    move-exception v0

    .line 268
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_0
    move-object v2, v4

    .line 273
    goto :goto_0
.end method

.method public static a()Leaq;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Leaq;->b:Leaq;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Leaq;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Leaq;->b:Leaq;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Leaq;

    invoke-direct {v0}, Leaq;-><init>()V

    sput-object v0, Leaq;->b:Leaq;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Leaq;->b:Leaq;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 197
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1228
    invoke-static {p2}, Ljav;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    const-string/jumbo v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 203
    new-instance v0, Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, p0, Leaq;->a:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "dir":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 213
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 214
    const-string/jumbo v4, "im"

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "[GroupRingDownload]"

    aput-object v6, v5, v7

    const-string/jumbo v6, " buildImageFileFromUrl dir create failed"

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v3

    .line 205
    .restart local v1    # "fileName":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, p0, Leaq;->a:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_0

    .line 208
    .end local v0    # "dir":Ljava/io/File;
    :cond_3
    new-instance v0, Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, p0, Leaq;->a:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_0

    .line 217
    :cond_4
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v3, v8

    aput-object v1, v3, v6

    const-string/jumbo v4, ".mp3"

    aput-object v4, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Leaq;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Leaq;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Leaq;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcma;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcma",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    .local p1, "apiEventListener":Lcma;, "Lcma<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 235
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Leaq$2;

    invoke-direct {v1, p0, p1, p2}, Leaq$2;-><init>(Leaq;Lcma;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 242
    :cond_0
    return-void
.end method

.method static synthetic a(Leaq;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/request/Response;Lcma;)V
    .locals 11
    .param p0, "x0"    # Leaq;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/doraemon/request/Response;
    .param p4, "x4"    # Lcma;

    .prologue
    .line 39
    .line 2134
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2191
    :cond_0
    :goto_0
    return-void

    .line 2137
    :cond_1
    const/4 v1, 0x0

    .line 2138
    const/4 v0, 0x0

    .line 2139
    invoke-static {p3}, Leaq;->a(Lcom/alibaba/doraemon/request/Response;)Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    move-result-object v5

    .line 2140
    if-eqz v5, :cond_8

    .line 2142
    :try_start_0
    invoke-virtual {v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->available()I

    move-result v2

    int-to-long v2, v2

    .line 2143
    invoke-direct {p0, p1, p2}, Leaq;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 2144
    if-eqz v6, :cond_7

    .line 2145
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2146
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v4, v2, v8

    if-eqz v4, :cond_2

    .line 2147
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2149
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_4

    .line 2151
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2155
    :goto_1
    const/16 v2, 0x400

    :try_start_2
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 2156
    const/4 v4, 0x0

    .line 2158
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2160
    :goto_2
    :try_start_4
    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 2161
    const/4 v4, 0x0

    invoke-virtual {v3, v7, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 2164
    :catch_0
    move-exception v2

    .line 2165
    :goto_3
    :try_start_5
    const-string/jumbo v4, "im"

    const/4 v6, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "[GroupRingDownload]"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, " write file exception:"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v6, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2167
    :try_start_6
    invoke-static {v3}, Leaq;->a(Ljava/io/Closeable;)V

    .line 2168
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2182
    :goto_4
    invoke-static {v5}, Leaq;->a(Ljava/io/Closeable;)V

    .line 2188
    :goto_5
    if-eqz v1, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2190
    invoke-direct {p0, p4, v0}, Leaq;->a(Lcma;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2152
    :catch_1
    move-exception v2

    .line 2153
    :try_start_7
    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[GroupRingDownload]"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, " create file exception:"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 2182
    :catchall_0
    move-exception v0

    invoke-static {v5}, Leaq;->a(Ljava/io/Closeable;)V

    throw v0

    .line 2163
    :cond_3
    const/4 v1, 0x1

    .line 2167
    :try_start_8
    invoke-static {v3}, Leaq;->a(Ljava/io/Closeable;)V

    .line 2168
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_4

    .line 2167
    :catchall_1
    move-exception v0

    move-object v3, v4

    :goto_6
    invoke-static {v3}, Leaq;->a(Ljava/io/Closeable;)V

    .line 2168
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v0

    .line 2171
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v1, v2, v8

    if-nez v1, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_5

    const/4 v1, 0x1

    .line 2172
    :goto_7
    if-eqz v1, :cond_6

    .line 2173
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[GroupRingDownload]"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string/jumbo v7, " read from localFile succeed:"

    aput-object v7, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2171
    :cond_5
    const/4 v1, 0x0

    goto :goto_7

    .line 2175
    :cond_6
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[GroupRingDownload]"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string/jumbo v7, " delete exist file error:"

    aput-object v7, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2179
    :cond_7
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[GroupRingDownload]"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string/jumbo v7, " build file is null"

    aput-object v7, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    .line 2185
    :cond_8
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[GroupRingDownload]"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " inputstream is null"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2192
    :cond_9
    const-string/jumbo v0, "100004"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Leaq;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 2167
    :catchall_2
    move-exception v0

    goto/16 :goto_6

    .line 2164
    :catch_2
    move-exception v2

    move-object v3, v4

    goto/16 :goto_3
.end method

.method static synthetic a(Leaq;Lcma;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Leaq;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Leaq;->a(Lcma;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Leaq;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p0, "x0"    # Leaq;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcma;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Leaq;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 277
    if-eqz p0, :cond_0

    .line 279
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "apiEventListener"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    if-eqz p3, :cond_0

    .line 246
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Leaq$3;

    invoke-direct {v1, p0, p3, p1, p2}, Leaq$3;-><init>(Leaq;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    const-string/jumbo v1, "101002"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p3}, Leaq;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 130
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {p2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    :try_start_0
    invoke-static {p2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 82
    :cond_2
    :goto_1
    move-object v0, p2

    .line 83
    .local v0, "finalUrl":Ljava/lang/String;
    const-string/jumbo v1, "GroupRingDownload"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    const-string/jumbo v2, "[GroupRingDownload]"

    new-instance v3, Leaq$1;

    invoke-direct {v3, p0, p1, v0, p3}, Leaq$1;-><init>(Leaq;Landroid/content/Context;Ljava/lang/String;Lcma;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 78
    .end local v0    # "finalUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mediaId transfer fail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
