.class synthetic Lmtopsdk/mtop/cache/handler/CacheParserFactory$1;
.super Ljava/lang/Object;
.source "CacheParserFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/cache/handler/CacheParserFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$anetwork$network$cache$RpcCache$CacheStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    invoke-static {}, Lanetwork/network/cache/RpcCache$CacheStatus;->values()[Lanetwork/network/cache/RpcCache$CacheStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmtopsdk/mtop/cache/handler/CacheParserFactory$1;->$SwitchMap$anetwork$network$cache$RpcCache$CacheStatus:[I

    :try_start_0
    sget-object v0, Lmtopsdk/mtop/cache/handler/CacheParserFactory$1;->$SwitchMap$anetwork$network$cache$RpcCache$CacheStatus:[I

    sget-object v1, Lanetwork/network/cache/RpcCache$CacheStatus;->FRESH:Lanetwork/network/cache/RpcCache$CacheStatus;

    invoke-virtual {v1}, Lanetwork/network/cache/RpcCache$CacheStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lmtopsdk/mtop/cache/handler/CacheParserFactory$1;->$SwitchMap$anetwork$network$cache$RpcCache$CacheStatus:[I

    sget-object v1, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    invoke-virtual {v1}, Lanetwork/network/cache/RpcCache$CacheStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
