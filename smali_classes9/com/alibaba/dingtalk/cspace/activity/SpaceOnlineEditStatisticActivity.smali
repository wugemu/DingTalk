.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceOnlineEditStatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private final d:I

.field private e:Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

.field private f:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

.field private g:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->d:I

    .line 53
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->a:I

    .line 54
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->b:I

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->g:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    return-object p1
.end method

.method private a(II)Ljava/lang/String;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v0, 0x3e8

    if-ge p2, v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "999+"

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 44
    .line 2115
    const-string/jumbo v0, "pref_key_space_online_edit_send_task_new"

    invoke-static {v0, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2117
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->e:Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    if-nez v0, :cond_0

    .line 2118
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2131
    :goto_0
    return-void

    .line 2122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->g:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a()Ljava/util/List;

    move-result-object v1

    .line 2124
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2125
    sget v0, Lfzs$h;->dt_im_space_online_edit_all_fill:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 2129
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x3e7

    if-le v0, v2, :cond_2

    .line 2130
    sget v0, Lfzs$h;->dt_space_statistics_ding_too_many_message:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 2134
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->e:Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .line 2136
    :goto_1
    new-instance v2, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 2137
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2138
    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2139
    sget v3, Lfzs$h;->dt_cspace_online_document_statistic_ding_tip_at:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2140
    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2141
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->e:Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_Space:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getAttachment(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;I)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v0

    .line 2142
    iput-boolean v5, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->isCSpaceCopy:Z

    .line 2143
    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2144
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    .line 2922
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 2144
    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    goto :goto_0

    .line 2134
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->e:Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->g:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->f:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->e:Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->f:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 208
    sget v0, Lfzs$h;->dt_cspace_edit_count:I

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->a:I

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 212
    sget v0, Lfzs$h;->dt_cspace_unedit_count:I

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->b:I

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1148
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    .line 1152
    invoke-static {v0}, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->fix(Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->e:Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    .line 1156
    :cond_0
    sget v0, Lfzs$h;->dt_cspace_edit_statistic:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->setTitle(I)V

    .line 1157
    sget v0, Lfzs$g;->activity_space_tab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->setContentView(I)V

    .line 1159
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->hideToolbarDivide()V

    .line 1161
    sget v0, Lfzs$f;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 1162
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$a;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;Lcn;B)V

    .line 1163
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 1165
    sget v1, Lfzs$f;->indicator:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 1166
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    sget v1, Lfzs$h;->home_menu_create_ding:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v6, v2, v6, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 70
    .local v0, "menuItemTaskSend":Landroid/view/MenuItem;
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2077
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->layout_menu_text_red_dot:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2078
    sget v1, Lfzs$f;->text:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2079
    sget v3, Lfzs$f;->red_dot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2081
    sget v4, Lfzs$h;->home_menu_create_ding:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2083
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->g:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->g:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a()Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->g:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2085
    :cond_0
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 2086
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$c;->ui_common_level3_text_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2107
    :cond_1
    const/16 v1, 0x8

    invoke-static {v3, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 71
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 2090
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 2091
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$c;->ui_common_theme_text_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2092
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$1;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceOnlineEditStatisticActivity;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2104
    const-string/jumbo v1, "pref_key_space_online_edit_send_task_new"

    invoke-static {v1, v7}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2105
    invoke-static {v3, v6}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0
.end method
