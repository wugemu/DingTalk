.class final Lflq$1;
.super Ljava/lang/Object;
.source "CacheMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflq;


# direct methods
.method constructor <init>(Lflq;)V
    .locals 0
    .param p1, "this$0"    # Lflq;

    .prologue
    .line 63
    .local p0, "this":Lflq$1;, "Lflq$1;"
    iput-object p1, p0, Lflq$1;->a:Lflq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lflq$1;, "Lflq$1;"
    const/4 v5, 0x0

    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lflq$1;->a:Lflq;

    invoke-static {v8}, Lflq;->a(Lflq;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 69
    .local v6, "now":J
    iget-object v8, p0, Lflq$1;->a:Lflq;

    invoke-static {v8}, Lflq;->b(Lflq;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 70
    .local v3, "keys":[Ljava/lang/Object;
    array-length v8, v3

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v2, v3, v5

    .line 71
    .local v2, "key":Ljava/lang/Object;
    iget-object v9, p0, Lflq$1;->a:Lflq;

    invoke-static {v9}, Lflq;->b(Lflq;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflq$a;

    .line 72
    .local v1, "entry":Lflq$a;, "Lflq<TK;TV;>.a;"
    iget-wide v10, v1, Lflq$a;->a:J

    sub-long v10, v6, v10

    iget-object v9, p0, Lflq$1;->a:Lflq;

    invoke-static {v9}, Lflq;->a(Lflq;)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-ltz v9, :cond_0

    .line 74
    iget-object v9, p0, Lflq$1;->a:Lflq;

    invoke-static {v9}, Lflq;->b(Lflq;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "CacheMap[clearCacheRunnable]key: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, " | value: "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, v1, Lflq$a;->b:Ljava/lang/Object;

    .line 76
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, " | time: "

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 75
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v9, "CacheMap"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v4, v10}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "entry":Lflq$a;, "Lflq<TK;TV;>.a;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "keys":[Ljava/lang/Object;
    .end local v6    # "now":J
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "CacheMap"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[clearCacheRunnable]exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
