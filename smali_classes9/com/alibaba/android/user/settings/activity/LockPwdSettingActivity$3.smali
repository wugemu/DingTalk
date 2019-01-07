.class final Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;
.super Ljava/lang/Object;
.source "LockPwdSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 507
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v6

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 509
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->f(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 510
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->f(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v3, v6, v8, v9}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 511
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    const-class v6, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;

    invoke-direct {v1, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "validate_pwd"

    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    const/4 v6, 0x4

    invoke-virtual {v3, v1, v6}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 542
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v5

    .line 507
    goto :goto_0

    .line 515
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->f(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "lastValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    const-string/jumbo v6, "1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 517
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v6

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->f(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3$1;

    invoke-direct {v8, p0, v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3$1;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;Ljava/lang/String;)V

    const-class v9, Lcom/alibaba/wukong/Callback;

    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-interface {v3, v8, v9, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/Callback;

    invoke-interface {v6, v7, v3}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 535
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 538
    .end local v2    # "lastValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v3

    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 540
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v4, v5

    .line 539
    goto :goto_2
.end method
