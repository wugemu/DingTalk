.class public Lmtopsdk/mtop/common/listener/MtopCacheSplitListenerProxy;
.super Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
.source "MtopCacheSplitListenerProxy.java"

# interfaces
.implements Lmtopsdk/mtop/cache/CacheResponseSplitListener;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/common/MtopListener;)V
    .locals 0
    .param p1, "listener"    # Lmtopsdk/mtop/common/MtopListener;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onSplit(Lmtopsdk/mtop/domain/MtopResponse;)Ljava/util/List;
    .locals 1
    .param p1, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmtopsdk/mtop/cache/SplitedCacheItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopCacheSplitListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v0, v0, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopCacheSplitListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v0, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    invoke-interface {v0, p1}, Lmtopsdk/mtop/cache/CacheResponseSplitListener;->onSplit(Lmtopsdk/mtop/domain/MtopResponse;)Ljava/util/List;

    move-result-object v0

    .line 21
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
