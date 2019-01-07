.class public Lcom/alibaba/doraemon/impl/image/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/CacheClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;,
        Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;
    }
.end annotation


# static fields
.field public static final IMAGECACHE_ARTIFACT:Ljava/lang/String; = "IMAGECACHE"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v1, "IMAGECACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 38
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    const-string/jumbo v1, "image"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/cache/Cache;->setCacheDir(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private getInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 197
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 204
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public fillCache(Ljava/lang/String;[BILjava/lang/String;)[B
    .locals 6
    .param p1, "fromUrl"    # Ljava/lang/String;
    .param p2, "fromBytes"    # [B
    .param p3, "size"    # I
    .param p4, "urlKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/image/ImageCache;->fillCache(Ljava/lang/String;[BILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public fillCache(Ljava/lang/String;[BILjava/lang/String;[B)[B
    .locals 10
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "fromBytes"    # [B
    .param p3, "size"    # I
    .param p4, "urlKey"    # Ljava/lang/String;
    .param p5, "description"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    const/4 p2, 0x0

    .line 191
    .end local p2    # "fromBytes":[B
    :goto_0
    return-object p2

    .line 135
    .restart local p2    # "fromBytes":[B
    :cond_0
    const-string/jumbo v6, "IMAGECACHE"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/cache/Cache;

    .line 136
    .local v4, "imageCache":Lcom/alibaba/doraemon/cache/Cache;
    if-nez v4, :cond_1

    .line 137
    const/4 p2, 0x0

    goto :goto_0

    .line 140
    :cond_1
    if-eqz p2, :cond_3

    .line 141
    array-length v6, p2

    const v7, 0x7d000

    if-ge v6, v7, :cond_2

    .line 142
    invoke-interface {v4, p4, p2, p3, p5}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[BI[B)Z

    goto :goto_0

    .line 145
    :cond_2
    invoke-direct {p0, p4}, Lcom/alibaba/doraemon/impl/image/ImageCache;->getInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 146
    .local v5, "inputStream":Ljava/io/FileInputStream;
    if-eqz v5, :cond_9

    .line 147
    invoke-interface {v4, p4, v5, p5}, Lcom/alibaba/doraemon/cache/Cache;->wirteHuge(Ljava/lang/String;Ljava/io/InputStream;[B)Z

    .line 148
    const/4 p2, 0x0

    goto :goto_0

    .line 151
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 152
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageCache;->getInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 153
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 154
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    if-eqz v5, :cond_9

    .line 156
    :try_start_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 157
    if-nez v2, :cond_5

    .line 175
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    :goto_1
    if-eqz v2, :cond_4

    .line 182
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    :cond_4
    :goto_2
    const/4 p2, 0x0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 183
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 184
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 161
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/32 v8, 0x7d000

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    .line 162
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 165
    .local v1, "bytes":[B
    invoke-interface {v4, p4, v1, p5}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[B[B)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 180
    :goto_3
    if-eqz v2, :cond_6

    .line 182
    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_4
    move-object p2, v1

    .line 185
    goto :goto_0

    .line 176
    :catch_2
    move-exception v3

    .line 177
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 183
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 184
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 168
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":[B
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_6
    invoke-interface {v4, p4, v5, p5}, Lcom/alibaba/doraemon/cache/Cache;->wirteHuge(Ljava/lang/String;Ljava/io/InputStream;[B)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 180
    :goto_5
    if-eqz v2, :cond_8

    .line 182
    :try_start_8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 185
    :cond_8
    :goto_6
    const/4 p2, 0x0

    goto/16 :goto_0

    .line 176
    :catch_4
    move-exception v3

    .line 177
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 183
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 184
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 171
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 172
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 175
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 180
    :goto_7
    if-eqz v2, :cond_9

    .line 182
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 191
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    :cond_9
    :goto_8
    const/4 p2, 0x0

    goto/16 :goto_0

    .line 176
    .restart local v2    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    .line 177
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 183
    :catch_8
    move-exception v3

    .line 184
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 174
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 175
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 180
    :goto_9
    if-eqz v2, :cond_a

    .line 182
    :try_start_d
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 185
    :cond_a
    :goto_a
    throw v6

    .line 176
    :catch_9
    move-exception v3

    .line 177
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 183
    .end local v3    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v3

    .line 184
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a
.end method

.method public getCache(Ljava/lang/String;)Lcom/alibaba/doraemon/request/RequestInputStream;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    const-string/jumbo v2, "IMAGECACHE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 214
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v1

    .line 215
    .local v1, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/doraemon/cache/CacheEntity;->isIntegrity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    new-instance v2, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;

    invoke-interface {v1}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheData()Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v1}, Lcom/alibaba/doraemon/cache/CacheEntity;->length()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v2, p0, v3, v4}, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;-><init>(Lcom/alibaba/doraemon/impl/image/ImageCache;Ljava/io/InputStream;I)V

    .line 217
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    const-string/jumbo v1, "IMAGECACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 209
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
    .line 85
    const-string/jumbo v3, "IMAGECACHE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 86
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v1

    .line 88
    .local v1, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v1, :cond_0

    .line 89
    new-instance v3, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;-><init>(Lcom/alibaba/doraemon/impl/image/ImageCache;Lcom/alibaba/doraemon/cache/CacheEntity;)V

    .line 91
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
    .line 103
    const-string/jumbo v2, "IMAGECACHE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 104
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/cache/Cache;->remove(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public onSaveData(Lcom/alibaba/doraemon/request/Request;Ljava/io/InputStream;J[B)Z
    .locals 9
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "description"    # [B

    .prologue
    .line 44
    const-string/jumbo v5, "IMAGECACHE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/cache/Cache;

    .line 45
    .local v1, "cache":Lcom/alibaba/doraemon/cache/Cache;
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-lez v5, :cond_0

    const-wide/32 v6, 0x7d000

    cmp-long v5, p3, v6

    if-lez v5, :cond_2

    .line 47
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "key":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 49
    invoke-interface {v1, v3, p2, p5}, Lcom/alibaba/doraemon/cache/Cache;->appendHuge(Ljava/lang/String;Ljava/io/InputStream;[B)Z

    move-result v5

    .line 71
    :cond_1
    :goto_0
    return v5

    .line 53
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    .line 54
    .restart local v3    # "key":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "buffer":[B
    long-to-int v5, p3

    :try_start_0
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 59
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 60
    .local v4, "size":I
    invoke-interface {v1, v3, v0, v4, p5}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[BI[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 64
    if-eqz v0, :cond_1

    .line 65
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_0

    .line 61
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 71
    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 64
    .restart local v0    # "buffer":[B
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 65
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_4
    throw v5
.end method

.method public onSaveSegmentData(Lcom/alibaba/doraemon/request/Request;JLjava/io/InputStream;Z[B)Z
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "skip"    # J
    .param p4, "inputStream"    # Ljava/io/InputStream;
    .param p5, "isEnd"    # Z
    .param p6, "description"    # [B

    .prologue
    .line 77
    const-string/jumbo v2, "IMAGECACHE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 78
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 80
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/doraemon/cache/Cache;->wirteHuge(Ljava/lang/String;JLjava/io/InputStream;Z[B)Z

    move-result v2

    return v2
.end method
