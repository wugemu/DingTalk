.class public final Ldse;
.super Ljava/lang/Object;
.source "VideoCache.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/CacheClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldse$a;,
        Ldse$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method


# virtual methods
.method public final onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    const-string/jumbo v3, "CACHE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 78
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v1

    .line 82
    .local v1, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v1, :cond_0

    .line 83
    new-instance v3, Ldse$b;

    invoke-direct {v3, p0, v1}, Ldse$b;-><init>(Ldse;Lcom/alibaba/doraemon/cache/CacheEntity;)V

    .line 87
    .end local v1    # "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final onRemoveData(Lcom/alibaba/doraemon/request/Request;)Z
    .locals 3
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    const-string/jumbo v2, "CACHE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 94
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/cache/Cache;->remove(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public final onSaveData(Lcom/alibaba/doraemon/request/Request;Ljava/io/InputStream;J[B)Z
    .locals 9
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "description"    # [B

    .prologue
    .line 35
    const-string/jumbo v5, "CACHE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/cache/Cache;

    .line 36
    .local v1, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 39
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-lez v5, :cond_0

    const-wide/32 v6, 0x7d000

    cmp-long v5, p3, v6

    if-lez v5, :cond_2

    .line 42
    :cond_0
    if-eqz p2, :cond_3

    .line 43
    invoke-interface {v1, v3, p2, p5}, Lcom/alibaba/doraemon/cache/Cache;->appendHuge(Ljava/lang/String;Ljava/io/InputStream;[B)Z

    move-result v5

    .line 64
    :cond_1
    :goto_0
    return v5

    .line 46
    :cond_2
    if-eqz p2, :cond_3

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "buffer":[B
    long-to-int v5, p3

    :try_start_0
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 51
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 52
    .local v4, "size":I
    invoke-interface {v1, v3, v0, v4, p5}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[BI[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_0

    .line 53
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 64
    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 56
    .restart local v0    # "buffer":[B
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 57
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_4
    throw v5
.end method

.method public final onSaveSegmentData(Lcom/alibaba/doraemon/request/Request;JLjava/io/InputStream;Z[B)Z
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "skip"    # J
    .param p4, "inputStream"    # Ljava/io/InputStream;
    .param p5, "isEnd"    # Z
    .param p6, "description"    # [B

    .prologue
    .line 69
    const-string/jumbo v2, "CACHE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 70
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 72
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/doraemon/cache/Cache;->wirteHuge(Ljava/lang/String;JLjava/io/InputStream;Z[B)Z

    move-result v2

    return v2
.end method
