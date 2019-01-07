.class public Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "TransformItemDecoration.java"


# instance fields
.field mAlpha:F

.field mIsVertical:Z

.field mRotation:I

.field mScaleX:F

.field mScaleY:F

.field mXTranslate:I

.field mYTranslate:I


# direct methods
.method public constructor <init>(ZFIIIFF)V
    .locals 3
    .param p1, "isVertical"    # Z
    .param p2, "alpha"    # F
    .param p3, "translateX"    # I
    .param p4, "translateY"    # I
    .param p5, "rotation"    # I
    .param p6, "scaleX"    # F
    .param p7, "scaleY"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mIsVertical:Z

    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mAlpha:F

    .line 28
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mXTranslate:I

    .line 29
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mYTranslate:I

    .line 30
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mRotation:I

    .line 31
    iput v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleX:F

    .line 32
    iput v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleY:F

    .line 35
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mIsVertical:Z

    .line 36
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mAlpha:F

    .line 37
    iput p3, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mXTranslate:I

    .line 38
    iput p4, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mYTranslate:I

    .line 39
    iput p5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mRotation:I

    .line 40
    iput p6, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleX:F

    .line 41
    iput p7, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleY:F

    .line 42
    return-void
.end method

.method private updateItem(Landroid/view/View;II)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 57
    iget-boolean v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mIsVertical:Z

    if-eqz v5, :cond_6

    .line 58
    move v2, p3

    .line 59
    .local v2, "containerSize":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 60
    .local v4, "size":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    add-int v1, v5, v6

    .line 67
    .local v1, "childCenter":I
    :goto_0
    add-int v5, v2, v4

    div-int/lit8 v0, v5, 0x2

    .line 68
    .local v0, "actionDistance":I
    const/high16 v5, -0x40800000    # -1.0f

    int-to-float v6, v0

    div-float v6, v8, v6

    div-int/lit8 v7, v2, 0x2

    sub-int v7, v1, v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 71
    .local v3, "effectsAmount":F
    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mAlpha:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_0

    .line 72
    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float v5, v8, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 75
    :cond_0
    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleX:F

    cmpl-float v5, v5, v9

    if-gtz v5, :cond_1

    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleY:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_2

    .line 76
    :cond_1
    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float v5, v8, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 77
    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float v5, v8, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 80
    :cond_2
    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mRotation:I

    if-eqz v5, :cond_3

    .line 81
    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mRotation:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-virtual {p1, v5}, Landroid/view/View;->setRotation(F)V

    .line 84
    :cond_3
    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mXTranslate:I

    if-eqz v5, :cond_4

    .line 85
    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mXTranslate:I

    int-to-float v5, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 88
    :cond_4
    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mYTranslate:I

    if-eqz v5, :cond_5

    .line 89
    iget v5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mYTranslate:I

    int-to-float v5, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 92
    :cond_5
    return-void

    .line 62
    .end local v0    # "actionDistance":I
    .end local v1    # "childCenter":I
    .end local v2    # "containerSize":I
    .end local v3    # "effectsAmount":F
    .end local v4    # "size":I
    :cond_6
    move v2, p2

    .line 63
    .restart local v2    # "containerSize":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 64
    .restart local v4    # "size":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    add-int v1, v5, v6

    .restart local v1    # "childCenter":I
    goto/16 :goto_0
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 48
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    .line 49
    .local v3, "width":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    .line 50
    .local v1, "height":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 51
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v3, v1}, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->updateItem(Landroid/view/View;II)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method
