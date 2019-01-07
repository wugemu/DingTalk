.class Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/audio/AudioCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioResponse"
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

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioCache;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioCache;Lcom/alibaba/doraemon/cache/CacheEntity;)V
    .locals 4
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioCache;
    .param p2, "cache"    # Lcom/alibaba/doraemon/cache/CacheEntity;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mLength:J

    .line 113
    invoke-interface {p2}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheDescription()[B

    move-result-object v1

    .line 114
    .local v1, "description":[B
    if-eqz v1, :cond_1

    .line 115
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mMap:Ljava/util/Map;

    .line 119
    :goto_0
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mCache:Lcom/alibaba/doraemon/cache/CacheEntity;

    .line 120
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mCache:Lcom/alibaba/doraemon/cache/CacheEntity;

    invoke-interface {v2}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheData()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mDataInputStream:Ljava/io/InputStream;

    .line 121
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "content-length"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 123
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mLength:J

    .line 128
    :cond_0
    :goto_1
    return-void

    .line 117
    .end local v0    # "contentLength":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mMap:Ljava/util/Map;

    goto :goto_0

    .line 125
    .restart local v0    # "contentLength":Ljava/lang/String;
    :cond_2
    invoke-interface {p2}, Lcom/alibaba/doraemon/cache/CacheEntity;->isIntegrity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-interface {p2}, Lcom/alibaba/doraemon/cache/CacheEntity;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mLength:J

    goto :goto_1
.end method


# virtual methods
.method public clone()Lcom/alibaba/doraemon/request/Response;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioCache;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mCache:Lcom/alibaba/doraemon/cache/CacheEntity;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioCache;Lcom/alibaba/doraemon/cache/CacheEntity;)V

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
    .line 106
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->clone()Lcom/alibaba/doraemon/request/Response;

    move-result-object v0

    return-object v0
.end method

.method public dataLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mLength:J

    return-wide v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioCache;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mDataInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mCache:Lcom/alibaba/doraemon/cache/CacheEntity;

    invoke-interface {v3}, Lcom/alibaba/doraemon/cache/CacheEntity;->length()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioCache;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
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
    .line 147
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioResponse;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0xc8

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method
