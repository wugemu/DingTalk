.class public Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ManagerOrgContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 52
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->a:J

    .line 53
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->b:J

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->c:Ljava/lang/String;

    .line 56
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->e:J

    .line 57
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->f:Z

    .line 58
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->a:J

    return-wide v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 117
    new-instance v0, Lcry;

    invoke-direct {v0}, Lcry;-><init>()V

    .line 118
    .local v0, "viewObject":Lcry;
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v1

    .line 2047
    iput v1, v0, Lcry;->a:I

    .line 120
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->a:J

    invoke-static {v2, v3}, Lfls;->e(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->g:Z

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x1

    .line 2055
    iput-boolean v1, v0, Lcry;->b:Z

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    sget v2, Lezg$l;->dt_manage_mail_unsetting_hint:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setIndicator(Lcry;)V

    .line 129
    return-void

    .line 124
    :cond_0
    const/4 v1, 0x0

    .line 3055
    iput-boolean v1, v0, Lcry;->b:Z

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->b:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 135
    .local v0, "id":I
    sget v1, Lezg$h;->tc_manage_staff_dept:I

    if-ne v0, v1, :cond_1

    .line 3156
    const-string/jumbo v1, "org_management_org_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 3157
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/manager_org_member.html"

    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    sget v1, Lezg$h;->tc_set_boss:I

    if-ne v0, v1, :cond_2

    .line 3178
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->a:J

    invoke-static {v2, v3, v4}, Lfls;->a(JZ)V

    .line 3179
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->b()V

    .line 3180
    const-string/jumbo v1, "org_management_boss_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 3181
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/setting_org_boss.html"

    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 143
    :cond_2
    sget v1, Lezg$h;->tc_org_label:I

    if-ne v0, v1, :cond_3

    .line 3192
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_qygl&questionId=201602069320&showmenu=false"

    invoke-virtual {v1, p0, v2, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_3
    sget v1, Lezg$h;->tc_active_staff:I

    if-ne v0, v1, :cond_0

    .line 3197
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "https://h5.dingtalk.com/activityUser/index.html?orgId="

    aput-object v3, v1, v2

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3198
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/16 v3, 0x8

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lezg$j;->activity_manager_org_contact:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->setContentView(I)V

    .line 65
    sget v0, Lezg$l;->dt_org_manage_contact:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->setTitle(I)V

    .line 1073
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1074
    if-nez v0, :cond_0

    .line 1075
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->finish()V

    .line 1097
    :goto_0
    sget v0, Lezg$h;->tc_active_staff:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1098
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->e:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 1102
    sget v0, Lezg$h;->tc_set_boss:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 1103
    sget v0, Lezg$h;->tv_set_boss_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1104
    iget v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->d:I

    if-ne v8, v1, :cond_3

    .line 1105
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 1106
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->b()V

    .line 1113
    sget v0, Lezg$h;->tc_org_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->f:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    return-void

    .line 1079
    :cond_0
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->a:J

    .line 1080
    const-string/jumbo v1, "bread_node_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->c:Ljava/lang/String;

    .line 1081
    const-string/jumbo v1, "display_department_oid"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->b:J

    .line 1082
    const-string/jumbo v1, "intent_key_inactive_staff_count"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->e:J

    .line 1083
    const-string/jumbo v1, "intent_key_has_set_boss"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->g:Z

    .line 1085
    const-string/jumbo v1, "key_org_role"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1086
    const-string/jumbo v1, "key_org_role"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->d:I

    .line 1091
    :goto_4
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->a:J

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->f:Z

    goto/16 :goto_0

    .line 1088
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->a:J

    invoke-static {v0, v1}, Lfls;->a(J)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->d:I

    goto :goto_4

    .line 1098
    :cond_2
    sget v1, Lezg$l;->dt_org_manage_unactive_members:I

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->e:J

    .line 1099
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1108
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContactActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 1109
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    move v0, v3

    .line 1113
    goto :goto_3
.end method
