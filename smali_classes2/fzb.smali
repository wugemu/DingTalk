.class public final Lfzb;
.super Ljava/lang/Object;
.source "BalancedPool.java"


# static fields
.field private static b:Lfzb;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lfzc;",
            ">;",
            "Lfzd",
            "<+",
            "Lfzc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lfzb;

    invoke-direct {v0}, Lfzb;-><init>()V

    sput-object v0, Lfzb;->b:Lfzb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfzb;->a:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public static a()Lfzb;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lfzb;->b:Lfzb;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Class;)Lfzd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lfzc;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lfzd",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 67
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lfzb;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzd;

    .line 68
    .local v0, "pool":Lfzd;, "Lfzd<TT;>;"
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lfzd;

    .end local v0    # "pool":Lfzd;, "Lfzd<TT;>;"
    invoke-direct {v0}, Lfzd;-><init>()V

    .line 70
    .restart local v0    # "pool":Lfzd;, "Lfzd<TT;>;"
    iget-object v1, p0, Lfzb;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-object v0

    .line 67
    .end local v0    # "pool":Lfzd;, "Lfzd<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;
    .locals 6
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lfzc;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 40
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lfzb;->a(Ljava/lang/Class;)Lfzd;

    move-result-object v3

    .line 1062
    .local v3, "pool":Lfzd;, "Lfzd<TT;>;"
    sget-object v4, Lfzd;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 1063
    iget-object v4, v3, Lfzd;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 1064
    iget-object v4, v3, Lfzd;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfzc;

    .line 1065
    if-eqz v2, :cond_0

    .line 1066
    iget-object v4, v3, Lfzd;->f:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1067
    iget-object v4, v3, Lfzd;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 1068
    sget-object v4, Lfzd;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 42
    .local v2, "item":Lfzc;, "TT;"
    :cond_0
    if-nez v2, :cond_1

    .line 44
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lfzc;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 50
    invoke-interface {v2, p2}, Lfzc;->fill([Ljava/lang/Object;)V

    .line 52
    :cond_2
    return-object v2

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v4, v1}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->a(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lfzc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lfzc;",
            ">(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 58
    .local p1, "item":Lfzc;, "TT;"
    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 60
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, v1}, Lfzb;->a(Ljava/lang/Class;)Lfzd;

    move-result-object v0

    .line 1074
    .local v0, "pool":Lfzd;, "Lfzd<TT;>;"
    invoke-interface {p1}, Lfzc;->clean()V

    .line 1075
    iget-object v2, v0, Lfzd;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 1076
    iget-object v3, v0, Lfzd;->f:Ljava/util/Set;

    monitor-enter v3

    .line 1077
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1078
    iget-object v4, v0, Lfzd;->f:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1079
    iget-object v4, v0, Lfzd;->f:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1080
    iget-object v2, v0, Lfzd;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 1082
    :cond_0
    monitor-exit v3

    .end local v0    # "pool":Lfzd;, "Lfzd<TT;>;"
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_1
    return-void

    .restart local v0    # "pool":Lfzd;, "Lfzd<TT;>;"
    .restart local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
