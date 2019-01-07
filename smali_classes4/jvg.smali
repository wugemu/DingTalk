.class public final Ljvg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljvg$a;,
        Ljvg$b;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field volatile b:Z

.field c:I

.field volatile d:Ljvg$b;

.field private e:Ljvg$a;

.field private final f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljvg;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljvg;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljvg;->a:Landroid/os/Handler;

    iput-boolean v1, p0, Ljvg;->b:Z

    iput v1, p0, Ljvg;->c:I

    new-instance v0, Ljvh;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljvh;-><init>(Ljvg;Landroid/os/Looper;)V

    iput-object v0, p0, Ljvg;->a:Landroid/os/Handler;

    iput-boolean p1, p0, Ljvg;->f:Z

    iput p2, p0, Ljvg;->c:I

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ljvg;->e:Ljvg$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljvg;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljvg$b;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljvg;->e:Ljvg$a;

    if-nez v0, :cond_0

    new-instance v0, Ljvg$a;

    invoke-direct {v0, p0}, Ljvg$a;-><init>(Ljvg;)V

    iput-object v0, p0, Ljvg;->e:Ljvg$a;

    iget-object v0, p0, Ljvg;->e:Ljvg$a;

    iget-boolean v1, p0, Ljvg;->f:Z

    invoke-virtual {v0, v1}, Ljvg$a;->setDaemon(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljvg;->b:Z

    iget-object v0, p0, Ljvg;->e:Ljvg$a;

    invoke-virtual {v0}, Ljvg$a;->start()V

    :cond_0
    iget-object v0, p0, Ljvg;->e:Ljvg$a;

    .line 1000
    iget-object v0, v0, Ljvg$a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljvg$b;J)V
    .locals 2

    iget-object v0, p0, Ljvg;->a:Landroid/os/Handler;

    new-instance v1, Ljvi;

    invoke-direct {v1, p0, p1}, Ljvi;-><init>(Ljvg;Ljvg$b;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
