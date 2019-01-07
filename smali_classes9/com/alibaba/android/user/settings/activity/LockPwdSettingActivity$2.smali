.class final Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;
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
    .line 486
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 489
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v5

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 491
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-static {v2, v5, v6, v7}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    const-class v7, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 502
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 489
    goto :goto_0

    .line 494
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    const-class v5, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "validate_pwd"

    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    const/4 v5, 0x6

    invoke-virtual {v2, v1, v5}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 498
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 500
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    move v3, v4

    .line 499
    goto :goto_2
.end method
