.class public Lfyv;
.super Ljava/lang/Object;
.source "MetricValueSet.java"

# interfaces
.implements Lfzc;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfyt;",
            "Lfyp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lfyv;->a:Ljava/util/Map;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lfyp;
    .locals 10
    .param p1, "eventId"    # Ljava/lang/Integer;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "extraArg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lfyp;",
            ">;)",
            "Lfyp;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p5, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lfyp;>;"
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    const/4 v3, 0x0

    .line 32
    .local v3, "newMetricInstance":Z
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v5}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 33
    invoke-static {}, Lfyu;->a()Lfyu;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lfyu;->a(Ljava/lang/String;Ljava/lang/String;)Lfyt;

    move-result-object v2

    .line 38
    .local v2, "metric":Lfyt;
    :goto_0
    const/4 v1, 0x0

    .line 39
    .local v1, "event":Lfyp;
    if-eqz v2, :cond_0

    .line 40
    iget-object v4, p0, Lfyv;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    iget-object v4, p0, Lfyv;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "event":Lfyp;
    check-cast v1, Lfyp;

    .line 49
    .restart local v1    # "event":Lfyp;
    :goto_1
    if-eqz v3, :cond_0

    .line 50
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v4

    invoke-virtual {v4, v2}, Lfzb;->a(Lfzc;)V

    .line 53
    :cond_0
    return-object v1

    .line 35
    .end local v1    # "event":Lfyp;
    .end local v2    # "metric":Lfyt;
    :cond_1
    const/4 v3, 0x1

    .line 36
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v4

    const-class v5, Lfyt;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v7

    aput-object p3, v6, v8

    aput-object p4, v6, v9

    invoke-virtual {v4, v5, v6}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v2

    check-cast v2, Lfyt;

    .restart local v2    # "metric":Lfyt;
    goto :goto_0

    .line 43
    .restart local v1    # "event":Lfyp;
    :cond_2
    const-class v5, Lfyv;

    monitor-enter v5

    .line 44
    :try_start_0
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v4

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    invoke-virtual {v4, p5, v6}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lfyp;

    move-object v1, v0

    .line 45
    iget-object v4, p0, Lfyv;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/4 v3, 0x0

    .line 47
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public clean()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 58
    iget-object v2, p0, Lfyv;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfyp;

    .line 59
    .local v0, "event":Lfyp;
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfzb;->a(Lfzc;)V

    goto :goto_0

    .line 61
    .end local v0    # "event":Lfyp;
    :cond_0
    iget-object v2, p0, Lfyv;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 62
    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Lfyv;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lfyv;->a:Ljava/util/Map;

    .line 69
    :cond_0
    return-void
.end method
