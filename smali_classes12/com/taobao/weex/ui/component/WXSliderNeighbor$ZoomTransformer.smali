.class Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;
.super Ljava/lang/Object;
.source "WXSliderNeighbor.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSliderNeighbor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomTransformer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 12
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 348
    iget-object v9, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v9, v9, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v9, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getPagePosition(Landroid/view/View;)I

    move-result v4

    .line 349
    .local v4, "pagePosition":I
    iget-object v9, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v9, v9, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v9}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCurrentItem()I

    move-result v1

    .line 351
    .local v1, "curPosition":I
    iget-object v9, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v9, v9, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v9}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v5

    .line 353
    .local v5, "realCount":I
    const/4 v3, 0x0

    .line 354
    .local v3, "ignore":Z
    if-eqz v1, :cond_0

    add-int/lit8 v9, v5, -0x1

    if-eq v1, v9, :cond_0

    sub-int v9, v4, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 355
    const/4 v3, 0x1

    .line 357
    :cond_0
    if-nez v1, :cond_1

    add-int/lit8 v9, v5, -0x1

    if-ge v4, v9, :cond_1

    const/4 v9, 0x1

    if-le v4, v9, :cond_1

    .line 358
    const/4 v3, 0x1

    .line 360
    :cond_1
    add-int/lit8 v9, v5, -0x1

    if-ne v1, v9, :cond_2

    add-int/lit8 v9, v5, -0x2

    if-ge v4, v9, :cond_2

    if-lez v4, :cond_2

    .line 361
    const/4 v3, 0x1

    .line 364
    :cond_2
    if-eqz v3, :cond_4

    .line 408
    :cond_3
    :goto_0
    return-void

    :cond_4
    move-object v9, p1

    .line 368
    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 369
    .local v6, "realView":Landroid/view/View;
    if-eqz v6, :cond_3

    .line 374
    neg-int v9, v5

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    cmpg-float v9, p2, v9

    if-gtz v9, :cond_5

    .line 375
    int-to-float v9, v5

    add-float/2addr p2, v9

    .line 377
    :cond_5
    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    cmpl-float v9, p2, v9

    if-ltz v9, :cond_6

    .line 378
    int-to-float v9, v5

    sub-float/2addr p2, v9

    .line 381
    :cond_6
    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, p2, v9

    if-ltz v9, :cond_3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, p2, v9

    if-gtz v9, :cond_3

    .line 382
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 383
    .local v2, "factor":F
    iget-object v9, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v9}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$100(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v9

    iget-object v10, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v10}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$200(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v10

    iget-object v11, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v11}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$100(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, v2

    add-float v7, v9, v10

    .line 384
    .local v7, "scale":F
    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v10}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$300(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    iget-object v10, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v10}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$300(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v10

    add-float v0, v9, v10

    .line 386
    .local v0, "alpha":F
    iget-object v9, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v9, p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$400(Lcom/taobao/weex/ui/component/WXSliderNeighbor;Landroid/view/View;)F

    move-result v8

    .line 387
    .local v8, "translation":F
    const/4 v9, 0x0

    cmpl-float v9, p2, v9

    if-lez v9, :cond_7

    .line 388
    mul-float/2addr v8, p2

    .line 389
    neg-float v9, v8

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    neg-float v9, v8

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 403
    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    .line 404
    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    .line 405
    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 391
    :cond_7
    const/4 v9, 0x0

    cmpl-float v9, p2, v9

    if-nez v9, :cond_8

    .line 392
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 393
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 394
    iget-object v9, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v10, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v10}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$300(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v10

    iget-object v11, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v11}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$100(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$500(Lcom/taobao/weex/ui/component/WXSliderNeighbor;FF)V

    goto :goto_1

    .line 396
    :cond_8
    const/4 v9, 0x2

    if-ne v5, v9, :cond_9

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_3

    .line 399
    :cond_9
    neg-float v9, p2

    mul-float/2addr v8, v9

    .line 400
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 401
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method
