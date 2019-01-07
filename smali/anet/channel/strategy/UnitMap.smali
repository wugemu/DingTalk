.class public Lanet/channel/strategy/UnitMap;
.super Ljava/lang/Object;
.source "UnitMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.UnitMap"

.field private static final serialVersionUID:J = -0x115e5493f5b41751L


# instance fields
.field private unitCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Lanet/channel/strategy/UnitMap;->checkInit()V

    .line 22
    return-void
.end method

.method private getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    .end local p1    # "userId":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 89
    .restart local p1    # "userId":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object p1, p2

    .line 90
    goto :goto_0

    .line 92
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method checkInit()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 25
    iget-object v0, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lanet/channel/util/LruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lanet/channel/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    .line 28
    :cond_0
    return-void
.end method

.method public getUnitPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lanet/channel/strategy/UnitMap;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 62
    :goto_0
    return-object v1

    .line 61
    :cond_0
    iget-object v2, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    monitor-enter v2

    .line 62
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUnitPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;
    .param p3, "unitPrefix"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 67
    invoke-direct {p0, p1, p2}, Lanet/channel/strategy/UnitMap;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {v7}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const-string/jumbo v1, "awcn.UnitMap"

    const-string/jumbo v2, "set unit prefix"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "key"

    aput-object v6, v4, v5

    aput-object v0, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "unitPrefix"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "center"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    :cond_2
    iget-object v2, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    monitor-enter v2

    .line 76
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 79
    :cond_3
    iget-object v2, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    monitor-enter v2

    .line 80
    :try_start_1
    iget-object v1, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2033
    sget-object v1, Lia$b;->a:Lia;

    .line 82
    invoke-virtual {v1}, Lia;->a()V

    goto :goto_0

    .line 81
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 97
    iget-object v1, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    monitor-enter v1

    .line 98
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UnitMap: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Lke$c;)V
    .locals 8
    .param p1, "response"    # Lke$c;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 31
    iget-object v2, p1, Lke$c;->b:Ljava/lang/String;

    .line 32
    .local v2, "unitPrefix":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "center"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 35
    .local v0, "isExistUnitPrefix":Z
    :cond_0
    iget-object v4, p1, Lke$c;->d:Ljava/lang/String;

    iget-object v5, p1, Lke$c;->e:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lanet/channel/strategy/UnitMap;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "key":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 37
    iget-object v4, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    monitor-enter v4

    .line 38
    :try_start_0
    iget-object v5, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    :goto_0
    invoke-static {v3}, Lanet/channel/util/ALog;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    iget-object v4, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    monitor-enter v4

    .line 50
    :try_start_1
    const-string/jumbo v3, "awcn.UnitMap"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "UnitMap : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lanet/channel/strategy/UnitMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v5, v6, v7}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1033
    :cond_2
    sget-object v3, Lia$b;->a:Lia;

    .line 53
    invoke-virtual {v3}, Lia;->a()V

    .line 54
    return-void

    .line 39
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 41
    :cond_3
    if-eqz v1, :cond_1

    .line 42
    iget-object v4, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    monitor-enter v4

    .line 43
    :try_start_3
    iget-object v5, p0, Lanet/channel/strategy/UnitMap;->unitCache:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 51
    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method
