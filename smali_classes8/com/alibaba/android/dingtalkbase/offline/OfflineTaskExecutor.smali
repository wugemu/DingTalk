.class public Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;
.super Ljava/lang/Object;
.source "OfflineTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static volatile b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

.field private static c:J

.field private static d:I

.field private static e:Landroid/os/Handler;

.field private static final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lclq;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;->STOPPED:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    sput-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    .line 40
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->c:J

    .line 41
    const/16 v0, 0x32

    sput v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->d:I

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->e:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->f:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->g:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->g:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->g:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->g:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lclq;)Z
    .locals 6
    .param p0, "task"    # Lclq;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0}, Lclq;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    invoke-static {v1}, Lclt;->a(Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 77
    const-string/jumbo v0, "offline"

    sget-object v1, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "add task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v3

    .line 1090
    iget-boolean v3, v3, Lclr;->a:Z

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 80
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->f:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->d:I

    return v0
.end method

.method static synthetic g()J
    .locals 2

    .prologue
    .line 36
    sget-wide v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->c:J

    return-wide v0
.end method

.method static synthetic h()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;->RUNNING:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    if-eq v0, v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v0

    .line 2090
    iget-boolean v0, v0, Lclr;->a:Z

    .line 95
    if-nez v0, :cond_1

    .line 96
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;->PAUSED:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    sput-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v0

    invoke-virtual {v0}, Lclr;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$1;-><init>(Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;->STOPPED:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    if-ne v0, v1, :cond_0

    .line 139
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;->RUNNING:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    sput-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b()V

    .line 144
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "task status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;->STOPPED:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    sput-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    .line 154
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
