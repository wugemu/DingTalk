.class public abstract Lcom/amap/api/mapcore/util/dw;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/dw$a;,
        Lcom/amap/api/mapcore/util/dw$e;,
        Lcom/amap/api/mapcore/util/dw$b;,
        Lcom/amap/api/mapcore/util/dw$d;,
        Lcom/amap/api/mapcore/util/dw$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field public static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/amap/api/mapcore/util/dw$b;

.field private static volatile g:Ljava/util/concurrent/Executor;


# instance fields
.field private final h:Lcom/amap/api/mapcore/util/dw$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore/util/dw$e",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile j:Lcom/amap/api/mapcore/util/dw$d;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 241
    new-instance v0, Lcom/amap/api/mapcore/util/dw$1;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dw$1;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/dw;->a:Ljava/util/concurrent/ThreadFactory;

    .line 249
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/amap/api/mapcore/util/dw;->e:Ljava/util/concurrent/BlockingQueue;

    .line 255
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/amap/api/mapcore/util/dw;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/amap/api/mapcore/util/dw;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/amap/api/mapcore/util/dw;->b:Ljava/util/concurrent/Executor;

    .line 264
    invoke-static {}, Lcom/amap/api/mapcore/util/en;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/dw$c;

    invoke-direct {v0, v10}, Lcom/amap/api/mapcore/util/dw$c;-><init>(Lcom/amap/api/mapcore/util/dw$1;)V

    .line 265
    :goto_0
    sput-object v0, Lcom/amap/api/mapcore/util/dw;->c:Ljava/util/concurrent/Executor;

    .line 267
    const/4 v0, 0x2

    sget-object v1, Lcom/amap/api/mapcore/util/dw;->a:Ljava/util/concurrent/ThreadFactory;

    .line 268
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/dw;->d:Ljava/util/concurrent/Executor;

    .line 273
    new-instance v0, Lcom/amap/api/mapcore/util/dw$b;

    invoke-direct {v0, v10}, Lcom/amap/api/mapcore/util/dw$b;-><init>(Lcom/amap/api/mapcore/util/dw$1;)V

    sput-object v0, Lcom/amap/api/mapcore/util/dw;->f:Lcom/amap/api/mapcore/util/dw$b;

    .line 275
    sget-object v0, Lcom/amap/api/mapcore/util/dw;->c:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/amap/api/mapcore/util/dw;->g:Ljava/util/concurrent/Executor;

    return-void

    .line 264
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/dw;->a:Ljava/util/concurrent/ThreadFactory;

    .line 265
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    sget-object v0, Lcom/amap/api/mapcore/util/dw$d;->a:Lcom/amap/api/mapcore/util/dw$d;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dw;->j:Lcom/amap/api/mapcore/util/dw$d;

    .line 281
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dw;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 282
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dw;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 351
    new-instance v0, Lcom/amap/api/mapcore/util/dw$2;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/dw$2;-><init>(Lcom/amap/api/mapcore/util/dw;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dw;->h:Lcom/amap/api/mapcore/util/dw$e;

    .line 361
    new-instance v0, Lcom/amap/api/mapcore/util/dw$3;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dw;->h:Lcom/amap/api/mapcore/util/dw$e;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/dw$3;-><init>(Lcom/amap/api/mapcore/util/dw;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dw;->i:Ljava/util/concurrent/FutureTask;

    .line 371
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/dw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dw;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/dw;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/dw;)Ljava/util/concurrent/FutureTask;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->i:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/dw;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dw;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/dw;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dw;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 375
    if-nez v0, :cond_0

    .line 376
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dw;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 382
    sget-object v0, Lcom/amap/api/mapcore/util/dw;->f:Lcom/amap/api/mapcore/util/dw$b;

    new-instance v1, Lcom/amap/api/mapcore/util/dw$a;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/amap/api/mapcore/util/dw$a;-><init>(Lcom/amap/api/mapcore/util/dw;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/amap/api/mapcore/util/dw$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 385
    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/dw;->b(Ljava/lang/Object;)V

    .line 737
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore/util/dw$d;->c:Lcom/amap/api/mapcore/util/dw$d;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dw;->j:Lcom/amap/api/mapcore/util/dw$d;

    .line 738
    return-void

    .line 735
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/dw;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/amap/api/mapcore/util/dw$d;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->j:Lcom/amap/api/mapcore/util/dw$d;

    return-object v0
.end method

.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/amap/api/mapcore/util/dw",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 675
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->j:Lcom/amap/api/mapcore/util/dw$d;

    sget-object v1, Lcom/amap/api/mapcore/util/dw$d;->a:Lcom/amap/api/mapcore/util/dw$d;

    if-eq v0, v1, :cond_0

    .line 676
    sget-object v0, Lcom/amap/api/mapcore/util/dw$4;->a:[I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dw;->j:Lcom/amap/api/mapcore/util/dw$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/dw$d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 687
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/dw$d;->b:Lcom/amap/api/mapcore/util/dw$d;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dw;->j:Lcom/amap/api/mapcore/util/dw$d;

    .line 689
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dw;->b()V

    .line 691
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->h:Lcom/amap/api/mapcore/util/dw$e;

    iput-object p2, v0, Lcom/amap/api/mapcore/util/dw$e;->b:[Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->i:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 694
    return-object p0

    .line 678
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 444
    return-void
.end method

.method public final a(Z)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 549
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 550
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->i:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dw;->c()V

    .line 480
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 457
    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/amap/api/mapcore/util/dw",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 629
    sget-object v0, Lcom/amap/api/mapcore/util/dw;->g:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore/util/dw;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dw;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
