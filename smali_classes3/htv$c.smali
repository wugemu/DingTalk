.class public final Lhtv$c;
.super Lhtv$a;
.source "FinalizeFake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static final a:Lhtv$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lhtv$c;

    invoke-direct {v0}, Lhtv$c;-><init>()V

    sput-object v0, Lhtv$c;->a:Lhtv$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 351
    const-string/jumbo v0, "FakeFinalizerWatchdogDaemon"

    invoke-direct {p0, v0}, Lhtv$a;-><init>(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method private a(JJ)V
    .locals 9
    .param p1, "startNanos"    # J
    .param p3, "durationNanos"    # J

    .prologue
    .line 402
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, p1

    .line 403
    .local v0, "elapsedNanos":J
    const-wide v6, 0x2540be400L

    sub-long v4, v6, v0

    .line 404
    .local v4, "sleepNanos":J
    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .line 405
    .local v2, "sleepMills":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    .line 412
    :goto_1
    return-void

    .line 409
    :cond_1
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v6

    invoke-virtual {p0}, Lhtv$c;->b()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1
.end method

.method public static synthetic e()Lhtv$c;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lhtv$c;->a:Lhtv$c;

    return-object v0
.end method

.method private f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 383
    :goto_0
    invoke-static {}, Lhtv$b;->e()Lhtv$b;

    move-result-object v1

    invoke-static {v1}, Lhtv$b;->a(Lhtv$b;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 385
    const/4 v1, 0x1

    .line 394
    :goto_1
    return v1

    .line 387
    :cond_0
    monitor-enter p0

    .line 391
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 394
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 356
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lhtv$c;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 357
    invoke-direct {p0}, Lhtv$c;->f()Z

    move-result v2

    .line 358
    .local v2, "waitSuccessful":Z
    if-eqz v2, :cond_0

    .line 1419
    invoke-static {}, Lhtv$b;->e()Lhtv$b;

    move-result-object v3

    invoke-static {v3}, Lhtv$b;->b(Lhtv$b;)J

    move-result-wide v4

    .line 1420
    const-wide v6, 0x2540be400L

    invoke-direct {p0, v4, v5, v6, v7}, Lhtv$c;->a(JJ)V

    .line 1424
    invoke-static {}, Lhtv$b;->e()Lhtv$b;

    move-result-object v3

    invoke-static {v3}, Lhtv$b;->a(Lhtv$b;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1425
    invoke-static {}, Lhtv$b;->e()Lhtv$b;

    move-result-object v3

    invoke-static {v3}, Lhtv$b;->b(Lhtv$b;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 363
    .local v0, "finalized":Z
    :goto_1
    if-nez v0, :cond_0

    .line 2378
    invoke-static {}, Lhtr$b;->a()Z

    move-result v3

    .line 363
    if-nez v3, :cond_0

    .line 364
    invoke-static {}, Lhtv$b;->e()Lhtv$b;

    move-result-object v3

    invoke-static {v3}, Lhtv$b;->a(Lhtv$b;)Ljava/lang/Object;

    move-result-object v1

    .line 367
    .local v1, "finalizedObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 371
    invoke-static {}, Lhtv$b;->e()Lhtv$b;

    move-result-object v3

    invoke-virtual {v3}, Lhtv$b;->c()V

    goto :goto_0

    .line 1425
    .end local v0    # "finalized":Z
    .end local v1    # "finalizedObject":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 375
    .end local v2    # "waitSuccessful":Z
    :cond_3
    return-void
.end method
