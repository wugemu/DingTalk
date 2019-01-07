.class public Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "GroupQrcodeActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

.field private c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

.field private h:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->d:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->e:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->f:I

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    .line 1116
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1117
    if-nez v0, :cond_0

    .line 1118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1120
    :cond_0
    if-nez p1, :cond_1

    .line 1121
    new-instance v1, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    invoke-direct {v1}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->g:Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    .line 1122
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->g:Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->g:Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    .line 1127
    :goto_0
    return-object v0

    .line 1124
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1125
    new-instance v1, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-direct {v1}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->h:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .line 1126
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->h:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->h:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    goto :goto_0

    .line 1129
    :cond_2
    const/4 v0, 0x0

    .line 34
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lezg$j;->activity_group_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->hideToolbarDivide()V

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->finish()V

    .line 61
    :goto_0
    return-void

    .line 1064
    :cond_0
    sget v0, Lezg$h;->ll_tab_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 1065
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v1, Lezg$e;->ui_common_tab_bar_active_fg_color:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setTextColorSeletor(I)V

    .line 1066
    sget v0, Lezg$h;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    .line 1069
    new-instance v0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity$a;-><init>(Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;Lcn;)V

    .line 1070
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setAdapter(Lgl;)V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1075
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1076
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->c:I

    .line 1080
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->c:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 60
    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p0, v2, v0}, Lcms;->a(Landroid/app/Activity;ZF)V

    goto :goto_0

    .line 1078
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->c:I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 135
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->c:I

    .line 140
    return-void
.end method
