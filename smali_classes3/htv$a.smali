.class public abstract Lhtv$a;
.super Ljava/lang/Object;
.source "FinalizeFake.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Thread;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lhtv$a;->b:Ljava/lang/String;

    .line 277
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 303
    monitor-enter p0

    if-nez p1, :cond_0

    .line 304
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 306
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhtv$a;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 283
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lhtv;->c:Ljava/lang/ThreadGroup;

    iget-object v2, p0, Lhtv$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lhtv$a;->a:Ljava/lang/Thread;

    .line 284
    iget-object v0, p0, Lhtv$a;->a:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 285
    iget-object v0, p0, Lhtv$a;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    monitor-exit p0

    return-void
.end method

.method protected final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhtv$a;->a:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhtv$a;->a:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lhtv$a;->a(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 315
    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v0, p0, Lhtv$a;->a:Ljava/lang/Thread;

    .line 317
    .local v0, "threadToStop":Ljava/lang/Thread;
    const/4 v1, 0x0

    iput-object v1, p0, Lhtv$a;->a:Ljava/lang/Thread;

    .line 318
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    if-nez v0, :cond_0

    .line 320
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not running"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    .end local v0    # "threadToStop":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 322
    .restart local v0    # "threadToStop":Ljava/lang/Thread;
    :cond_0
    invoke-direct {p0, v0}, Lhtv$a;->a(Ljava/lang/Thread;)V

    .line 325
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 326
    return-void

    .line 328
    :catch_0
    move-exception v1

    goto :goto_0
.end method
