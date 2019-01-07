.class public final Llin;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements Llgz;


# static fields
.field public static final b:I


# instance fields
.field public volatile a:Ljava/lang/Object;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 243
    const/16 v0, 0x80

    .line 246
    .local v0, "defaultSize":I
    invoke-static {}, Llim;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    const/16 v0, 0x10

    .line 251
    :cond_0
    const-string/jumbo v3, "rx.ring-buffer.size"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "sizeFromProperty":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 254
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 260
    :cond_1
    :goto_0
    sput v0, Llin;->b:I

    .line 261
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to set \'rx.buffer.size\' with value "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Llis;

    sget v1, Llin;->b:I

    invoke-direct {v0, v1}, Llis;-><init>(I)V

    sget v1, Llin;->b:I

    invoke-direct {p0, v0, v1}, Llin;-><init>(Ljava/util/Queue;I)V

    .line 301
    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Llin;->c:Ljava/util/Queue;

    .line 282
    iput p2, p0, Llin;->d:I

    .line 283
    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 1
    .param p1, "spmc"    # Z
    .param p2, "size"    # I

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    if-eqz p1, :cond_0

    new-instance v0, Lljf;

    invoke-direct {v0, p2}, Lljf;-><init>(I)V

    :goto_0
    iput-object v0, p0, Llin;->c:Ljava/util/Queue;

    .line 287
    iput p2, p0, Llin;->d:I

    .line 288
    return-void

    .line 286
    :cond_0
    new-instance v0, Lljn;

    invoke-direct {v0, p2}, Lljn;-><init>(I)V

    goto :goto_0
.end method

.method public static a()Llin;
    .locals 3

    .prologue
    .line 265
    invoke-static {}, Llkb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Llin;

    const/4 v1, 0x0

    sget v2, Llin;->b:I

    invoke-direct {v0, v1, v2}, Llin;-><init>(ZI)V

    .line 268
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Llin;

    invoke-direct {v0}, Llin;-><init>()V

    goto :goto_0
.end method

.method public static b()Llin;
    .locals 3

    .prologue
    .line 273
    invoke-static {}, Llkb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Llin;

    const/4 v1, 0x1

    sget v2, Llin;->b:I

    invoke-direct {v0, v1, v2}, Llin;-><init>(ZI)V

    .line 276
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Llin;

    invoke-direct {v0}, Llin;-><init>()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 402
    invoke-static {p0}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 410
    invoke-static {p0}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "iae":Z
    const/4 v1, 0x0

    .line 312
    .local v1, "mbe":Z
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v2, p0, Llin;->c:Ljava/util/Queue;

    .line 314
    .local v2, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 315
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 319
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    if-eqz v0, :cond_2

    .line 322
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 319
    .end local v2    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 324
    .restart local v2    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 325
    new-instance v3, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v3}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    throw v3

    .line 327
    :cond_3
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 0

    .prologue
    .line 292
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final d()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 360
    iget-object v0, p0, Llin;->c:Ljava/util/Queue;

    .line 361
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 366
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v1, p0, Llin;->c:Ljava/util/Queue;

    .line 368
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 370
    monitor-exit p0

    .line 381
    :goto_0
    return-object v0

    .line 372
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 374
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Llin;->a:Ljava/lang/Object;

    .line 375
    .local v2, "ts":Ljava/lang/Object;
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 376
    move-object v0, v2

    .line 378
    const/4 v3, 0x0

    iput-object v3, p0, Llin;->a:Ljava/lang/Object;

    .line 380
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v2    # "ts":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final f()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v1, p0, Llin;->c:Ljava/util/Queue;

    .line 388
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 390
    const/4 v0, 0x0

    monitor-exit p0

    .line 398
    :goto_0
    return-object v0

    .line 392
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 393
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Llin;->a:Ljava/lang/Object;

    .line 394
    .local v2, "ts":Ljava/lang/Object;
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 395
    move-object v0, v2

    .line 397
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v2    # "ts":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Llin;->c:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 0

    .prologue
    .line 296
    invoke-virtual {p0}, Llin;->c()V

    .line 297
    return-void
.end method
