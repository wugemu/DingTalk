.class public Lcom/laiwang/protocol/android/e;
.super Ljava/lang/Object;
.source "ConnectionKeepAlive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/e$b;,
        Lcom/laiwang/protocol/android/e$a;,
        Lcom/laiwang/protocol/android/e$c;
    }
.end annotation


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private final b:Ljava/lang/String;

.field private c:Lcom/laiwang/protocol/android/w;

.field private d:Landroid/app/AlarmManager;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/PendingIntent;

.field private g:Lcom/laiwang/protocol/android/g;

.field private h:Landroid/os/Handler;

.field private i:Lcom/laiwang/protocol/android/e$a;

.field private j:Lcom/laiwang/protocol/android/e$b;

.field private k:Lcom/laiwang/protocol/android/d;

.field private l:Lcom/laiwang/protocol/android/bu;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/w;Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "transmission"    # Lcom/laiwang/protocol/android/w;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appKeepAliveIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "CONNECT_EVENT"

    iput-object v0, p0, Lcom/laiwang/protocol/android/e;->b:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/laiwang/protocol/android/e$1;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/e$1;-><init>(Lcom/laiwang/protocol/android/e;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/e;->a:Landroid/content/BroadcastReceiver;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/e;->h:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/laiwang/protocol/android/e;->c:Lcom/laiwang/protocol/android/w;

    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/e;->e:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/laiwang/protocol/android/bt;

    const-string/jumbo v1, "conn-keep-alive"

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/android/bt;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/e;->l:Lcom/laiwang/protocol/android/bu;

    .line 63
    const-string/jumbo v0, "alarm"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/laiwang/protocol/android/e;->d:Landroid/app/AlarmManager;

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "CONNECT_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/e;->f:Landroid/app/PendingIntent;

    .line 65
    new-instance v0, Lcom/laiwang/protocol/android/e$c;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/e$c;-><init>(Lcom/laiwang/protocol/android/e;)V

    invoke-virtual {p1, v0}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 66
    new-instance v0, Lcom/laiwang/protocol/android/e$a;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/e$a;-><init>(Lcom/laiwang/protocol/android/e;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/e;->i:Lcom/laiwang/protocol/android/e$a;

    .line 67
    new-instance v0, Lcom/laiwang/protocol/android/d;

    invoke-direct {v0, p2, p3}, Lcom/laiwang/protocol/android/d;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/e;->k:Lcom/laiwang/protocol/android/d;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/e;)Lcom/laiwang/protocol/android/w;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/e;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/laiwang/protocol/android/e;->c:Lcom/laiwang/protocol/android/w;

    return-object v0
.end method

.method private a(J)V
    .locals 5
    .param p1, "utc_time"    # J

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->j:Lcom/laiwang/protocol/android/e$b;

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Lcom/laiwang/protocol/android/e$b;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/e$b;-><init>(Lcom/laiwang/protocol/android/e;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/e;->j:Lcom/laiwang/protocol/android/e$b;

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "CONNECT_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/laiwang/protocol/android/e;->j:Lcom/laiwang/protocol/android/e$b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/laiwang/protocol/android/e;->j:Lcom/laiwang/protocol/android/e$b;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 227
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 228
    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->d:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/laiwang/protocol/android/e;->f:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3, p1, p2, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->d:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/laiwang/protocol/android/e;->f:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/e;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/e;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/e;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 10
    .param p1, "random"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    :try_start_0
    iget-object v5, p0, Lcom/laiwang/protocol/android/e;->g:Lcom/laiwang/protocol/android/g;

    if-nez v5, :cond_0

    .line 183
    new-instance v5, Lcom/laiwang/protocol/android/g;

    iget-object v6, p0, Lcom/laiwang/protocol/android/e;->e:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/laiwang/protocol/android/g;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/laiwang/protocol/android/e;->g:Lcom/laiwang/protocol/android/g;

    .line 184
    :cond_0
    iget-object v5, p0, Lcom/laiwang/protocol/android/e;->g:Lcom/laiwang/protocol/android/g;

    invoke-virtual {v5}, Lcom/laiwang/protocol/android/g;->b()I

    move-result v4

    .line 185
    .local v4, "timeInterval":I
    if-eqz p1, :cond_1

    .line 186
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 187
    .local v1, "randomCreator":Ljava/util/Random;
    const/16 v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 189
    .end local v1    # "randomCreator":Ljava/util/Random;
    :cond_1
    const-string/jumbo v5, "[build_connect] next connect interval %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v8, v4

    add-long v2, v6, v8

    .line 191
    .local v2, "nextConnectTime":J
    invoke-direct {p0, v2, v3}, Lcom/laiwang/protocol/android/e;->a(J)V

    .line 192
    iget-object v5, p0, Lcom/laiwang/protocol/android/e;->k:Lcom/laiwang/protocol/android/d;

    invoke-virtual {v5, v2, v3, v4}, Lcom/laiwang/protocol/android/d;->a(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v2    # "nextConnectTime":J
    .end local v4    # "timeInterval":I
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "[build_connect] start err"

    invoke-static {v5, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/e;)Lcom/laiwang/protocol/android/bu;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/e;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/laiwang/protocol/android/e;->l:Lcom/laiwang/protocol/android/bu;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->d:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/laiwang/protocol/android/e;->f:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[build_connect] alarm cancel err"

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/e;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/e;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/laiwang/protocol/android/e;->d()V

    return-void
.end method

.method static synthetic d(Lcom/laiwang/protocol/android/e;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/e;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/laiwang/protocol/android/e;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    const-string/jumbo v0, "[build_connect] cancelNextConnect"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/laiwang/protocol/android/e;->g:Lcom/laiwang/protocol/android/g;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/laiwang/protocol/android/g;

    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/android/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/e;->g:Lcom/laiwang/protocol/android/g;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/e;->g:Lcom/laiwang/protocol/android/g;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/g;->a()V

    .line 208
    invoke-direct {p0}, Lcom/laiwang/protocol/android/e;->c()V

    .line 209
    return-void
.end method

.method static synthetic e(Lcom/laiwang/protocol/android/e;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/e;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/laiwang/protocol/android/e;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    const-string/jumbo v1, "[build_connect] status %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/laiwang/protocol/android/e;->c:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/w;->b()Lcom/laiwang/protocol/android/n$b;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->c:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/w;->b()Lcom/laiwang/protocol/android/n$b;

    move-result-object v1

    sget-object v2, Lcom/laiwang/protocol/android/n$b;->a:Lcom/laiwang/protocol/android/n$b;

    if-ne v1, v2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->l:Lcom/laiwang/protocol/android/bu;

    new-instance v2, Lcom/laiwang/protocol/android/e$2;

    const-string/jumbo v3, "keep-alive-start"

    invoke-direct {v2, p0, v3}, Lcom/laiwang/protocol/android/e$2;-><init>(Lcom/laiwang/protocol/android/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 87
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/laiwang/protocol/android/e;->a:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    invoke-static {}, Lcom/laiwang/protocol/android/Foreground;->get()Lcom/laiwang/protocol/android/Foreground;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/e;->i:Lcom/laiwang/protocol/android/e$a;

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/Foreground;->registerListener(Lcom/laiwang/protocol/android/Foreground$Listener;)V

    .line 92
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[build_connect] init network change receiver err"

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lcom/laiwang/protocol/android/e;->j:Lcom/laiwang/protocol/android/e$b;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/laiwang/protocol/android/e;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->j:Lcom/laiwang/protocol/android/e$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    iget-object v0, p0, Lcom/laiwang/protocol/android/e;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->j:Lcom/laiwang/protocol/android/e$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    :cond_0
    invoke-static {}, Lcom/laiwang/protocol/android/Foreground;->get()Lcom/laiwang/protocol/android/Foreground;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/e;->i:Lcom/laiwang/protocol/android/e$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/Foreground;->unregisterListener(Lcom/laiwang/protocol/android/Foreground$Listener;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laiwang/protocol/android/e;->j:Lcom/laiwang/protocol/android/e$b;

    .line 104
    invoke-direct {p0}, Lcom/laiwang/protocol/android/e;->c()V

    .line 105
    iget-object v0, p0, Lcom/laiwang/protocol/android/e;->k:Lcom/laiwang/protocol/android/d;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/d;->a()V

    .line 106
    const-string/jumbo v0, "[build_connect] stop conn keepalive"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 107
    return-void
.end method
