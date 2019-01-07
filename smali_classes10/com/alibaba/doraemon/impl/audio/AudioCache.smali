.class public Lcom/alibaba/doraemon/impl/audio/AudioCache;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/CacheClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;,
        Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;
    }
.end annotation


# static fields
.field public static final AUDIOCACHE_ARTIFACT:Ljava/lang/String; = "AUDIOCACHE"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v1, "AUDIOCACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 31
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    const-string/jumbo v1, "audio"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/cache/Cache;->setCacheDir(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public hasCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    const-string/jumbo v1, "AUDIOCACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 103
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/cache/Cache;->has(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    const-string/jumbo v3, "AUDIOCACHE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 78
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v1

    .line 80
    .local v1, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v1, :cond_0

    .line 81
    new-instance v3, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioCache;Lcom/alibaba/doraemon/cache/CacheEntity;)V

    .line 83
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onRemoveData(Lcom/alibaba/doraemon/request/Request;)Z
    .locals 3
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    const-string/jumbo v2, "AUDIOCACHE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 97
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/cache/Cache;->remove(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public onSaveData(Lcom/alibaba/doraemon/request/Request;Ljava/io/InputStream;J[B)Z
    .locals 7
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "description"    # [B

    .prologue
    .line 37
    const-string/jumbo v4, "AUDIOCACHE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/cache/Cache;

    .line 38
    .local v1, "cache":Lcom/alibaba/doraemon/cache/Cache;
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_0

    const-wide/32 v4, 0x7d000

    cmp-long v4, p3, v4

    if-lez v4, :cond_2

    .line 40
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "key":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 42
    invoke-interface {v1, v3, p2, p5}, Lcom/alibaba/doraemon/cache/Cache;->appendHuge(Ljava/lang/String;Ljava/io/InputStream;[B)Z

    move-result v4

    .line 63
    :cond_1
    :goto_0
    return v4

    .line 46
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    .line 47
    .restart local v3    # "key":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "buffer":[B
    long-to-int v4, p3

    :try_start_0
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 52
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    .line 53
    long-to-int v4, p3

    invoke-interface {v1, v3, v0, v4, p5}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[BI[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_0

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 63
    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 57
    .restart local v0    # "buffer":[B
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    .line 58
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_4
    throw v4
.end method

.method public onSaveSegmentData(Lcom/alibaba/doraemon/request/Request;JLjava/io/InputStream;Z[B)Z
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "skip"    # J
    .param p4, "inputStream"    # Ljava/io/InputStream;
    .param p5, "isEnd"    # Z
    .param p6, "description"    # [B

    .prologue
    .line 69
    const-string/jumbo v2, "AUDIOCACHE"

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
