.class public final Lken;
.super Ljava/lang/Object;

# interfaces
.implements Lkdh;


# instance fields
.field a:Lcom/xiaomi/push/service/XMPushService;

.field b:Lkde;

.field c:Ljava/lang/Exception;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lken;->f:J

    iput-wide v0, p0, Lken;->g:J

    iput-wide v0, p0, Lken;->h:J

    iput-wide v0, p0, Lken;->i:J

    iput-wide v0, p0, Lken;->j:J

    iput-wide v0, p0, Lken;->k:J

    iput-object p1, p0, Lken;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {p1}, Ljvn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lken;->e:Ljava/lang/String;

    invoke-direct {p0}, Lken;->b()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    iput-wide v2, p0, Lken;->k:J

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lken;->j:J

    return-void
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lken;->g:J

    iput-wide v0, p0, Lken;->i:J

    iput-wide v0, p0, Lken;->f:J

    iput-wide v0, p0, Lken;->h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lken;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lken;->f:J

    :cond_0
    iget-object v2, p0, Lken;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide v0, p0, Lken;->h:J

    :cond_1
    return-void
.end method

.method private declared-synchronized c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stat connpt = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lken;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " netDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lken;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ChannelDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lken;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " channelConnectedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lken;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/push/thrift/b;

    invoke-direct {v0}, Lcom/xiaomi/push/thrift/b;-><init>()V

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/thrift/b;->a:B

    sget-object v1, Lcom/xiaomi/push/thrift/a;->h:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->a(I)Lcom/xiaomi/push/thrift/b;

    iget-object v1, p0, Lken;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->a(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->d(I)Lcom/xiaomi/push/thrift/b;

    iget-wide v2, p0, Lken;->g:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->b(I)Lcom/xiaomi/push/thrift/b;

    iget-wide v2, p0, Lken;->i:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->c(I)Lcom/xiaomi/push/thrift/b;

    .line 1000
    sget-object v1, Lkeo$a;->a:Lkeo;

    .line 0
    invoke-virtual {v1, v0}, Lkeo;->a(Lcom/xiaomi/push/thrift/b;)V

    invoke-direct {p0}, Lken;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    const-wide/16 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lken;->a:Lcom/xiaomi/push/service/XMPushService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lken;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Ljvn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lken;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lken;->f:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    iget-wide v4, p0, Lken;->g:J

    iget-wide v6, p0, Lken;->f:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lken;->g:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lken;->f:J

    :cond_2
    iget-wide v4, p0, Lken;->h:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lken;->i:J

    iget-wide v6, p0, Lken;->h:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lken;->i:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lken;->h:J

    :cond_3
    if-eqz v1, :cond_0

    iget-object v1, p0, Lken;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-wide v4, p0, Lken;->g:J

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    :cond_4
    iget-wide v4, p0, Lken;->g:J

    const-wide/32 v6, 0x5265c0

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lken;->c()V

    :cond_6
    iput-object v0, p0, Lken;->e:Ljava/lang/String;

    iget-wide v0, p0, Lken;->f:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_7

    iput-wide v2, p0, Lken;->f:J

    :cond_7
    iget-object v0, p0, Lken;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide v2, p0, Lken;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lkde;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Lken;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lken;->h:J

    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/push/thrift/a;->s:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lkde;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkde;->k()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lkeq;->a(IILjava/lang/String;I)V

    return-void
.end method

.method public final a(Lkde;ILjava/lang/Exception;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    const-wide/16 v2, 0x0

    iget v0, p0, Lken;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lken;->c:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iput p2, p0, Lken;->d:I

    iput-object p3, p0, Lken;->c:Ljava/lang/Exception;

    invoke-virtual {p1}, Lkde;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lkeq;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/16 v0, 0x16

    if-ne p2, v0, :cond_2

    iget-wide v0, p0, Lken;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lkde;->h()J

    move-result-wide v0

    iget-wide v4, p0, Lken;->h:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-static {}, Lkdm;->c()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v0, v4

    iget-wide v4, p0, Lken;->i:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lken;->i:J

    iput-wide v2, p0, Lken;->h:J

    :cond_2
    invoke-virtual {p0}, Lken;->a()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Stats rx="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lken;->k:J

    sub-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lken;->j:J

    sub-long v6, v0, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljuw;->c(Ljava/lang/String;)V

    iput-wide v2, p0, Lken;->k:J

    iput-wide v0, p0, Lken;->j:J

    return-void
.end method

.method public final a(Lkde;Ljava/lang/Exception;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lken;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/xiaomi/push/thrift/a;->d:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v3}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v3

    invoke-virtual {p1}, Lkde;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4, v0}, Lkeq;->a(IIILjava/lang/String;I)V

    invoke-virtual {p0}, Lken;->a()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public final b(Lkde;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x0

    iput v1, p0, Lken;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lken;->c:Ljava/lang/Exception;

    iput-object p1, p0, Lken;->b:Lkde;

    sget-object v0, Lcom/xiaomi/push/thrift/a;->s:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v0

    invoke-static {v1, v0}, Lkeq;->a(II)V

    return-void
.end method
