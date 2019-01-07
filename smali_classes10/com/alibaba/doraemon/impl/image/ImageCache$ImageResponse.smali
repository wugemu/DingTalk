.class Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageResponse"
.end annotation


# instance fields
.field private mCache:Lcom/alibaba/doraemon/cache/CacheEntity;

.field private mDataInputStream:Ljava/io/InputStream;

.field private mLength:J

.field private mMap:Ljava/util/Map;
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

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageCache;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageCache;Lcom/alibaba/doraemon/cache/CacheEntity;)V
    .locals 4
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageCache;
    .param p2, "cache"    # Lcom/alibaba/doraemon/cache/CacheEntity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->this$0:Lcom/alibaba/doraemon/impl/image/ImageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mLength:J

    .line 227
    invoke-interface {p2}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheDescription()[B

    move-result-object v1

    .line 228
    .local v1, "description":[B
    if-eqz v1, :cond_1

    .line 229
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mMap:Ljava/util/Map;

    .line 233
    :goto_0
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mCache:Lcom/alibaba/doraemon/cache/CacheEntity;

    .line 234
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mCache:Lcom/alibaba/doraemon/cache/CacheEntity;

    invoke-interface {v2}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheData()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mDataInputStream:Ljava/io/InputStream;

    .line 235
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "content-length"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 237
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mLength:J

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 231
    .end local v0    # "contentLength":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mMap:Ljava/util/Map;

    goto :goto_0

    .line 239
    .restart local v0    # "contentLength":Ljava/lang/String;
    :cond_2
    invoke-interface {p2}, Lcom/alibaba/doraemon/cache/CacheEntity;->isIntegrity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-interface {p2}, Lcom/alibaba/doraemon/cache/CacheEntity;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mLength:J

    goto :goto_1
.end method


# virtual methods
.method public clone()Lcom/alibaba/doraemon/request/Response;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    new-instance v0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->this$0:Lcom/alibaba/doraemon/impl/image/ImageCache;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mCache:Lcom/alibaba/doraemon/cache/CacheEntity;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;-><init>(Lcom/alibaba/doraemon/impl/image/ImageCache;Lcom/alibaba/doraemon/cache/CacheEntity;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->clone()Lcom/alibaba/doraemon/request/Response;

    move-result-object v0

    return-object v0
.end method

.method public dataLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mLength:J

    return-wide v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    new-instance v0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->this$0:Lcom/alibaba/doraemon/impl/image/ImageCache;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mDataInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mCache:Lcom/alibaba/doraemon/cache/CacheEntity;

    invoke-interface {v3}, Lcom/alibaba/doraemon/cache/CacheEntity;->length()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;-><init>(Lcom/alibaba/doraemon/impl/image/ImageCache;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    .line 261
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageResponse;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0xc8

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method
