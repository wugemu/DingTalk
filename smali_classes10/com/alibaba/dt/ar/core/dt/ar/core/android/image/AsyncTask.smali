.class public abstract Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a;,
        Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;,
        Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$b;,
        Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;,
        Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;
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
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field public static volatile d:Ljava/util/concurrent/Executor;

.field private static final g:Ljava/util/concurrent/ThreadFactory;

.field private static final h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$b;


# instance fields
.field public final e:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private volatile k:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 204
    new-instance v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$1;

    invoke-direct {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->g:Ljava/util/concurrent/ThreadFactory;

    .line 212
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->h:Ljava/util/concurrent/BlockingQueue;

    .line 218
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->h:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->g:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->a:Ljava/util/concurrent/Executor;

    .line 227
    invoke-static {}, Lgxh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;

    invoke-direct {v0, v10}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;-><init>(B)V

    .line 228
    :goto_0
    sput-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->b:Ljava/util/concurrent/Executor;

    .line 230
    const/4 v0, 0x2

    sget-object v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->g:Ljava/util/concurrent/ThreadFactory;

    .line 231
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->c:Ljava/util/concurrent/Executor;

    .line 236
    new-instance v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$b;

    invoke-direct {v0, v10}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$b;-><init>(B)V

    sput-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->i:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$b;

    .line 238
    sget-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->b:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->d:Ljava/util/concurrent/Executor;

    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->g:Ljava/util/concurrent/ThreadFactory;

    .line 228
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 306
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    sget-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->PENDING:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->k:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 307
    new-instance v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;-><init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;)V

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->j:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;

    .line 317
    new-instance v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$3;

    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->j:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$3;-><init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->e:Ljava/util/concurrent/FutureTask;

    .line 332
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method protected static varargs a()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 412
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;Ljava/lang/Object;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 197
    .line 1335
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1336
    if-nez v0, :cond_0

    .line 1337
    invoke-direct {p0, p1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    .line 343
    sget-object v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->i:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$b;

    new-instance v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a;-><init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;Ljava/lang/Object;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 197
    .line 2459
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1654
    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {p0, p1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->b(Ljava/lang/Object;)V

    .line 1659
    :goto_0
    sget-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->FINISHED:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->k:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    .line 197
    return-void

    .line 1657
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 598
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->k:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    sget-object v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->PENDING:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 599
    sget-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$4;->a:[I

    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->k:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 610
    :cond_0
    sget-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->RUNNING:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->k:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    .line 614
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->j:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;

    iput-object p2, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;->b:[Ljava/lang/Object;

    .line 615
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->e:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 617
    return-object p0

    .line 601
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method
