.class Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap;
.super Lanet/channel/util/LruCache;
.source "StrategyInfoHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LURStrategyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanet/channel/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lanet/channel/strategy/StrategyTable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x19e71035fbce956fL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lanet/channel/util/LruCache;-><init>(I)V

    .line 312
    return-void
.end method


# virtual methods
.method protected entryRemoved(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyTable;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 316
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyTable;>;"
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap$1;

    invoke-direct {v0, p0, p1}, Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap$1;-><init>(Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap;Ljava/util/Map$Entry;)V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lkq;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    .line 322
    const/4 v0, 0x1

    return v0
.end method
