.class public Lcom/alibaba/sdk/android/httpdns/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/sdk/android/httpdns/o;

.field private static c:Z

.field private static d:J

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private e:I

.field private e:J

.field private pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "https://"

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/o;->h:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/sdk/android/httpdns/o;->c:Z

    sput-object v2, Lcom/alibaba/sdk/android/httpdns/o;->i:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alibaba/sdk/android/httpdns/o;->d:J

    sput-object v2, Lcom/alibaba/sdk/android/httpdns/o;->a:Lcom/alibaba/sdk/android/httpdns/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:I

    iput-object v1, p0, Lcom/alibaba/sdk/android/httpdns/o;->a:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/alibaba/sdk/android/httpdns/o;->pool:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:J

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->pool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/o;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/o;->a:Lcom/alibaba/sdk/android/httpdns/o;

    if-nez v0, :cond_1

    const-class v1, Lcom/alibaba/sdk/android/httpdns/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/o;->a:Lcom/alibaba/sdk/android/httpdns/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/o;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/o;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/o;->a:Lcom/alibaba/sdk/android/httpdns/o;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/o;->a:Lcom/alibaba/sdk/android/httpdns/o;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:I

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/d;->c:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:I

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    const-wide/16 v6, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/o;->c:Z

    if-nez v0, :cond_5

    const-class v1, Lcom/alibaba/sdk/android/httpdns/o;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/o;->c:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    const-string/jumbo v0, "httpdns_config_cache"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->a:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "httpdns_server_ips"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/o;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/o;->i:Ljava/lang/String;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/d;->a([Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "schedule_center_last_request_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/alibaba/sdk/android/httpdns/o;->d:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alibaba/sdk/android/httpdns/o;->d:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/q;->a()Lcom/alibaba/sdk/android/httpdns/q;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/httpdns/q;->a(Z)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/o;->c()V

    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/httpdns/o;->c:Z

    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/alibaba/sdk/android/httpdns/p;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:I

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/p;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->switchDnsService(Z)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/p;->c()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/httpdns/o;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Scheduler center update success"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:J

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/s;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a([Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/d;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/o;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "httpdns_server_ips"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "schedule_center_last_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/o;->d()V

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:J

    const-string/jumbo v0, "Scheduler center update failed"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/s;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string/jumbo v0, "update server ips from schedule center."

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:I

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/o;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/m;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/d;->c:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lcom/alibaba/sdk/android/httpdns/m;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "update server ips from schedule center too often, give up. "

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/s;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/o;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/d;->c:[Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/o;->e:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/sc/httpdns_config?account_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&platform=android&sdk_version=1.1.3.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
