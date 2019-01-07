.class public final Lflq;
.super Ljava/util/AbstractMap;
.source "CacheMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static a:Lflq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lflq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Runnable;

.field private c:J

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lflq",
            "<TK;TV;>.a;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(J)V
    .locals 2
    .param p1, "timeout"    # J

    .prologue
    .line 91
    .local p0, "this":Lflq;, "Lflq<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 63
    new-instance v0, Lflq$1;

    invoke-direct {v0, p0}, Lflq$1;-><init>(Lflq;)V

    iput-object v0, p0, Lflq;->b:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflq;->d:Ljava/util/Map;

    .line 92
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lflq;->c:J

    .line 93
    return-void
.end method

.method static synthetic a(Lflq;)J
    .locals 2
    .param p0, "x0"    # Lflq;

    .prologue
    .line 22
    iget-wide v0, p0, Lflq;->c:J

    return-wide v0
.end method

.method public static declared-synchronized a()Lflq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lflq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    const-class v1, Lflq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lflq;->a:Lflq;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lflq;

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v2, v3}, Lflq;-><init>(J)V

    sput-object v0, Lflq;->a:Lflq;

    .line 32
    :cond_0
    sget-object v0, Lflq;->a:Lflq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lflq;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lflq;

    .prologue
    .line 22
    iget-object v0, p0, Lflq;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 98
    .local p0, "this":Lflq;, "Lflq<TK;TV;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v3, p0, Lflq;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 100
    .local v2, "wrapEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;Lflq<TK;TV;>.a;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lflq<TK;TV;>.a;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lflq<TK;TV;>.a;>;"
    :cond_0
    return-object v1
.end method

.method public final declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 108
    .local p0, "this":Lflq;, "Lflq<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lflq;->d:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflq$a;

    .line 110
    .local v0, "entry":Lflq$a;, "Lflq<TK;TV;>.a;"
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "CacheMap[get]key: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " | time: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 110
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "msg":Ljava/lang/String;
    const-string/jumbo v2, "CacheMap"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v2, v0, Lflq$a;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    .end local v0    # "entry":Lflq$a;, "Lflq<TK;TV;>.a;"
    .end local v1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 120
    .local p0, "this":Lflq;, "Lflq<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lflq$a;

    invoke-direct {v0, p0, p1, p2}, Lflq$a;-><init>(Lflq;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .local v0, "entry":Lflq$a;, "Lflq<TK;TV;>.a;"
    iget-object v3, p0, Lflq;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "CacheMap[put]key: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " | time: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 124
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "msg":Ljava/lang/String;
    const-string/jumbo v3, "CacheMap"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const-string/jumbo v3, "CacheMap"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    .line 131
    .local v2, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    iget-object v3, p0, Lflq;->b:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-object p2

    .line 120
    .end local v0    # "entry":Lflq$a;, "Lflq<TK;TV;>.a;"
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
