.class public abstract Lanet/channel/strategy/ConnStrategyList;
.super Ljava/lang/Object;
.source "ConnStrategyList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/ConnStrategyList$a;,
        Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;,
        Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;Lanet/channel/strategy/ConnStrategyList$a;)I
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;
    .param p1, "x1"    # Lanet/channel/strategy/ConnStrategyList$a;

    .prologue
    .line 19
    invoke-static {p0, p1}, Lanet/channel/strategy/ConnStrategyList;->find(Ljava/util/Collection;Lanet/channel/strategy/ConnStrategyList$a;)I

    move-result v0

    return v0
.end method

.method public static createForCDN()Lanet/channel/strategy/ConnStrategyList;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;

    invoke-direct {v0}, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;-><init>()V

    return-object v0
.end method

.method public static createForIDC()Lanet/channel/strategy/ConnStrategyList;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;

    invoke-direct {v0}, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;-><init>()V

    return-object v0
.end method

.method public static varargs createForIDC([Ljava/lang/String;[Lanet/channel/strategy/RawConnStrategy;)Lanet/channel/strategy/ConnStrategyList;
    .locals 1
    .param p0, "ipArray"    # [Ljava/lang/String;
    .param p1, "raw"    # [Lanet/channel/strategy/RawConnStrategy;

    .prologue
    .line 31
    new-instance v0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;

    invoke-direct {v0, p0, p1}, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;-><init>([Ljava/lang/String;[Lanet/channel/strategy/RawConnStrategy;)V

    return-object v0
.end method

.method private static find(Ljava/util/Collection;Lanet/channel/strategy/ConnStrategyList$a;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lanet/channel/strategy/ConnStrategyList$a",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "predicate":Lanet/channel/strategy/ConnStrategyList$a;, "Lanet/channel/strategy/ConnStrategyList$a<TT;>;"
    const/4 v3, -0x1

    .line 255
    if-nez p0, :cond_1

    move v2, v3

    .line 265
    :cond_0
    :goto_0
    return v2

    .line 258
    :cond_1
    const/4 v2, 0x0

    .line 259
    .local v2, "pos":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lanet/channel/strategy/ConnStrategyList$a;->a(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 263
    add-int/lit8 v2, v2, 0x1

    .line 264
    goto :goto_1

    .line 265
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public abstract getStrategyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isUnavailable()Z
.end method

.method public abstract notifyConnEvent(Ljy;Lanet/channel/entity/EventType;Lip;)V
.end method

.method public abstract resetStatus()V
.end method

.method public abstract update(Lke$b;)V
.end method
