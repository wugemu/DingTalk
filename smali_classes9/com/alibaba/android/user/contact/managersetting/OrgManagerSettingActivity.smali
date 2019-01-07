.class public Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OrgManagerSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;->a:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 43
    .local v0, "id":I
    sget v1, Lezg$h;->cell_sub_manager_settings:I

    if-ne v0, v1, :cond_1

    .line 44
    const-string/jumbo v1, "org_management_admin_subadmin_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/sub_manager_setting.html"

    new-instance v3, Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity$1;-><init>(Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget v1, Lezg$h;->cell_change_main_manager:I

    if-ne v0, v1, :cond_0

    .line 54
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/change-primary-admin?wh_ttid=phone"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lezg$j;->activity_org_manager_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;->a:J

    .line 32
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_contact_subManager_setting:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    :cond_0
    sget v0, Lezg$h;->cell_sub_manager_settings:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    sget v0, Lezg$h;->cell_change_main_manager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/OrgManagerSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
