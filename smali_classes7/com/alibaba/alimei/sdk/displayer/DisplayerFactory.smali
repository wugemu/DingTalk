.class public Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;
.super Ljava/lang/Object;
.source "DisplayerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->instances:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/sdk/displayer/Displayer;
    .locals 11
    .param p0, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alibaba/alimei/sdk/displayer/Displayer",
            "<+",
            "Lyd;",
            ">;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v8, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 29
    .local v6, "serviceName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 33
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->instances:Ljava/util/Map;

    .line 35
    .local v1, "container":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 36
    .local v3, "instance":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 39
    const/4 v7, 0x1

    :try_start_1
    new-array v4, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v4, v7

    .line 40
    .local v4, "instanceArgs":[Ljava/lang/Object;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-virtual {p1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 41
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 43
    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v4    # "instanceArgs":[Ljava/lang/Object;
    :cond_1
    :try_start_2
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/displayer/Displayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :goto_0
    monitor-exit v8

    return-object v5

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Faile to create Displayer instance."

    invoke-static {v7, v9, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    const/4 v5, 0x0

    goto :goto_0

    .line 28
    .end local v1    # "container":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "instance":Ljava/lang/Object;
    .end local v6    # "serviceName":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static releaseAllDisplayer()V
    .locals 4

    .prologue
    .line 58
    sget-object v3, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 61
    .local v2, "object":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/alimei/sdk/displayer/Displayer;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 62
    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/Displayer;

    .line 63
    .local v0, "displayer":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<*>;"
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->release()V

    goto :goto_0

    .line 68
    .end local v0    # "displayer":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<*>;"
    .end local v2    # "object":Ljava/lang/Object;
    :cond_1
    sget-object v3, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 69
    return-void
.end method

.method public static declared-synchronized releaseDisplayer(Ljava/lang/String;)V
    .locals 7
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v6, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->instances:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 79
    .local v4, "serviceName":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    sget-object v5, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->instances:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 81
    .local v3, "object":Ljava/lang/Object;
    instance-of v5, v3, Lcom/alibaba/alimei/sdk/displayer/Displayer;

    if-eqz v5, :cond_0

    .line 82
    move-object v0, v3

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/Displayer;

    move-object v1, v0

    .line 83
    .local v1, "displayer":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<*>;"
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v1    # "displayer":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<*>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "serviceName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 89
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v6

    return-void
.end method
