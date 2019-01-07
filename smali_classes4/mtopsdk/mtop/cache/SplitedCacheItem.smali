.class public Lmtopsdk/mtop/cache/SplitedCacheItem;
.super Ljava/lang/Object;
.source "SplitedCacheItem.java"


# instance fields
.field public body:[B

.field public builder:Lmtopsdk/mtop/intf/MtopBuilder;

.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/intf/MtopBuilder;Ljava/util/Map;[B)V
    .locals 0
    .param p1, "builder"    # Lmtopsdk/mtop/intf/MtopBuilder;
    .param p3, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/intf/MtopBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lmtopsdk/mtop/cache/SplitedCacheItem;->builder:Lmtopsdk/mtop/intf/MtopBuilder;

    .line 26
    iput-object p2, p0, Lmtopsdk/mtop/cache/SplitedCacheItem;->header:Ljava/util/Map;

    .line 27
    iput-object p3, p0, Lmtopsdk/mtop/cache/SplitedCacheItem;->body:[B

    .line 28
    return-void
.end method
