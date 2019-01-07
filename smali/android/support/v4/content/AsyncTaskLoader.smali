.class public abstract Landroid/support/v4/content/AsyncTaskLoader;
.super Landroid/support/v4/content/Loader;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/AsyncTaskLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/Loader",
        "<TD;>;"
    }
.end annotation


# instance fields
.field volatile a:Landroid/support/v4/content/AsyncTaskLoader$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.a;"
        }
    .end annotation
.end field

.field volatile b:Landroid/support/v4/content/AsyncTaskLoader$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.a;"
        }
    .end annotation
.end field

.field c:J

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 126
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 129
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    .line 121
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->c:J

    .line 130
    iput-object p2, p0, Landroid/support/v4/content/AsyncTaskLoader;->d:Ljava/util/concurrent/Executor;

    .line 131
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0}, Landroid/support/v4/content/Loader;->a()V

    .line 150
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->j()Z

    .line 151
    new-instance v0, Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-direct {v0, p0}, Landroid/support/v4/content/AsyncTaskLoader$a;-><init>(Landroid/support/v4/content/AsyncTaskLoader;)V

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    .line 153
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->c()V

    .line 154
    return-void
.end method

.method final a(Landroid/support/v4/content/AsyncTaskLoader$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.a;TD;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Landroid/support/v4/content/AsyncTaskLoader$a;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.a;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->a(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->b:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-ne v0, p1, :cond_2

    .line 1468
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->o:Z

    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->n()V

    .line 234
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->c:J

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->b:Landroid/support/v4/content/AsyncTaskLoader$a;

    .line 2137
    iget-object v0, p0, Landroid/support/v4/content/Loader;->i:Landroid/support/v4/content/Loader$b;

    if-eqz v0, :cond_1

    .line 2138
    iget-object v0, p0, Landroid/support/v4/content/Loader;->i:Landroid/support/v4/content/Loader$b;

    invoke-interface {v0}, Landroid/support/v4/content/Loader$b;->d()V

    .line 238
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->c()V

    .line 240
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    const-wide/16 v2, 0x0

    .line 350
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/Loader;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 353
    const-string/jumbo v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 355
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->b:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->b:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 357
    const-string/jumbo v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->b:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 359
    :cond_1
    cmp-long v0, v2, v2

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    invoke-static {v2, v3, p3}, Lfy;->a(JLjava/io/PrintWriter;)V

    .line 362
    const-string/jumbo v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->c:J

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 363
    invoke-static {v0, v1, v2, v3, p3}, Lfy;->a(JJLjava/io/PrintWriter;)V

    .line 365
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 367
    :cond_2
    return-void
.end method

.method protected final b()Z
    .locals 5

    .prologue
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v1, :cond_2

    .line 160
    iget-boolean v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->k:Z

    if-nez v1, :cond_0

    .line 161
    iput-boolean v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->n:Z

    .line 163
    :cond_0
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->b:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v1, :cond_3

    .line 168
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Z

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    iput-boolean v0, v1, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Z

    .line 170
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    :cond_1
    iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    .line 193
    :cond_2
    :goto_0
    return v0

    .line 174
    :cond_3
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Z

    if-eqz v1, :cond_4

    .line 178
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    iput-boolean v0, v1, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Z

    .line 179
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    goto :goto_0

    .line 183
    :cond_4
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    .line 1329
    iget-object v2, v1, Landroid/support/v4/content/ModernAsyncTask;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1330
    iget-object v1, v1, Landroid/support/v4/content/ModernAsyncTask;->e:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    .line 185
    .local v0, "cancelled":Z
    if-eqz v0, :cond_5

    .line 186
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    iput-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->b:Landroid/support/v4/content/AsyncTaskLoader$a;

    .line 187
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->e()V

    .line 189
    :cond_5
    iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    goto :goto_0
.end method

.method final c()V
    .locals 9

    .prologue
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 207
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->b:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-boolean v2, v2, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Z

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Z

    .line 210
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    :cond_0
    cmp-long v2, v6, v6

    if-lez v2, :cond_2

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 214
    .local v0, "now":J
    iget-wide v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->c:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 219
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Z

    .line 220
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->c:J

    add-long/2addr v4, v6

    invoke-virtual {v8, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 227
    .end local v0    # "now":J
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->a:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->d:Ljava/util/concurrent/Executor;

    .line 1430
    iget-object v4, v2, Landroid/support/v4/content/ModernAsyncTask;->f:Landroid/support/v4/content/ModernAsyncTask$Status;

    sget-object v5, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;

    if-eq v4, v5, :cond_3

    .line 1431
    sget-object v3, Landroid/support/v4/content/ModernAsyncTask$4;->a:[I

    iget-object v2, v2, Landroid/support/v4/content/ModernAsyncTask;->f:Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v2}, Landroid/support/v4/content/ModernAsyncTask$Status;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1440
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "We should never reach this state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1433
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot execute task: the task is already running."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1436
    :pswitch_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1444
    :cond_3
    sget-object v4, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object v4, v2, Landroid/support/v4/content/ModernAsyncTask;->f:Landroid/support/v4/content/ModernAsyncTask$Status;

    .line 1448
    iget-object v4, v2, Landroid/support/v4/content/ModernAsyncTask;->d:Landroid/support/v4/content/ModernAsyncTask$c;

    iput-object v8, v4, Landroid/support/v4/content/ModernAsyncTask$c;->b:[Ljava/lang/Object;

    .line 1449
    iget-object v2, v2, Landroid/support/v4/content/ModernAsyncTask;->e:Ljava/util/concurrent/FutureTask;

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public e()V
    .locals 0

    .prologue
    .line 317
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    return-void
.end method
