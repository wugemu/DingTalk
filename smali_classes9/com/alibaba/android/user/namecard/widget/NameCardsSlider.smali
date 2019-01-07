.class public Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;
.super Landroid/widget/RelativeLayout;
.source "NameCardsSlider.java"


# instance fields
.field private a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

.field private b:Lcom/alibaba/android/user/namecard/widget/CircleIndicator;

.field private c:Lfum;

.field private d:Landroid/content/Context;

.field private e:Lftb$a;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->f:Z

    .line 37
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->d:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->view_name_card_item_layout:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method public getCardAdapter()Lfum;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->c:Lfum;

    return-object v0
.end method

.method public getCardPageIndicator()Lcom/alibaba/android/user/namecard/widget/CircleIndicator;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->b:Lcom/alibaba/android/user/namecard/widget/CircleIndicator;

    return-object v0
.end method

.method public getCardViewpager()Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    return-object v0
.end method

.method public setCardNavigator(Lftb$a;)V
    .locals 0
    .param p1, "navigator"    # Lftb$a;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->e:Lftb$a;

    .line 51
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "beans":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;>;"
    const/4 v6, 0x1

    .line 42
    .line 1068
    sget v0, Lezg$h;->card_viewpager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->a()V

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setScrollDurationFactor(D)V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setInterceptTouch(Z)V

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setInterval(J)V

    .line 1074
    sget v0, Lezg$h;->card_page_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->b:Lcom/alibaba/android/user/namecard/widget/CircleIndicator;

    .line 1076
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 1093
    if-nez v0, :cond_1

    .line 1094
    const/4 v0, 0x0

    .line 1079
    :goto_1
    if-eqz v0, :cond_0

    .line 1080
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1097
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lezg$j;->view_name_card_create_information:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1099
    sget v1, Lezg$h;->name_card_item:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/namecard/widget/NameCardView;

    .line 1100
    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->setDataToView(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 1102
    new-instance v0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider$1;-><init>(Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;)V

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->setSubViewClickListener(Lcom/alibaba/android/user/namecard/widget/NameCardView$a;)V

    move-object v0, v2

    .line 1121
    goto :goto_1

    .line 1083
    :cond_2
    new-instance v0, Lfum;

    invoke-direct {v0, v3}, Lfum;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->c:Lfum;

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->c:Lfum;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 2075
    iput v1, v0, Lfum;->a:I

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->c:Lfum;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setAdapter(Lgl;)V

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->b:Lcom/alibaba/android/user/namecard/widget/CircleIndicator;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->a:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v6, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setPageMargin(I)V

    .line 43
    return-void
.end method

.method public setEditVisbility(Z)V
    .locals 0
    .param p1, "visbility"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->f:Z

    .line 64
    return-void
.end method
