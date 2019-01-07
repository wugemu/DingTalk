.class public Lmtopsdk/mtop/domain/ResponseSource;
.super Ljava/lang/Object;
.source "ResponseSource.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private cacheBlock:Ljava/lang/String;

.field private cacheKey:Ljava/lang/String;

.field private cacheManager:Lmtopsdk/mtop/cache/CacheManager;

.field public cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field public isAsync:Z

.field private mtopProxy:Lmtopsdk/mtop/MtopProxy;

.field private request:Llj;

.field public requireConnection:Z

.field public rpcCache:Lanetwork/network/cache/RpcCache;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/MtopProxy;Llj;Lmtopsdk/mtop/cache/CacheManager;)V
    .locals 1
    .param p1, "mtopProxy"    # Lmtopsdk/mtop/MtopProxy;
    .param p2, "request"    # Llj;
    .param p3, "cacheManager"    # Lmtopsdk/mtop/cache/CacheManager;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->request:Llj;

    .line 46
    iput-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 68
    iput-object p1, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    .line 69
    iput-object p2, p0, Lmtopsdk/mtop/domain/ResponseSource;->request:Llj;

    .line 70
    iput-object p3, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lmtopsdk/mtop/cache/CacheManager;

    .line 71
    return-void
.end method


# virtual methods
.method public getCacheBlock()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    .line 89
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lmtopsdk/mtop/cache/CacheManager;

    iget-object v1, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmtopsdk/mtop/cache/CacheManager;->getBlockName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lmtopsdk/mtop/cache/CacheManager;

    iget-object v1, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v2}, Lmtopsdk/mtop/MtopProxy;->getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/ResponseSource;->request:Llj;

    invoke-interface {v3}, Llj;->b()Ljava/net/URL;

    move-result-object v3

    iget-object v4, p0, Lmtopsdk/mtop/domain/ResponseSource;->request:Llj;

    invoke-interface {v4}, Llj;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/cache/CacheManager;->getCacheKey(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/net/URL;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCacheManager()Lmtopsdk/mtop/cache/CacheManager;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lmtopsdk/mtop/cache/CacheManager;

    return-object v0
.end method

.method public getMtopProxy()Lmtopsdk/mtop/MtopProxy;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    return-object v0
.end method

.method public getRequest()Llj;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->request:Llj;

    return-object v0
.end method
