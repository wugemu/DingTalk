.class public Lcom/taobao/weex/tracing/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;
    }
.end annotation


# static fields
.field private static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/taobao/weex/tracing/Stopwatch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private splits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private startMillis:J

.field private startNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/tracing/Stopwatch;->splits:Ljava/util/List;

    .line 127
    return-void
.end method

.method public static getProcessEvents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->tack()D

    .line 77
    sget-object v1, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/Stopwatch;

    iget-object v0, v1, Lcom/taobao/weex/tracing/Stopwatch;->splits:Ljava/util/List;

    .line 78
    .local v0, "existedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;>;"
    sget-object v1, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/Stopwatch;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/taobao/weex/tracing/Stopwatch;->splits:Ljava/util/List;

    .line 81
    .end local v0    # "existedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastTickStamp()J
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    sget-object v1, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/Stopwatch;

    iget-wide v2, v1, Lcom/taobao/weex/tracing/Stopwatch;->startMillis:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    return-wide v2

    .line 106
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 107
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static millisUntilNow(J)D
    .locals 2
    .param p0, "startNanos"    # J

    .prologue
    .line 124
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/taobao/weex/tracing/Stopwatch;->nanosToMillis(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nanosToMillis(J)D
    .locals 4
    .param p0, "nanos"    # J

    .prologue
    .line 120
    long-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static prepare()V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/taobao/weex/tracing/Stopwatch;

    invoke-direct {v1}, Lcom/taobao/weex/tracing/Stopwatch;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method

.method public static split(Ljava/lang/String;)V
    .locals 7
    .param p0, "fname"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 61
    :try_start_0
    new-instance v0, Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;

    invoke-direct {v0}, Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;-><init>()V

    .line 62
    .local v0, "event":Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;
    sget-object v6, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/tracing/Stopwatch;

    iget-wide v4, v6, Lcom/taobao/weex/tracing/Stopwatch;->startMillis:J

    .line 63
    .local v4, "start":J
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->tackAndTick()D

    move-result-wide v2

    .line 64
    .local v2, "millis":D
    iput-object p0, v0, Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;->fname:Ljava/lang/String;

    .line 65
    iput-wide v2, v0, Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;->duration:D

    .line 66
    iput-wide v4, v0, Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;->startMillis:J

    .line 67
    sget-object v6, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/tracing/Stopwatch;

    iget-object v6, v6, Lcom/taobao/weex/tracing/Stopwatch;->splits:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "event":Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;
    .end local v2    # "millis":D
    .end local v4    # "start":J
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static tack()D
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 86
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    :try_start_0
    sget-object v5, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/tracing/Stopwatch;

    iget-wide v2, v5, Lcom/taobao/weex/tracing/Stopwatch;->startNanos:J

    .line 89
    .local v2, "startNanos":J
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 90
    const-string/jumbo v5, "Stopwatch"

    const-string/jumbo v6, "Should call Stopwatch.tick() before Stopwatch.tack() called"

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 93
    .local v0, "nanos":J
    sget-object v5, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/tracing/Stopwatch;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/taobao/weex/tracing/Stopwatch;->startNanos:J

    .line 94
    invoke-static {v0, v1}, Lcom/taobao/weex/tracing/Stopwatch;->nanosToMillis(J)D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 99
    .end local v0    # "nanos":J
    :goto_0
    return-wide v6

    .line 95
    :catch_0
    move-exception v4

    .line 96
    .local v4, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    :cond_1
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public static tackAndTick()D
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->tack()D

    move-result-wide v0

    .line 115
    .local v0, "ms":D
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->tick()V

    .line 116
    return-wide v0
.end method

.method public static tick()V
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->prepare()V

    .line 47
    sget-object v1, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/Stopwatch;

    iget-wide v2, v1, Lcom/taobao/weex/tracing/Stopwatch;->startNanos:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 48
    const-string/jumbo v1, "Stopwatch"

    const-string/jumbo v2, "Stopwatch is not reset"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    sget-object v1, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/Stopwatch;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/taobao/weex/tracing/Stopwatch;->startNanos:J

    .line 51
    sget-object v1, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/Stopwatch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/taobao/weex/tracing/Stopwatch;->startMillis:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .local v0, "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 52
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 53
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
