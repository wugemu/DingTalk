.class public abstract Lcom/serenegiant/utils/MessageTask;
.super Ljava/lang/Object;
.source "MessageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/utils/MessageTask$a;,
        Lcom/serenegiant/utils/MessageTask$TaskBreak;
    }
.end annotation


# static fields
.field protected static final REQUEST_TASK_NON:I = 0x0

.field protected static final REQUEST_TASK_QUIT:I = -0x9

.field protected static final REQUEST_TASK_RUN:I = -0x1

.field protected static final REQUEST_TASK_RUN_AND_WAIT:I = -0x2

.field protected static final REQUEST_TASK_START:I = -0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mFinished:Z

.field private volatile mIsRunning:Z

.field private final mMaxRequest:I

.field private final mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/serenegiant/utils/MessageTask$a;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/serenegiant/utils/MessageTask$a;",
            ">;"
        }
    .end annotation
.end field

.field private final mSync:Ljava/lang/Object;

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/serenegiant/utils/MessageTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/utils/MessageTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/serenegiant/utils/MessageTask;->mMaxRequest:I

    .line 101
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 102
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 103
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "init_num"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    .line 111
    const/4 v1, -0x1

    iput v1, p0, Lcom/serenegiant/utils/MessageTask;->mMaxRequest:I

    .line 112
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 113
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/serenegiant/utils/MessageTask$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/serenegiant/utils/MessageTask$a;-><init>(B)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "max_request"    # I
    .param p2, "init_num"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    .line 126
    iput p1, p0, Lcom/serenegiant/utils/MessageTask;->mMaxRequest:I

    .line 127
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 128
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/serenegiant/utils/MessageTask$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/serenegiant/utils/MessageTask$a;-><init>(B)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method protected callOnError(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 314
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/serenegiant/utils/MessageTask;->onError(Ljava/lang/Exception;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 318
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected init(IILjava/lang/Object;)V
    .locals 2
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    .line 143
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, -0x8

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    return v0
.end method

.method protected obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;
    .locals 2
    .param p1, "request"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/utils/MessageTask$a;

    .line 332
    .local v0, "req":Lcom/serenegiant/utils/MessageTask$a;
    if-eqz v0, :cond_0

    .line 333
    iput p1, v0, Lcom/serenegiant/utils/MessageTask$a;->a:I

    .line 334
    iput p2, v0, Lcom/serenegiant/utils/MessageTask$a;->b:I

    .line 335
    iput p3, v0, Lcom/serenegiant/utils/MessageTask$a;->c:I

    .line 336
    iput-object p4, v0, Lcom/serenegiant/utils/MessageTask$a;->d:Ljava/lang/Object;

    .line 340
    :goto_0
    return-object v0

    .line 338
    :cond_0
    new-instance v0, Lcom/serenegiant/utils/MessageTask$a;

    .end local v0    # "req":Lcom/serenegiant/utils/MessageTask$a;
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/serenegiant/utils/MessageTask$a;-><init>(IIILjava/lang/Object;)V

    .restart local v0    # "req":Lcom/serenegiant/utils/MessageTask$a;
    goto :goto_0
.end method

.method public offer(I)Z
    .locals 3
    .param p1, "request"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 393
    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v0, v2}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public offer(II)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "arg1"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 384
    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public offer(III)Z
    .locals 2
    .param p1, "request"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(IIILjava/lang/Object;)Z
    .locals 2
    .param p1, "request"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(IILjava/lang/Object;)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "arg1"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 363
    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public offer(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 403
    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public offerAndWait(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "request"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 427
    iget-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v2, :cond_1

    if-lez p1, :cond_1

    .line 428
    const/4 v1, -0x2

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v0

    .line 429
    .local v0, "req":Lcom/serenegiant/utils/MessageTask$a;
    monitor-enter v0

    .line 430
    :try_start_0
    iput p1, v0, Lcom/serenegiant/utils/MessageTask$a;->e:I

    .line 431
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/serenegiant/utils/MessageTask$a;->f:Ljava/lang/Object;

    .line 432
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 433
    :goto_0
    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/serenegiant/utils/MessageTask$a;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 435
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 440
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    iget-object v1, v0, Lcom/serenegiant/utils/MessageTask$a;->f:Ljava/lang/Object;

    .line 443
    .end local v0    # "req":Lcom/serenegiant/utils/MessageTask$a;
    :cond_1
    return-object v1

    .line 440
    .restart local v0    # "req":Lcom/serenegiant/utils/MessageTask$a;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public offerFirst(IIILjava/lang/Object;)Z
    .locals 2
    .param p1, "request"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeforeStop()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onError(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onInit(IILjava/lang/Object;)V
.end method

.method public abstract onRelease()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract processRequest(IIILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/serenegiant/utils/MessageTask$TaskBreak;
        }
    .end annotation
.end method

.method public queueEvent(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/utils/MessageTask;->offer(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/MessageTask;->release(Z)V

    .line 481
    return-void
.end method

.method public release(Z)V
    .locals 10
    .param p1, "interrupt"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 488
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 489
    .local v0, "b":Z
    iput-boolean v8, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 490
    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v1, :cond_3

    .line 491
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 492
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v6, -0x9

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v8, v8, v7}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 493
    iget-object v6, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 494
    if-eqz v0, :cond_2

    .line 495
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 496
    .local v2, "current":J
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 497
    .local v4, "id":J
    :goto_0
    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 498
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 501
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 503
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 506
    :catch_0
    move-exception v1

    goto :goto_1

    .end local v4    # "id":J
    :cond_1
    move-wide v4, v2

    .line 496
    goto :goto_0

    .line 510
    .end local v2    # "current":J
    :cond_2
    :try_start_2
    monitor-exit v6

    .line 512
    :cond_3
    return-void

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public releaseSelf()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 518
    iput-boolean v3, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 519
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 521
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v1, -0x9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/serenegiant/utils/MessageTask;->obtain(IIILjava/lang/Object;)Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 523
    :cond_0
    return-void
.end method

.method public removeRequest(I)V
    .locals 3
    .param p1, "request"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 467
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/utils/MessageTask$a;

    .line 468
    .local v0, "req":Lcom/serenegiant/utils/MessageTask$a;
    iget-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v2, :cond_1

    .line 469
    iget v2, v0, Lcom/serenegiant/utils/MessageTask$a;->a:I

    if-ne v2, p1, :cond_0

    .line 470
    iget-object v2, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 471
    iget-object v2, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    .end local v0    # "req":Lcom/serenegiant/utils/MessageTask$a;
    :cond_1
    return-void
.end method

.method public removeRequest(Lcom/serenegiant/utils/MessageTask$a;)V
    .locals 3
    .param p1, "request"    # Lcom/serenegiant/utils/MessageTask$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 457
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/utils/MessageTask$a;

    .line 458
    .local v0, "req":Lcom/serenegiant/utils/MessageTask$a;
    iget-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    if-nez v2, :cond_1

    .line 459
    invoke-virtual {v0, p1}, Lcom/serenegiant/utils/MessageTask$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 461
    iget-object v2, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    .end local v0    # "req":Lcom/serenegiant/utils/MessageTask$a;
    :cond_1
    return-void
.end method

.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, "request":Lcom/serenegiant/utils/MessageTask$a;
    iput-boolean v9, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 207
    :try_start_0
    iget-object v4, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/serenegiant/utils/MessageTask$a;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    :goto_0
    iget-object v5, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 213
    :try_start_1
    iget-boolean v4, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v4, :cond_0

    .line 214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :try_start_2
    iget v4, v3, Lcom/serenegiant/utils/MessageTask$a;->b:I

    iget v6, v3, Lcom/serenegiant/utils/MessageTask$a;->c:I

    iget-object v7, v3, Lcom/serenegiant/utils/MessageTask$a;->d:Ljava/lang/Object;

    invoke-virtual {p0, v4, v6, v7}, Lcom/serenegiant/utils/MessageTask;->onInit(IILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    :cond_0
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 224
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    iget-boolean v4, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v4, :cond_1

    .line 227
    :try_start_4
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->onStart()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 235
    :cond_1
    :goto_2
    iget-boolean v4, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-eqz v4, :cond_3

    .line 237
    :try_start_5
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->takeRequest()Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v3

    .line 238
    iget v4, v3, Lcom/serenegiant/utils/MessageTask$a;->a:I
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    sparse-switch v4, :sswitch_data_0

    .line 266
    :try_start_6
    iget v4, v3, Lcom/serenegiant/utils/MessageTask$a;->a:I

    iget v5, v3, Lcom/serenegiant/utils/MessageTask$a;->b:I

    iget v6, v3, Lcom/serenegiant/utils/MessageTask$a;->c:I

    iget-object v7, v3, Lcom/serenegiant/utils/MessageTask$a;->d:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/serenegiant/utils/MessageTask;->processRequest(IIILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lcom/serenegiant/utils/MessageTask$TaskBreak; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 275
    :cond_2
    :goto_3
    :sswitch_0
    const/4 v4, 0x0

    :try_start_7
    iput v4, v3, Lcom/serenegiant/utils/MessageTask$a;->e:I

    iput v4, v3, Lcom/serenegiant/utils/MessageTask$a;->a:I

    .line 277
    iget-object v4, p0, Lcom/serenegiant/utils/MessageTask;->mRequestPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 282
    :cond_3
    :goto_4
    :sswitch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    .line 283
    .local v2, "interrupted":Z
    iget-object v5, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 284
    const/4 v4, 0x0

    :try_start_8
    iput-object v4, p0, Lcom/serenegiant/utils/MessageTask;->mWorkerThread:Ljava/lang/Thread;

    .line 285
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 286
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    .line 287
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 288
    if-nez v2, :cond_4

    .line 290
    :try_start_9
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->onBeforeStop()V

    .line 291
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->onStop()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 297
    :cond_4
    :goto_5
    :try_start_a
    invoke-virtual {p0}, Lcom/serenegiant/utils/MessageTask;->onRelease()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 301
    :goto_6
    iget-object v5, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 302
    :try_start_b
    iget-object v4, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 303
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    return-void

    .line 209
    .end local v2    # "interrupted":Z
    :catch_1
    move-exception v4

    iput-boolean v8, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 210
    iput-boolean v9, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    goto :goto_0

    .line 217
    :catch_2
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    :try_start_c
    sget-object v4, Lcom/serenegiant/utils/MessageTask;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 220
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    goto :goto_1

    .line 224
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v4

    .line 228
    :catch_3
    move-exception v1

    .line 229
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/serenegiant/utils/MessageTask;->callOnError(Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    iput-boolean v8, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    .line 231
    iput-boolean v9, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z

    goto :goto_2

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_2
    :try_start_d
    iget-object v4, v3, Lcom/serenegiant/utils/MessageTask$a;->d:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Runnable;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0

    if-eqz v4, :cond_2

    .line 246
    :try_start_e
    iget-object v4, v3, Lcom/serenegiant/utils/MessageTask$a;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_3

    .line 247
    :catch_4
    move-exception v1

    .line 248
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {p0, v1}, Lcom/serenegiant/utils/MessageTask;->callOnError(Ljava/lang/Exception;)Z
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_4

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_3
    :try_start_10
    iget v4, v3, Lcom/serenegiant/utils/MessageTask$a;->e:I

    iget v5, v3, Lcom/serenegiant/utils/MessageTask$a;->b:I

    iget v6, v3, Lcom/serenegiant/utils/MessageTask$a;->c:I

    iget-object v7, v3, Lcom/serenegiant/utils/MessageTask$a;->d:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/serenegiant/utils/MessageTask;->processRequest(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/serenegiant/utils/MessageTask$a;->a(Ljava/lang/Object;)V
    :try_end_10
    .catch Lcom/serenegiant/utils/MessageTask$TaskBreak; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_3

    .line 256
    :catch_5
    move-exception v4

    const/4 v4, 0x0

    :try_start_11
    invoke-virtual {v3, v4}, Lcom/serenegiant/utils/MessageTask$a;->a(Ljava/lang/Object;)V

    goto :goto_4

    .line 258
    :catch_6
    move-exception v1

    .line 259
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/serenegiant/utils/MessageTask$a;->a(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p0, v1}, Lcom/serenegiant/utils/MessageTask;->callOnError(Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    .line 270
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/serenegiant/utils/MessageTask;->callOnError(Ljava/lang/Exception;)Z
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    .line 287
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "interrupted":Z
    :catchall_1
    move-exception v4

    :try_start_12
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    throw v4

    .line 292
    :catch_8
    move-exception v1

    .line 293
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/serenegiant/utils/MessageTask;->callOnError(Ljava/lang/Exception;)Z

    goto/16 :goto_5

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    :try_start_13
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    throw v4

    :catch_9
    move-exception v4

    goto/16 :goto_6

    .end local v2    # "interrupted":Z
    :catch_a
    move-exception v4

    goto/16 :goto_4

    .line 238
    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_1
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public takeRequest()Lcom/serenegiant/utils/MessageTask$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/utils/MessageTask$a;

    return-object v0
.end method

.method public userBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/serenegiant/utils/MessageTask$TaskBreak;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Lcom/serenegiant/utils/MessageTask$TaskBreak;

    invoke-direct {v0}, Lcom/serenegiant/utils/MessageTask$TaskBreak;-><init>()V

    throw v0
.end method

.method public waitReady()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    iget-object v1, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 185
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask;->mSync:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/serenegiant/utils/MessageTask;->mIsRunning:Z

    monitor-exit v1

    return v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
