.class public final Lfyq;
.super Ljava/lang/Object;
.source "EventRepo.java"


# static fields
.field private static c:Lfyq;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfyo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/appmonitor/model/UTDimensionValueSet;",
            "Lfyv;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lfyq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lfyq;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lfyq;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfyq;->g:Ljava/text/SimpleDateFormat;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfyq;->b:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfyq;->a:Ljava/util/Map;

    .line 69
    return-void
.end method

.method private a(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "commitTime"    # Ljava/lang/Long;
    .param p3, "access"    # Ljava/lang/String;
    .param p4, "subAccessType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v6, 0x3e8

    .line 72
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v2

    const-class v3, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v1

    check-cast v1, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    .line 74
    .local v1, "values":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ACCESS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 76
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 82
    :goto_0
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->USERID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 2377
    iget-object v3, v3, Lajw;->j:Ljava/lang/String;

    .line 82
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 83
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->USERNICK:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 3373
    iget-object v3, v3, Lajw;->h:Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 84
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 86
    if-nez p2, :cond_0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 89
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 90
    .local v0, "now":Ljava/util/Date;
    const-string/jumbo v2, "commitDay"

    iget-object v3, p0, Lfyq;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 91
    return-object v1

    .line 78
    .end local v0    # "now":Ljava/util/Date;
    :cond_1
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ACCESS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 1305
    iget-object v3, v3, Lajw;->c:Landroid/content/Context;

    .line 78
    invoke-static {v3}, Lalg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 79
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 2305
    iget-object v3, v3, Lajw;->c:Landroid/content/Context;

    .line 79
    invoke-static {v3}, Lalg;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_0
.end method

.method private a(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lfyp;
    .locals 7
    .param p1, "utDimensionValues"    # Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "extraArg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/appmonitor/model/UTDimensionValueSet;",
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 295
    .local p5, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lfyp;>;"
    invoke-static {p2}, Lane;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Lane;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getEventId()Ljava/lang/Integer;

    move-result-object v1

    .line 297
    .local v1, "eventId":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 299
    iget-object v3, p0, Lfyq;->b:Ljava/util/Map;

    monitor-enter v3

    .line 300
    :try_start_0
    iget-object v2, p0, Lfyq;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfyv;

    .line 301
    .local v0, "metricValues":Lfyv;
    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v2

    const-class v4, Lfyv;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    .end local v0    # "metricValues":Lfyv;
    check-cast v0, Lfyv;

    .line 303
    .restart local v0    # "metricValues":Lfyv;
    iget-object v2, p0, Lfyq;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v2, "EventRepo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "put in Map utDimensionValues"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 307
    invoke-virtual/range {v0 .. v5}, Lfyv;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lfyp;

    move-result-object v2

    .line 310
    .end local v0    # "metricValues":Lfyv;
    .end local v1    # "eventId":Ljava/lang/Integer;
    :goto_0
    return-object v2

    .line 306
    .restart local v1    # "eventId":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 310
    .end local v1    # "eventId":Ljava/lang/Integer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lfyq;
    .locals 2

    .prologue
    .line 60
    const-class v1, Lfyq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfyq;->c:Lfyq;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lfyq;

    invoke-direct {v0}, Lfyq;-><init>()V

    sput-object v0, Lfyq;->c:Lfyq;

    .line 63
    :cond_0
    sget-object v0, Lfyq;->c:Lfyq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {}, Lfyu;->a()Lfyu;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lfyu;->a(Ljava/lang/String;Ljava/lang/String;)Lfyt;

    move-result-object v0

    .line 274
    .local v0, "metric":Lfyt;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lfyt;->b()Ljava/lang/String;

    move-result-object v1

    .line 277
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alibaba/appmonitor/event/EventType;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 7
    .param p1, "eventType"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "counter"    # Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 314
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 315
    .local v0, "size":I
    invoke-virtual {p1}, Lcom/alibaba/appmonitor/event/EventType;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, " EVENT size:"

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p1}, Lcom/alibaba/appmonitor/event/EventType;->getTriggerCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 317
    const-string/jumbo v1, "EventRepo"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/appmonitor/event/EventType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, " event size exceed trigger count."

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v1

    invoke-virtual {p0, v1}, Lfyq;->a(I)V

    .line 320
    :cond_0
    return-void
.end method

.method private b(I)Ljava/util/Map;
    .locals 12
    .param p1, "eventId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/appmonitor/model/UTDimensionValueSet;",
            "Ljava/util/List",
            "<",
            "Lfyp;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 326
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v4, "uploadEventMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/util/List<Lfyp;>;>;"
    iget-object v7, p0, Lfyq;->b:Ljava/util/Map;

    monitor-enter v7

    .line 328
    :try_start_0
    iget-object v6, p0, Lfyq;->b:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 329
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyv;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 330
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 331
    .local v0, "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyv;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    .line 332
    .local v5, "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfyv;

    .line 333
    .local v3, "ms":Lfyv;
    invoke-virtual {v5}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getEventId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 334
    if-eqz v3, :cond_1

    .line 9024
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, v3, Lfyv;->a:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 336
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lfyp;>;"
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .end local v1    # "events":Ljava/util/List;, "Ljava/util/List<Lfyp;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 343
    .end local v0    # "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyv;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyv;>;>;"
    .end local v3    # "ms":Lfyv;
    .end local v5    # "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 338
    .restart local v0    # "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyv;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyv;>;>;"
    .restart local v3    # "ms":Lfyv;
    .restart local v5    # "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    :cond_1
    :try_start_1
    const-string/jumbo v6, "error"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "utDimensionValues"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v6, v8}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 343
    .end local v0    # "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyv;>;"
    .end local v3    # "ms":Lfyv;
    .end local v5    # "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9376
    const v6, 0xffdd

    if-ne v6, p1, :cond_3

    .line 9377
    iget-object v6, p0, Lfyq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 344
    :goto_2
    invoke-virtual {v6, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 345
    return-object v4

    .line 9378
    :cond_3
    const v6, 0xffde

    if-ne v6, p1, :cond_4

    .line 9379
    iget-object v6, p0, Lfyq;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_2

    .line 9380
    :cond_4
    const v6, 0xffdf

    if-ne v6, p1, :cond_5

    .line 9381
    iget-object v6, p0, Lfyq;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_2

    .line 9383
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "eventId"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lfyq;->b(I)Ljava/util/Map;

    move-result-object v0

    .line 366
    .local v0, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/util/List<Lfyp;>;>;"
    invoke-static {}, Lanh;->a()Lanh;

    new-instance v1, Lfyq$1;

    invoke-direct {v1, p0, v0}, Lfyq$1;-><init>(Lfyq;Ljava/util/Map;)V

    invoke-static {v1}, Lanh;->a(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 7
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .param p5, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 161
    .line 6168
    invoke-static {}, Lfyu;->a()Lfyu;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lfyu;->a(Ljava/lang/String;Ljava/lang/String;)Lfyt;

    move-result-object v0

    .line 6169
    if-eqz v0, :cond_4

    .line 6170
    invoke-virtual {v0}, Lfyt;->c()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6171
    invoke-virtual {v0}, Lfyt;->c()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->setConstantValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 6173
    :cond_0
    invoke-virtual {v0}, Lfyt;->d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6174
    invoke-virtual {v0}, Lfyt;->d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->setConstantValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 6177
    :cond_1
    invoke-direct {p0, p1, v4, v4, v4}, Lfyq;->a(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    move-result-object v1

    .line 6178
    const-class v5, Lfyr;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lfyq;->a(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lfyp;

    move-result-object v0

    check-cast v0, Lfyr;

    .line 6180
    if-eqz v0, :cond_2

    .line 6181
    invoke-virtual {v0, p5, p4}, Lfyr;->a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 6184
    :cond_2
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 6468
    iget-boolean v0, v0, Lajw;->q:Z

    .line 6184
    if-eqz v0, :cond_3

    .line 6185
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    const-class v2, Lfyr;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lfyr;

    .line 6186
    invoke-virtual {v0, p5, p4}, Lfyr;->a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 6187
    invoke-static {v1, v0}, Lfzj;->a(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyp;)V

    .line 6189
    :cond_3
    invoke-static {p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    iget-object v1, p0, Lfyq;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, v1}, Lfyq;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 6190
    :goto_0
    return-void

    .line 6191
    :cond_4
    const-string/jumbo v0, "metric is null,stat commit failed,please call AppMonitor.register() once before AppMonitor.STAT.commit()"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 95
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 11
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "value"    # D

    .prologue
    .line 142
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v10}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "value"    # D
    .param p7, "commitTime"    # Ljava/lang/Long;
    .param p8, "access"    # Ljava/lang/String;
    .param p9, "subAccessType"    # Ljava/lang/String;

    .prologue
    .line 147
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {p0, p1, v0, v1, v2}, Lfyq;->a(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    move-result-object v4

    .line 148
    .local v4, "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    const-class v8, Lfyn;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lfyq;->a(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lfyp;

    move-result-object v9

    check-cast v9, Lfyn;

    .line 149
    .local v9, "countEvent":Lfyn;
    if-eqz v9, :cond_0

    .line 150
    move-wide/from16 v0, p5

    move-object/from16 v2, p7

    invoke-virtual {v9, v0, v1, v2}, Lfyn;->a(DLjava/lang/Long;)V

    .line 152
    :cond_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 5468
    iget-boolean v3, v3, Lajw;->q:Z

    .line 152
    if-eqz v3, :cond_1

    .line 153
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v3

    const-class v5, Lfyn;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    invoke-virtual {v3, v5, v6}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v10

    check-cast v10, Lfyn;

    .line 154
    .local v10, "event":Lfyn;
    move-wide/from16 v0, p5

    move-object/from16 v2, p7

    invoke-virtual {v10, v0, v1, v2}, Lfyn;->a(DLjava/lang/Long;)V

    .line 155
    invoke-static {v4, v10}, Lfzj;->a(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyp;)V

    .line 157
    .end local v10    # "event":Lfyn;
    :cond_1
    invoke-static {p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v3

    iget-object v5, p0, Lfyq;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v3, v5}, Lfyq;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 158
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "commitTime"    # Ljava/lang/Long;
    .param p6, "access"    # Ljava/lang/String;
    .param p7, "subAccessType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 102
    invoke-direct {p0, p1, p5, p6, p7}, Lfyq;->a(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    move-result-object v1

    .line 103
    .local v1, "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    const-class v5, Lfym;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lfyq;->a(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lfyp;

    move-result-object v6

    check-cast v6, Lfym;

    .line 104
    .local v6, "alarmEvent":Lfym;
    if-eqz v6, :cond_0

    .line 105
    invoke-virtual {v6, p5}, Lfym;->a(Ljava/lang/Long;)V

    .line 107
    :cond_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 3468
    iget-boolean v0, v0, Lajw;->q:Z

    .line 107
    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    const-class v2, Lfym;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v0, v2, v3}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v7

    check-cast v7, Lfym;

    .line 109
    .local v7, "event":Lfym;
    invoke-virtual {v7, p5}, Lfym;->a(Ljava/lang/Long;)V

    .line 110
    invoke-static {v1, v7}, Lfzj;->a(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyp;)V

    .line 112
    .end local v7    # "event":Lfym;
    :cond_1
    invoke-static {p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    iget-object v2, p0, Lfyq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, v2}, Lfyq;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 113
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "errorCode"    # Ljava/lang/String;
    .param p6, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 119
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "errorCode"    # Ljava/lang/String;
    .param p6, "errorMsg"    # Ljava/lang/String;
    .param p7, "commitTime"    # Ljava/lang/Long;
    .param p8, "access"    # Ljava/lang/String;
    .param p9, "subAccessType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 123
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {p0, p1, v0, v1, v2}, Lfyq;->a(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    move-result-object v4

    .line 124
    .local v4, "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    const-class v8, Lfym;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lfyq;->a(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lfyp;

    move-result-object v9

    check-cast v9, Lfym;

    .line 125
    .local v9, "alarmEvent":Lfym;
    if-eqz v9, :cond_0

    .line 126
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lfym;->b(Ljava/lang/Long;)V

    .line 127
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v9, v0, v1}, Lfym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 4468
    iget-boolean v3, v3, Lajw;->q:Z

    .line 129
    if-eqz v3, :cond_1

    .line 130
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v3

    const-class v5, Lfym;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    invoke-virtual {v3, v5, v6}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v10

    check-cast v10, Lfym;

    .line 131
    .local v10, "event":Lfym;
    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lfym;->b(Ljava/lang/Long;)V

    .line 132
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v10, v0, v1}, Lfym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v4, v10}, Lfzj;->a(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lfyp;)V

    .line 135
    .end local v10    # "event":Lfym;
    :cond_1
    invoke-static {p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v3

    iget-object v5, p0, Lfyq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v3, v5}, Lfyq;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 136
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/Integer;
    .param p3, "module"    # Ljava/lang/String;
    .param p4, "monitorPoint"    # Ljava/lang/String;
    .param p5, "measureName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-static {}, Lfyu;->a()Lfyu;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Lfyu;->a(Ljava/lang/String;Ljava/lang/String;)Lfyt;

    move-result-object v2

    .line 210
    .local v2, "metric":Lfyt;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lfyt;->d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 211
    invoke-virtual {v2}, Lfyt;->d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->getMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v1

    .line 212
    .local v1, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    if-eqz v1, :cond_1

    .line 214
    const-class v4, Lfyo;

    monitor-enter v4

    .line 215
    :try_start_0
    iget-object v3, p0, Lfyq;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfyo;

    .line 216
    .local v0, "durationEvent":Lfyo;
    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v3

    const-class v5, Lfyo;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    invoke-virtual {v3, v5, v6}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    .end local v0    # "durationEvent":Lfyo;
    check-cast v0, Lfyo;

    .line 218
    .restart local v0    # "durationEvent":Lfyo;
    iget-object v3, p0, Lfyq;->a:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {v0, p5}, Lfyo;->a(Ljava/lang/String;)V

    .line 226
    .end local v0    # "durationEvent":Lfyo;
    .end local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :cond_1
    :goto_0
    return-void

    .line 220
    .restart local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 224
    .end local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :cond_2
    const-string/jumbo v3, "log discard!,metric is null,please call AppMonitor.register() once before Transaction.begin(measure)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;
    .param p3, "resetTransactionId"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 242
    iget-object v0, p0, Lfyq;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfyo;

    .line 243
    .local v6, "durationEvent":Lfyo;
    if-eqz v6, :cond_1

    .line 244
    invoke-virtual {v6, p2}, Lfyo;->b(Ljava/lang/String;)Z

    move-result v7

    .line 245
    .local v7, "isComplete":Z
    if-eqz v7, :cond_1

    .line 246
    iget-object v0, p0, Lfyq;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    if-eqz p3, :cond_0

    .line 248
    iget-object v0, v6, Lfyo;->e:Ljava/lang/String;

    iget-object v1, v6, Lfyo;->f:Ljava/lang/String;

    .line 7284
    invoke-static {}, Lfyu;->a()Lfyu;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lfyu;->a(Ljava/lang/String;Ljava/lang/String;)Lfyt;

    move-result-object v0

    .line 7285
    if-eqz v0, :cond_0

    .line 8091
    const/4 v1, 0x0

    iput-object v1, v0, Lfyt;->f:Ljava/lang/String;

    .line 250
    :cond_0
    iget v1, v6, Lfyo;->h:I

    iget-object v2, v6, Lfyo;->e:Ljava/lang/String;

    iget-object v3, v6, Lfyo;->f:Ljava/lang/String;

    .line 8098
    iget-object v4, v6, Lfyo;->a:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 8102
    iget-object v5, v6, Lfyo;->b:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-object v0, p0

    .line 250
    invoke-virtual/range {v0 .. v5}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 252
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    invoke-virtual {v0, v6}, Lfzb;->a(Lfzc;)V

    .line 255
    .end local v7    # "isComplete":Z
    :cond_1
    return-void
.end method
