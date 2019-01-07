.class public final Lhvg;
.super Ljava/lang/Object;
.source "MainLooperHandler.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

.field private d:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/motu/watch/WatchConfig;Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "watchConfig"    # Lcom/alibaba/motu/watch/WatchConfig;
    .param p3, "applicationIdleMonitor"    # Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v4, p0, Lhvg;->c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    .line 30
    iput-object v4, p0, Lhvg;->d:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    .line 31
    iput-object v4, p0, Lhvg;->a:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "_controller_path"

    iput-object v0, p0, Lhvg;->e:Ljava/lang/String;

    .line 33
    iput-object v4, p0, Lhvg;->b:Ljava/lang/String;

    .line 41
    iget-boolean v0, p2, Lcom/alibaba/motu/watch/WatchConfig;->isBetaVersion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/alibaba/motu/watch/WatchConfig;->isCloseMainLooperSampling:Z

    if-eqz v0, :cond_2

    .line 43
    :cond_0
    new-instance v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    iget-object v1, p2, Lcom/alibaba/motu/watch/WatchConfig;->enabeMainLooperTimeoutInterval:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;-><init>(J)V

    iput-object v0, p0, Lhvg;->c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    .line 44
    iget-boolean v0, p2, Lcom/alibaba/motu/watch/WatchConfig;->enableWatchMainThreadOnly:Z

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lhvg;->c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    .line 1129
    iput-object v4, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->b:Ljava/lang/String;

    .line 47
    :cond_1
    iget-object v0, p0, Lhvg;->c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    iget-boolean v1, p2, Lcom/alibaba/motu/watch/WatchConfig;->isBetaVersion:Z

    iput-boolean v1, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->g:Z

    .line 48
    iget-object v0, p0, Lhvg;->c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    iget-boolean v1, p2, Lcom/alibaba/motu/watch/WatchConfig;->isCloseMainLooperSampling:Z

    iput-boolean v1, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->f:Z

    .line 49
    iget-object v0, p0, Lhvg;->c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    .line 2032
    iput-object v0, p3, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    .line 50
    iget-object v0, p0, Lhvg;->c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    iput-object p3, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->h:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    .line 52
    iget-object v0, p0, Lhvg;->c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    new-instance v1, Lhvg$1;

    invoke-direct {v1, p0, p1}, Lhvg$1;-><init>(Lhvg;Landroid/content/Context;)V

    .line 2094
    iput-object v1, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->a:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$b;

    .line 52
    invoke-virtual {v0}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->start()V

    .line 126
    :cond_2
    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .param p1, "listener"    # Ljava/util/List;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 138
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 139
    .local v6, "o":Ljava/lang/Object;
    instance-of v10, v6, Lhvc;

    if-eqz v10, :cond_3

    .line 140
    move-object v0, v6

    check-cast v0, Lhvc;

    move-object v5, v0

    .line 143
    .local v5, "listenerObject":Lhvc;
    invoke-interface {v5}, Lhvc;->a()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 147
    .local v8, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    const-string/jumbo v10, "_controller_path"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 148
    .local v7, "result":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 149
    iput-object v7, p0, Lhvg;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .end local v7    # "result":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 156
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 167
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "listenerObject":Lhvc;
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "call back listener err"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 151
    .restart local v5    # "listenerObject":Lhvc;
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v8    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 152
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "listenerObject":Lhvc;
    .end local v8    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
