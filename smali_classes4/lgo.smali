.class final Llgo;
.super Llgp;
.source "RenderTask.java"


# direct methods
.method constructor <init>(Llgf;)V
    .locals 0
    .param p1, "gifDrawable"    # Llgf;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Llgp;-><init>(Llgf;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    .line 17
    iget-object v2, p0, Llgo;->c:Llgf;

    iget-object v2, v2, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v3, p0, Llgo;->c:Llgf;

    iget-object v3, v3, Llgf;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lpl/droidsonroids/gif/GifInfoHandle;->a(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    .line 18
    .local v0, "invalidationDelay":J
    cmp-long v2, v0, v8

    if-ltz v2, :cond_5

    .line 19
    iget-object v2, p0, Llgo;->c:Llgf;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, v2, Llgf;->c:J

    .line 20
    iget-object v2, p0, Llgo;->c:Llgf;

    invoke-virtual {v2}, Llgf;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Llgo;->c:Llgf;

    iget-boolean v2, v2, Llgf;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Llgo;->c:Llgf;

    iget-boolean v2, v2, Llgf;->h:Z

    if-nez v2, :cond_0

    .line 21
    iget-object v2, p0, Llgo;->c:Llgf;

    iget-object v2, v2, Llgf;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 22
    iget-object v2, p0, Llgo;->c:Llgf;

    iget-object v3, p0, Llgo;->c:Llgf;

    iget-object v3, v3, Llgf;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, v2, Llgf;->j:Ljava/util/concurrent/ScheduledFuture;

    .line 24
    :cond_0
    iget-object v2, p0, Llgo;->c:Llgf;

    iget-object v2, v2, Llgf;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Llgo;->c:Llgf;

    .line 1919
    iget-object v2, v2, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->i()I

    move-result v2

    .line 24
    iget-object v3, p0, Llgo;->c:Llgf;

    iget-object v3, v3, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->r()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    .line 25
    iget-object v2, p0, Llgo;->c:Llgf;

    iget-object v3, v2, Llgf;->i:Llgj;

    iget-object v4, p0, Llgo;->c:Llgf;

    .line 1929
    iget-object v2, v4, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    move-result v2

    .line 1930
    if-eqz v2, :cond_1

    iget-object v4, v4, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->e()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 25
    :cond_1
    :goto_0
    iget-object v4, p0, Llgo;->c:Llgf;

    iget-wide v4, v4, Llgf;->c:J

    invoke-virtual {v3, v2, v4, v5}, Llgj;->sendEmptyMessageAtTime(IJ)Z

    .line 31
    :cond_2
    :goto_1
    iget-object v2, p0, Llgo;->c:Llgf;

    invoke-virtual {v2}, Llgf;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Llgo;->c:Llgf;

    iget-object v2, v2, Llgf;->i:Llgj;

    invoke-virtual {v2, v6}, Llgj;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 32
    iget-object v2, p0, Llgo;->c:Llgf;

    iget-object v2, v2, Llgf;->i:Llgj;

    invoke-virtual {v2, v6, v8, v9}, Llgj;->sendEmptyMessageAtTime(IJ)Z

    .line 34
    :cond_3
    return-void

    .line 1933
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 28
    :cond_5
    iget-object v2, p0, Llgo;->c:Llgf;

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v2, Llgf;->c:J

    .line 29
    iget-object v2, p0, Llgo;->c:Llgf;

    const/4 v3, 0x0

    iput-boolean v3, v2, Llgf;->b:Z

    goto :goto_1
.end method
