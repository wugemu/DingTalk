.class public Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CircleGuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;,
        Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/widget/Button;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/view/View;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v4, 0x14

    .line 76
    sget v3, Lbpu$d;->ll_guide_indicator_group:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->d:Landroid/widget/LinearLayout;

    .line 77
    sget v3, Lbpu$d;->view_selected_indicator:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->e:Landroid/view/View;

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 80
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    .local v2, "view":Landroid/view/View;
    sget v3, Lbpu$c;->guide_indicator_unselected:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 82
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 84
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 86
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lbpu$e;->activity_circle_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->setContentView(I)V

    .line 1051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->c:Ljava/util/List;

    .line 1052
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;

    const-string/jumbo v2, "@lADPBbCc1WBIU8nNAxjNA40"

    sget v3, Lbpu$f;->dt_circle_intro_for_manager:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;

    const-string/jumbo v2, "@lADPBbCc1WBHwO7NAxjNA40"

    sget v3, Lbpu$f;->dt_circle_intro_for_normal:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;

    const-string/jumbo v2, "@lADPBbCc1WBIU8jNAxjNA40"

    sget v3, Lbpu$f;->dt_circle_intro_for_employee:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    sget v0, Lbpu$d;->guide_view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 1059
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;B)V

    .line 1060
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 1061
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1063
    sget v0, Lbpu$d;->btn_start_circle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->b:Landroid/widget/Button;

    .line 1064
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1072
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->a()V

    .line 48
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 93
    iget v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->f:I

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->d:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->d:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    .line 95
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->f:I

    .line 97
    :cond_0
    iget v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->f:I

    int-to-float v2, v2

    int-to-float v3, p1

    add-float/2addr v3, p2

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 98
    .local v0, "leftMargin":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->e:Landroid/view/View;

    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 101
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
