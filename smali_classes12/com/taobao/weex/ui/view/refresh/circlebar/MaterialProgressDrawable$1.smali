.class Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->val$ring:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 14
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 371
    iget-object v10, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    iget-boolean v10, v10, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v10, :cond_0

    .line 372
    iget-object v10, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    iget-object v11, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->val$ring:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;

    invoke-static {v10, p1, v11}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->access$000(Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;FLcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;)V

    .line 418
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v10, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    iget-object v11, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->val$ring:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;

    invoke-static {v10, v11}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->access$100(Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;)F

    move-result v3

    .line 377
    .local v3, "minProgressArc":F
    iget-object v10, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->val$ring:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v7

    .line 378
    .local v7, "startingEndTrim":F
    iget-object v10, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->val$ring:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v9

    .line 379
    .local v9, "startingTrim":F
    iget-object v10, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->val$ring:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v8

    .line 381
    .local v8, "startingRotation":F
    iget-object v10, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    iget-object v11, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->val$ring:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;

    invoke-static {v10, p1, v11}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->access$200(Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;FLcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;)V

    .line 385
    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_1

    .line 389
    const/high16 v10, 0x3f000000    # 0.5f

    div-float v5, p1, v10

    .line 391
    .local v5, "scaledTime":F
    const v10, 0x3f4ccccd    # 0.8f

    sub-float/2addr v10, v3

    .line 392
    invoke-static {}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v11

    .line 393
    invoke-interface {v11, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 394
    .local v6, "startTrim":F
    iget-object v10, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->val$ring:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v6}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 399
    .end local v5    # "scaledTime":F
    .end local v6    # "startTrim":F
    :cond_1
    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v10, p1, v10

    if-lez v10, :cond_2

    .line 403
    const v10, 0x3f4ccccd    # 0.8f

    sub-float v2, v10, v3

    .line 404
    .local v2, "minArc":F
    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v10, p1, v10

    const/high16 v11, 0x3f000000    # 0.5f

    div-float v5, v10, v11

    .line 407
    .restart local v5    # "scaledTime":F
    invoke-static {}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v10, v2

    add-float v0, v7, v10

    .line 408
    .local v0, "endTrim":F
    iget-object v10, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->val$ring:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 411
    .end local v0    # "endTrim":F
    .end local v2    # "minArc":F
    .end local v5    # "scaledTime":F
    :cond_2
    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v10, p1

    add-float v4, v8, v10

    .line 412
    .local v4, "rotation":F
    iget-object v10, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->val$ring:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v4}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 414
    const/high16 v10, 0x43580000    # 216.0f

    mul-float/2addr v10, p1

    const/high16 v11, 0x44870000    # 1080.0f

    iget-object v12, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    .line 415
    invoke-static {v12}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->access$400(Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;)F

    move-result v12

    const/high16 v13, 0x40a00000    # 5.0f

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    add-float v1, v10, v11

    .line 416
    .local v1, "groupRotation":F
    iget-object v10, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-virtual {v10, v1}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setRotation(F)V

    goto/16 :goto_0
.end method
