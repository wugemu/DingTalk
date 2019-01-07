.class public Lcom/alibaba/doraemon/impl/request/DiskBasedCache;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/request/Cache;


# static fields
.field public static final KeyContentType:Ljava/lang/String; = "cachedcontenttype"

.field private static final KeyETag:Ljava/lang/String; = "etag"

.field private static final KeyHeaders:Ljava/lang/String; = "headers"

.field private static final KeyServerDate:Ljava/lang/String; = "serverdate"

.field private static final KeySoftTTL:Ljava/lang/String; = "softttl"

.field private static final KeyTTL:Ljava/lang/String; = "ttl"

.field public static final ValueDataCache:Ljava/lang/String; = "datacache"

.field public static final ValueFileCache:Ljava/lang/String; = "filecache"


# instance fields
.field mCache:Lcom/alibaba/doraemon/cache/Cache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;->mCache:Lcom/alibaba/doraemon/cache/Cache;

    .line 42
    const-string/jumbo v0, "CACHE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;->mCache:Lcom/alibaba/doraemon/cache/Cache;

    .line 43
    return-void
.end method

.method private entity2JSON(Lcom/alibaba/doraemon/impl/request/Cache$Entry;)Ljava/lang/String;
    .locals 10
    .param p1, "entry"    # Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    const/4 v5, 0x0

    .line 113
    .local v5, "ret":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 114
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v2, "jo":Lorg/json/JSONObject;
    iget-object v6, p1, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->etag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 117
    const-string/jumbo v6, "etag"

    iget-object v7, p1, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->etag:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_0
    const-string/jumbo v6, "serverdate"

    iget-wide v8, p1, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->serverDate:J

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 121
    const-string/jumbo v6, "ttl"

    iget-wide v8, p1, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->ttl:J

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v6, "softttl"

    iget-wide v8, p1, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->softTtl:J

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    const-string/jumbo v6, "cachedcontenttype"

    iget-object v7, p1, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->type:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object v6, p1, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->responseHeaders:Ljava/util/Map;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 126
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .local v1, "headers":Lorg/json/JSONObject;
    iget-object v6, p1, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 129
    .local v4, "nodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 130
    .local v3, "node":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v1    # "headers":Lorg/json/JSONObject;
    .end local v2    # "jo":Lorg/json/JSONObject;
    .end local v3    # "node":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "nodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 143
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    return-object v5

    .line 133
    .restart local v1    # "headers":Lorg/json/JSONObject;
    .restart local v2    # "jo":Lorg/json/JSONObject;
    .restart local v4    # "nodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :try_start_1
    const-string/jumbo v6, "headers"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .end local v1    # "headers":Lorg/json/JSONObject;
    .end local v4    # "nodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;->mCache:Lcom/alibaba/doraemon/cache/Cache;

    invoke-interface {v0}, Lcom/alibaba/doraemon/cache/Cache;->clear()Z

    .line 51
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;->mCache:Lcom/alibaba/doraemon/cache/Cache;

    invoke-interface {v3, p1}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v0

    .line 61
    .local v0, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v0, :cond_0

    .line 63
    new-instance v3, Ljava/lang/String;

    invoke-interface {v0}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheDescription()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v3}, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;->json2Entry(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    move-result-object v1

    .line 65
    .local v1, "properties":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    if-eqz v1, :cond_1

    .line 66
    move-object v2, v1

    .line 74
    .end local v1    # "properties":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    :cond_0
    :goto_0
    return-object v2

    .line 68
    .restart local v1    # "properties":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    :cond_1
    new-instance v2, Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    .end local v2    # "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    invoke-direct {v2}, Lcom/alibaba/doraemon/impl/request/Cache$Entry;-><init>()V

    .restart local v2    # "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    goto :goto_0
.end method

.method public json2Entry(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    .locals 10
    .param p1, "json"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    const/4 v5, 0x0

    .line 153
    .local v5, "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 155
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, "jo":Lorg/json/JSONObject;
    new-instance v6, Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    invoke-direct {v6}, Lcom/alibaba/doraemon/impl/request/Cache$Entry;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    .end local v5    # "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    .local v6, "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    :try_start_1
    const-string/jumbo v7, "etag"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->etag:Ljava/lang/String;

    .line 158
    const-string/jumbo v7, "serverdate"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->serverDate:J

    .line 159
    const-string/jumbo v7, "ttl"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->ttl:J

    .line 160
    const-string/jumbo v7, "softttl"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->softTtl:J

    .line 161
    const-string/jumbo v7, "cachedcontenttype"

    const-string/jumbo v8, "datacache"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->type:Ljava/lang/String;

    .line 163
    const-string/jumbo v7, "headers"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 164
    .local v1, "headers":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 166
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 168
    .local v4, "key":Ljava/lang/String;
    iget-object v7, v6, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 173
    .end local v1    # "headers":Lorg/json/JSONObject;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 174
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v6    # "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v5    # "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 176
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_2
    return-object v5

    .line 173
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v5    # "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    .restart local v1    # "headers":Lorg/json/JSONObject;
    .restart local v3    # "jo":Lorg/json/JSONObject;
    .restart local v6    # "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    :cond_1
    move-object v5, v6

    .end local v6    # "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    .restart local v5    # "ret":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/Cache$Entry;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    invoke-direct {p0, p2}, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;->entity2JSON(Lcom/alibaba/doraemon/impl/request/Cache$Entry;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "json":Ljava/lang/String;
    const/4 v0, 0x0

    .line 85
    .local v0, "description":[B
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;->mCache:Lcom/alibaba/doraemon/cache/Cache;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v0}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[B[B)Z

    .line 95
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;->mCache:Lcom/alibaba/doraemon/cache/Cache;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/cache/Cache;->remove(Ljava/lang/String;)Z

    .line 103
    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .locals 1
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;->mCache:Lcom/alibaba/doraemon/cache/Cache;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/cache/Cache;->setCacheDir(Ljava/lang/String;)V

    .line 193
    return-void
.end method
