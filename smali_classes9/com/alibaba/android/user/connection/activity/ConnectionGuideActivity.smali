.class public Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "ConnectionGuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;,
        Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;
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
            "Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;",
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
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x14

    .line 79
    sget v3, Lezg$h;->ll_guide_indicator_group:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->d:Landroid/widget/LinearLayout;

    .line 80
    sget v3, Lezg$h;->view_selected_indicator:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->e:Landroid/view/View;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 83
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 84
    .local v2, "view":Landroid/view/View;
    sget v3, Lezg$g;->guide_indicator_unselected:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 87
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 89
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lezg$j;->activity_connection_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->setContentView(I)V

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->c:Ljava/util/List;

    .line 1055
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;

    const-string/jumbo v2, "@lADPBbCc1WBIU8nNAxjNA40"

    sget v3, Lezg$l;->dt_circle_intro_for_manager:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;

    const-string/jumbo v2, "@lADPBbCc1WBHwO7NAxjNA40"

    sget v3, Lezg$l;->dt_circle_intro_for_normal:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;

    const-string/jumbo v2, "@lADPBbCc1WBIU8jNAxjNA40"

    sget v3, Lezg$l;->dt_circle_intro_for_employee:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    sget v0, Lezg$h;->guide_view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 1062
    new-instance v0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;B)V

    .line 1063
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 1064
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1066
    sget v0, Lezg$h;->btn_start_circle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->b:Landroid/widget/Button;

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$1;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->a()V

    .line 51
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 96
    iget v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->f:I

    if-nez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->d:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->d:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    .line 98
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->f:I

    .line 100
    :cond_0
    iget v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->f:I

    int-to-float v2, v2

    int-to-float v3, p1

    add-float/2addr v3, p2

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 101
    .local v0, "leftMargin":I
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->e:Landroid/view/View;

    .line 102
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
