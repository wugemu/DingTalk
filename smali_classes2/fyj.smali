.class final Lfyj;
.super Ljava/lang/Object;
.source "CommitTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Z

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lfyj;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ScheduledFuture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lfyj;->a:Z

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfyj;->f:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2
    .param p1, "eventId"    # I
    .param p2, "interval"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, 0x493e0

    iput v0, p0, Lfyj;->b:I

    .line 102
    iput p1, p0, Lfyj;->c:I

    .line 103
    iput p2, p0, Lfyj;->b:I

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfyj;->d:J

    .line 105
    return-void
.end method

.method static a()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 37
    sget-boolean v9, Lfyj;->a:Z

    if-nez v9, :cond_2

    .line 38
    const-string/jumbo v9, "CommitTask"

    new-array v10, v13, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "init StatisticsAlarmEvent"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v9, Lfyj;->e:Ljava/util/Map;

    .line 40
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v3

    .line 41
    .local v3, "eventTypes":[Lcom/alibaba/appmonitor/event/EventType;
    move-object v0, v3

    .local v0, "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v2, v0, v5

    .line 42
    .local v2, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-virtual {v2}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 43
    invoke-virtual {v2}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v1

    .line 44
    .local v1, "eventId":I
    invoke-virtual {v2}, Lcom/alibaba/appmonitor/event/EventType;->getForegroundStatisticsInterval()I

    move-result v6

    .line 45
    .local v6, "interval":I
    new-instance v8, Lfyj;

    mul-int/lit16 v9, v6, 0x3e8

    invoke-direct {v8, v1, v9}, Lfyj;-><init>(II)V

    .line 46
    .local v8, "uploadTask":Lfyj;
    sget-object v9, Lfyj;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v9, Lfyj;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ScheduledFuture;

    .line 48
    .local v4, "future":Ljava/util/concurrent/ScheduledFuture;
    invoke-static {}, Lanh;->a()Lanh;

    iget v9, v8, Lfyj;->b:I

    int-to-long v10, v9

    invoke-static {v4, v8, v10, v11}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    .line 49
    sget-object v9, Lfyj;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .end local v1    # "eventId":I
    .end local v4    # "future":Ljava/util/concurrent/ScheduledFuture;
    .end local v6    # "interval":I
    .end local v8    # "uploadTask":Lfyj;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    :cond_1
    sput-boolean v13, Lfyj;->a:Z

    .line 54
    :cond_2
    return-void
.end method

.method static a(II)V
    .locals 12
    .param p0, "eventId"    # I
    .param p1, "statisticsInterval"    # I

    .prologue
    .line 70
    sget-object v7, Lfyj;->e:Ljava/util/Map;

    monitor-enter v7

    .line 71
    :try_start_0
    sget-object v6, Lfyj;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfyj;

    .line 72
    .local v3, "uploadTask":Lfyj;
    if-nez v3, :cond_1

    .line 73
    if-lez p1, :cond_0

    .line 74
    new-instance v3, Lfyj;

    .end local v3    # "uploadTask":Lfyj;
    mul-int/lit16 v6, p1, 0x3e8

    invoke-direct {v3, p0, v6}, Lfyj;-><init>(II)V

    .line 75
    .restart local v3    # "uploadTask":Lfyj;
    sget-object v6, Lfyj;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v6, Lfyj;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    .line 77
    .local v2, "future":Ljava/util/concurrent/ScheduledFuture;
    invoke-static {}, Lanh;->a()Lanh;

    iget v6, v3, Lfyj;->b:I

    int-to-long v8, v6

    invoke-static {v2, v3, v8, v9}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 78
    sget-object v6, Lfyj;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v2    # "future":Ljava/util/concurrent/ScheduledFuture;
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 81
    :cond_1
    if-lez p1, :cond_3

    .line 82
    iget v6, v3, Lfyj;->b:I

    mul-int/lit16 v8, p1, 0x3e8

    if-eq v6, v8, :cond_0

    .line 83
    mul-int/lit16 v6, p1, 0x3e8

    iput v6, v3, Lfyj;->b:I

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    .local v0, "currentTime":J
    iget v6, v3, Lfyj;->b:I

    int-to-long v8, v6

    iget-wide v10, v3, Lfyj;->d:J

    sub-long v10, v0, v10

    sub-long v4, v8, v10

    .line 86
    .local v4, "next":J
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gez v6, :cond_2

    .line 87
    const-wide/16 v4, 0x0

    .line 89
    :cond_2
    sget-object v6, Lfyj;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    .line 90
    .restart local v2    # "future":Ljava/util/concurrent/ScheduledFuture;
    invoke-static {}, Lanh;->a()Lanh;

    invoke-static {v2, v3, v4, v5}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    .line 91
    sget-object v6, Lfyj;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iput-wide v0, v3, Lfyj;->d:J

    goto :goto_0

    .line 98
    .end local v0    # "currentTime":J
    .end local v2    # "future":Ljava/util/concurrent/ScheduledFuture;
    .end local v3    # "uploadTask":Lfyj;
    .end local v4    # "next":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 95
    .restart local v3    # "uploadTask":Lfyj;
    :cond_3
    :try_start_1
    sget-object v6, Lfyj;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static b()V
    .locals 4

    .prologue
    .line 57
    sget-object v3, Lfyj;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 59
    .local v0, "eventId":Ljava/lang/Integer;
    sget-object v3, Lfyj;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    .line 60
    .local v1, "future":Ljava/util/concurrent/ScheduledFuture;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_0

    .line 64
    .end local v0    # "eventId":Ljava/lang/Integer;
    .end local v1    # "future":Ljava/util/concurrent/ScheduledFuture;
    :cond_1
    const/4 v3, 0x0

    sput-boolean v3, Lfyj;->a:Z

    .line 65
    const/4 v3, 0x0

    sput-object v3, Lfyj;->e:Ljava/util/Map;

    .line 66
    sget-object v3, Lfyj;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 67
    return-void
.end method

.method static c()V
    .locals 6

    .prologue
    .line 120
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 121
    .local v1, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v5

    invoke-virtual {v4, v5}, Lfyq;->a(I)V

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 109
    const-string/jumbo v1, "CommitTask"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "check&commit event"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lfyj;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v1

    iget v2, p0, Lfyj;->c:I

    invoke-virtual {v1, v2}, Lfyq;->a(I)V

    .line 111
    sget-object v1, Lfyj;->e:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lfyj;->d:J

    .line 113
    sget-object v1, Lfyj;->f:Ljava/util/HashMap;

    iget v2, p0, Lfyj;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 114
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;
    invoke-static {}, Lanh;->a()Lanh;

    iget v1, p0, Lfyj;->b:I

    int-to-long v2, v1

    invoke-static {v0, p0, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 115
    sget-object v1, Lfyj;->f:Ljava/util/HashMap;

    iget v2, p0, Lfyj;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v0    # "future":Ljava/util/concurrent/ScheduledFuture;
    :cond_0
    return-void
.end method
