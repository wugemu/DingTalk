.class Lcom/alibaba/doraemon/impl/request/CacheClientManager$2;
.super Ljava/lang/Object;
.source "CacheClientManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/CacheClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/CacheClientManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/CacheClientManager;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/CacheClientManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/CacheClientManager$2;->this$0:Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "REQTTMPCACHE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 160
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v1

    .line 162
    .local v1, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v1, :cond_0

    .line 163
    new-instance v3, Lcom/alibaba/doraemon/impl/request/CacheClientManager$2$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/doraemon/impl/request/CacheClientManager$2$1;-><init>(Lcom/alibaba/doraemon/impl/request/CacheClientManager$2;Lcom/alibaba/doraemon/cache/CacheEntity;)V

    .line 168
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
    .line 173
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "REQTTMPCACHE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 175
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/cache/Cache;->remove(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public onSaveData(Lcom/alibaba/doraemon/request/Request;Ljava/io/InputStream;J[B)Z
    .locals 3
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "description"    # [B

    .prologue
    .line 138
    const-string/jumbo v2, "REQTTMPCACHE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 140
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "key":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 142
    invoke-interface {v0, v1, p2, p5}, Lcom/alibaba/doraemon/cache/Cache;->wirteHuge(Ljava/lang/String;Ljava/io/InputStream;[B)Z

    move-result v2

    .line 145
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSaveSegmentData(Lcom/alibaba/doraemon/request/Request;JLjava/io/InputStream;Z[B)Z
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "skip"    # J
    .param p4, "inputStream"    # Ljava/io/InputStream;
    .param p5, "isEnd"    # Z
    .param p6, "description"    # [B

    .prologue
    .line 150
    const-string/jumbo v2, "REQTTMPCACHE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 151
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 153
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/doraemon/cache/Cache;->wirteHuge(Ljava/lang/String;JLjava/io/InputStream;Z[B)Z

    move-result v2

    return v2
.end method
