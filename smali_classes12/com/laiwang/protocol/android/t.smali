.class public Lcom/laiwang/protocol/android/t;
.super Lcom/laiwang/protocol/android/n;
.source "SlaverLwpRequestConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/t$a;
    }
.end annotation


# instance fields
.field private l:Lcom/laiwang/protocol/android/t$a;

.field private m:Ljava/util/concurrent/locks/ReentrantLock;

.field private n:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

.field private o:Lcom/laiwang/protocol/android/w;

.field private p:Lcom/laiwang/protocol/android/ax;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bn;Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/ax;Lcom/laiwang/protocol/android/bu;)V
    .locals 2
    .param p1, "extension"    # Lcom/laiwang/protocol/android/Extension;
    .param p2, "scheduleEngine"    # Lcom/laiwang/protocol/android/bn;
    .param p3, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;
    .param p4, "transmission"    # Lcom/laiwang/protocol/android/w;
    .param p5, "pool"    # Lcom/laiwang/protocol/android/ax;
    .param p6, "readExecutor"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p3, p2, p1, p6}, Lcom/laiwang/protocol/android/n;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/bn;Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bu;)V

    .line 31
    iput-object v1, p0, Lcom/laiwang/protocol/android/t;->l:Lcom/laiwang/protocol/android/t$a;

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/t;->m:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    iput-object v1, p0, Lcom/laiwang/protocol/android/t;->n:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 40
    iput-object p4, p0, Lcom/laiwang/protocol/android/t;->o:Lcom/laiwang/protocol/android/w;

    .line 41
    iput-object p5, p0, Lcom/laiwang/protocol/android/t;->p:Lcom/laiwang/protocol/android/ax;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/t;)Lcom/laiwang/protocol/android/ax;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/t;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->p:Lcom/laiwang/protocol/android/ax;

    return-object v0
.end method

.method private b(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bd;
    .locals 7
    .param p1, "connection"    # Lcom/laiwang/protocol/android/m;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->k()Lcom/laiwang/protocol/android/k$d;

    move-result-object v2

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    if-eq v2, v3, :cond_0

    .line 61
    const-string/jumbo v2, "[slaver] poll slaver not connected >> %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->f()I

    move-result v2

    if-eq v2, v6, :cond_1

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->f()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 64
    const-string/jumbo v2, "[slaver] poll slaver not auth >> %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/t;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bf;->b()Lcom/laiwang/protocol/android/bd;

    move-result-object v0

    .line 68
    .local v0, "message":Lcom/laiwang/protocol/android/bd;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string/jumbo v1, "[slaver] poll slaver >> %s, send %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bd;->startLine()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/t;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->l:Lcom/laiwang/protocol/android/t$a;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/laiwang/protocol/android/t$a;

    const-string/jumbo v1, "slaver-idle"

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/android/t$a;-><init>(Lcom/laiwang/protocol/android/t;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/t;->l:Lcom/laiwang/protocol/android/t$a;

    .line 256
    const-string/jumbo v0, "[slaver] slave idle timer start"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->d:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->l:Lcom/laiwang/protocol/android/t$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 263
    :cond_1
    return-void

    .line 260
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/m;J)Lcom/laiwang/protocol/android/bd;
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/m;
    .param p2, "timeout"    # J

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 47
    .local v2, "out":Lcom/laiwang/protocol/android/bd;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/t;->b(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bd;

    move-result-object v2

    .line 48
    instance-of v3, v2, Lcom/laiwang/protocol/core/Request;

    if-eqz v3, :cond_0

    .line 49
    move-object v0, v2

    check-cast v0, Lcom/laiwang/protocol/core/Request;

    move-object v3, v0

    invoke-super {p0, v3, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/laiwang/protocol/android/t;->a(Lcom/laiwang/protocol/android/m;J)Lcom/laiwang/protocol/android/bd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 56
    :goto_0
    return-object v3

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[slaver] poll message error"

    invoke-static {v3, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v2

    .line 56
    goto :goto_0
.end method

.method public declared-synchronized a()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    new-instance v0, Lcom/laiwang/protocol/android/m;

    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->d:Lcom/laiwang/protocol/android/bu;

    new-instance v2, Lcom/laiwang/protocol/android/n$a;

    iget-object v3, p0, Lcom/laiwang/protocol/android/t;->g:Lcom/laiwang/protocol/android/Extension;

    invoke-direct {v2, v3}, Lcom/laiwang/protocol/android/n$a;-><init>(Lcom/laiwang/protocol/android/Extension;)V

    const v3, 0xa008

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/laiwang/protocol/android/t;->g:Lcom/laiwang/protocol/android/Extension;

    iget-object v10, p0, Lcom/laiwang/protocol/android/t;->e:Lcom/laiwang/protocol/android/bu;

    invoke-direct/range {v0 .. v10}, Lcom/laiwang/protocol/android/m;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/b;IZZZLandroid/content/Context;Landroid/app/PendingIntent;Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bu;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    .line 84
    const-string/jumbo v0, "[slaver] init slaver conn to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->f:Lcom/laiwang/protocol/android/bn;

    sget-object v1, Lcom/laiwang/protocol/android/aw;->b:Lcom/laiwang/protocol/android/aw;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bn;->a(Lcom/laiwang/protocol/android/aw;)Ljava/net/URI;

    move-result-object v11

    .line 88
    .local v11, "uri":Ljava/net/URI;
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, p0}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/k$c;)V

    .line 89
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v11}, Lcom/laiwang/protocol/android/m;->a(Ljava/net/URI;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    .end local v11    # "uri":Ljava/net/URI;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/laiwang/protocol/android/bd;)V
    .locals 5
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "[slaver] send %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/bd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 99
    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->l:Lcom/laiwang/protocol/android/t$a;

    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v1, "[slaver] send again, remove idle timer"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->l:Lcom/laiwang/protocol/android/t$a;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/t$a;->stop()V

    .line 102
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->l:Lcom/laiwang/protocol/android/t$a;

    .line 103
    .local v0, "timer":Lcom/laiwang/protocol/android/t$a;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/laiwang/protocol/android/t;->l:Lcom/laiwang/protocol/android/t$a;

    .line 104
    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->d:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v0    # "timer":Lcom/laiwang/protocol/android/t$a;
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 110
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/t;->a()V

    .line 113
    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/m;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    :cond_1
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/laiwang/protocol/android/t;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    if-ne p1, v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[slaver] slaver connect failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    invoke-super {p0, p1, p2}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V
    .locals 2
    .param p1, "connection"    # Lcom/laiwang/protocol/android/m;
    .param p2, "message"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V

    .line 157
    instance-of v0, p2, Lcom/laiwang/protocol/core/Response;

    if-eqz v0, :cond_0

    .line 158
    check-cast p2, Lcom/laiwang/protocol/core/Response;

    .end local p2    # "message":Lcom/laiwang/protocol/android/bd;
    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Response;->startLine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    iget v1, v1, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    if-eq v0, v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/laiwang/protocol/android/t;->i()V

    .line 161
    :cond_0
    return-void
.end method

.method public a(Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)V
    .locals 0
    .param p1, "type"    # Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/laiwang/protocol/android/t;->n:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 289
    return-void
.end method

.method public a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/core/Constants$Status;)V
    .locals 0
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p2, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p3, "status"    # Lcom/laiwang/protocol/core/Constants$Status;

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/core/Constants$Status;)V

    .line 166
    invoke-direct {p0}, Lcom/laiwang/protocol/android/t;->i()V

    .line 167
    return-void
.end method

.method public declared-synchronized a(Lcom/laiwang/protocol/network/Network$State;)V
    .locals 4
    .param p1, "state"    # Lcom/laiwang/protocol/network/Network$State;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->h:Lcom/laiwang/protocol/network/Network$State;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->h:Lcom/laiwang/protocol/network/Network$State;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/network/Network$State;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/network/Network$State;)V

    .line 137
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "[slaver] network change, close %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/laiwang/protocol/android/ab;->i:Lcom/laiwang/protocol/android/ab$i;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    sget-object v1, Lcom/laiwang/protocol/android/ab;->i:Lcom/laiwang/protocol/android/ab$i;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "[slaver] auth %s >> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/t;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/m;->b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    if-ne p1, v1, :cond_2

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[slaver] slaver disconnect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    invoke-super {p0, p1, p2}, Lcom/laiwang/protocol/android/n;->b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    .line 184
    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bf;->e()V

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    .line 186
    iget-object v1, p0, Lcom/laiwang/protocol/android/t;->o:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/w;->b()Lcom/laiwang/protocol/android/n$b;

    move-result-object v1

    sget-object v2, Lcom/laiwang/protocol/android/n$b;->d:Lcom/laiwang/protocol/android/n$b;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/t;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    const-string/jumbo v1, "[slaver] master authed, begin to slaver conn"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/t;->a()V

    .line 198
    :goto_0
    if-eqz p2, :cond_0

    sget-object v1, Lcom/laiwang/protocol/android/ab;->l:Lcom/laiwang/protocol/android/ab$f;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/laiwang/protocol/android/k;->b:Lcom/laiwang/protocol/android/k$b;

    if-eq p2, v1, :cond_0

    .line 199
    const-string/jumbo v1, "Disconnect"

    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->c()Ljava/net/URI;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/laiwang/protocol/android/i;->a(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    :cond_1
    :try_start_1
    const-string/jumbo v1, "[slaver] empty or master not auth, ignore slaver conn"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 194
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[slaver] slaver disconnect & retrieve "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    move-object v0, p1

    check-cast v0, Lcom/laiwang/protocol/android/m;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/laiwang/protocol/android/t;->a(Lcom/laiwang/protocol/android/m;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/io/IOException;)V
    .locals 4
    .param p1, "cause"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->b(Ljava/io/IOException;)V

    .line 146
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bf;->a()V

    .line 147
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "[slaver] close %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/m;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "[slaver] deviceAuth %s >> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/t;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    const-string/jumbo v0, "[slaver] device connected %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->d(Lcom/laiwang/protocol/android/k;)V

    .line 212
    return-void
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public f(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    const-string/jumbo v0, "[slaver] account connected %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->f(Lcom/laiwang/protocol/android/k;)V

    .line 218
    return-void
.end method

.method public g(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    const-string/jumbo v0, "[slaver] account inval %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->g(Lcom/laiwang/protocol/android/k;)V

    .line 224
    return-void
.end method

.method public h()Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->n:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    return-object v0
.end method

.method public h(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    const-string/jumbo v0, "[slaver] device connected %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->h(Lcom/laiwang/protocol/android/k;)V

    .line 230
    return-void
.end method

.method public i(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    const-string/jumbo v0, "[slaver] conn sick %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    new-instance v0, Lcom/laiwang/protocol/android/ab$k;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/ab$k;-><init>()V

    invoke-interface {p1, v0}, Lcom/laiwang/protocol/android/k;->a(Ljava/lang/Throwable;)V

    .line 236
    return-void
.end method

.method public j(Lcom/laiwang/protocol/android/k;)V
    .locals 2
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/laiwang/protocol/android/t;->g:Lcom/laiwang/protocol/android/Extension;

    sget-object v1, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;->SERVER_ERROR:Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/Extension;->deviceAuthResult(Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;)V

    .line 241
    return-void
.end method

.method public k(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 245
    return-void
.end method
