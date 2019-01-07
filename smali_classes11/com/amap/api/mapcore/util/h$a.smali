.class Lcom/amap/api/mapcore/util/h$a;
.super Ljava/lang/Object;
.source "GLMapGestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:J

.field final synthetic c:Lcom/amap/api/mapcore/util/h;

.field private d:I


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/h;)V
    .locals 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/h$a;->d:I

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/h$a;->a:F

    .line 284
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/h$a;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h$a;-><init>(Lcom/amap/api/mapcore/util/h;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h$a;->d:I

    .line 275
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/model/AMapGestureListener;->onDoubleTap(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    return v3

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 293
    .line 295
    iget v0, p0, Lcom/amap/api/mapcore/util/h$a;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h$a;->d:I

    .line 298
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 303
    iget v0, p0, Lcom/amap/api/mapcore/util/h$a;->d:I

    if-ne v0, v6, :cond_a

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->m()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isZoomGesturesEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    :goto_0
    return v7

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getAMapUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/UiSettings;->isGestureScaleByMapCenter()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 319
    :goto_1
    if-nez v8, :cond_2

    .line 322
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h$a;->a:F

    .line 323
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v8, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v0, Lcom/amap/api/mapcore/util/av;

    const/16 v1, 0x64

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/av;-><init>(IFIIZ)V

    invoke-virtual {v8, v0}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/h$a;->b:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    move v0, v6

    :goto_2
    move v7, v0

    .line 384
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string/jumbo v1, "GLMapGestrureDetector"

    const-string/jumbo v2, "onDoubleTapEvent"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v5, v7

    goto :goto_1

    .line 327
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v7

    .line 328
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 331
    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_6

    .line 335
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;Z)Z

    .line 336
    iget v0, p0, Lcom/amap/api/mapcore/util/h$a;->a:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/amap/api/mapcore/util/h$a;->b:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x64

    cmp-long v1, v2, v8

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    .line 340
    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->m()Lcom/amap/api/mapcore/util/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/o;->isZoomInByScreenCenter()Z

    move-result v1

    if-eqz v1, :cond_3

    move v7, v6

    .line 341
    goto :goto_0

    .line 343
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 344
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->getMapHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 347
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 348
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v7, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v0, Lcom/amap/api/mapcore/util/av;

    const/16 v1, 0x65

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/av;-><init>(IFIIZ)V

    invoke-virtual {v7, v0}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 356
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h$a;->a:F

    :cond_4
    move v0, v6

    .line 360
    goto/16 :goto_2

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v7, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v0, Lcom/amap/api/mapcore/util/av;

    const/16 v1, 0x65

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/av;-><init>(IFIIZ)V

    invoke-virtual {v7, v0}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 358
    :catch_2
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v6

    .line 360
    goto/16 :goto_2

    .line 366
    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v7, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v0, Lcom/amap/api/mapcore/util/av;

    const/16 v1, 0x66

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/av;-><init>(IFIIZ)V

    invoke-virtual {v7, v0}, Lcom/autonavi/amap/mapcore/MapCore;->addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 369
    if-ne v8, v6, :cond_9

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/h$a;->b:J

    sub-long/2addr v0, v2

    .line 372
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/h;->e(Lcom/amap/api/mapcore/util/h;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    .line 373
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->d(Landroid/view/MotionEvent;)Z

    move-result v7

    goto/16 :goto_0

    .line 375
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;Z)Z

    move v0, v6

    .line 376
    goto/16 :goto_2

    .line 377
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;Z)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move v0, v6

    .line 380
    goto/16 :goto_2

    .line 378
    :catch_3
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v6

    goto/16 :goto_2

    .line 327
    :catch_4
    move-exception v0

    move-object v1, v0

    move v0, v6

    goto/16 :goto_3

    :cond_a
    move v0, v7

    goto/16 :goto_2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;Z)Z

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-interface {v0, p3, p4}, Lcom/amap/api/maps/model/AMapGestureListener;->onFling(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->m()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isScrollGesturesEnabled()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 194
    :cond_1
    :goto_0
    return v4

    .line 177
    :catch_0
    move-exception v0

    .line 178
    :try_start_2
    const-string/jumbo v1, "GLMapGestrureDetector"

    const-string/jumbo v2, "onFling"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 183
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    .line 184
    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->c(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->b:Lcom/autonavi/amap/mapcore/MapCore;

    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    .line 186
    invoke-virtual {v0, v1, p3, p4}, Lcom/autonavi/amap/mapcore/MapCore;->startMapSlidAnim(Lcom/autonavi/amap/mapcore/IPoint;FF)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->b(Landroid/view/MotionEvent;)V

    .line 208
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/model/AMapGestureListener;->onLongPress(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-interface {v0, p3, p4}, Lcom/amap/api/maps/model/AMapGestureListener;->onScroll(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 394
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->e:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/model/AMapGestureListener;->onSingleTap(FF)V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->c(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 401
    :goto_0
    return v0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 401
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method
