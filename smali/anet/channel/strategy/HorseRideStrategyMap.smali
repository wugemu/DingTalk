.class public Lanet/channel/strategy/HorseRideStrategyMap;
.super Ljava/lang/Object;
.source "HorseRideStrategyMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6c6bdb03303b7f38L


# instance fields
.field private hRStrategyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/HorseRideStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0}, Lanet/channel/strategy/HorseRideStrategyMap;->checkInit()V

    .line 20
    return-void
.end method


# virtual methods
.method checkInit()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lanet/channel/strategy/HorseRideStrategyMap;->hRStrategyMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/HorseRideStrategyMap;->hRStrategyMap:Ljava/util/Map;

    .line 26
    :cond_0
    return-void
.end method

.method public getHRStrategyMap(Lanet/channel/strategy/StrategyTable;)Ljava/util/Map;
    .locals 3
    .param p1, "st"    # Lanet/channel/strategy/StrategyTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/strategy/StrategyTable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljz;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 60
    iget-object v1, p0, Lanet/channel/strategy/HorseRideStrategyMap;->hRStrategyMap:Ljava/util/Map;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/HorseRideStrategyMap;->hRStrategyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    monitor-exit v1

    .line 66
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/HorseRideStrategyMap;->hRStrategyMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lanet/channel/strategy/StrategyTable;->fillLastHorseRideTime(Ljava/util/Map;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lanet/channel/strategy/HorseRideStrategyMap;->hRStrategyMap:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Lke$c;)V
    .locals 11
    .param p1, "response"    # Lke$c;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 29
    iget-object v2, p1, Lke$c;->c:[Lke$b;

    if-nez v2, :cond_0

    .line 56
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v10, p0, Lanet/channel/strategy/HorseRideStrategyMap;->hRStrategyMap:Ljava/util/Map;

    monitor-enter v10

    .line 34
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_0
    iget-object v2, p1, Lke$c;->c:[Lke$b;

    array-length v2, v2

    if-ge v9, v2, :cond_4

    .line 35
    iget-object v2, p1, Lke$c;->c:[Lke$b;

    aget-object v0, v2, v9

    .line 36
    .local v0, "dnsInfo":Lke$b;
    iget-boolean v2, v0, Lke$b;->m:Z

    if-eqz v2, :cond_2

    .line 37
    iget-object v2, p0, Lanet/channel/strategy/HorseRideStrategyMap;->hRStrategyMap:Ljava/util/Map;

    iget-object v3, v0, Lke$b;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 40
    :cond_2
    iget-boolean v2, v0, Lke$b;->o:Z

    if-nez v2, :cond_1

    .line 44
    iget-object v2, v0, Lke$b;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 45
    iget-object v2, v0, Lke$b;->g:Ljava/lang/String;

    iget-object v3, v0, Lke$b;->i:Ljava/lang/String;

    iget v4, v0, Lke$b;->h:I

    int-to-long v4, v4

    iget v6, v0, Lke$b;->k:I

    iget v7, v0, Lke$b;->j:I

    .line 1060
    new-instance v1, Lanet/channel/strategy/HorseRideStrategy;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lanet/channel/strategy/HorseRideStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;JIILanet/channel/strategy/HorseRideStrategy$1;)V

    .line 51
    .local v1, "horseRideStrategy":Lanet/channel/strategy/HorseRideStrategy;
    iget-object v2, p0, Lanet/channel/strategy/HorseRideStrategyMap;->hRStrategyMap:Ljava/util/Map;

    iget-object v3, v0, Lke$b;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 56
    .end local v0    # "dnsInfo":Lke$b;
    .end local v1    # "horseRideStrategy":Lanet/channel/strategy/HorseRideStrategy;
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 53
    .restart local v0    # "dnsInfo":Lke$b;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lanet/channel/strategy/HorseRideStrategyMap;->hRStrategyMap:Ljava/util/Map;

    iget-object v3, v0, Lke$b;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 56
    .end local v0    # "dnsInfo":Lke$b;
    :cond_4
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
