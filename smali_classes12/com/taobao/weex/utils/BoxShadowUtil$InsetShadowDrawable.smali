.class Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsetShadowDrawable"
.end annotation


# static fields
.field private static final BOTTOM_TO_TOP:I = 0x3

.field private static final LEFT_TO_RIGHT:I = 0x0

.field private static final RIGHT_TO_LEFT:I = 0x2

.field private static final TOP_TO_BOTTOM:I = 0x1


# instance fields
.field private blurRadius:F

.field private height:F

.field private paint:Landroid/graphics/Paint;

.field private paths:[Landroid/graphics/Path;

.field private radii:[F

.field private shades:[Landroid/graphics/Shader;

.field private shadowColor:I

.field private shadowXSize:F

.field private shadowYSize:F

.field private width:F


# direct methods
.method private constructor <init>(IIFFFFI[F)V
    .locals 4
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .param p5, "blurRadius"    # F
    .param p6, "spread"    # F
    .param p7, "shadowColor"    # I
    .param p8, "radii"    # [F

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 438
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 433
    new-array v0, v1, [Landroid/graphics/Shader;

    iput-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    .line 434
    new-array v0, v1, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    .line 439
    iput p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    .line 440
    iput p7, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    .line 442
    int-to-float v0, p1

    mul-float v1, v2, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->width:F

    .line 443
    int-to-float v0, p2

    mul-float v1, v2, p4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->height:F

    .line 445
    add-float v0, p3, p6

    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    .line 446
    add-float v0, p4, p6

    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    .line 448
    iput-object p8, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->radii:[F

    .line 450
    invoke-virtual {p0, v3, v3, p1, p2}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->setBounds(IIII)V

    .line 451
    invoke-direct {p0}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->prepare()V

    .line 452
    return-void
.end method

.method synthetic constructor <init>(IIFFFFI[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # F
    .param p6, "x5"    # F
    .param p7, "x6"    # I
    .param p8, "x7"    # [F
    .param p9, "x8"    # Lcom/taobao/weex/utils/BoxShadowUtil$1;

    .prologue
    .line 418
    invoke-direct/range {p0 .. p8}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;-><init>(IIFFFFI[F)V

    return-void
.end method

.method private prepare()V
    .locals 24

    .prologue
    .line 465
    new-instance v12, Landroid/graphics/PointF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v12, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 466
    .local v12, "a":Landroid/graphics/PointF;
    new-instance v13, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->width:F

    const/4 v6, 0x0

    invoke-direct {v13, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 467
    .local v13, "b":Landroid/graphics/PointF;
    new-instance v15, Landroid/graphics/PointF;

    iget v5, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->height:F

    invoke-direct {v15, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 468
    .local v15, "c":Landroid/graphics/PointF;
    new-instance v16, Landroid/graphics/PointF;

    iget v5, v12, Landroid/graphics/PointF;->x:F

    iget v6, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 470
    .local v16, "d":Landroid/graphics/PointF;
    new-instance v17, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 471
    .local v17, "e":Landroid/graphics/PointF;
    new-instance v18, Landroid/graphics/PointF;

    iget v5, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    sub-float/2addr v5, v6

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 472
    .local v18, "f":Landroid/graphics/PointF;
    new-instance v19, Landroid/graphics/PointF;

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    sub-float/2addr v6, v7

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 473
    .local v19, "g":Landroid/graphics/PointF;
    new-instance v20, Landroid/graphics/PointF;

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 475
    .local v20, "h":Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    sub-float v2, v5, v6

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 476
    .local v1, "ltr":Landroid/graphics/Shader;
    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    sub-float v4, v5, v6

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 477
    .local v2, "ttb":Landroid/graphics/Shader;
    new-instance v3, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    add-float v4, v5, v6

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 478
    .local v3, "rtl":Landroid/graphics/Shader;
    new-instance v4, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    add-float/2addr v6, v7

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 480
    .local v4, "btt":Landroid/graphics/Shader;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 481
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 482
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    const/4 v6, 0x2

    aput-object v3, v5, v6

    .line 483
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    const/4 v6, 0x3

    aput-object v4, v5, v6

    .line 485
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 486
    .local v21, "ltrPath":Landroid/graphics/Path;
    iget v5, v12, Landroid/graphics/PointF;->x:F

    iget v6, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 487
    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 488
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 489
    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 490
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->close()V

    .line 492
    new-instance v23, Landroid/graphics/Path;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Path;-><init>()V

    .line 493
    .local v23, "ttbPath":Landroid/graphics/Path;
    iget v5, v12, Landroid/graphics/PointF;->x:F

    iget v6, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 494
    iget v5, v13, Landroid/graphics/PointF;->x:F

    iget v6, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 495
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 496
    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->close()V

    .line 499
    new-instance v22, Landroid/graphics/Path;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Path;-><init>()V

    .line 500
    .local v22, "rtlPath":Landroid/graphics/Path;
    iget v5, v13, Landroid/graphics/PointF;->x:F

    iget v6, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 501
    iget v5, v15, Landroid/graphics/PointF;->x:F

    iget v6, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 502
    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 503
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 504
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    .line 506
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 507
    .local v14, "bttPath":Landroid/graphics/Path;
    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 508
    iget v5, v15, Landroid/graphics/PointF;->x:F

    iget v6, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 509
    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 510
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 511
    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    const/4 v6, 0x0

    aput-object v21, v5, v6

    .line 514
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    const/4 v6, 0x1

    aput-object v23, v5, v6

    .line 515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    const/4 v6, 0x2

    aput-object v22, v5, v6

    .line 516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    const/4 v6, 0x3

    aput-object v14, v5, v6

    .line 518
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    .line 519
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 520
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 522
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 526
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 527
    .local v1, "bounds":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 528
    .local v0, "border":Landroid/graphics/Path;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 529
    .local v4, "rectF":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->radii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 530
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 534
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 536
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v2, v6, :cond_0

    .line 537
    iget-object v6, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    aget-object v5, v6, v2

    .line 538
    .local v5, "shader":Landroid/graphics/Shader;
    iget-object v6, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    aget-object v3, v6, v2

    .line 539
    .local v3, "path":Landroid/graphics/Path;
    iget-object v6, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 540
    iget-object v6, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v5    # "shader":Landroid/graphics/Shader;
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 556
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 547
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 552
    return-void
.end method
