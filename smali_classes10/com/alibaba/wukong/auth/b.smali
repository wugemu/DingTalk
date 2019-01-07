.class public Lcom/alibaba/wukong/auth/b;
.super Ljava/lang/Object;
.source "AppStatusTracker.java"


# static fields
.field private static b:Lcom/alibaba/wukong/auth/b;

.field private static volatile c:Z


# instance fields
.field private d:Z

.field private volatile e:J

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z

.field private i:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/wukong/auth/b;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/alibaba/wukong/auth/b;->d:Z

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/wukong/auth/b;->e:J

    .line 28
    iput-boolean v2, p0, Lcom/alibaba/wukong/auth/b;->f:Z

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/b;->mHandler:Landroid/os/Handler;

    .line 32
    iput-boolean v3, p0, Lcom/alibaba/wukong/auth/b;->g:Z

    .line 33
    iput-boolean v3, p0, Lcom/alibaba/wukong/auth/b;->h:Z

    .line 84
    new-instance v0, Lcom/alibaba/wukong/auth/b$2;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/b$2;-><init>(Lcom/alibaba/wukong/auth/b;)V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/b;->i:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

    .line 127
    new-instance v0, Lcom/alibaba/wukong/auth/b$3;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/b$3;-><init>(Lcom/alibaba/wukong/auth/b;)V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/b;->j:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/alibaba/wukong/auth/b$4;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/b$4;-><init>(Lcom/alibaba/wukong/auth/b;)V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/b;->k:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/wukong/auth/b;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/alibaba/wukong/auth/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/auth/b;->b:Lcom/alibaba/wukong/auth/b;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/alibaba/wukong/auth/b;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/b;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/auth/b;->b:Lcom/alibaba/wukong/auth/b;

    .line 41
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/auth/b;->b:Lcom/alibaba/wukong/auth/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/wukong/auth/b$5;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/wukong/auth/b$5;-><init>(Lcom/alibaba/wukong/auth/b;Lcom/alibaba/wukong/Callback;)V

    .line 192
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/wukong/idl/trace/client/AppStatusService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/trace/client/AppStatusService;

    .line 193
    .local v1, "service":Lcom/alibaba/wukong/idl/trace/client/AppStatusService;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/idl/trace/client/AppStatusService;->switchTo(Ljava/lang/Integer;Liyv;)V

    .line 194
    return-void
.end method

.method static synthetic a(Lcom/alibaba/wukong/auth/b;ILcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/b;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wukong/auth/b;->a(ILcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/wukong/auth/b;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/b;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/auth/b;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 10
    .param p1, "foreground"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lcom/alibaba/wukong/auth/b;->e:J

    .line 72
    .local v4, "tmp":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 73
    .local v0, "current":J
    sub-long v6, v0, v4

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 74
    .local v2, "duration":J
    const-wide/16 v6, 0x3c

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 75
    iput-wide v0, p0, Lcom/alibaba/wukong/auth/b;->e:J

    .line 76
    if-eqz p1, :cond_1

    .line 77
    const-string/jumbo v6, "Uptime"

    const-string/jumbo v7, "Foreground"

    long-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_1
    :try_start_1
    const-string/jumbo v6, "Uptime"

    const-string/jumbo v7, "Background"

    long-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v0    # "current":J
    .end local v2    # "duration":J
    .end local v4    # "tmp":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method static synthetic a(Lcom/alibaba/wukong/auth/b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/b;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/alibaba/wukong/auth/b;->f:Z

    return v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/alibaba/wukong/auth/b;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/wukong/auth/b;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/b;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/wukong/auth/b;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/b;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/alibaba/wukong/auth/b;->f:Z

    return p1
.end method

.method static synthetic b(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lcom/alibaba/wukong/auth/b;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/alibaba/wukong/auth/b;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/b;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/wukong/auth/b;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/b;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/alibaba/wukong/auth/b;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/wukong/auth/b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/b;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/alibaba/wukong/auth/b;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/wukong/auth/b;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/b;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/alibaba/wukong/auth/b;->h:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/wukong/auth/b;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/b;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/wukong/auth/b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/b;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/alibaba/wukong/auth/b;->h:Z

    return v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/alibaba/wukong/auth/b;->f:Z

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/auth/b;->a(Z)V

    .line 68
    return-void
.end method

.method public declared-synchronized init()V
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/wukong/auth/b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/wukong/auth/b$1;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/b$1;-><init>(Lcom/alibaba/wukong/auth/b;)V

    invoke-static {v0}, Lcom/alibaba/wukong/WKManager;->registerConnectionListener(Lcom/alibaba/wukong/ConnectionListener;)V

    .line 62
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/b;->i:Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->addTriggerListenerAtHead(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/wukong/auth/b;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 123
    sget-boolean v0, Lcom/alibaba/wukong/auth/b;->c:Z

    return v0
.end method
