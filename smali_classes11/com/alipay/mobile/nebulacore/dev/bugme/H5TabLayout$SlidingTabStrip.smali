.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "H5TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mHasInit:Z

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mIsIndicatorScrollable:Z

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 653
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 654
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 644
    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 647
    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 648
    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIsIndicatorScrollable:Z

    .line 651
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mHasInit:Z

    .line 655
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 656
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 657
    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 640
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method static synthetic access$1202(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 640
    iput p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$1302(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 640
    iput p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectionOffset:F

    return p1
.end method

.method private setIndicatorPosition(II)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 731
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_1

    .line 733
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 734
    iput p2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 735
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 737
    :cond_1
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 708
    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 711
    .local v3, "selectedTitle":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 712
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 713
    .local v0, "left":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 715
    .local v2, "right":I
    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 717
    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 718
    .local v1, "nextTitle":Landroid/view/View;
    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 720
    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 727
    .end local v1    # "nextTitle":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 728
    return-void

    .line 724
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_1
    const/4 v2, -0x1

    .restart local v2    # "right":I
    move v0, v2

    .restart local v0    # "left":I
    goto :goto_0
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 740
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v9

    if-ne v9, v1, :cond_2

    move v6, v1

    .line 743
    .local v6, "isRtl":Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 744
    .local v8, "targetView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 745
    .local v3, "targetLeft":I
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v5

    .line 749
    .local v5, "targetRight":I
    iget v9, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int v9, p1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v1, :cond_3

    .line 751
    iget v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 752
    .local v2, "startLeft":I
    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 773
    .local v4, "startRight":I
    :goto_1
    if-ne v2, v3, :cond_0

    if-eq v4, v5, :cond_1

    .line 774
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;IIII)V

    .line 782
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 783
    int-to-long v10, p2

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 784
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 800
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->startAnimation(Landroid/view/animation/Animation;)V

    .line 802
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    return-void

    .line 740
    .end local v2    # "startLeft":I
    .end local v3    # "targetLeft":I
    .end local v4    # "startRight":I
    .end local v5    # "targetRight":I
    .end local v6    # "isRtl":Z
    .end local v8    # "targetView":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 755
    .restart local v3    # "targetLeft":I
    .restart local v5    # "targetRight":I
    .restart local v6    # "isRtl":Z
    .restart local v8    # "targetView":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    const/16 v9, 0x18

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$900(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;I)I

    move-result v7

    .line 756
    .local v7, "offset":I
    iget v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge p1, v1, :cond_4

    .line 758
    if-nez v6, :cond_5

    .line 761
    add-int v4, v5, v7

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_1

    .line 765
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_4
    if-eqz v6, :cond_5

    .line 766
    add-int v4, v5, v7

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_1

    .line 768
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_5
    sub-int v4, v3, v7

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 806
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 807
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorRight:I

    iget v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-le v0, v1, :cond_0

    .line 808
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 811
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 698
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 700
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$800(Landroid/view/animation/Animation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 705
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 687
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 689
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 694
    :cond_0
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIsIndicatorScrollable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mHasInit:Z

    if-eqz v0, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$800(Landroid/view/animation/Animation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    iput p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 676
    iput p2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 677
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mHasInit:Z

    goto :goto_0
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 660
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 661
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 662
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 665
    iput p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 666
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 667
    return-void
.end method

.method setSelectedIndicatorScrollable(Z)V
    .locals 0
    .param p1, "isScrollable"    # Z

    .prologue
    .line 682
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->mIsIndicatorScrollable:Z

    .line 683
    return-void
.end method
