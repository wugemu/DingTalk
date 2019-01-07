.class public final Lcom/alibaba/motu/crashreporter/CatcherManager;
.super Ljava/lang/Object;
.source "CatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/motu/crashreporter/CatcherManager$a;,
        Lcom/alibaba/motu/crashreporter/CatcherManager$b;,
        Lcom/alibaba/motu/crashreporter/CatcherManager$c;,
        Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;,
        Lcom/alibaba/motu/crashreporter/CatcherManager$d;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Lhtn;

.field d:Lhtd;

.field e:Lhtq;

.field f:Lhtm;

.field g:Lhtp;

.field public h:Lcom/alibaba/motu/crashreporter/CatcherManager$c;

.field i:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

.field j:Lcom/alibaba/motu/crashreporter/CatcherManager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lhtn;Lhtd;Lhtq;Lhtm;Lhtp;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "reporterContext"    # Lhtn;
    .param p4, "configuration"    # Lhtd;
    .param p5, "storageManager"    # Lhtq;
    .param p6, "reportBuilder"    # Lhtm;
    .param p7, "sendManager"    # Lhtp;

    .prologue
    const/4 v6, 0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p3, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->c:Lhtn;

    .line 52
    iput-object p1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->a:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->b:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->d:Lhtd;

    .line 55
    iput-object p5, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->e:Lhtq;

    .line 56
    iput-object p6, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->f:Lhtm;

    .line 57
    iput-object p7, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->g:Lhtp;

    .line 59
    const-string/jumbo v2, "Configuration.enableUncaughtExceptionCatch"

    invoke-virtual {p4, v2, v6}, Lhtd;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    .local v0, "start":J
    new-instance v2, Lcom/alibaba/motu/crashreporter/CatcherManager$c;

    invoke-direct {v2, p0}, Lcom/alibaba/motu/crashreporter/CatcherManager$c;-><init>(Lcom/alibaba/motu/crashreporter/CatcherManager;)V

    iput-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->h:Lcom/alibaba/motu/crashreporter/CatcherManager$c;

    .line 62
    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->h:Lcom/alibaba/motu/crashreporter/CatcherManager$c;

    new-instance v3, Lhtt;

    invoke-direct {v3}, Lhtt;-><init>()V

    invoke-virtual {v2, v3}, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->a(Lhtu;)Z

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CrashSDK UncaughtExceptionCatcher initialize complete elapsed time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .end local v0    # "start":J
    :cond_0
    const-string/jumbo v2, "Configuration.enableNativeExceptionCatch"

    invoke-virtual {p4, v2, v6}, Lhtd;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    .restart local v0    # "start":J
    new-instance v2, Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/motu/crashreporter/CatcherManager$b;-><init>(Lcom/alibaba/motu/crashreporter/CatcherManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->i:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CrashSDK UCNativeExceptionCatcher initialize complete elapsed time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .end local v0    # "start":J
    :cond_1
    const-string/jumbo v2, "Configuration.enableANRCatch"

    invoke-virtual {p4, v2, v6}, Lhtd;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 76
    .restart local v0    # "start":J
    new-instance v2, Lcom/alibaba/motu/crashreporter/CatcherManager$a;

    invoke-direct {v2, p0}, Lcom/alibaba/motu/crashreporter/CatcherManager$a;-><init>(Lcom/alibaba/motu/crashreporter/CatcherManager;)V

    iput-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->j:Lcom/alibaba/motu/crashreporter/CatcherManager$a;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CrashSDK ANRCatcher initialize complete elapsed time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .end local v0    # "start":J
    :cond_2
    const-string/jumbo v2, "Configuration.enableMainLoopBlockCatch"

    invoke-virtual {p4, v2, v6}, Lhtd;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .restart local v0    # "start":J
    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->c:Lhtn;

    const-string/jumbo v3, "APP_VERSION"

    invoke-virtual {v2, v3}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1685
    :try_start_0
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 1686
    new-instance v4, Lcom/alibaba/motu/crashreporter/CatcherManager$1;

    invoke-direct {v4, p0, p1, v2}, Lcom/alibaba/motu/crashreporter/CatcherManager$1;-><init>(Lcom/alibaba/motu/crashreporter/CatcherManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 1713
    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CrashSDK MainLoopCatcher initialize complete elapsed time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .end local v0    # "start":J
    :cond_3
    return-void

    .line 1714
    .restart local v0    # "start":J
    :catch_0
    move-exception v2

    .line 1715
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 126
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->i:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    .line 2301
    invoke-virtual {v0}, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->a()V

    .line 128
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager;->j:Lcom/alibaba/motu/crashreporter/CatcherManager$a;

    .line 2650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2651
    iget-boolean v1, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2653
    :try_start_0
    new-instance v1, Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;

    iget-object v4, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->a:Ljava/io/File;

    invoke-direct {v1, v0, v4}, Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;-><init>(Lcom/alibaba/motu/crashreporter/CatcherManager$a;Ljava/io/File;)V

    .line 2654
    invoke-virtual {v1}, Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;->a()V

    .line 2655
    iget-boolean v4, v1, Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;->f:Z

    if-eqz v4, :cond_0

    .line 2657
    new-instance v4, Lcom/alibaba/motu/crashreporter/CatcherManager$a$1;

    const-string/jumbo v5, "CrashReportANRCatch"

    invoke-direct {v4, v0, v5, v1}, Lcom/alibaba/motu/crashreporter/CatcherManager$a$1;-><init>(Lcom/alibaba/motu/crashreporter/CatcherManager$a;Ljava/lang/String;Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;)V

    .line 2670
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2671
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2677
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2678
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scaning anr complete elapsed time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    return-void

    .line 2673
    :catch_0
    move-exception v0

    .line 2674
    const-string/jumbo v1, "do scan traces file"

    invoke-static {v1, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
