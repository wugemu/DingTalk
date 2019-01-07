.class final Landroid/support/v4/view/PagerTitleStrip$a;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$c;
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/PagerTitleStrip;

.field private b:I


# direct methods
.method constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 473
    return-void
.end method


# virtual methods
.method public final onAdapterChanged(Landroid/support/v4/view/ViewPager;Lgl;Lgl;)V
    .locals 1
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "oldAdapter"    # Lgl;
    .param p3, "newAdapter"    # Lgl;

    .prologue
    .line 503
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/PagerTitleStrip;->a(Lgl;Lgl;)V

    .line 504
    return-void
.end method

.method public final onChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 508
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->a(ILgl;)V

    .line 510
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget v1, v1, Landroid/support/v4/view/PagerTitleStrip;->e:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget v0, v1, Landroid/support/v4/view/PagerTitleStrip;->e:F

    .line 511
    .local v0, "offset":F
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    .line 512
    return-void
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 497
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->b:I

    .line 498
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 477
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 479
    add-int/lit8 p1, p1, 0x1

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    .line 482
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 486
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->b:I

    if-nez v1, :cond_1

    .line 488
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->a(ILgl;)V

    .line 490
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget v1, v1, Landroid/support/v4/view/PagerTitleStrip;->e:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget v0, v1, Landroid/support/v4/view/PagerTitleStrip;->e:F

    .line 491
    .local v0, "offset":F
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$a;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    .line 493
    .end local v0    # "offset":F
    :cond_1
    return-void
.end method
