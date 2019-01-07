.class public final Licb;
.super Ljava/lang/Object;
.source "MessageViewTask.java"


# static fields
.field private static d:Licb;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Licb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Licb;->b:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 85
    new-instance v0, Licb$2;

    invoke-direct {v0, p0}, Licb$2;-><init>(Licb;)V

    iput-object v0, p0, Licb;->c:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method public static declared-synchronized a()Licb;
    .locals 2

    .prologue
    .line 34
    const-class v1, Licb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Licb;->d:Licb;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Licb;

    invoke-direct {v0}, Licb;-><init>()V

    sput-object v0, Licb;->d:Licb;

    .line 37
    :cond_0
    sget-object v0, Licb;->d:Licb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "messageId"    # J

    .prologue
    .line 73
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Licb;->b:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_1
    iget-object v0, p0, Licb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Licb;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1082
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Licb;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Licb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "cid":Ljava/lang/String;
    iget-object v3, p0, Licb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 103
    .local v2, "tmp":Ljava/lang/Long;
    iget-object v3, p0, Licb;->b:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageRpc()Libz;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v5, Licb$3;

    invoke-direct {v5, p0, v2, v0}, Licb$3;-><init>(Licb;Ljava/lang/Long;Ljava/lang/String;)V

    .line 1658
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 1660
    const-string/jumbo v3, "101002"

    const-string/jumbo v6, "PARAMETER_ERR invalid messageId"

    invoke-interface {v5, v3, v6}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "tmp":Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1665
    .restart local v0    # "cid":Ljava/lang/String;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v2    # "tmp":Ljava/lang/Long;
    :cond_0
    :try_start_1
    new-instance v8, Libz$7;

    invoke-direct {v8, v3, v5}, Libz$7;-><init>(Libz;Lcom/alibaba/wukong/Callback;)V

    .line 1674
    const-class v3, Lcom/alibaba/wukong/idl/im/client/IDLMessageStatusService;

    invoke-static {v3}, Lcom/alibaba/wukong/sync/SyncEngine;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/idl/im/client/IDLMessageStatusService;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v0, v5, v8}, Lcom/alibaba/wukong/idl/im/client/IDLMessageStatusService;->updateToView(Ljava/lang/String;Ljava/lang/Long;Liyv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "tmp":Ljava/lang/Long;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Licb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 129
    iget-object v0, p0, Licb;->b:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
