.class public final Lanet/channel/strategy/StrategyInfoHolder;
.super Ljava/lang/Object;
.source "StrategyInfoHolder.java"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;,
        Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyTable;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lanet/channel/strategy/UnitMap;

.field public c:Lanet/channel/strategy/SafeAislesMap;

.field public d:Lanet/channel/strategy/HorseRideStrategyMap;

.field public final e:Lkb;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Object;

.field private final h:Lanet/channel/strategy/StrategyTable;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyInfoHolder$LURStrategyMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    .line 35
    iput-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/UnitMap;

    .line 36
    iput-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/SafeAislesMap;

    .line 37
    iput-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/HorseRideStrategyMap;

    .line 39
    new-instance v0, Lkb;

    invoke-direct {v0}, Lkb;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Lkb;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Lanet/channel/strategy/StrategyTable;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1}, Lanet/channel/strategy/StrategyTable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->h:Lanet/channel/strategy/StrategyTable;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->g:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/util/Set;

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->j:Ljava/lang/String;

    .line 1066
    :try_start_0
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$a;)V

    .line 1067
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/strategy/StrategyInfoHolder;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->j:Ljava/lang/String;

    .line 1096
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->j:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/strategy/StrategyInfoHolder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1097
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->j:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lanet/channel/strategy/StrategyInfoHolder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_0
    const-string/jumbo v0, "config"

    invoke-static {v0}, Lkf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;

    .line 1102
    if-eqz v0, :cond_1

    .line 1103
    invoke-virtual {v0, p0}, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;->fillHolder(Lanet/channel/strategy/StrategyInfoHolder;)V

    .line 1107
    :cond_1
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder$1;

    invoke-direct {v0, p0, v1}, Lanet/channel/strategy/StrategyInfoHolder$1;-><init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V

    invoke-static {v0}, Lkq;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->c()V

    .line 62
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->c()V

    throw v0
.end method

.method private static a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;
    .locals 5
    .param p0, "networkStatus"    # Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .prologue
    .line 194
    const-string/jumbo v0, ""

    .line 195
    .local v0, "uniqueId":Ljava/lang/String;
    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->d()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "wifiBSSID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "$"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v2}, Lla;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .end local v1    # "wifiBSSID":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p0}, Lla;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "filename":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "filename":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "DefaultStrategy"

    goto :goto_0
.end method

.method static synthetic a(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lanet/channel/strategy/StrategyInfoHolder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lanet/channel/strategy/StrategyInfoHolder;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 130
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/util/Set;

    monitor-enter v3

    .line 131
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 132
    .local v0, "isFileLoading":Z
    if-nez v0, :cond_0

    .line 133
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    if-nez v0, :cond_3

    .line 137
    invoke-static {p1}, Lkf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyTable;

    .line 138
    .local v1, "s":Lanet/channel/strategy/StrategyTable;
    if-eqz v1, :cond_4

    .line 139
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyTable;->checkInit()V

    .line 143
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 144
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    monitor-enter v3

    .line 145
    :try_start_1
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    iget-object v4, v1, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    :cond_2
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/util/Set;

    monitor-enter v3

    .line 149
    :try_start_2
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->i:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 152
    .end local v1    # "s":Lanet/channel/strategy/StrategyTable;
    :cond_3
    return-void

    .line 135
    .end local v0    # "isFileLoading":Z
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 140
    .restart local v0    # "isFileLoading":Z
    .restart local v1    # "s":Lanet/channel/strategy/StrategyTable;
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    new-instance v1, Lanet/channel/strategy/StrategyTable;

    .end local v1    # "s":Lanet/channel/strategy/StrategyTable;
    invoke-direct {v1, p2}, Lanet/channel/strategy/StrategyTable;-><init>(Ljava/lang/String;)V

    .restart local v1    # "s":Lanet/channel/strategy/StrategyTable;
    goto :goto_0

    .line 146
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 150
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 71
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyTable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/StrategyTable;

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyTable;->checkInit()V

    goto :goto_0

    .line 75
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyTable;>;"
    :cond_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/UnitMap;

    if-nez v2, :cond_1

    .line 76
    new-instance v2, Lanet/channel/strategy/UnitMap;

    invoke-direct {v2}, Lanet/channel/strategy/UnitMap;-><init>()V

    iput-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/UnitMap;

    .line 81
    :goto_1
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/SafeAislesMap;

    if-nez v2, :cond_2

    .line 82
    new-instance v2, Lanet/channel/strategy/SafeAislesMap;

    invoke-direct {v2}, Lanet/channel/strategy/SafeAislesMap;-><init>()V

    iput-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/SafeAislesMap;

    .line 87
    :goto_2
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/HorseRideStrategyMap;

    if-nez v2, :cond_3

    .line 88
    new-instance v2, Lanet/channel/strategy/HorseRideStrategyMap;

    invoke-direct {v2}, Lanet/channel/strategy/HorseRideStrategyMap;-><init>()V

    iput-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/HorseRideStrategyMap;

    .line 92
    :goto_3
    return-void

    .line 78
    :cond_1
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/UnitMap;

    invoke-virtual {v2}, Lanet/channel/strategy/UnitMap;->checkInit()V

    goto :goto_1

    .line 84
    :cond_2
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v2}, Lanet/channel/strategy/SafeAislesMap;->checkInit()V

    goto :goto_2

    .line 90
    :cond_3
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/HorseRideStrategyMap;

    invoke-virtual {v2}, Lanet/channel/strategy/HorseRideStrategyMap;->checkInit()V

    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 158
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    monitor-enter v3

    .line 159
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyTable;

    .line 160
    .local v1, "st":Lanet/channel/strategy/StrategyTable;
    iget-object v2, v1, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-static {v2}, Lanet/channel/strategy/StrategyInfoHolder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkf;->a(Ljava/io/Serializable;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "st":Lanet/channel/strategy/StrategyTable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 164
    :try_start_2
    new-instance v2, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;

    invoke-direct {v2, p0}, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;-><init>(Lanet/channel/strategy/StrategyInfoHolder;)V

    const-string/jumbo v4, "config"

    invoke-static {v2, v4}, Lkf;->a(Ljava/io/Serializable;Ljava/lang/String;)V

    .line 165
    monitor-exit v3

    return-void

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public final b()Lanet/channel/strategy/StrategyTable;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 172
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->h:Lanet/channel/strategy/StrategyTable;

    .line 173
    .local v1, "ret":Lanet/channel/strategy/StrategyTable;
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    iget-object v4, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    monitor-enter v4

    .line 175
    :try_start_0
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    iget-object v5, p0, Lanet/channel/strategy/StrategyInfoHolder;->j:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/StrategyTable;

    .line 176
    .local v2, "st":Lanet/channel/strategy/StrategyTable;
    if-eqz v2, :cond_2

    .line 177
    move-object v1, v2

    .line 183
    :cond_0
    :goto_0
    monitor-exit v4

    .line 185
    .end local v2    # "st":Lanet/channel/strategy/StrategyTable;
    :cond_1
    return-object v1

    .line 179
    .restart local v2    # "st":Lanet/channel/strategy/StrategyTable;
    :cond_2
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lanet/channel/strategy/StrategyTable;

    move-object v1, v0

    goto :goto_0

    .line 183
    .end local v2    # "st":Lanet/channel/strategy/StrategyTable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 4
    .param p1, "networkStatus"    # Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 287
    const/4 v1, 0x2

    invoke-static {v1}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->j()V

    .line 291
    :cond_0
    invoke-static {p1}, Lanet/channel/strategy/StrategyInfoHolder;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->j:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 293
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    monitor-enter v2

    .line 294
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->j:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->j:Ljava/lang/String;

    .line 296
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Lanet/channel/strategy/StrategyInfoHolder$2;

    invoke-direct {v1, p0, v0}, Lanet/channel/strategy/StrategyInfoHolder$2;-><init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V

    invoke-static {v1}, Lkq;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 303
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    monitor-exit v2

    .line 305
    :cond_2
    return-void

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
