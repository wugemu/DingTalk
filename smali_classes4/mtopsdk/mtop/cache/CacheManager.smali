.class public interface abstract Lmtopsdk/mtop/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# virtual methods
.method public abstract addCacheResponseSplitListener(Lmtopsdk/mtop/cache/CacheResponseSplitListener;)V
.end method

.method public abstract getBlockName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBlockName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCache(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;
.end method

.method public abstract getCacheKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getCacheKey(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/net/URL;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/MtopRequest;",
            "Lmtopsdk/mtop/common/MtopNetworkProp;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lli;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getCacheKey(Lmtopsdk/mtop/intf/MtopBuilder;)Ljava/lang/String;
.end method

.method public abstract isNeedReadCache(Llj;Lmtopsdk/mtop/common/MtopListener;)Z
.end method

.method public abstract isNeedWriteCache(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation
.end method

.method public abstract putCache(Ljava/lang/String;Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Z
.end method

.method public abstract putCache(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)Z
.end method
