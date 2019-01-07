.class public Liz;
.super Ljava/lang/Object;
.source "BandWidthListenerHelper.java"


# static fields
.field private static volatile b:Liz;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljb;",
            "Ljd;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljd;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Liz;->a:Ljava/util/Map;

    .line 16
    new-instance v0, Ljd;

    invoke-direct {v0}, Ljd;-><init>()V

    iput-object v0, p0, Liz;->c:Ljd;

    .line 19
    return-void
.end method

.method public static a()Liz;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Liz;->b:Liz;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Liz;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Liz;->b:Liz;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Liz;

    invoke-direct {v0}, Liz;-><init>()V

    sput-object v0, Liz;->b:Liz;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Liz;->b:Liz;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(D)V
    .locals 13
    .param p1, "speed"    # D

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 51
    iget-object v7, p0, Liz;->a:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljb;Ljd;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljb;

    .line 53
    .local v4, "listener":Ljb;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljd;

    .line 55
    .local v1, "filter":Ljd;
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 1044
    iget-boolean v7, v1, Ljd;->b:Z

    if-eqz v7, :cond_1

    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 1046
    iput-boolean v6, v1, Ljd;->b:Z

    :cond_1
    move v7, v6

    .line 58
    :goto_1
    if-nez v7, :cond_0

    .line 2034
    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    cmpg-double v7, p1, v8

    if-gez v7, :cond_3

    move v3, v5

    .line 3013
    .local v3, "isNetSlow":Z
    :goto_2
    iget-boolean v7, v1, Ljd;->a:Z

    .line 62
    if-eq v7, v3, :cond_0

    .line 3017
    iput-boolean v3, v1, Ljd;->a:Z

    .line 64
    if-eqz v3, :cond_4

    sget-object v7, Lanet/channel/monitor/NetworkSpeed;->Slow:Lanet/channel/monitor/NetworkSpeed;

    goto :goto_0

    .end local v3    # "isNetSlow":Z
    :cond_2
    move v7, v5

    .line 1049
    goto :goto_1

    :cond_3
    move v3, v6

    .line 2037
    goto :goto_2

    .line 64
    .restart local v3    # "isNetSlow":Z
    :cond_4
    sget-object v7, Lanet/channel/monitor/NetworkSpeed;->Fast:Lanet/channel/monitor/NetworkSpeed;

    goto :goto_0

    .line 68
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljb;Ljd;>;"
    .end local v1    # "filter":Ljd;
    .end local v3    # "isNetSlow":Z
    .end local v4    # "listener":Ljb;
    :cond_5
    return-void
.end method
