.class public Lcjf;
.super Ljava/lang/Object;
.source "DDCache.java"


# static fields
.field private static volatile a:Lcjf;


# instance fields
.field private b:Livi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Livi",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcjf;->a:Lcjf;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcjf;->b:Livi;

    .line 64
    new-instance v0, Livi;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Livi;-><init>(I)V

    iput-object v0, p0, Lcjf;->b:Livi;

    .line 65
    return-void
.end method

.method public static a()Lcjf;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcjf;->a:Lcjf;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcjf;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcjf;->a:Lcjf;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcjf;

    invoke-direct {v0}, Lcjf;-><init>()V

    sput-object v0, Lcjf;->a:Lcjf;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcjf;->a:Lcjf;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;)[B
    .locals 14
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 111
    iget-object v10, p0, Lcjf;->b:Livi;

    monitor-enter v10

    .line 112
    :try_start_0
    iget-object v9, p0, Lcjf;->b:Livi;

    invoke-virtual {v9, p1}, Livi;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    .line 113
    .local v8, "sf":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[B>;"
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    const/4 v6, 0x0

    .line 116
    .local v6, "ret":[B
    if-eqz v8, :cond_0

    .line 117
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "ret":[B
    check-cast v6, [B

    .line 120
    .restart local v6    # "ret":[B
    :cond_0
    if-eqz v6, :cond_1

    array-length v9, v6

    if-ltz v9, :cond_1

    move-object v7, v6

    .line 188
    .end local v6    # "ret":[B
    .local v7, "ret":[B
    :goto_0
    return-object v7

    .line 113
    .end local v7    # "ret":[B
    .end local v8    # "sf":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[B>;"
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 124
    .restart local v6    # "ret":[B
    .restart local v8    # "sf":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[B>;"
    :cond_1
    const-string/jumbo v9, "CACHE"

    invoke-static {v9}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/cache/Cache;

    .line 125
    .local v1, "cache":Lcom/alibaba/doraemon/cache/Cache;
    if-eqz v1, :cond_3

    .line 127
    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v3

    .line 129
    .local v3, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v3, :cond_3

    .line 131
    invoke-interface {v3}, Lcom/alibaba/doraemon/cache/CacheEntity;->length()J

    move-result-wide v10

    long-to-int v5, v10

    .line 133
    .local v5, "length":I
    if-lez v5, :cond_3

    .line 135
    const v9, 0x7d000

    if-gt v5, v9, :cond_6

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    invoke-interface {v3}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheData()Ljava/io/InputStream;

    move-result-object v4

    .line 142
    .local v4, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v9

    invoke-interface {v9, v4, v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;I)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    .line 144
    new-array v6, v5, [B

    .line 145
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v11

    invoke-interface {v0, v9, v6, v10, v11}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->read(I[BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    if-eqz v0, :cond_2

    .line 152
    :try_start_3
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 159
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 160
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .end local v3    # "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "length":I
    :cond_3
    :goto_2
    move-object v7, v6

    .line 188
    .end local v6    # "ret":[B
    .restart local v7    # "ret":[B
    goto :goto_0

    .line 154
    .end local v7    # "ret":[B
    .restart local v0    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .restart local v3    # "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "length":I
    .restart local v6    # "ret":[B
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "DDCache"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "close exception: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 163
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v9, "DDCache"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "close exception: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 150
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    .line 151
    if-eqz v0, :cond_4

    .line 152
    :try_start_6
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 159
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 160
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 164
    :cond_5
    :goto_4
    throw v9

    .line 154
    :catch_3
    move-exception v2

    .line 155
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "DDCache"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "close exception: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 162
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 163
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v10, "DDCache"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "close exception: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 169
    .end local v0    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_6
    invoke-interface {v3}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheData()Ljava/io/InputStream;

    move-result-object v4

    .line 171
    .restart local v4    # "is":Ljava/io/InputStream;
    :try_start_8
    invoke-static {v4}, Lcom/laiwang/protocol/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v6

    .line 175
    if-eqz v4, :cond_3

    .line 177
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_2

    .line 178
    :catch_5
    move-exception v2

    .line 179
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "DDCache"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "close exception: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 172
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 175
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v9

    if-eqz v4, :cond_7

    .line 177
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 180
    :cond_7
    :goto_5
    throw v9

    .line 178
    :catch_7
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v10, "DDCache"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "close exception: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    :try_start_0
    invoke-direct {p0, p1}, Lcjf;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 95
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 96
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 97
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .local v3, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 103
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "data":[B
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v4

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DDCache"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "get "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, " exception: "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/Serializable;)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 73
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 77
    .local v2, "data":[B
    iget-object v7, p0, Lcjf;->b:Livi;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    iget-object v6, p0, Lcjf;->b:Livi;

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, p1, v8}, Livi;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    const-string/jumbo v6, "CACHE"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/cache/Cache;

    .line 82
    .local v1, "cache":Lcom/alibaba/doraemon/cache/Cache;
    if-eqz v1, :cond_0

    .line 83
    const/4 v6, 0x0

    invoke-interface {v1, p1, v2, v6}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[B[B)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    .line 89
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "cache":Lcom/alibaba/doraemon/cache/Cache;
    .end local v2    # "data":[B
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    :cond_0
    :goto_0
    return v5

    .line 79
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 85
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "DDCache"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "put "

    aput-object v8, v7, v5

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, " exception: "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
