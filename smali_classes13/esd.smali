.class public Lesd;
.super Ljava/lang/Object;
.source "RecommendManager.java"


# static fields
.field private static volatile a:Lesd;


# instance fields
.field private b:Lesf;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Lesd;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lesd;->a:Lesd;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lesd;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lesd;->a:Lesd;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lesd;

    invoke-direct {v0}, Lesd;-><init>()V

    sput-object v0, Lesd;->a:Lesd;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lesd;->a:Lesd;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lesd;)Lesf;
    .locals 1
    .param p0, "x0"    # Lesd;

    .prologue
    .line 13
    iget-object v0, p0, Lesd;->b:Lesf;

    return-object v0
.end method

.method static synthetic a(Lesd;Lesf;)Lesf;
    .locals 0
    .param p0, "x0"    # Lesd;
    .param p1, "x1"    # Lesf;

    .prologue
    .line 13
    iput-object p1, p0, Lesd;->b:Lesf;

    return-object p1
.end method

.method public static d()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "dt_search"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "search_weak"

    aput-object v3, v2, v4

    const-string/jumbo v3, "intimacy_store_size"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "intimacy_full_sync"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "intimacy_granularity"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "intimacy_group_min"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcmt;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 4
    .param p1, "delay"    # J

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lesd$2;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p0, v2, v3}, Lesd$2;-><init>(Lesd;J)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lesd;->b:Lesf;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lesf;

    invoke-direct {v0}, Lesf;-><init>()V

    iput-object v0, p0, Lesd;->b:Lesf;

    .line 41
    :cond_0
    iget-object v0, p0, Lesd;->b:Lesf;

    .line 1043
    const-string/jumbo v1, "start check"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    iget-boolean v1, v0, Lesf;->b:Z

    if-eqz v1, :cond_1

    .line 1045
    const-string/jumbo v0, "checked"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    :goto_0
    monitor-exit p0

    return-void

    .line 1048
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lesf;->b:Z

    .line 1049
    iget-boolean v1, v0, Lesf;->a:Z

    if-eqz v1, :cond_2

    .line 1050
    const-string/jumbo v0, "stopped"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1053
    :cond_2
    :try_start_2
    iget-object v1, v0, Lesf;->c:Landroid/os/Handler;

    new-instance v2, Lesf$1;

    invoke-direct {v2, v0}, Lesf$1;-><init>(Lesf;)V

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lesd$1;

    invoke-direct {v1, p0}, Lesd$1;-><init>(Lesd;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lesd;->b:Lesf;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lesd;->b:Lesf;

    .line 3094
    const-string/jumbo v1, "process stop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3095
    iget-boolean v1, v0, Lesf;->a:Z

    if-eqz v1, :cond_1

    .line 3096
    const-string/jumbo v0, "stopped"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 5073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lesd;->b:Lesf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 3099
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lesf;->a:Z

    .line 3100
    iget-object v0, v0, Lesf;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3101
    invoke-static {}, Lesm;->a()Lesm;

    .line 5320
    invoke-static {}, Lesm;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->cancelGroupThread(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
