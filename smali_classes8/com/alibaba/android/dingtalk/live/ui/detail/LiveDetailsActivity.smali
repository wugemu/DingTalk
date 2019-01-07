.class public Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "LiveDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

.field private b:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;

.field private g:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    .prologue
    .line 33
    .line 3094
    if-eqz p1, :cond_1

    .line 3098
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->g:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    .line 3099
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->c:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->duration:J

    invoke-static {v2, v3}, Lcom/taobao/taolive/sdk/utils/DingTalkUtils;->parseAppointmentTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3100
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->d:Landroid/widget/TextView;

    iget v1, p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->messageCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3101
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->e:Landroid/widget/TextView;

    iget v1, p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->praiseCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3103
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_0

    .line 3104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3107
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->f:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;->notifyDataSetChanged()V

    .line 33
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->b:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->b:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->g:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v1, Lbtp$f;->activity_live_details:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->setContentView(I)V

    .line 1060
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "cid"

    invoke-static {v1, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->h:Ljava/lang/String;

    .line 1061
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "intent_extra_live_uuid"

    invoke-static {v1, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->i:Ljava/lang/String;

    .line 1063
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v1, :cond_0

    .line 1064
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "title"

    invoke-static {v1, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1066
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1070
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1071
    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "LiveDetailsActivity params incorrect, cid="

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->h:Ljava/lang/String;

    aput-object v3, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v3, ", uuid="

    aput-object v3, v1, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->i:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2013
    const-string/jumbo v1, "live"

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 52
    :cond_2
    if-nez v0, :cond_3

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->finish()V

    .line 2079
    :cond_3
    sget v0, Lbtp$e;->tab_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 2080
    sget v1, Lbtp$e;->view_pager:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 2082
    sget v3, Lbtp$b;->selector_replay_tab:I

    invoke-static {p0, v3}, Ldp;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 2083
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 2085
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-direct {v0, p0, v3, v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;Lcn;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->f:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;

    .line 2086
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->f:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$a;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 2088
    sget v0, Lbtp$e;->tv_duration:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->c:Landroid/widget/TextView;

    .line 2089
    sget v0, Lbtp$e;->tv_message_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->d:Landroid/widget/TextView;

    .line 2090
    sget v0, Lbtp$e;->tv_praise_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->e:Landroid/widget/TextView;

    .line 2112
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;)V

    .line 2129
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2130
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lbxe;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 57
    return-void
.end method
