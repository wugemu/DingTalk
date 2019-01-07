.class public Lcom/alibaba/sdk/android/httpdns/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/sdk/android/httpdns/q;


# instance fields
.field private b:Ljava/lang/String;

.field private d:Z

.field private f:J

.field private pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/q;->a:Lcom/alibaba/sdk/android/httpdns/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/q;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/q;->d:Z

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/q;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/q;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/q;->pool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/q;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/q;->a:Lcom/alibaba/sdk/android/httpdns/q;

    if-nez v0, :cond_1

    const-class v1, Lcom/alibaba/sdk/android/httpdns/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/q;->a:Lcom/alibaba/sdk/android/httpdns/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/q;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/q;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/q;->a:Lcom/alibaba/sdk/android/httpdns/q;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/q;->a:Lcom/alibaba/sdk/android/httpdns/q;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/q;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/q;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/q;->f:J

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/q;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/q;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/q;->b:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/q;->d:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/q;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "launch a sniff task"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/l;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/q;->b:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/n;->c:Lcom/alibaba/sdk/android/httpdns/n;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/httpdns/l;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/n;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/l;->a(I)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/q;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/q;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "hostname is null or sniff too often or sniffer is turned off"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
