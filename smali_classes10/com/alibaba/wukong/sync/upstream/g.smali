.class public final Lcom/alibaba/wukong/sync/upstream/g;
.super Ljava/lang/Object;
.source "SyncTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/sync/upstream/g$b;,
        Lcom/alibaba/wukong/sync/upstream/g$c;,
        Lcom/alibaba/wukong/sync/upstream/g$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alibaba/wukong/sync/upstream/g$c;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile b:Lcom/alibaba/wukong/sync/upstream/g$b;

.field private static c:Landroid/os/Handler;

.field private static final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/sync/SyncListener",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/wukong/sync/upstream/g;->c:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/sync/upstream/g;->a:Ljava/util/concurrent/BlockingQueue;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/sync/upstream/g;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 46
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g$b;->o:Lcom/alibaba/wukong/sync/upstream/g$b;

    sput-object v0, Lcom/alibaba/wukong/sync/upstream/g;->b:Lcom/alibaba/wukong/sync/upstream/g$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/wukong/sync/upstream/g;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/wukong/sync/upstream/g;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g$a;->a:Lcom/alibaba/wukong/sync/upstream/g;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/wukong/sync/upstream/g;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/sync/upstream/g;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/upstream/g;->d()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/wukong/sync/SyncListener;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/sync/SyncListener",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "listener":Lcom/alibaba/wukong/sync/SyncListener;, "Lcom/alibaba/wukong/sync/SyncListener<Ljava/lang/Object;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/sync/upstream/g$c;)Z
    .locals 6
    .param p0, "task"    # Lcom/alibaba/wukong/sync/upstream/g$c;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    .line 1195
    iget-object v2, p0, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 2085
    iget v2, v2, Lift;->g:I

    .line 1195
    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    move v2, v1

    .line 64
    :goto_0
    if-eqz v2, :cond_2

    .line 65
    const-string/jumbo v1, "SyncTaskExecutor"

    const-string/jumbo v2, "task is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 1195
    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p0}, Lcom/alibaba/wukong/sync/upstream/g$c;->a(Lcom/alibaba/wukong/sync/upstream/g$c;)Lift;

    move-result-object v2

    invoke-static {v2}, Lifs;->a(Lift;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 70
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move v0, v1

    .line 71
    goto :goto_1
.end method

.method static synthetic e()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g;->d:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g;->b:Lcom/alibaba/wukong/sync/upstream/g$b;

    sget-object v1, Lcom/alibaba/wukong/sync/upstream/g$b;->o:Lcom/alibaba/wukong/sync/upstream/g$b;

    if-ne v0, v1, :cond_1

    .line 3030
    sget-object v0, Lifq$a;->a:Lifq;

    .line 3041
    iget-boolean v0, v0, Lifq;->a:Z

    .line 84
    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g$b;->p:Lcom/alibaba/wukong/sync/upstream/g$b;

    sput-object v0, Lcom/alibaba/wukong/sync/upstream/g;->b:Lcom/alibaba/wukong/sync/upstream/g$b;

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/upstream/g;->d()V

    .line 93
    :goto_0
    monitor-exit p0

    return-void

    .line 88
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g$b;->q:Lcom/alibaba/wukong/sync/upstream/g$b;

    sput-object v0, Lcom/alibaba/wukong/sync/upstream/g;->b:Lcom/alibaba/wukong/sync/upstream/g$b;

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 91
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "task status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/wukong/sync/upstream/g;->b:Lcom/alibaba/wukong/sync/upstream/g$b;

    invoke-virtual {v1}, Lcom/alibaba/wukong/sync/upstream/g$b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g$b;->o:Lcom/alibaba/wukong/sync/upstream/g$b;

    sput-object v0, Lcom/alibaba/wukong/sync/upstream/g;->b:Lcom/alibaba/wukong/sync/upstream/g$b;

    .line 103
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g;->b:Lcom/alibaba/wukong/sync/upstream/g$b;

    sget-object v1, Lcom/alibaba/wukong/sync/upstream/g$b;->p:Lcom/alibaba/wukong/sync/upstream/g$b;

    if-eq v0, v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 4030
    :cond_0
    sget-object v0, Lifq$a;->a:Lifq;

    .line 140
    invoke-virtual {v0}, Lifq;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/sync/upstream/g$1;

    invoke-direct {v1, p0}, Lcom/alibaba/wukong/sync/upstream/g$1;-><init>(Lcom/alibaba/wukong/sync/upstream/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
