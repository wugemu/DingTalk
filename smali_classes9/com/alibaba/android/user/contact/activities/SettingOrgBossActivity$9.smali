.class final Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$9;
.super Ljava/lang/Object;
.source "SettingOrgBossActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$9;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 477
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    const-string/jumbo v0, "choose_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$9;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->g(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 480
    const-string/jumbo v0, "display_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$9;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->g(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 481
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$9;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->select_contact_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string/jumbo v0, "show_local_contact"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 483
    const-string/jumbo v0, "filter_myself"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    const-string/jumbo v0, "activity_identify"

    const-string/jumbo v1, "IDENTIFIY_SETTING_BOSS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string/jumbo v0, "show_crm_customer"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    return-object p1
.end method
