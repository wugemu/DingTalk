.class public final Lif;
.super Ljava/lang/Object;
.source "SessionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lig;",
            "Ljava/util/List",
            "<",
            "Lanet/channel/Session;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lif;->a:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lif;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 34
    iget-object v0, p0, Lif;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 35
    iget-object v0, p0, Lif;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lif;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lif;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lig;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;
    .locals 13
    .param p1, "key"    # Lig;
    .param p2, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 170
    const/4 v5, 0x0

    .line 171
    .local v5, "select":Lanet/channel/Session;
    iget-object v8, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 173
    :try_start_0
    iget-object v8, p0, Lif;->a:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 174
    .local v1, "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    :cond_0
    iget-object v8, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 207
    :goto_0
    return-object v7

    .line 178
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/Session;

    .line 179
    .local v6, "session":Lanet/channel/Session;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lanet/channel/Session;->d()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_3

    iget-object v7, v6, Lanet/channel/Session;->g:Lanet/channel/entity/ConnType;

    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v7

    if-ne v7, p2, :cond_2

    .line 181
    :cond_3
    move-object v5, v6

    .line 2084
    .end local v6    # "session":Lanet/channel/Session;
    :cond_4
    iget-object v3, p1, Lig;->a:Ljava/lang/String;

    .line 188
    .local v3, "host":Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-static {}, Lkg;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 189
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_7

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "count":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/Session;

    .line 192
    .restart local v6    # "session":Lanet/channel/Session;
    instance-of v7, v6, Ljo;

    if-eqz v7, :cond_5

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    .end local v6    # "session":Lanet/channel/Session;
    :cond_6
    if-le v0, v9, :cond_7

    .line 197
    const-string/jumbo v7, "awcn.SessionPool"

    const-string/jumbo v8, "accs session count > 1"

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "sessions"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    new-instance v2, Lanet/channel/statist/ExceptionStatistic;

    const/16 v7, -0x6b

    const/4 v8, 0x0

    const-string/jumbo v9, "nw"

    invoke-direct {v2, v7, v8, v9}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    .local v2, "es":Lanet/channel/statist/ExceptionStatistic;
    invoke-static {}, Lih;->a()Lij;

    move-result-object v7

    invoke-interface {v7, v2}, Lij;->a(Lanet/channel/statist/StatObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .end local v0    # "count":I
    .end local v2    # "es":Lanet/channel/statist/ExceptionStatistic;
    :cond_7
    iget-object v7, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v7, v5

    .line 207
    goto/16 :goto_0

    .line 205
    .end local v1    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v7
.end method

.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lig;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 211
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 212
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lig;>;"
    iget-object v2, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 214
    :try_start_0
    iget-object v2, p0, Lif;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v0

    .line 222
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lig;>;"
    .local v1, "infos":Ljava/lang/Object;, "Ljava/util/List<Lig;>;"
    :goto_0
    return-object v1

    .line 218
    .end local v1    # "infos":Ljava/lang/Object;, "Ljava/util/List<Lig;>;"
    .restart local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lig;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lig;>;"
    iget-object v2, p0, Lif;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .restart local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lig;>;"
    iget-object v2, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v0

    .line 222
    .restart local v1    # "infos":Ljava/lang/Object;, "Ljava/util/List<Lig;>;"
    goto :goto_0

    .line 220
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lig;>;"
    .end local v1    # "infos":Ljava/lang/Object;, "Ljava/util/List<Lig;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public final a(Lanet/channel/entity/ConnType;)Ljava/util/List;
    .locals 8
    .param p1, "connType"    # Lanet/channel/entity/ConnType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/entity/ConnType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/Session;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 119
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 120
    .local v4, "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    iget-object v6, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 122
    :try_start_0
    iget-object v6, p0, Lif;->a:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    iget-object v6, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v5, v4

    .line 141
    .end local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :goto_0
    return-object v5

    .line 126
    .restart local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :cond_0
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    .end local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :try_start_2
    iget-object v6, p0, Lif;->a:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 128
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 131
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/Session;

    .line 132
    .local v3, "session":Lanet/channel/Session;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lanet/channel/Session;->g()Lanet/channel/entity/ConnType;

    move-result-object v6

    invoke-virtual {v6, p1}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 138
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    .end local v3    # "session":Lanet/channel/Session;
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    .restart local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :goto_2
    iget-object v7, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v6

    .end local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    .restart local v5    # "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :cond_3
    iget-object v6, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v4, v5

    .line 141
    .end local v5    # "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    .restart local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    goto :goto_0

    .line 138
    :catchall_1
    move-exception v6

    goto :goto_2
.end method

.method public final a(Lig;)Ljava/util/List;
    .locals 3
    .param p1, "info"    # Lig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lig;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/Session;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 107
    :try_start_0
    iget-object v1, p0, Lif;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    .local v0, "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v2, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return-object v1

    .line 111
    :cond_0
    :try_start_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    iget-object v2, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .end local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/Session;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 100
    invoke-static {p1}, Lig;->a(Ljava/lang/String;)Lig;

    move-result-object v0

    .line 101
    .local v0, "key":Lig;
    invoke-virtual {p0, v0}, Lif;->a(Lig;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final a(Lig;Lanet/channel/Session;)V
    .locals 3
    .param p1, "info"    # Lig;
    .param p2, "conn"    # Lanet/channel/Session;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 1084
    iget-object v1, p1, Lig;->a:Ljava/lang/String;

    .line 55
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lif;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 61
    :try_start_0
    iget-object v1, p0, Lif;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 62
    .local v0, "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-nez v0, :cond_2

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .restart local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    iget-object v1, p0, Lif;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 72
    iget-object v1, p0, Lif;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 69
    :cond_3
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    iget-object v1, p0, Lif;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .end local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lif;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public final b(Lig;Lanet/channel/Session;)V
    .locals 3
    .param p1, "info"    # Lig;
    .param p2, "conn"    # Lanet/channel/Session;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 77
    iget-object v1, p0, Lif;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 79
    :try_start_0
    iget-object v1, p0, Lif;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .local v0, "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-nez v0, :cond_0

    .line 89
    iget-object v1, p0, Lif;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p0, Lif;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p1}, Lig;->a(Lig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_1
    iget-object v1, p0, Lif;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .end local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lif;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public final c(Lig;Lanet/channel/Session;)Z
    .locals 4
    .param p1, "request"    # Lig;
    .param p2, "s"    # Lanet/channel/Session;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v2, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 228
    :try_start_0
    iget-object v2, p0, Lif;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .local v0, "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-nez v0, :cond_0

    .line 234
    iget-object v2, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return v1

    .line 232
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    .line 234
    :cond_1
    iget-object v2, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .end local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lif;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method
