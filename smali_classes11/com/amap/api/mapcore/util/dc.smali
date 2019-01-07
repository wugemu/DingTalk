.class public Lcom/amap/api/mapcore/util/dc;
.super Ljava/lang/Object;
.source "PolygonDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cv;


# static fields
.field private static u:F


# instance fields
.field a:Lcom/autonavi/amap/mapcore/FPointBounds;

.field private b:Lcom/amap/api/mapcore/util/l;

.field private c:F

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:F

.field private g:I

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/nio/FloatBuffer;

.field private m:Ljava/nio/FloatBuffer;

.field private n:I

.field private o:I

.field private p:Lcom/amap/api/maps/model/LatLngBounds;

.field private q:Z

.field private r:F

.field private s:Ljava/lang/Object;

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 469
    const v0, 0x501502f9    # 1.0E10f

    sput v0, Lcom/amap/api/mapcore/util/dc;->u:F

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v1, p0, Lcom/amap/api/mapcore/util/dc;->c:F

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/dc;->d:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dc;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dc;->k:Ljava/util/List;

    .line 46
    iput v2, p0, Lcom/amap/api/mapcore/util/dc;->n:I

    iput v2, p0, Lcom/amap/api/mapcore/util/dc;->o:I

    .line 47
    iput-object v3, p0, Lcom/amap/api/mapcore/util/dc;->p:Lcom/amap/api/maps/model/LatLngBounds;

    .line 48
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/dc;->q:Z

    .line 49
    iput v1, p0, Lcom/amap/api/mapcore/util/dc;->r:F

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dc;->s:Ljava/lang/Object;

    .line 52
    iput-object v3, p0, Lcom/amap/api/mapcore/util/dc;->a:Lcom/autonavi/amap/mapcore/FPointBounds;

    .line 53
    iput v1, p0, Lcom/amap/api/mapcore/util/dc;->t:F

    .line 56
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dc;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dc;->e:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string/jumbo v1, "PolygonDelegateImp"

    const-string/jumbo v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 391
    iget v0, p2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/dc;->r:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v0, v1

    .line 392
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/dc;->r:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([Lcom/autonavi/amap/mapcore/FPoint;)[Lcom/autonavi/amap/mapcore/FPoint;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 472
    array-length v2, p0

    .line 473
    mul-int/lit8 v1, v2, 0x2

    new-array v3, v1, [F

    move v1, v0

    .line 474
    :goto_0
    if-ge v1, v2, :cond_0

    .line 475
    mul-int/lit8 v4, v1, 0x2

    aget-object v5, p0, v1

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sget v6, Lcom/amap/api/mapcore/util/dc;->u:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 476
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p0, v1

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sget v6, Lcom/amap/api/mapcore/util/dc;->u:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    :cond_0
    new-instance v1, Lcom/amap/api/mapcore/util/dz;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/dz;-><init>()V

    .line 480
    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore/util/dz;->a([F)Lcom/amap/api/mapcore/util/em;

    move-result-object v1

    .line 481
    iget v2, v1, Lcom/amap/api/mapcore/util/em;->b:I

    .line 482
    new-array v4, v2, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 483
    :goto_1
    if-ge v0, v2, :cond_1

    .line 484
    new-instance v5, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    aput-object v5, v4, v0

    .line 485
    aget-object v5, v4, v0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/em;->a(I)S

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    aget v6, v3, v6

    sget v7, Lcom/amap/api/mapcore/util/dc;->u:F

    div-float/2addr v6, v7

    iput v6, v5, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 486
    aget-object v5, v4, v0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/em;->a(I)S

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v3, v6

    sget v7, Lcom/amap/api/mapcore/util/dc;->u:F

    div-float/2addr v6, v7

    iput v6, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    :cond_1
    return-object v4
.end method

.method private b(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v8, 0x501502f9    # 1.0E10f

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 322
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dc;->d()V

    .line 324
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 327
    const/4 v0, 0x2

    if-ge v5, v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    .line 332
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const/4 v1, 0x1

    move v3, v1

    move-object v1, v0

    :goto_1
    add-int/lit8 v0, v5, -0x1

    if-ge v3, v0, :cond_1

    .line 334
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    .line 335
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/util/dc;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 336
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 341
    :cond_1
    add-int/lit8 v0, v5, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 344
    new-array v3, v0, [F

    .line 347
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 350
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    .line 351
    mul-int/lit8 v6, v1, 0x3

    iget v7, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v7, v3, v6

    .line 352
    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1

    iget v7, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v7, v3, v6

    .line 353
    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x2

    aput v10, v3, v6

    .line 354
    aput-object v0, v5, v1

    .line 355
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 356
    goto :goto_3

    .line 358
    :cond_2
    invoke-static {v5}, Lcom/amap/api/mapcore/util/dc;->a([Lcom/autonavi/amap/mapcore/FPoint;)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    .line 359
    array-length v1, v0

    if-nez v1, :cond_3

    .line 360
    sget v0, Lcom/amap/api/mapcore/util/dc;->u:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_4

    .line 361
    const v0, 0x4cbebc20    # 1.0E8f

    sput v0, Lcom/amap/api/mapcore/util/dc;->u:F

    .line 365
    :goto_4
    invoke-static {v5}, Lcom/amap/api/mapcore/util/dc;->a([Lcom/autonavi/amap/mapcore/FPoint;)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    .line 367
    :cond_3
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    new-array v4, v1, [F

    .line 369
    array-length v6, v0

    move v1, v2

    :goto_5
    if-ge v2, v6, :cond_5

    aget-object v7, v0, v2

    .line 370
    mul-int/lit8 v8, v1, 0x3

    iget v9, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v9, v4, v8

    .line 371
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    iget v7, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v7, v4, v8

    .line 372
    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x2

    aput v10, v4, v7

    .line 373
    add-int/lit8 v1, v1, 0x1

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 363
    :cond_4
    sput v8, Lcom/amap/api/mapcore/util/dc;->u:F

    goto :goto_4

    .line 376
    :cond_5
    array-length v1, v5

    iput v1, p0, Lcom/amap/api/mapcore/util/dc;->n:I

    .line 377
    array-length v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/dc;->o:I

    .line 379
    invoke-static {v3}, Lcom/amap/api/mapcore/util/en;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dc;->l:Ljava/nio/FloatBuffer;

    .line 380
    invoke-static {v4}, Lcom/amap/api/mapcore/util/en;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dc;->m:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private b([Lcom/autonavi/amap/mapcore/FPoint;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 256
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->o()F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/dc;->t:F

    .line 258
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dc;->d()V

    .line 259
    iget v1, p0, Lcom/amap/api/mapcore/util/dc;->t:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dc;->a:Lcom/autonavi/amap/mapcore/FPointBounds;

    iget-object v1, v1, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dc;->a:Lcom/autonavi/amap/mapcore/FPointBounds;

    iget-object v1, v1, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    .line 264
    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 267
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->o()F

    move-result v0

    .line 401
    iget-object v2, p0, Lcom/amap/api/mapcore/util/dc;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/16 v3, 0x1388

    if-le v2, v3, :cond_1

    const/high16 v2, 0x41400000    # 12.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 402
    iget v2, p0, Lcom/amap/api/mapcore/util/dc;->f:F

    div-float/2addr v2, v4

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    .line 403
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 404
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/dc;->r:F

    .line 412
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 403
    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/dc;->r:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 129
    .line 130
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v7

    .line 131
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 132
    if-eqz p1, :cond_2

    .line 133
    const/4 v0, 0x0

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 135
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 139
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dc;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v7, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-object v1, v0

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 144
    const/4 v0, 0x1

    if-le v2, v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    .line 146
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dc;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    .line 147
    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ne v3, v4, :cond_2

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ne v0, v1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 152
    :cond_2
    invoke-virtual {v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dc;->p:Lcom/amap/api/maps/model/LatLngBounds;

    .line 153
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->l:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->l:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->m:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->m:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 159
    :cond_4
    iput v9, p0, Lcom/amap/api/mapcore/util/dc;->n:I

    .line 160
    iput v9, p0, Lcom/amap/api/mapcore/util/dc;->o:I

    .line 161
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, v9}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 162
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 218
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->l:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->m:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/dc;->n:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/dc;->o:I

    if-nez v0, :cond_3

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dc;->b()Z

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->k:Ljava/util/List;

    .line 230
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->p()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    .line 232
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dc;->b([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    iget-object v2, p0, Lcom/amap/api/mapcore/util/dc;->s:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->k:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/amap/api/mapcore/util/en;->a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 235
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    .line 239
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dc;->b(Ljava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->l:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->m:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/amap/api/mapcore/util/dc;->n:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/amap/api/mapcore/util/dc;->o:I

    if-lez v0, :cond_5

    .line 244
    iget v1, p0, Lcom/amap/api/mapcore/util/dc;->g:I

    iget v2, p0, Lcom/amap/api/mapcore/util/dc;->h:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/dc;->l:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/amap/api/mapcore/util/dc;->f:F

    iget-object v5, p0, Lcom/amap/api/mapcore/util/dc;->m:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/amap/api/mapcore/util/dc;->n:I

    iget v7, p0, Lcom/amap/api/mapcore/util/dc;->o:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/ea;->a(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II)V

    .line 251
    :cond_5
    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/dc;->q:Z

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dc;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/dc;->q:Z

    .line 183
    new-instance v2, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;-><init>()V

    .line 184
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    .line 185
    new-instance v4, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 186
    iget-object v5, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-interface {v5, v6, v0, v4}, Lcom/amap/api/mapcore/util/l;->b(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 187
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v2, v4}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->include(Lcom/autonavi/amap/mapcore/FPoint;)Lcom/autonavi/amap/mapcore/FPointBounds$Builder;

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 190
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->build()Lcom/autonavi/amap/mapcore/FPointBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dc;->a:Lcom/autonavi/amap/mapcore/FPointBounds;

    .line 192
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dc;->d()V

    .line 193
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dc;->q:Z

    return v0
.end method

.method public contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 511
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dc;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/en;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 515
    :goto_0
    return v0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    const-string/jumbo v1, "PolygonDelegateImp"

    const-string/jumbo v2, "contains"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 515
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->l:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->l:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dc;->l:Ljava/nio/FloatBuffer;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->m:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dc;->m:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_1
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    const-string/jumbo v1, "PolygonDelegateImp"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dc;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFillColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    iget v0, p0, Lcom/amap/api/mapcore/util/dc;->g:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    const-string/jumbo v0, "Polygon"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dc;->e:Ljava/lang/String;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->i:Ljava/util/List;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    iget v0, p0, Lcom/amap/api/mapcore/util/dc;->h:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    iget v0, p0, Lcom/amap/api/mapcore/util/dc;->f:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    iget v0, p0, Lcom/amap/api/mapcore/util/dc;->c:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dc;->d:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dc;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Ljava/lang/String;)Z

    .line 68
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 69
    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public setFillColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 427
    iput p1, p0, Lcom/amap/api/mapcore/util/dc;->g:I

    .line 428
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 429
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dc;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dc;->i:Ljava/util/List;

    .line 83
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/dc;->a(Ljava/util/List;)V

    .line 84
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dc;->b()Z

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 86
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStrokeColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 438
    iput p1, p0, Lcom/amap/api/mapcore/util/dc;->h:I

    .line 439
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 440
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 416
    iput p1, p0, Lcom/amap/api/mapcore/util/dc;->f:F

    .line 417
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 418
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/dc;->d:Z

    .line 110
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 111
    return-void
.end method

.method public setZIndex(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    iput p1, p0, Lcom/amap/api/mapcore/util/dc;->c:F

    .line 98
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->r()V

    .line 99
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dc;->b:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 100
    return-void
.end method
