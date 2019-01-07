.class public Lmtopsdk/mtop/cache/handler/CacheParserFactory;
.super Ljava/lang/Object;
.source "CacheParserFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/cache/handler/CacheParserFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static createCacheParser(Lanetwork/network/cache/RpcCache$CacheStatus;)Lmtopsdk/mtop/cache/handler/ICacheParser;
    .locals 4
    .param p0, "cacheStatus"    # Lanetwork/network/cache/RpcCache$CacheStatus;

    .prologue
    .line 9
    if-nez p0, :cond_0

    .line 10
    new-instance v0, Lmtopsdk/mtop/cache/handler/EmptyCacheParser;

    invoke-direct {v0}, Lmtopsdk/mtop/cache/handler/EmptyCacheParser;-><init>()V

    .local v0, "cacheParser":Lmtopsdk/mtop/cache/handler/ICacheParser;
    move-object v1, v0

    .line 25
    .end local v0    # "cacheParser":Lmtopsdk/mtop/cache/handler/ICacheParser;
    .local v1, "cacheParser":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 13
    .end local v1    # "cacheParser":Ljava/lang/Object;
    :cond_0
    sget-object v2, Lmtopsdk/mtop/cache/handler/CacheParserFactory$1;->$SwitchMap$anetwork$network$cache$RpcCache$CacheStatus:[I

    invoke-virtual {p0}, Lanetwork/network/cache/RpcCache$CacheStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 21
    new-instance v0, Lmtopsdk/mtop/cache/handler/EmptyCacheParser;

    invoke-direct {v0}, Lmtopsdk/mtop/cache/handler/EmptyCacheParser;-><init>()V

    .restart local v0    # "cacheParser":Lmtopsdk/mtop/cache/handler/ICacheParser;
    :goto_1
    move-object v1, v0

    .line 25
    .restart local v1    # "cacheParser":Ljava/lang/Object;
    goto :goto_0

    .line 15
    .end local v0    # "cacheParser":Lmtopsdk/mtop/cache/handler/ICacheParser;
    .end local v1    # "cacheParser":Ljava/lang/Object;
    :pswitch_0
    new-instance v0, Lmtopsdk/mtop/cache/handler/FreshCacheParser;

    invoke-direct {v0}, Lmtopsdk/mtop/cache/handler/FreshCacheParser;-><init>()V

    .line 16
    .restart local v0    # "cacheParser":Lmtopsdk/mtop/cache/handler/ICacheParser;
    goto :goto_1

    .line 18
    .end local v0    # "cacheParser":Lmtopsdk/mtop/cache/handler/ICacheParser;
    :pswitch_1
    new-instance v0, Lmtopsdk/mtop/cache/handler/ExpiredCacheParser;

    invoke-direct {v0}, Lmtopsdk/mtop/cache/handler/ExpiredCacheParser;-><init>()V

    .line 19
    .restart local v0    # "cacheParser":Lmtopsdk/mtop/cache/handler/ICacheParser;
    goto :goto_1

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
