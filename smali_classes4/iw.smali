.class public final Liw;
.super Ljava/lang/Object;
.source "DefaultHeartbeatImpl.java"

# interfaces
.implements Lix;
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:J

.field private final b:Lanet/channel/Session;

.field private volatile c:J

.field private volatile d:Z

.field private e:I


# direct methods
.method public constructor <init>(Lanet/channel/Session;)V
    .locals 4
    .param p1, "session"    # Lanet/channel/Session;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide v2, p0, Liw;->a:J

    .line 21
    iput-wide v2, p0, Liw;->c:J

    .line 22
    iput-boolean v0, p0, Liw;->d:Z

    .line 23
    iput v0, p0, Liw;->e:I

    .line 26
    iput-object p1, p0, Liw;->b:Lanet/channel/Session;

    .line 27
    instance-of v0, p1, Ljo;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 28
    check-cast v0, Ljo;

    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/SessionCenter;->getDataChannelCb()Lhz;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljo;->a(Lhz;)V

    .line 30
    :cond_0
    invoke-virtual {p1}, Lanet/channel/Session;->j()Ljy;

    move-result-object v0

    invoke-interface {v0}, Ljy;->getHeartbeat()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Liw;->a:J

    .line 31
    return-void
.end method

.method private b(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 95
    const-wide/16 v2, 0x32

    add-long/2addr v2, p1

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v2, v3, v1}, Lkq;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "awcn.DefaultHeartbeatImpl"

    const-string/jumbo v2, "Submit heartbeat task to thread pool failed."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 35
    const-string/jumbo v2, "awcn.DefaultHeartbeatImpl"

    const-string/jumbo v3, "heartbeat start"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "session"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Liw;->b:Lanet/channel/Session;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1061
    iget-wide v0, p0, Liw;->a:J

    .line 37
    .local v0, "interval":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Liw;->c:J

    .line 38
    invoke-direct {p0, v0, v1}, Liw;->b(J)V

    .line 39
    return-void
.end method

.method public final a(J)V
    .locals 9
    .param p1, "nextHeartbeat"    # J

    .prologue
    const/4 v6, 0x1

    .line 51
    iget-wide v0, p0, Liw;->c:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 52
    invoke-static {v6}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "awcn.DefaultHeartbeatImpl"

    const-string/jumbo v1, "setNextHeartbeat"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "session"

    aput-object v5, v3, v4

    iget-object v4, p0, Liw;->b:Lanet/channel/Session;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "offset"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v6, p0, Liw;->c:J

    sub-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    iput-wide p1, p0, Liw;->c:J

    .line 57
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 43
    const-string/jumbo v0, "awcn.DefaultHeartbeatImpl"

    const-string/jumbo v1, "heartbeat stop"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "session"

    aput-object v5, v3, v4

    iget-object v4, p0, Liw;->b:Lanet/channel/Session;

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iput-boolean v6, p0, Liw;->d:Z

    .line 45
    return-void
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 61
    iget-wide v0, p0, Liw;->a:J

    return-wide v0
.end method

.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 66
    iget-boolean v4, p0, Liw;->d:Z

    if-eqz v4, :cond_0

    .line 91
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    .local v2, "now":J
    iget-wide v4, p0, Liw;->c:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 72
    iget-wide v4, p0, Liw;->c:J

    sub-long/2addr v4, v2

    invoke-direct {p0, v4, v5}, Liw;->b(J)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {}, Lic;->j()Z

    move-result v0

    .line 77
    .local v0, "isAppBackground":Z
    if-nez v0, :cond_4

    .line 78
    invoke-static {v8}, Lanet/channel/util/ALog;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    const-string/jumbo v4, "awcn.DefaultHeartbeatImpl"

    const-string/jumbo v5, "heartbeat"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "session"

    aput-object v7, v6, v1

    iget-object v7, p0, Liw;->b:Lanet/channel/Session;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v9, v6}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_2
    iget-object v4, p0, Liw;->b:Lanet/channel/Session;

    invoke-virtual {v4, v8}, Lanet/channel/Session;->c(Z)V

    .line 88
    if-eqz v0, :cond_3

    iget v1, p0, Liw;->e:I

    add-int/lit8 v1, v1, 0x1

    :cond_3
    iput v1, p0, Liw;->e:I

    .line 2061
    iget-wide v4, p0, Liw;->a:J

    .line 89
    add-long/2addr v4, v2

    iput-wide v4, p0, Liw;->c:J

    .line 90
    iget-wide v4, p0, Liw;->a:J

    invoke-direct {p0, v4, v5}, Liw;->b(J)V

    goto :goto_0

    .line 83
    :cond_4
    const-string/jumbo v4, "awcn.DefaultHeartbeatImpl"

    const-string/jumbo v5, "close session in background"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v9, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v4, p0, Liw;->b:Lanet/channel/Session;

    invoke-virtual {v4, v1}, Lanet/channel/Session;->b(Z)V

    goto :goto_0
.end method
