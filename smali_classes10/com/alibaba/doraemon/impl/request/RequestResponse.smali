.class public Lcom/alibaba/doraemon/impl/request/RequestResponse;
.super Ljava/lang/Object;
.source "RequestResponse.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/Response;


# instance fields
.field private mCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

.field private mErrorMsg:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSuccess:Z

.field private mLength:J

.field private mRequest:Lcom/alibaba/doraemon/request/Request;

.field private mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(ILcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;Lcom/alibaba/doraemon/request/CacheClient;Lcom/alibaba/doraemon/request/Request;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "response"    # Lcom/alibaba/doraemon/request/RequestInputStream;
    .param p3, "length"    # J
    .param p6, "cacheClient"    # Lcom/alibaba/doraemon/request/CacheClient;
    .param p7, "request"    # Lcom/alibaba/doraemon/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/doraemon/request/RequestInputStream;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/doraemon/request/CacheClient;",
            "Lcom/alibaba/doraemon/request/Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mIsSuccess:Z

    .line 47
    iput p1, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mStatusCode:I

    .line 48
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    .line 49
    iput-wide p3, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mLength:J

    .line 50
    iput-object p5, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mHeaders:Ljava/util/Map;

    .line 51
    iput-object p6, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    .line 52
    iput-object p7, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequest:Lcom/alibaba/doraemon/request/Request;

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7
    .param p1, "statusCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 31
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/request/RequestResponse;-><init>(ILjava/lang/String;Lcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;
    .param p3, "response"    # Lcom/alibaba/doraemon/request/RequestInputStream;
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/request/RequestInputStream;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mIsSuccess:Z

    .line 37
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mErrorMsg:Ljava/lang/String;

    .line 38
    iput p1, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mStatusCode:I

    .line 39
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    .line 40
    iput-wide p4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mLength:J

    .line 41
    iput-object p6, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mHeaders:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public clone()Lcom/alibaba/doraemon/request/Response;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 93
    const/4 v11, 0x0

    .line 95
    .local v11, "cloneObject":Lcom/alibaba/doraemon/request/Response;
    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mIsSuccess:Z

    if-eqz v2, :cond_1

    .line 97
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mLength:J

    cmp-long v2, v4, v8

    if-lez v2, :cond_0

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mLength:J

    const-wide/32 v6, 0x7d000

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v2, :cond_3

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mLength:J

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/request/RequestInputStream;->mark(I)V

    .line 101
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    .line 102
    .local v0, "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->fromPooledByteBuffer(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)Lcom/alibaba/doraemon/impl/request/OutInputStream;

    move-result-object v3

    .line 104
    .local v3, "requestInputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestResponse;

    iget v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mStatusCode:I

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mLength:J

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mHeaders:Ljava/util/Map;

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequest:Lcom/alibaba/doraemon/request/Request;

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/doraemon/impl/request/RequestResponse;-><init>(ILcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;Lcom/alibaba/doraemon/request/CacheClient;Lcom/alibaba/doraemon/request/Request;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .local v1, "cloneObject":Lcom/alibaba/doraemon/request/Response;
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .end local v0    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .end local v3    # "requestInputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :goto_0
    return-object v1

    .line 110
    .restart local v0    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .restart local v3    # "requestInputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catch_0
    move-exception v12

    .line 111
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .end local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .end local v3    # "requestInputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    :catch_1
    move-exception v13

    .line 106
    .local v13, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :try_start_3
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v11

    .line 112
    .end local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .restart local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    goto :goto_0

    .line 110
    .end local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .restart local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    :catch_2
    move-exception v12

    .line 111
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v11

    .line 113
    .end local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .restart local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    goto :goto_0

    .line 108
    .end local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "t":Ljava/lang/Throwable;
    .restart local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    :catchall_0
    move-exception v2

    .line 109
    :try_start_4
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 112
    :goto_1
    throw v2

    .line 110
    :catch_3
    move-exception v12

    .line 111
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v12    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequest:Lcom/alibaba/doraemon/request/Request;

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequest:Lcom/alibaba/doraemon/request/Request;

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/request/CacheClient;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v1

    .end local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .restart local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    goto :goto_0

    .line 122
    .end local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .restart local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v2, :cond_2

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mLength:J

    cmp-long v2, v4, v8

    if-lez v2, :cond_2

    .line 124
    :try_start_5
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mLength:J

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/request/RequestInputStream;->mark(I)V

    .line 125
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    .line 126
    .restart local v0    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->fromPooledByteBuffer(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)Lcom/alibaba/doraemon/impl/request/OutInputStream;

    move-result-object v3

    .line 127
    .restart local v3    # "requestInputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestResponse;

    iget v5, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mStatusCode:I

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mErrorMsg:Ljava/lang/String;

    iget-wide v8, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mLength:J

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mHeaders:Ljava/util/Map;

    move-object v4, v1

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/doraemon/impl/request/RequestResponse;-><init>(ILjava/lang/String;Lcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    .end local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .restart local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    :try_start_6
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 136
    :catch_4
    move-exception v12

    .line 137
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 129
    .end local v0    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .end local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .end local v3    # "requestInputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    :catch_5
    move-exception v13

    .line 130
    .restart local v13    # "t":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestResponse;

    iget v5, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mStatusCode:I

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mErrorMsg:Ljava/lang/String;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mHeaders:Ljava/util/Map;

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/doraemon/impl/request/RequestResponse;-><init>(ILjava/lang/String;Lcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 135
    .end local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .restart local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    :try_start_8
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 136
    :catch_6
    move-exception v12

    .line 137
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 134
    .end local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "t":Ljava/lang/Throwable;
    .restart local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    :catchall_1
    move-exception v2

    .line 135
    :try_start_9
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 138
    :goto_2
    throw v2

    .line 136
    :catch_7
    move-exception v12

    .line 137
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 142
    .end local v12    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestResponse;

    iget v5, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mStatusCode:I

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mErrorMsg:Ljava/lang/String;

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mHeaders:Ljava/util/Map;

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/doraemon/impl/request/RequestResponse;-><init>(ILjava/lang/String;Lcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;)V

    .end local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .restart local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    goto/16 :goto_0

    .end local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .restart local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    :cond_3
    move-object v1, v11

    .end local v11    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    .restart local v1    # "cloneObject":Lcom/alibaba/doraemon/request/Response;
    goto/16 :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestResponse;->clone()Lcom/alibaba/doraemon/request/Response;

    move-result-object v0

    return-object v0
.end method

.method public dataLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mLength:J

    return-wide v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mHeaders:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mHeaders:Ljava/util/Map;

    .line 78
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mStatusCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestResponse;->mIsSuccess:Z

    return v0
.end method
