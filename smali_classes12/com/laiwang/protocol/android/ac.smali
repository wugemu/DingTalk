.class public Lcom/laiwang/protocol/android/ac;
.super Ljava/lang/Object;
.source "LwsKeepAlive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/ac$c;,
        Lcom/laiwang/protocol/android/ac$a;,
        Lcom/laiwang/protocol/android/ac$b;,
        Lcom/laiwang/protocol/android/ac$d;
    }
.end annotation


# static fields
.field private static b:Lcom/laiwang/protocol/android/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Landroid/app/AlarmManager;

.field private d:Landroid/content/Context;

.field private e:Landroid/app/PendingIntent;

.field private f:Lcom/laiwang/protocol/android/ac$c;

.field private g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:Landroid/os/Handler;

.field private i:Lcom/laiwang/protocol/android/ac$b;

.field private j:Lcom/laiwang/protocol/android/d;

.field private k:Lcom/laiwang/protocol/android/aa;

.field private l:Lcom/laiwang/protocol/android/ac$a;

.field private m:J

.field private n:Lcom/laiwang/protocol/android/bu;

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/laiwang/protocol/android/aa;Lcom/laiwang/protocol/android/bu;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKeepAliveIntent"    # Landroid/app/PendingIntent;
    .param p3, "lwsConnection"    # Lcom/laiwang/protocol/android/aa;
    .param p4, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "HEART_BEAT"

    iput-object v0, p0, Lcom/laiwang/protocol/android/ac;->a:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ac;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    iput-boolean v2, p0, Lcom/laiwang/protocol/android/ac;->o:Z

    .line 188
    iput-boolean v2, p0, Lcom/laiwang/protocol/android/ac;->p:Z

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ac;->h:Landroid/os/Handler;

    .line 62
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/laiwang/protocol/android/ac;->c:Landroid/app/AlarmManager;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/ac;->d:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "HEART_BEAT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/ac;->e:Landroid/app/PendingIntent;

    .line 65
    new-instance v0, Lcom/laiwang/protocol/android/d;

    invoke-direct {v0, p1, p2}, Lcom/laiwang/protocol/android/d;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ac;->j:Lcom/laiwang/protocol/android/d;

    .line 66
    new-instance v0, Lcom/laiwang/protocol/android/ac$d;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/ac$d;-><init>(Lcom/laiwang/protocol/android/ac;)V

    invoke-interface {p3, v0}, Lcom/laiwang/protocol/android/aa;->a(Lcom/laiwang/protocol/android/k$c;)V

    .line 67
    new-instance v0, Lcom/laiwang/protocol/android/ac$a;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/ac$a;-><init>(Lcom/laiwang/protocol/android/ac;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ac;->l:Lcom/laiwang/protocol/android/ac$a;

    .line 68
    invoke-static {}, Lcom/laiwang/protocol/android/Foreground;->get()Lcom/laiwang/protocol/android/Foreground;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/ac;->l:Lcom/laiwang/protocol/android/ac$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/Foreground;->registerListener(Lcom/laiwang/protocol/android/Foreground$Listener;)V

    .line 69
    iput-object p3, p0, Lcom/laiwang/protocol/android/ac;->k:Lcom/laiwang/protocol/android/aa;

    .line 70
    iput-object p4, p0, Lcom/laiwang/protocol/android/ac;->n:Lcom/laiwang/protocol/android/bu;

    .line 71
    return-void
.end method

.method private a(I)V
    .locals 10
    .param p1, "preHBResult"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 219
    :try_start_0
    sget-object v5, Lcom/laiwang/protocol/android/ac;->b:Lcom/laiwang/protocol/android/h;

    if-nez v5, :cond_0

    .line 220
    new-instance v5, Lcom/laiwang/protocol/android/h;

    iget-object v6, p0, Lcom/laiwang/protocol/android/ac;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/laiwang/protocol/android/h;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/laiwang/protocol/android/ac;->b:Lcom/laiwang/protocol/android/h;

    .line 222
    :cond_0
    if-ne p1, v7, :cond_3

    .line 223
    sget-object v5, Lcom/laiwang/protocol/android/ac;->b:Lcom/laiwang/protocol/android/h;

    invoke-virtual {v5}, Lcom/laiwang/protocol/android/h;->b()I

    move-result v4

    .line 225
    .local v4, "timeInterval":I
    sget-object v5, Lcom/laiwang/protocol/android/ac;->b:Lcom/laiwang/protocol/android/h;

    invoke-virtual {v5}, Lcom/laiwang/protocol/android/h;->a()[I

    move-result-object v0

    .line 226
    .local v0, "bestEvent":[I
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/laiwang/protocol/android/ac;->f:Lcom/laiwang/protocol/android/ac$c;

    if-eqz v5, :cond_1

    .line 227
    iget-object v5, p0, Lcom/laiwang/protocol/android/ac;->f:Lcom/laiwang/protocol/android/ac$c;

    const/4 v6, 0x0

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v0, v7

    invoke-interface {v5, v6, v7}, Lcom/laiwang/protocol/android/ac$c;->a(II)V

    .line 235
    .end local v0    # "bestEvent":[I
    :cond_1
    :goto_0
    const-string/jumbo v5, "[heartbeat] next heartbeat interval %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v8, v4

    add-long v2, v6, v8

    .line 238
    .local v2, "nextHeatBeatTime":J
    const/4 v5, -0x2

    if-eq p1, v5, :cond_2

    .line 239
    invoke-direct {p0, v2, v3}, Lcom/laiwang/protocol/android/ac;->a(J)V

    .line 242
    :cond_2
    iget-object v5, p0, Lcom/laiwang/protocol/android/ac;->j:Lcom/laiwang/protocol/android/d;

    invoke-virtual {v5, v2, v3, v4}, Lcom/laiwang/protocol/android/d;->a(JI)V

    .line 248
    .end local v2    # "nextHeatBeatTime":J
    .end local v4    # "timeInterval":I
    :goto_1
    return-void

    .line 230
    :cond_3
    const/4 v5, -0x1

    if-ne p1, v5, :cond_4

    .line 231
    sget-object v5, Lcom/laiwang/protocol/android/ac;->b:Lcom/laiwang/protocol/android/h;

    invoke-virtual {v5}, Lcom/laiwang/protocol/android/h;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .restart local v4    # "timeInterval":I
    goto :goto_0

    .line 233
    .end local v4    # "timeInterval":I
    :cond_4
    const v4, 0x493e0

    .restart local v4    # "timeInterval":I
    goto :goto_0

    .line 244
    .end local v4    # "timeInterval":I
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "[heartbeat]] start error"

    invoke-static {v5, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private declared-synchronized a(J)V
    .locals 7
    .param p1, "utc_time"    # J

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/ac;->i:Lcom/laiwang/protocol/android/ac$b;

    if-nez v2, :cond_0

    .line 257
    new-instance v2, Lcom/laiwang/protocol/android/ac$b;

    invoke-direct {v2, p0}, Lcom/laiwang/protocol/android/ac$b;-><init>(Lcom/laiwang/protocol/android/ac;)V

    iput-object v2, p0, Lcom/laiwang/protocol/android/ac;->i:Lcom/laiwang/protocol/android/ac$b;

    .line 258
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "HEART_BEAT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/ac;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/laiwang/protocol/android/ac;->i:Lcom/laiwang/protocol/android/ac$b;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    const-string/jumbo v2, "[heartbeat]] reg receiver %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/laiwang/protocol/android/ac;->i:Lcom/laiwang/protocol/android/ac$b;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/laiwang/protocol/android/ac;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/laiwang/protocol/android/ac;->i:Lcom/laiwang/protocol/android/ac$b;

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 269
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 270
    iget-object v2, p0, Lcom/laiwang/protocol/android/ac;->c:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/laiwang/protocol/android/ac;->e:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :goto_1
    monitor-exit p0

    return-void

    .line 263
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v2, "[heartbeat]] reg receiver err"

    invoke-static {v2, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 273
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/laiwang/protocol/android/ac;->c:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/laiwang/protocol/android/ac;->e:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 274
    :catch_1
    move-exception v0

    .line 275
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v2, "[heartbeat]] set alarm err"

    invoke-static {v2, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/ac;I)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ac;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/ac;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/ac;)Z
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/ac;->p:Z

    return v0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/ac;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ac;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/laiwang/protocol/android/ac;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/ac;)Z
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/ac;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/ac;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic d(Lcom/laiwang/protocol/android/ac;)Lcom/laiwang/protocol/android/aa;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac;->k:Lcom/laiwang/protocol/android/aa;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac;->c:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/laiwang/protocol/android/ac;->e:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[heartbeat] alarm cancel err"

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/laiwang/protocol/android/ac;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/laiwang/protocol/android/ac;)Lcom/laiwang/protocol/android/bu;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac;->n:Lcom/laiwang/protocol/android/bu;

    return-object v0
.end method

.method static synthetic g(Lcom/laiwang/protocol/android/ac;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/laiwang/protocol/android/ac;->d()V

    return-void
.end method

.method static synthetic h(Lcom/laiwang/protocol/android/ac;)J
    .locals 2
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/laiwang/protocol/android/ac;->m:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "[heartbeat] start keepalive & ping"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/ac;->o:Z

    .line 146
    invoke-static {}, Lcom/laiwang/protocol/android/Foreground;->get()Lcom/laiwang/protocol/android/Foreground;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/ac;->l:Lcom/laiwang/protocol/android/ac$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/Foreground;->registerListener(Lcom/laiwang/protocol/android/Foreground$Listener;)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/laiwang/protocol/android/ac;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/laiwang/protocol/android/ac$c;)V
    .locals 0
    .param p1, "listener"    # Lcom/laiwang/protocol/android/ac$c;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/laiwang/protocol/android/ac;->f:Lcom/laiwang/protocol/android/ac$c;

    .line 153
    return-void
.end method

.method protected a(Z)V
    .locals 2
    .param p1, "normal"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/ac;->p:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/ac;->p:Z

    .line 198
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/laiwang/protocol/android/ac;->m:J

    .line 200
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/ac;->o:Z

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac;->k:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/aa;->d()V

    .line 205
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/laiwang/protocol/android/ac;->f:Lcom/laiwang/protocol/android/ac$c;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac;->f:Lcom/laiwang/protocol/android/ac$c;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/ac$c;->a()V

    .line 207
    :cond_1
    return-void

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac;->k:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/aa;->e()Lcom/laiwang/protocol/core/Request;

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/laiwang/protocol/android/ac;->o:Z

    .line 161
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac;->i:Lcom/laiwang/protocol/android/ac$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 163
    :try_start_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/laiwang/protocol/android/ac;->i:Lcom/laiwang/protocol/android/ac$b;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/laiwang/protocol/android/ac;->i:Lcom/laiwang/protocol/android/ac$b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/laiwang/protocol/android/ac;->d()V

    .line 170
    iget-object v1, p0, Lcom/laiwang/protocol/android/ac;->j:Lcom/laiwang/protocol/android/d;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/d;->a()V

    .line 171
    invoke-static {}, Lcom/laiwang/protocol/android/Foreground;->get()Lcom/laiwang/protocol/android/Foreground;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/ac;->l:Lcom/laiwang/protocol/android/ac$a;

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/Foreground;->unregisterListener(Lcom/laiwang/protocol/android/Foreground$Listener;)V

    .line 172
    const-string/jumbo v1, "[heartbeat] stop keepalive %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/laiwang/protocol/android/ac;->i:Lcom/laiwang/protocol/android/ac$b;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/laiwang/protocol/android/ac;->i:Lcom/laiwang/protocol/android/ac$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "[heartbeat] unregister receiver err"

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/ac;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
