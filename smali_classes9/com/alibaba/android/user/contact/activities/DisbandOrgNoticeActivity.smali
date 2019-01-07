.class public Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "DisbandOrgNoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 30
    const-string/jumbo v0, "DisbandOrgNoticeActivity"

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->a:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->b:I

    .line 39
    iput v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->h:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->g:J

    return-wide v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->btn_next:I

    if-ne v0, v1, :cond_3

    .line 92
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1115
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->showLoadingDialogDelay(J)V

    .line 1117
    new-instance v0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;)V

    .line 1151
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1152
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->g:J

    invoke-interface {v1, v2, v3, v0}, Lezt;->i(JLcma;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2110
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->g:J

    .line 2191
    if-nez p0, :cond_2

    .line 2192
    const-string/jumbo v0, "UserNavigator"

    const-string/jumbo v1, "nav2OrgDisbandChooseReasonPage, activity == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2111
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->finish()V

    goto :goto_0

    .line 2196
    :cond_2
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org/disband_reason.html"

    new-instance v4, Lflz$10;

    invoke-direct {v4, v2, v3}, Lflz$10;-><init>(J)V

    invoke-interface {v0, v1, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_close:I

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lezg$j;->user_activity_disband_org_notice_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->setContentView(I)V

    .line 1052
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->g:J

    .line 1057
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_org_disband_tag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->h:I

    .line 1059
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->h:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->h:I

    if-eq v0, v5, :cond_0

    .line 1060
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "DisbandOrgNoticeActivity"

    const-string/jumbo v2, "give invalid notice tag"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->finish()V

    .line 1066
    :cond_0
    sget v0, Lezg$h;->tv_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->c:Landroid/widget/TextView;

    .line 1067
    sget v0, Lezg$h;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->d:Landroid/widget/TextView;

    .line 1068
    sget v0, Lezg$h;->tv_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->e:Landroid/widget/TextView;

    .line 1069
    sget v0, Lezg$h;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->f:Landroid/widget/Button;

    .line 1071
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->h:I

    if-ne v0, v5, :cond_2

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->d:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_contact_org_disband_cancel_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->f:Landroid/widget/Button;

    sget v1, Lezg$l;->dt_contact_org_disband_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1075
    sget v0, Lezg$l;->dt_contact_org_disband_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->setTitle(I)V

    .line 1085
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void

    .line 1077
    :cond_2
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->h:I

    if-ne v0, v4, :cond_1

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->d:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_contact_org_disband_sure_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->e:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_contact_org_disband_sure_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->f:Landroid/widget/Button;

    sget v1, Lezg$l;->dissolution_team:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1081
    sget v0, Lezg$l;->dt_contact_org_disband_sure_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->setTitle(I)V

    goto :goto_0
.end method
