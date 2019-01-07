.class final Lkfc$4;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkfc$c;

.field final synthetic b:Lkfc;


# direct methods
.method constructor <init>(Lkfc;Lkfc$c;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lkfc$4;->b:Lkfc;

    iput-object p2, p0, Lkfc$4;->a:Lkfc$c;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 18
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Lkfc$4;->a:Lkfc$c;

    .line 1573
    iget v11, v11, Lkfc$c;->h:F

    .line 369
    float-to-double v12, v11

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    move-object/from16 v0, p0

    iget-object v11, v0, Lkfc$4;->a:Lkfc$c;

    .line 1643
    iget-wide v0, v11, Lkfc$c;->r:D

    move-wide/from16 v16, v0

    .line 369
    mul-double v14, v14, v16

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 371
    .local v5, "minProgressArc":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lkfc$4;->a:Lkfc$c;

    .line 2601
    iget v8, v11, Lkfc$c;->m:F

    .line 372
    .local v8, "startingEndTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lkfc$4;->a:Lkfc$c;

    .line 3597
    iget v10, v11, Lkfc$c;->l:F

    .line 373
    .local v10, "startingTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lkfc$4;->a:Lkfc$c;

    .line 3678
    iget v9, v11, Lkfc$c;->n:F

    .line 375
    .local v9, "startingRotation":F
    const v11, 0x3f4ccccd    # 0.8f

    sub-float v4, v11, v5

    .line 376
    .local v4, "minArc":F
    invoke-static {}, Lkfc;->a()Landroid/view/animation/Interpolator;

    move-result-object v11

    move/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v11, v4

    add-float v2, v8, v11

    .line 378
    .local v2, "endTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lkfc$4;->a:Lkfc$c;

    invoke-virtual {v11, v2}, Lkfc$c;->b(F)V

    .line 379
    const v11, 0x3f4ccccd    # 0.8f

    invoke-static {}, Lkfc;->b()Landroid/view/animation/Interpolator;

    move-result-object v12

    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float v7, v10, v11

    .line 382
    .local v7, "startTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lkfc$4;->a:Lkfc$c;

    invoke-virtual {v11, v7}, Lkfc$c;->a(F)V

    .line 383
    const/high16 v11, 0x3e800000    # 0.25f

    mul-float v11, v11, p1

    add-float v6, v9, v11

    .line 384
    .local v6, "rotation":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lkfc$4;->a:Lkfc$c;

    invoke-virtual {v11, v6}, Lkfc$c;->c(F)V

    .line 385
    const/high16 v11, 0x43100000    # 144.0f

    mul-float v11, v11, p1

    const/high16 v12, 0x44340000    # 720.0f

    move-object/from16 v0, p0

    iget-object v13, v0, Lkfc$4;->b:Lkfc;

    invoke-static {v13}, Lkfc;->c(Lkfc;)F

    move-result v13

    const/high16 v14, 0x40a00000    # 5.0f

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float v3, v11, v12

    .line 387
    .local v3, "groupRotation":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lkfc$4;->b:Lkfc;

    invoke-virtual {v11, v3}, Lkfc;->a(F)V

    .line 388
    return-void
.end method
