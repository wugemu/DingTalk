.class final Laoo;
.super Ljava/lang/Object;
.source "OrientationDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoo$a;
    }
.end annotation


# static fields
.field private static j:Laoo;

.field private static final k:Ljava/lang/Object;

.field private static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Laor;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laoo$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private final e:Landroid/content/Context;

.field private f:[F

.field private g:[F

.field private h:[F

.field private i:[D

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Laoo;->k:Ljava/lang/Object;

    .line 75
    new-array v0, v2, [Ljava/lang/Integer;

    const/16 v1, 0xf

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 75
    invoke-static {v0}, Laou;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Laoo;->l:Ljava/util/Set;

    .line 77
    new-array v0, v2, [Ljava/lang/Integer;

    const/16 v1, 0xb

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 77
    invoke-static {v0}, Laou;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Laoo;->m:Ljava/util/Set;

    .line 80
    new-array v0, v4, [Ljava/lang/Integer;

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 80
    invoke-static {v0}, Laou;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Laoo;->n:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laoo;->o:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoo;->b:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laoo;->e:Landroid/content/Context;

    .line 99
    new-array v0, v3, [Ljava/util/Set;

    const/4 v1, 0x0

    sget-object v2, Laoo;->l:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Laoo;->m:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Laoo;->n:Ljava/util/Set;

    aput-object v2, v0, v1

    .line 1202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1203
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 99
    iput-object v1, p0, Laoo;->p:Ljava/util/List;

    .line 102
    return-void
.end method

.method static a(Landroid/content/Context;)Laoo;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-object v1, Laoo;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Laoo;->j:Laoo;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Laoo;

    invoke-direct {v0, p0}, Laoo;-><init>(Landroid/content/Context;)V

    sput-object v0, Laoo;->j:Laoo;

    .line 109
    :cond_0
    sget-object v0, Laoo;->j:Laoo;

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(DDD)V
    .locals 9
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 457
    iget-object v2, p0, Laoo;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 459
    :try_start_0
    iget-object v2, p0, Laoo;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoo$a;

    .local v1, "listener":Laoo$a;
    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .line 460
    invoke-interface/range {v1 .. v7}, Laoo$a;->a(DDD)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    .end local v1    # "listener":Laoo$a;
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "[OrientationDetector] "

    invoke-static {v2, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 467
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 439
    .local p1, "sensorTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 440
    .local v0, "sensorType":Ljava/lang/Integer;
    iget-object v2, p0, Laoo;->o:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    invoke-direct {p0}, Laoo;->c()Laor;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Laor;->a(Landroid/hardware/SensorEventListener;I)V

    .line 442
    iget-object v2, p0, Laoo;->o:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    .end local v0    # "sensorType":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "active"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 392
    iput-boolean p1, p0, Laoo;->r:Z

    .line 393
    if-eqz p1, :cond_0

    iget-object v0, p0, Laoo;->q:Ljava/util/Set;

    sget-object v1, Laoo;->n:Ljava/util/Set;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Laoo;->s:Z

    .line 395
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Set;IZ)Z
    .locals 10
    .param p2, "rateInMicroseconds"    # I
    .param p3, "failOnMissingSensor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "sensorTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 418
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 419
    .local v2, "sensorsToActivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v5, p0, Laoo;->o:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 420
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 435
    :cond_0
    :goto_0
    return v3

    .line 422
    :cond_1
    const/4 v3, 0x0

    .line 423
    .local v3, "success":Z
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 424
    .local v1, "sensorType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3448
    invoke-direct {p0}, Laoo;->c()Laor;

    move-result-object v7

    .line 3449
    if-nez v7, :cond_3

    move v0, v4

    .line 425
    .local v0, "result":Z
    :goto_2
    if-nez v0, :cond_5

    .line 427
    invoke-direct {p0, v2}, Laoo;->a(Ljava/lang/Iterable;)V

    move v3, v4

    .line 428
    goto :goto_0

    .line 3470
    .end local v0    # "result":Z
    :cond_3
    iget-object v8, p0, Laoo;->d:Landroid/os/Handler;

    if-nez v8, :cond_4

    .line 3471
    new-instance v8, Landroid/os/HandlerThread;

    const-string/jumbo v9, "DeviceOrientation"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Laoo;->c:Landroid/os/HandlerThread;

    .line 3472
    iget-object v8, p0, Laoo;->c:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 3473
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Laoo;->c:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, p0, Laoo;->d:Landroid/os/Handler;

    .line 3475
    :cond_4
    iget-object v8, p0, Laoo;->d:Landroid/os/Handler;

    .line 3452
    invoke-interface {v7, p0, v6, p2, v8}, Laor;->a(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z

    move-result v0

    goto :goto_2

    .line 430
    .restart local v0    # "result":Z
    :cond_5
    if-eqz v0, :cond_2

    .line 431
    iget-object v6, p0, Laoo;->o:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 432
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static a([F[D)[D
    .locals 9
    .param p0, "matrixR"    # [F
    .param p1, "values"    # [D

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 300
    array-length v0, p0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-object p1

    .line 302
    :cond_1
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 303
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 304
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 305
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    .line 330
    :goto_1
    aget-wide v0, p1, v7

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 331
    aget-wide v0, p1, v7

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    aput-wide v0, p1, v7

    goto :goto_0

    .line 306
    :cond_2
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 307
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 308
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 309
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_3

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_2
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 310
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    goto :goto_1

    .line 309
    :cond_3
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_2

    .line 312
    :cond_4
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 313
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 314
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 315
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 316
    :cond_5
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    .line 317
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 318
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 319
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_6

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_3
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 320
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 319
    :cond_6
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_3

    .line 323
    :cond_7
    const/4 v0, 0x3

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 324
    aget v0, p0, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_4
    aput-wide v0, p1, v6

    .line 325
    const-wide/16 v0, 0x0

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 324
    :cond_8
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_4
.end method

.method private b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 169
    iget-boolean v0, p0, Laoo;->t:Z

    if-eqz v0, :cond_0

    .line 170
    const-string/jumbo v0, "NOT_AVAILABLE"

    .line 181
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Laoo;->q:Ljava/util/Set;

    sget-object v1, Laoo;->l:Ljava/util/Set;

    if-ne v0, v1, :cond_1

    .line 173
    const-string/jumbo v0, "GAME_ROTATION_VECTOR"

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Laoo;->q:Ljava/util/Set;

    sget-object v1, Laoo;->m:Ljava/util/Set;

    if-ne v0, v1, :cond_2

    .line 176
    const-string/jumbo v0, "ROTATION_VECTOR"

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Laoo;->q:Ljava/util/Set;

    sget-object v1, Laoo;->n:Ljava/util/Set;

    if-ne v0, v1, :cond_3

    .line 179
    const-string/jumbo v0, "ACCELEROMETER_MAGNETIC"

    goto :goto_0

    .line 181
    :cond_3
    const-string/jumbo v0, "NOT_AVAILABLE"

    goto :goto_0
.end method

.method private b([F[D)V
    .locals 4
    .param p1, "rotationVector"    # [F
    .param p2, "angles"    # [D

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 342
    array-length v1, p1

    if-le v1, v3, :cond_0

    .line 347
    iget-object v1, p0, Laoo;->g:[F

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    iget-object v1, p0, Laoo;->h:[F

    iget-object v2, p0, Laoo;->g:[F

    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 353
    :goto_0
    iget-object v1, p0, Laoo;->h:[F

    invoke-static {v1, p2}, Laoo;->a([F[D)[D

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 355
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    aput-wide v2, p2, v0

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Laoo;->h:[F

    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto :goto_0

    .line 357
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private c()Laor;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 377
    iget-object v1, p0, Laoo;->a:Laor;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Laoo;->a:Laor;

    .line 387
    :goto_0
    return-object v1

    .line 381
    :cond_0
    iget-object v1, p0, Laoo;->e:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    .line 382
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 384
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_1

    .line 385
    new-instance v1, Laos;

    invoke-direct {v1, v0}, Laos;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Laoo;->a:Laor;

    .line 387
    :cond_1
    iget-object v1, p0, Laoo;->a:Laor;

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 207
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Laoo;->o:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 208
    .local v0, "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Laoo;->a(Ljava/lang/Iterable;)V

    .line 209
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Laoo;->a(Z)V

    .line 210
    return-void
.end method

.method public final a(I)Z
    .locals 5
    .param p1, "rateInMicroseconds"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 194
    .line 2144
    iget-boolean v1, p0, Laoo;->t:Z

    if-eqz v1, :cond_1

    .line 195
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, v2}, Laoo;->a(Z)V

    .line 198
    :cond_0
    return v0

    .line 2145
    .end local v0    # "success":Z
    :cond_1
    iget-object v1, p0, Laoo;->q:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 2146
    invoke-direct {p0}, Laoo;->b()Ljava/lang/String;

    move-result-object v1

    .line 2147
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[OrientationDetector] register sensor:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    iget-object v1, p0, Laoo;->q:Ljava/util/Set;

    invoke-direct {p0, v1, v2, v2}, Laoo;->a(Ljava/util/Set;IZ)Z

    move-result v0

    goto :goto_0

    .line 2398
    :cond_2
    iget-object v1, p0, Laoo;->h:[F

    if-nez v1, :cond_3

    .line 2399
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Laoo;->h:[F

    .line 2401
    :cond_3
    iget-object v1, p0, Laoo;->i:[D

    if-nez v1, :cond_4

    .line 2402
    const/4 v1, 0x3

    new-array v1, v1, [D

    iput-object v1, p0, Laoo;->i:[D

    .line 2404
    :cond_4
    iget-object v1, p0, Laoo;->g:[F

    if-nez v1, :cond_5

    .line 2405
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Laoo;->g:[F

    .line 2152
    :cond_5
    iget-object v1, p0, Laoo;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 2153
    iput-object v1, p0, Laoo;->q:Ljava/util/Set;

    .line 2154
    iget-object v1, p0, Laoo;->q:Ljava/util/Set;

    invoke-direct {p0, v1, v2, v2}, Laoo;->a(Ljava/util/Set;IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2155
    invoke-direct {p0}, Laoo;->b()Ljava/lang/String;

    move-result-object v1

    .line 2156
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[OrientationDetector] register sensor:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 2157
    goto :goto_0

    .line 2161
    :cond_7
    iput-boolean v2, p0, Laoo;->t:Z

    .line 2162
    iput-object v4, p0, Laoo;->q:Ljava/util/Set;

    .line 2163
    iput-object v4, p0, Laoo;->h:[F

    .line 2164
    iput-object v4, p0, Laoo;->i:[D

    goto :goto_0
.end method

.method final a(Laoo$a;)Z
    .locals 1
    .param p1, "listener"    # Laoo$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    iget-object v0, p0, Laoo;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Laoo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v0, p0, Laoo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 215
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 219
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 220
    .local v0, "type":I
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 222
    .local v8, "values":[F
    sparse-switch v0, :sswitch_data_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected sensor type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanz;->b(Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 224
    :sswitch_0
    iget-boolean v1, p0, Laoo;->s:Z

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Laoo;->f:[F

    .line 3360
    if-eqz v8, :cond_0

    if-eqz v1, :cond_0

    .line 3363
    iget-object v2, p0, Laoo;->h:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v8, v1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3366
    iget-object v1, p0, Laoo;->h:[F

    iget-object v2, p0, Laoo;->i:[D

    invoke-static {v1, v2}, Laoo;->a([F[D)[D

    .line 3368
    iget-object v1, p0, Laoo;->i:[D

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    iget-object v1, p0, Laoo;->i:[D

    aget-wide v4, v1, v5

    .line 3369
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    iget-object v1, p0, Laoo;->i:[D

    aget-wide v6, v1, v6

    .line 3370
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    move-object v1, p0

    .line 3368
    invoke-direct/range {v1 .. v7}, Laoo;->a(DDD)V

    goto :goto_0

    .line 229
    :sswitch_1
    iget-boolean v1, p0, Laoo;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoo;->q:Ljava/util/Set;

    sget-object v2, Laoo;->m:Ljava/util/Set;

    if-ne v1, v2, :cond_0

    .line 232
    iget-object v1, p0, Laoo;->i:[D

    invoke-direct {p0, v8, v1}, Laoo;->b([F[D)V

    .line 233
    iget-object v1, p0, Laoo;->i:[D

    aget-wide v2, v1, v4

    iget-object v1, p0, Laoo;->i:[D

    aget-wide v4, v1, v5

    iget-object v1, p0, Laoo;->i:[D

    aget-wide v6, v1, v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Laoo;->a(DDD)V

    goto :goto_0

    .line 237
    :sswitch_2
    iget-boolean v1, p0, Laoo;->r:Z

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Laoo;->i:[D

    invoke-direct {p0, v8, v1}, Laoo;->b([F[D)V

    .line 239
    iget-object v1, p0, Laoo;->i:[D

    aget-wide v2, v1, v4

    iget-object v1, p0, Laoo;->i:[D

    aget-wide v4, v1, v5

    iget-object v1, p0, Laoo;->i:[D

    aget-wide v6, v1, v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Laoo;->a(DDD)V

    goto :goto_0

    .line 243
    :sswitch_3
    iget-boolean v1, p0, Laoo;->s:Z

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Laoo;->f:[F

    if-nez v1, :cond_1

    .line 245
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Laoo;->f:[F

    .line 247
    :cond_1
    iget-object v1, p0, Laoo;->f:[F

    iget-object v2, p0, Laoo;->f:[F

    array-length v2, v2

    invoke-static {v8, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0xb -> :sswitch_1
        0xf -> :sswitch_2
    .end sparse-switch
.end method
