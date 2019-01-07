.class public Ldsf;
.super Ljava/lang/Object;
.source "VideoPlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldsf$a;
    }
.end annotation


# static fields
.field private static a:Ldsf;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/alibaba/doraemon/request/CacheClient;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ldsf;->b:Landroid/os/Handler;

    .line 76
    new-instance v0, Ldse;

    invoke-direct {v0}, Ldse;-><init>()V

    iput-object v0, p0, Ldsf;->c:Lcom/alibaba/doraemon/request/CacheClient;

    .line 77
    return-void
.end method

.method static synthetic a(Ldsf;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Ldsf;

    .prologue
    .line 49
    iget-object v0, p0, Ldsf;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Ldsf;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Ldsf;->a:Ldsf;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Ldsf;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Ldsf;->a:Ldsf;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ldsf;

    invoke-direct {v0}, Ldsf;-><init>()V

    sput-object v0, Ldsf;->a:Ldsf;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Ldsf;->a:Ldsf;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ldsf;Landroid/content/Context;Ljava/lang/String;J)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ldsf;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 49
    invoke-static {p1, p2, p3, p4}, Ldsf;->b(Landroid/content/Context;Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alibaba/doraemon/request/Response;)Ljava/io/InputStream;
    .locals 10
    .param p0, "response"    # Lcom/alibaba/doraemon/request/Response;

    .prologue
    const/4 v4, 0x0

    .line 406
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 407
    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v1

    .line 409
    .local v1, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/request/RequestInputStream;->mark(I)V

    .line 410
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

    .line 416
    .local v2, "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    .end local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v2    # "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :goto_0
    return-object v2

    .line 417
    .restart local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .restart local v2    # "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :catch_1
    move-exception v3

    .line 413
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v5, "im"

    const-string/jumbo v6, "video"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "loadCache2File readFromResponse error"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move-object v2, v4

    .line 421
    goto :goto_0

    .line 417
    :catch_2
    move-exception v0

    .line 418
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 415
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    .line 416
    :try_start_4
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 419
    :goto_2
    throw v4

    .line 417
    :catch_3
    move-exception v0

    .line 418
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_0
    move-object v2, v4

    .line 423
    goto :goto_0
.end method

.method static synthetic a(Ldsf;Landroid/content/Context;Ljava/lang/String;JJLcom/alibaba/doraemon/request/Response;Ldsf$a;)V
    .locals 13
    .param p0, "x0"    # Ldsf;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # J
    .param p7, "x5"    # Lcom/alibaba/doraemon/request/Response;
    .param p8, "x6"    # Ldsf$a;

    .prologue
    .line 49
    .line 1316
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1317
    const/4 v4, 0x0

    .line 1318
    const/4 v3, 0x0

    .line 1319
    invoke-static/range {p7 .. p7}, Ldsf;->a(Lcom/alibaba/doraemon/request/Response;)Ljava/io/InputStream;

    move-result-object v2

    .line 1320
    if-nez v2, :cond_9

    .line 1321
    const-string/jumbo v2, "im"

    const-string/jumbo v5, "video"

    const-string/jumbo v6, "loadCache2File read from response is null"

    invoke-static {v2, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string/jumbo v2, "CACHE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/cache/Cache;

    .line 1396
    invoke-interface {v2, p2}, Lcom/alibaba/doraemon/cache/Cache;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1397
    invoke-interface {v2, p2}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v2

    .line 1398
    if-eqz v2, :cond_2

    .line 1399
    invoke-interface {v2}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheData()Ljava/io/InputStream;

    move-result-object v2

    :goto_0
    move-object v7, v2

    .line 1324
    :goto_1
    if-eqz v7, :cond_7

    .line 1325
    move-wide/from16 v0, p5

    invoke-static {p1, p2, v0, v1}, Ldsf;->b(Landroid/content/Context;Ljava/lang/String;J)Ljava/io/File;

    move-result-object v8

    .line 1326
    if-eqz v8, :cond_6

    .line 1327
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1329
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1330
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v3, v10, p3

    if-eqz v3, :cond_0

    .line 1331
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1334
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1336
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1340
    :goto_2
    const/16 v3, 0x400

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v9

    .line 1341
    const/4 v6, 0x0

    .line 1343
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1345
    :goto_3
    :try_start_2
    invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    .line 1346
    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 1349
    :catch_0
    move-exception v3

    .line 1350
    :goto_4
    :try_start_3
    const-string/jumbo v6, "im"

    const-string/jumbo v8, "video"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "loadCache2File write file exception:"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v8, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1352
    invoke-static {v5}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 1353
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    move v3, v4

    .line 1366
    :goto_5
    invoke-static {v7}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 1371
    :goto_6
    if-eqz v3, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1372
    if-eqz p8, :cond_1

    .line 1374
    iget-object v3, p0, Ldsf;->b:Landroid/os/Handler;

    new-instance v4, Ldsf$3;

    move-object/from16 v0, p8

    invoke-direct {v4, p0, v0, v2}, Ldsf$3;-><init>(Ldsf;Ldsf$a;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1380
    :cond_1
    :goto_7
    return-void

    .line 1402
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1337
    :catch_1
    move-exception v3

    .line 1338
    const-string/jumbo v5, "im"

    const-string/jumbo v6, "video"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "loadCache2File create file exception:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1348
    :cond_3
    const/4 v3, 0x1

    .line 1352
    invoke-static {v5}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 1353
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_5

    .line 1352
    :catchall_0
    move-exception v2

    move-object v5, v6

    :goto_8
    invoke-static {v5}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 1353
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v2

    .line 1357
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v3, v8, p3

    if-nez v3, :cond_5

    .line 1358
    const/4 v3, 0x1

    goto :goto_5

    .line 1360
    :cond_5
    const-string/jumbo v3, "im"

    const-string/jumbo v5, "video"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "loadCache2File delete file error, fileSize not equals"

    aput-object v9, v6, v8

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    goto :goto_5

    .line 1364
    :cond_6
    const-string/jumbo v2, "im"

    const-string/jumbo v5, "video"

    const-string/jumbo v6, "loadCache2File build file is null"

    invoke-static {v2, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    move v3, v4

    goto/16 :goto_5

    .line 1368
    :cond_7
    const-string/jumbo v2, "im"

    const-string/jumbo v5, "video"

    const-string/jumbo v6, "loadCache2File inputstream is null"

    invoke-static {v2, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    move v3, v4

    goto/16 :goto_6

    .line 1382
    :cond_8
    if-eqz p8, :cond_1

    .line 1383
    iget-object v2, p0, Ldsf;->b:Landroid/os/Handler;

    new-instance v3, Ldsf$4;

    move-object/from16 v0, p8

    invoke-direct {v3, p0, v0}, Ldsf$4;-><init>(Ldsf;Ldsf$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    .line 1352
    :catchall_1
    move-exception v2

    goto :goto_8

    .line 1349
    :catch_2
    move-exception v3

    move-object v5, v6

    goto/16 :goto_4

    :cond_9
    move-object v7, v2

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "urlLowerCase":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "file:"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    const/4 v1, 0x1

    .line 199
    .end local v0    # "urlLowerCase":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ldsf;)Lcom/alibaba/doraemon/request/CacheClient;
    .locals 1
    .param p0, "x0"    # Ldsf;

    .prologue
    .line 49
    iget-object v0, p0, Ldsf;->c:Lcom/alibaba/doraemon/request/CacheClient;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;J)Ljava/io/File;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 464
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 465
    invoke-static {p1}, Ldsf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 468
    const-string/jumbo v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 470
    new-instance v0, Ljava/io/File;

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string/jumbo v5, "videoTemp"

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, "dir":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 478
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 480
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 481
    const-string/jumbo v4, "im"

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "loadCache2File buildVideoFileFromUrl dir create failed"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_1
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v3, v8

    new-array v4, v9, [Ljava/lang/String;

    aput-object v1, v4, v7

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const-string/jumbo v4, ".temp"

    aput-object v4, v3, v10

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    return-object v3

    .line 472
    .restart local v1    # "fileName":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/io/File;

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string/jumbo v5, "videoTemp"

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_0

    .line 475
    .end local v0    # "dir":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/File;

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string/jumbo v5, "videoTemp"

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dir":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 272
    const/16 v11, 0x10

    new-array v3, v11, [C

    fill-array-data v3, :array_0

    .line 274
    .local v3, "hexDigits":[C
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 275
    .local v0, "btInput":[B
    const-string/jumbo v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 276
    .local v9, "mdInst":Ljava/security/MessageDigest;
    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 277
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 278
    .local v8, "md":[B
    array-length v5, v8

    .line 279
    .local v5, "j":I
    mul-int/lit8 v11, v5, 0x2

    new-array v10, v11, [C

    .line 280
    .local v10, "str":[C
    const/4 v6, 0x0

    .line 281
    .local v6, "k":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 282
    aget-byte v1, v8, v4

    .line 283
    .local v1, "byte0":B
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "k":I
    .restart local v6    # "k":I
    ushr-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v7

    .line 284
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "k":I
    .restart local v7    # "k":I
    and-int/lit8 v11, v1, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v6

    .line 281
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "byte0":B
    :cond_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v0    # "btInput":[B
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "k":I
    .end local v8    # "md":[B
    .end local v9    # "mdInst":Ljava/security/MessageDigest;
    .end local v10    # "str":[C
    :goto_1
    return-object v11

    .line 287
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    const/4 v11, 0x0

    goto :goto_1

    .line 272
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/app/Activity;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    const/16 v2, 0xa

    const/16 v3, 0x3a98

    const/4 v4, 0x0

    const/16 v5, 0xbb8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ldsf;->a(Landroid/app/Activity;IIII)V

    .line 103
    return-void
.end method

.method public final a(Landroid/app/Activity;IIII)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "maxTime"    # I
    .param p4, "cameraPosition"    # I
    .param p5, "minTime"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Ldsf;->a(Landroid/app/Activity;IIIIII)V

    .line 115
    return-void
.end method

.method public final a(Landroid/app/Activity;IIIIII)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "maxTime"    # I
    .param p4, "cameraPosition"    # I
    .param p5, "minTime"    # I
    .param p6, "mode"    # I
    .param p7, "quality"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ldsf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v9

    const-string/jumbo v10, "tpffmpeg"

    new-instance v0, Ldsf$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move/from16 v4, p5

    move/from16 v5, p7

    move v6, p4

    move/from16 v7, p6

    move v8, p2

    invoke-direct/range {v0 .. v8}, Ldsf$1;-><init>(Ldsf;Landroid/app/Activity;IIIIII)V

    const-class v1, Lcjn$a;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjn$a;

    invoke-virtual {v9, v10, v0}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 189
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeStamp"    # J

    .prologue
    .line 427
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const-class v0, Ldsf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Ldsf$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Ldsf$5;-><init>(Ldsf;Landroid/content/Context;Ljava/lang/String;J)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 441
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;JJLdsf$a;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestParams"    # Ljava/util/Map;
    .param p4, "requestHeaders"    # Ljava/util/Map;
    .param p5, "fileSize"    # J
    .param p7, "timeStamp"    # J
    .param p9, "callback"    # Ldsf$a;

    .prologue
    .line 215
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const-class v0, Ldsf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v11

    new-instance v0, Ldsf$2;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Ldsf$2;-><init>(Ldsf;Ljava/lang/String;Landroid/content/Context;JJLdsf$a;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v11, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 269
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1084
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 1086
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "video"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "cpu CPU_ABI:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string/jumbo v3, "armeabi-v5a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "armeabi-v6a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "x86"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    .line 80
    :goto_0
    if-eqz v2, :cond_3

    .line 1095
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-gt v2, v3, :cond_2

    move v2, v1

    .line 80
    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    return v0

    :cond_1
    move v2, v0

    .line 1091
    goto :goto_0

    :cond_2
    move v2, v0

    .line 1098
    goto :goto_1

    :cond_3
    move v0, v1

    .line 80
    goto :goto_2
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 444
    monitor-enter p0

    .line 446
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ldsf;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":re"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldsf$6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ldsf$6;-><init>(Ldsf;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 460
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
