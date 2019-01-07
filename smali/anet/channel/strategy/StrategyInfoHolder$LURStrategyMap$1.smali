.class final Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap$1;
.super Ljava/lang/Object;
.source "StrategyInfoHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap;->entryRemoved(Ljava/util/Map$Entry;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap;


# direct methods
.method constructor <init>(Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap$1;->b:Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap;

    iput-object p2, p0, Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap$1;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyTable;

    iget-object v1, v1, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    .line 1029
    invoke-static {v1}, Lanet/channel/strategy/StrategyInfoHolder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v0, v1}, Lkf;->a(Ljava/io/Serializable;Ljava/lang/String;)V

    .line 320
    return-void
.end method
