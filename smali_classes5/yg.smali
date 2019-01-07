.class public final Lyg;
.super Ljava/lang/Object;
.source "ThreadMoniter.java"

# interfaces
.implements Lye;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyg$a;
    }
.end annotation


# static fields
.field private static d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lyg;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lyg;->a:Ljava/util/Map;

    .line 35
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lyg;->b:Ljava/util/Map;

    .line 48
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lyg;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    sget-object v2, Lyg;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 50
    sget-object v2, Lyg;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 51
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "ThreadMoniter has been create more than once"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .local v0, "dimensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "taskName"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string/jumbo v2, "callStack"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v1, "measures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "timeoutCnt"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, "task_excute_time_limit"

    invoke-static {v2, v3, v0, v1}, Lyn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lyg;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lyg;

    .prologue
    .line 23
    iget-object v0, p0, Lyg;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 87
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v4, p0, Lyg;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    iget-object v4, p0, Lyg;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v4, p0, Lyg;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Timer;

    .line 90
    .local v2, "timer":Ljava/util/Timer;
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "currentThread":Ljava/lang/Thread;
    .end local v2    # "timer":Ljava/util/Timer;
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "tr":Ljava/lang/Throwable;
    const-string/jumbo v4, "ThreadMoniter"

    invoke-static {v4, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    invoke-static {v3}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "errMsg":Ljava/lang/String;
    const-string/jumbo v4, "thread_monitor_error"

    const-string/jumbo v5, "2"

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6}, Lyo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 10
    .param p1, "monitorName"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 65
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 66
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v6, p0, Lyg;->a:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 67
    iget-object v6, p0, Lyg;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lyg;->a:Ljava/util/Map;

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v2, Lyg$a;

    invoke-direct {v2, p0, v0, v5, p1}, Lyg$a;-><init>(Lyg;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    .local v2, "task":Lyg$a;
    iput-wide p2, v2, Lyg$a;->a:J

    .line 71
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 72
    .local v3, "timer":Ljava/util/Timer;
    invoke-virtual {v3, v2, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 73
    iget-object v6, p0, Lyg;->b:Ljava/util/Map;

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "currentThread":Ljava/lang/Thread;
    .end local v2    # "task":Lyg$a;
    .end local v3    # "timer":Ljava/util/Timer;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v4

    .line 76
    .local v4, "tr":Ljava/lang/Throwable;
    const-string/jumbo v6, "ThreadMoniter"

    invoke-static {v6, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-static {v4}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "errMsg":Ljava/lang/String;
    const-string/jumbo v6, "thread_monitor_error"

    const-string/jumbo v7, "2"

    const/4 v8, 0x0

    invoke-static {v6, v7, v1, v8}, Lyo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
