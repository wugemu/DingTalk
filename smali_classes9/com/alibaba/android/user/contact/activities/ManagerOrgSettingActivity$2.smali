.class final Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ManagerOrgSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 705
    if-nez p2, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    const-string/jumbo v4, "action_key_org_disband_status_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 711
    const-string/jumbo v4, "org_id"

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 713
    .local v2, "orgId":J
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 717
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->j(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V

    goto :goto_0

    .line 719
    .end local v2    # "orgId":J
    :cond_2
    const-string/jumbo v4, "action_key_org_disband_reason_choose"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 721
    const-string/jumbo v4, "org_id"

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 723
    .restart local v2    # "orgId":J
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 727
    const-string/jumbo v4, "code"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 728
    .local v0, "code":I
    const-string/jumbo v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "reason":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2$1;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
