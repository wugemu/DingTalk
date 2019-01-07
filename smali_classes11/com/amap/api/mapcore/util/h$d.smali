.class Lcom/amap/api/mapcore/util/h$d;
.super Lcom/amap/api/mapcore/util/an$a;
.source "GLMapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/h;

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 406
    iput-object p1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/an$a;-><init>()V

    .line 409
    const v0, 0x3d75c28f    # 0.06f

    iput v0, p0, Lcom/amap/api/mapcore/util/h$d;->b:F

    .line 410
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/amap/api/mapcore/util/h$d;->c:F

    .line 412
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/h$d;->d:F

    .line 413
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/h$d;->e:F

    .line 415
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/h$d;->f:Z

    .line 416
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/h$d;->g:Z

    .line 418
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/h$d;->h:Z

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->i:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h$d;-><init>(Lcom/amap/api/mapcore/util/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore/util/an;)Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 426
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/an;->i()F

    move-result v1

    .line 430
    const/4 v3, -0x1

    .line 431
    const/4 v4, -0x1

    .line 432
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/h;->f(Lcom/amap/api/mapcore/util/h;)I

    move-result v2

    if-nez v2, :cond_0

    .line 433
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/an;->a()F

    move-result v2

    float-to-int v3, v2

    .line 434
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/an;->b()F

    move-result v2

    float-to-int v4, v2

    .line 438
    :cond_0
    int-to-float v2, v3

    iget-object v5, p0, Lcom/amap/api/mapcore/util/h$d;->i:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 439
    int-to-float v2, v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/h$d;->i:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 440
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$d;->i:Landroid/graphics/PointF;

    int-to-float v5, v3

    iput v5, v2, Landroid/graphics/PointF;->x:F

    .line 441
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$d;->i:Landroid/graphics/PointF;

    int-to-float v5, v4

    iput v5, v2, Landroid/graphics/PointF;->y:F

    .line 443
    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    double-to-float v2, v10

    .line 445
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;)I

    move-result v1

    if-gtz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v10, v1

    const-wide v12, 0x3fc999999999999aL    # 0.2

    cmpl-double v1, v10, v12

    if-lez v1, :cond_1

    .line 446
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/h$d;->h:Z

    .line 452
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getAMapUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/UiSettings;->isGestureScaleByMapCenter()Z

    move-result v5

    .line 453
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->m()Lcom/amap/api/mapcore/util/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/o;->isZoomGesturesEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 454
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/h$d;->f:Z

    if-nez v1, :cond_2

    const v1, 0x3d75c28f    # 0.06f

    .line 455
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v1, v1, v6

    if-gez v1, :cond_2

    .line 456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/h$d;->f:Z

    .line 459
    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/h$d;->f:Z

    if-eqz v1, :cond_6

    const v1, 0x3c23d70a    # 0.01f

    .line 460
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    cmpg-float v1, v1, v6

    if-gez v1, :cond_6

    .line 462
    const/4 v6, 0x1

    .line 464
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, v7, v0

    if-gtz v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, v8, v0

    if-lez v0, :cond_4

    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->g(Lcom/amap/api/mapcore/util/h;)I

    .line 470
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v9, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v0, Lcom/amap/api/mapcore/util/av;

    const/16 v1, 0x65

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/av;-><init>(IFIIZ)V

    invoke-virtual {v9, v0}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    :goto_0
    move v0, v6

    .line 488
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->m()Lcom/amap/api/mapcore/util/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/o;->isRotateGesturesEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/h$d;->h:Z

    if-nez v1, :cond_a

    .line 490
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/an;->j()F

    move-result v1

    .line 492
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/h$d;->g:Z

    if-nez v2, :cond_7

    .line 493
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_7

    .line 494
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/h$d;->g:Z

    .line 497
    :cond_7
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/h$d;->g:Z

    if-eqz v2, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    .line 498
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_a

    .line 501
    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v7, v2

    if-gtz v2, :cond_8

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v8, v2

    if-lez v2, :cond_9

    :cond_8
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_a

    .line 506
    :cond_9
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v5, Lcom/amap/api/mapcore/util/au;

    const/16 v6, 0x65

    invoke-direct {v5, v6, v1, v3, v4}, Lcom/amap/api/mapcore/util/au;-><init>(IFII)V

    invoke-virtual {v2, v5}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 509
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/h;->h(Lcom/amap/api/mapcore/util/h;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 510
    const/4 v0, 0x1

    .line 520
    :cond_a
    :goto_1
    return v0

    .line 480
    :catch_0
    move-exception v1

    move v6, v0

    move-object v0, v1

    .line 481
    :goto_2
    const-string/jumbo v1, "GLMapGestrureDetector"

    const-string/jumbo v2, "onScaleRotate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 514
    :catch_1
    move-exception v1

    .line 515
    const-string/jumbo v2, "GLMapGestrureDetector"

    const-string/jumbo v3, "onScaleRotate"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 480
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public b(Lcom/amap/api/mapcore/util/an;)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x64

    const/4 v5, 0x0

    .line 526
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/an;->a()F

    move-result v0

    float-to-int v3, v0

    .line 527
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/an;->b()F

    move-result v0

    float-to-int v4, v0

    .line 530
    iput-boolean v5, p0, Lcom/amap/api/mapcore/util/h$d;->h:Z

    .line 531
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v2, v3

    int-to-float v6, v4

    invoke-direct {v0, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->i:Landroid/graphics/PointF;

    .line 532
    iput-boolean v5, p0, Lcom/amap/api/mapcore/util/h$d;->f:Z

    .line 533
    iput-boolean v5, p0, Lcom/amap/api/mapcore/util/h$d;->g:Z

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getAMapUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/UiSettings;->isGestureScaleByMapCenter()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 546
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v6, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v0, Lcom/amap/api/mapcore/util/av;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/av;-><init>(IFIIZ)V

    invoke-virtual {v6, v0}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 550
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->m()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isRotateGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v1, Lcom/amap/api/mapcore/util/au;

    const/16 v2, 0x64

    iget-object v5, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v5, v5, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    .line 553
    invoke-interface {v5}, Lcom/amap/api/mapcore/util/l;->y()F

    move-result v5

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/amap/api/mapcore/util/au;-><init>(IFII)V

    .line 552
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 563
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    const-string/jumbo v2, "GLMapGestrureDetector"

    const-string/jumbo v6, "onScaleRotateBegin"

    invoke-static {v0, v2, v6}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 557
    :catch_1
    move-exception v0

    .line 558
    const-string/jumbo v1, "GLMapGestrureDetector"

    const-string/jumbo v2, "onScaleRotateBegin"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public c(Lcom/amap/api/mapcore/util/an;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x66

    const/4 v3, 0x0

    .line 569
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/h$d;->h:Z

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getAMapUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/UiSettings;->isGestureScaleByMapCenter()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 582
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v6, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v0, Lcom/amap/api/mapcore/util/av;

    const/high16 v2, 0x3f800000    # 1.0f

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/av;-><init>(IFIIZ)V

    invoke-virtual {v6, v0}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 585
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->m()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isRotateGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v1, Lcom/amap/api/mapcore/util/au;

    const/16 v2, 0x66

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    .line 591
    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->y()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/au;-><init>(IFII)V

    .line 590
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 599
    :cond_0
    :goto_1
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    const-string/jumbo v2, "GLMapGestrureDetector"

    const-string/jumbo v4, "onScaleRotateEnd"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v5, v3

    goto :goto_0

    .line 593
    :catch_1
    move-exception v0

    .line 594
    const-string/jumbo v1, "GLMapGestrureDetector"

    const-string/jumbo v2, "onScaleRotateEnd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
