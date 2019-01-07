.class public Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ExternalContactSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->a:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 77
    .local v0, "vid":I
    sget v1, Lezg$h;->tc_field_settings:I

    if-ne v0, v1, :cond_1

    .line 1092
    const-string/jumbo v1, "org_management_extercontact_info_set"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 1093
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/external/field_settings.html"

    new-instance v3, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity$1;-><init>(Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    sget v1, Lezg$h;->tc_label_settings:I

    if-ne v0, v1, :cond_2

    .line 1105
    const-string/jumbo v1, "org_management_extercontact_lable_set"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 1106
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/external/label_settings.html"

    new-instance v3, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity$2;-><init>(Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 81
    :cond_2
    sget v1, Lezg$h;->tc_background_import:I

    if-ne v0, v1, :cond_3

    .line 1117
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://csmobile.alipay.com/detailSolution.htm?questionId=201602070416&token=755b2d8e-690d-41d0-a636-456b8f7be175&knowledgeType=3"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    sget v1, Lezg$h;->tc_peer_case:I

    if-ne v0, v1, :cond_0

    .line 84
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->L:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 85
    const-string/jumbo v1, "contact_admin_exter_case_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 86
    iget-wide v2, p0, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->a:J

    invoke-static {p0, v2, v3}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(Landroid/app/Activity;J)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v1, Lezg$j;->activity_external_contact_settings:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->setContentView(I)V

    .line 51
    sget v1, Lezg$l;->dt_org_manage_external_contact_entry_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    sget v1, Lezg$h;->tc_peer_case:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 53
    .local v0, "peerCase":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v4, Lble;->L:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->getIndicatorView()Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    .line 54
    invoke-static {}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1066
    if-nez v1, :cond_1

    .line 1067
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->finish()V

    .line 59
    :goto_0
    sget v1, Lezg$h;->tc_background_import:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    sget v1, Lezg$h;->tv_background_import_desc:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-void

    .line 1071
    :cond_1
    const-string/jumbo v4, "org_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->a:J

    goto :goto_0

    :cond_2
    move v1, v3

    .line 59
    goto :goto_1

    :cond_3
    move v2, v3

    .line 60
    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 122
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 123
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 124
    return-void
.end method
