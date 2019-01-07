.class public Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailManageOrgEmailsActivity.java"


# instance fields
.field private a:J

.field private b:Lrz;

.field private c:Labs;

.field private d:I

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 35
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->b:Lrz;

    .line 73
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;Labs;)Labs;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;
    .param p1, "x1"    # Labs;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->c:Labs;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->b:Lrz;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 99
    check-cast v0, Landroid/widget/TextView;

    .line 100
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    .prologue
    .line 31
    .line 2041
    invoke-static {}, Lui;->a()Lui;

    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->a:J

    invoke-static {v0, v1}, Lui;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 2042
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2043
    const-string/jumbo v2, "display_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->a:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2044
    const-string/jumbo v2, "title"

    sget v3, Laxo$i;->dt_cmail_distribute_mail_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    if-eqz v0, :cond_0

    .line 2046
    const-string/jumbo v2, "bread_node_name"

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->a:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    .line 2143
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->c:Labs;

    if-eqz v0, :cond_0

    .line 2146
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->c:Labs;

    iget-object v0, v0, Labs;->d:Ljava/lang/Integer;

    .line 3033
    invoke-static {v0, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2147
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->c:Labs;

    iget-object v0, v0, Labs;->c:Ljava/lang/Integer;

    .line 4033
    invoke-static {v0, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2147
    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->d:I

    .line 2149
    sget v2, Laxo$f;->distribute_account_tips:I

    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->d:I

    if-nez v0, :cond_1

    sget v0, Laxo$i;->dt_mail_dispatch_undispatch_detail_none:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->a(ILjava/lang/String;)V

    .line 2151
    sget v0, Laxo$f;->manage_account_tips:I

    sget v2, Laxo$i;->dt_mail_dispatch_total_members:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->a(ILjava/lang/String;)V

    .line 31
    :cond_0
    return-void

    .line 2149
    :cond_1
    sget v0, Laxo$i;->dt_mail_dispatch_undispatch_detail:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->d:I

    .line 2150
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v2, Laxo$g;->activity_mail_manage_org_mails:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->setContentView(I)V

    .line 56
    new-array v2, v5, [I

    sget v3, Laxo$f;->add_new_org_mail:I

    aput v3, v2, v1

    const/4 v3, 0x1

    sget v4, Laxo$f;->manage_account_layout:I

    aput v4, v2, v3

    const/4 v3, 0x2

    sget v4, Laxo$f;->distribute_account_layout:I

    aput v4, v2, v3

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->e:Landroid/view/View$OnClickListener;

    .line 1068
    :goto_0
    if-ge v1, v5, :cond_0

    aget v4, v2, v1

    .line 1069
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "org_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->a:J

    .line 60
    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->finish()V

    .line 65
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 156
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 1106
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->showLoadingDialog()V

    .line 1107
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1108
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1107
    invoke-virtual {v1, v2, v0}, Lro;->a(Ljava/lang/Long;Lcma;)V

    .line 158
    return-void
.end method
