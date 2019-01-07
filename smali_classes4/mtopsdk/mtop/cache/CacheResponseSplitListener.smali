.class public interface abstract Lmtopsdk/mtop/cache/CacheResponseSplitListener;
.super Ljava/lang/Object;
.source "CacheResponseSplitListener.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopListener;


# virtual methods
.method public abstract onSplit(Lmtopsdk/mtop/domain/MtopResponse;)Ljava/util/List;
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
.end method
