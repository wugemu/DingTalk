.class public abstract Lkdn;
.super Lkde;


# instance fields
.field private A:I

.field protected s:Ljava/lang/Exception;

.field protected t:Ljava/net/Socket;

.field u:Ljava/lang/String;

.field protected v:Lcom/xiaomi/push/service/XMPushService;

.field protected volatile w:J

.field protected volatile x:J

.field protected volatile y:J

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lkdf;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2}, Lkde;-><init>(Lcom/xiaomi/push/service/XMPushService;Lkdf;)V

    iput-object v2, p0, Lkdn;->s:Ljava/lang/Exception;

    iput-object v2, p0, Lkdn;->u:Ljava/lang/String;

    iput-wide v0, p0, Lkdn;->w:J

    iput-wide v0, p0, Lkdn;->x:J

    iput-wide v0, p0, Lkdn;->y:J

    iput-object p1, p0, Lkdn;->v:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljys;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v2, 0x0

    invoke-static {}, Ljyw;->a()Ljyw;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Ljyw;->a(Ljava/lang/String;Z)Ljys;

    move-result-object v0

    invoke-virtual {v0}, Ljys;->a()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lkdq;

    invoke-direct {v1, p0, p1}, Lkdq;-><init>(Lkdn;Ljava/lang/String;)V

    invoke-static {v1}, Lkef;->a(Ljava/lang/Runnable;)V

    :cond_0
    iput v2, p0, Lkdn;->f:I

    :try_start_0
    iget-object v1, v0, Ljys;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lkdn;->f:I

    iget v2, p0, Lkdn;->f:I

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lkdn;->f:I

    iget v2, p0, Lkdn;->f:I

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lkdn;->f:I

    iget v2, p0, Lkdn;->f:I

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    iput v1, p0, Lkdn;->f:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/Exception;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x2

    .line 0
    monitor-enter p0

    .line 1000
    :try_start_0
    iget v0, p0, Lkde;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lkdn;->a(IILjava/lang/Exception;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lkdn;->l:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lkdn;->t:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lkdn;->w:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkdn;->x:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public abstract a(Z)V
.end method

.method public a([Lkcy;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lcom/xiaomi/smack/l;

    const-string/jumbo v1, "Don\'t support send Blob"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(ILjava/lang/Exception;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 0
    invoke-virtual {p0, p1, p2}, Lkdn;->a(ILjava/lang/Exception;)V

    if-nez p2, :cond_0

    const/16 v0, 0x12

    if-ne p1, v0, :cond_2

    :cond_0
    iget-wide v0, p0, Lkdn;->y:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lkdn;->y:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lkdn;->v:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lkdn;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkdn;->A:I

    iget v0, p0, Lkdn;->A:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 3000
    iget-object v1, p0, Lkdn;->z:Ljava/lang/String;

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "max short conn time reached, sink down current host:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    .line 4000
    invoke-static {}, Lkdf;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljyw;->a()Ljyw;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Ljyw;->a(Ljava/lang/String;Z)Ljys;

    move-result-object v0

    if-eqz v0, :cond_1

    move-wide v4, v2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Ljys;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    invoke-static {}, Ljyw;->a()Ljyw;

    move-result-object v0

    invoke-virtual {v0}, Ljyw;->e()V

    .line 2000
    :cond_1
    iput v7, p0, Lkdn;->A:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput v7, p0, Lkdn;->A:I

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lkdn;->a(Z)V

    if-nez p1, :cond_0

    iget-object v2, p0, Lkdn;->v:Lcom/xiaomi/push/service/XMPushService;

    new-instance v3, Lkdo;

    const/16 v4, 0xd

    invoke-direct {v3, p0, v4, v0, v1}, Lkdo;-><init>(Lkdn;IJ)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    :cond_0
    return-void
.end method

.method public declared-synchronized c()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final c(ILjava/lang/Exception;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lkdn;->v:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lkdp;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lkdp;-><init>(Lkdn;IILjava/lang/Exception;)V

    .line 10000
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    .line 0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkdn;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkdn;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized p()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lkdn;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkdn;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "WARNING: current xmpp has connected"

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1, v2}, Lkdn;->a(IILjava/lang/Exception;)V

    iget-object v0, p0, Lkdn;->p:Lkdf;

    .line 6000
    iget-object v2, v0, Lkdf;->e:Ljava/lang/String;

    .line 7000
    iget v8, v0, Lkdf;->f:I

    .line 8000
    const/4 v7, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lkdn;->s:Ljava/lang/Exception;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get bucket for host : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2}, Lkdn;->b(Ljava/lang/String;)Ljys;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljuw;->a(Ljava/lang/Integer;)V

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljys;->a(Z)Ljava/util/ArrayList;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lkdn;->y:J

    iget-object v2, p0, Lkdn;->v:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Ljvn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget v2, p0, Lkdn;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkdn;->b:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "begin to connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    .line 9000
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 8000
    iput-object v2, p0, Lkdn;->t:Ljava/net/Socket;

    invoke-static {v1, v8}, Ljyu;->b(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    iget-object v3, p0, Lkdn;->t:Ljava/net/Socket;

    const/16 v4, 0x1f40

    invoke-virtual {v3, v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const-string/jumbo v2, "tcp connected"

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lkdn;->t:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iput-object v1, p0, Lkdn;->z:Ljava/lang/String;

    invoke-virtual {p0}, Lkdn;->c()V

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    iput-wide v2, p0, Lkdn;->c:J

    iput-object v9, p0, Lkdn;->m:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-wide v2, p0, Lkdn;->c:J

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Ljys;->a(Ljava/lang/String;JJ)V

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lkdn;->y:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "connected to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lkdn;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/xiaomi/smack/l; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_1
    :try_start_3
    invoke-static {}, Ljyw;->a()Ljyw;

    move-result-object v0

    invoke-virtual {v0}, Ljyw;->e()V

    if-nez v7, :cond_1

    new-instance v0, Lcom/xiaomi/smack/l;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 0
    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/xiaomi/smack/l;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 8000
    :catch_1
    move-exception v6

    if-eqz v0, :cond_7

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Ljys;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    :cond_7
    iput-object v6, p0, Lkdn;->s:Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SMACK: Could not connect to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->d(Ljava/lang/String;)V

    const-string/jumbo v2, "SMACK: Could not connect to "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v7, :cond_8

    :try_start_6
    iget-object v2, p0, Lkdn;->s:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lkeq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v1, p0, Lkdn;->v:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Ljvn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    :cond_8
    move v1, v7

    :goto_2
    move v7, v1

    goto/16 :goto_0

    :catch_2
    move-exception v6

    if-eqz v0, :cond_9

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Ljys;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    :cond_9
    iput-object v6, p0, Lkdn;->s:Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SMACK: Could not connect to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->d(Ljava/lang/String;)V

    const-string/jumbo v2, "SMACK: Could not connect to "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/xiaomi/smack/l;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v7, :cond_8

    :try_start_8
    iget-object v2, p0, Lkdn;->s:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lkeq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v1, p0, Lkdn;->v:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Ljvn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_1

    :catch_3
    move-exception v2

    move-object v3, v2

    move v2, v7

    :try_start_9
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "abnormal exception"

    invoke-direct {v4, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v4, p0, Lkdn;->s:Ljava/lang/Exception;

    invoke-static {v3}, Ljuw;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez v2, :cond_b

    :try_start_a
    iget-object v3, p0, Lkdn;->s:Ljava/lang/Exception;

    invoke-static {v1, v3}, Lkeq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v1, p0, Lkdn;->v:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Ljvn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    move v7, v2

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :goto_3
    if-nez v7, :cond_a

    iget-object v2, p0, Lkdn;->s:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lkeq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v1, p0, Lkdn;->v:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Ljvn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_2
    move-exception v0

    move v7, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto/16 :goto_2
.end method

.method public final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lkdn;->w:J

    return-void
.end method

.method public final r()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lkdn;->x:J

    return-void
.end method
