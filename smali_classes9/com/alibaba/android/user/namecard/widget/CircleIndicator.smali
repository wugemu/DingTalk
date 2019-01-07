.class public Lcom/alibaba/android/user/namecard/widget/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->b:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->setOrientation(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 85
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 90
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 94
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v4

    .line 95
    .local v4, "pd":Lgl;
    invoke-virtual {v4}, Lgl;->getCount()I

    move-result v0

    .line 96
    .local v0, "count":I
    const/4 v5, 0x1

    if-gt v0, v5, :cond_1

    .line 114
    .end local v4    # "pd":Lgl;
    :cond_0
    return-void

    .line 99
    .restart local v4    # "pd":Lgl;
    :cond_1
    move v1, p1

    .line 100
    .local v1, "current":I
    instance-of v5, v4, Lfum;

    if-eqz v5, :cond_2

    .line 101
    check-cast v4, Lfum;

    .line 3071
    .end local v4    # "pd":Lgl;
    iget v0, v4, Lfum;->a:I

    .line 102
    rem-int v1, p1, v0

    .line 105
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 106
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 108
    .local v3, "iv":Landroid/widget/ImageView;
    if-ne v1, v2, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$g;->card_bg_indicator_selected:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$g;->card_bg_indicator_normal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 7
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 30
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->removeAllViews()V

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1040
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1041
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->removeAllViews()V

    .line 1042
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v1

    .line 1047
    invoke-virtual {v1}, Lgl;->getCount()I

    move-result v2

    .line 1049
    instance-of v0, v1, Lfum;

    if-eqz v0, :cond_1

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "count is "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgl;->getCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1051
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "real count is "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lfum;

    invoke-virtual {v0}, Lfum;->a()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1054
    :cond_1
    if-gt v2, v5, :cond_3

    .line 1056
    if-ne v2, v5, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1059
    :cond_2
    return-void

    .line 1062
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1063
    instance-of v4, v1, Lfum;

    if-eqz v4, :cond_5

    .line 1064
    check-cast v1, Lfum;

    .line 2071
    iget v1, v1, Lfum;->a:I

    .line 1065
    rem-int/2addr v0, v1

    .line 1067
    :goto_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1068
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v2, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    const/4 v5, -0x2

    invoke-direct {v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1069
    const/16 v2, 0x11

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v2, v3

    .line 1070
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1071
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1072
    if-ne v0, v2, :cond_4

    .line 1073
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$g;->card_bg_indicator_selected:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1077
    :goto_2
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->b:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1070
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1075
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$g;->card_bg_indicator_normal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method
