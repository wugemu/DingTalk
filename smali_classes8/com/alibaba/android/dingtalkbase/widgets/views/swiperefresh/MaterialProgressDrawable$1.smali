.class final Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 18
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 345
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    iget-boolean v11, v11, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->b:Z

    if-eqz v11, :cond_0

    .line 346
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    move/from16 v0, p1

    invoke-static {v11, v0, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;FLcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;)V

    .line 375
    :goto_0
    return-void

    .line 351
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    .line 1600
    iget v11, v11, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->g:F

    .line 352
    float-to-double v12, v11

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    .line 1669
    iget-wide v0, v11, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->q:D

    move-wide/from16 v16, v0

    .line 352
    mul-double v14, v14, v16

    div-double/2addr v12, v14

    .line 351
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 353
    .local v5, "minProgressArc":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    .line 2619
    iget v8, v11, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->l:F

    .line 354
    .local v8, "startingEndTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    .line 3615
    iget v10, v11, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->k:F

    .line 355
    .local v10, "startingTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    .line 3696
    iget v9, v11, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->m:F

    .line 359
    .local v9, "startingRotation":F
    const v11, 0x3f4ccccd    # 0.8f

    sub-float v4, v11, v5

    .line 361
    .local v4, "minArc":F
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a()Landroid/view/animation/Interpolator;

    move-result-object v11

    move/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v11, v4

    add-float v2, v8, v11

    .line 362
    .local v2, "endTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    invoke-virtual {v11, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->b(F)V

    .line 364
    const v11, 0x3f4ccccd    # 0.8f

    .line 365
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->b()Landroid/view/animation/Interpolator;

    move-result-object v12

    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float v7, v10, v11

    .line 366
    .local v7, "startTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    invoke-virtual {v11, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->a(F)V

    .line 368
    const/high16 v11, 0x3e800000    # 0.25f

    mul-float v11, v11, p1

    add-float v6, v9, v11

    .line 369
    .local v6, "rotation":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    invoke-virtual {v11, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->c(F)V

    .line 371
    const/high16 v11, 0x43100000    # 144.0f

    mul-float v11, v11, p1

    const/high16 v12, 0x44340000    # 720.0f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    .line 372
    invoke-static {v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;)F

    move-result v13

    const/high16 v14, 0x40a00000    # 5.0f

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float v3, v11, v12

    .line 373
    .local v3, "groupRotation":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v11, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a(F)V

    goto/16 :goto_0
.end method
