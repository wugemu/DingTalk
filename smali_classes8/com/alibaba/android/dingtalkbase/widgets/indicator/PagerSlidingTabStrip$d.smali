.class final Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;II)V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$d;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$d;->onPageScrollStateChanged(I)V

    .line 552
    :cond_1
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 526
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;I)I

    .line 527
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v2, p2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;F)F

    .line 529
    const/4 v1, 0x0

    .line 530
    .local v1, "width":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->d(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 531
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    int-to-float v3, v1

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-static {v2, p1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;II)V

    .line 536
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 538
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$d;

    if-eqz v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v2, p1, p2, p3}, Landroid/support/v4/view/ViewPager$d;->onPageScrolled(IFI)V

    .line 541
    :cond_1
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 556
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$d;

    if-eqz v4, :cond_0

    .line 557
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v4, p1}, Landroid/support/v4/view/ViewPager$d;->onPageSelected(I)V

    .line 560
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->d(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 561
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 562
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->d(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 563
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 564
    .local v2, "isSelected":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 561
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    .end local v2    # "isSelected":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 575
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method
