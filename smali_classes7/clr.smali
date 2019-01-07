.class public Lclr;
.super Ljava/lang/Object;
.source "OfflineTaskContext.java"


# static fields
.field private static final e:Ljava/lang/String;

.field private static f:Lclr;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lclr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lclr;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lclr;->c:Z

    .line 35
    iput-boolean v0, p0, Lclr;->a:Z

    .line 36
    iput-object v1, p0, Lclr;->b:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lclr;->d:Ljava/util/concurrent/Executor;

    .line 47
    return-void
.end method

.method public static a()Lclr;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lclr;->f:Lclr;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lclr;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lclr;->f:Lclr;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lclr;

    invoke-direct {v0}, Lclr;-><init>()V

    sput-object v0, Lclr;->f:Lclr;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lclr;->f:Lclr;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lclr;Z)Z
    .locals 0
    .param p0, "x0"    # Lclr;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lclr;->a:Z

    return p1
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lclr;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "groupId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a()Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->d()V

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lclr;->b:Ljava/lang/String;

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "OfflineTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljav;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lclr;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lclr;->c:Z

    if-nez v0, :cond_0

    .line 1071
    new-instance v0, Lclr$1;

    invoke-direct {v0, p0}, Lclr$1;-><init>(Lclr;)V

    invoke-static {v0}, Lcom/laiwang/protocol/android/LWP;->addNetworkListener(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lclr;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lclr;->d:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lclr;->d:Ljava/util/concurrent/Executor;

    .line 106
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v0, p0, Lclr;->d:Ljava/util/concurrent/Executor;

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
