.class final Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;
.super Ljava/lang/Object;
.source "LockPwdSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 614
    check-cast p1, Ljava/lang/Boolean;

    .line 1617
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->dismissLoadingDialog()V

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1618
    if-eqz v0, :cond_0

    .line 1619
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    const-class v2, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1620
    const-string/jumbo v1, "first_step_title_res"

    sget v2, Lezg$l;->enter_new_passcode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1621
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1622
    :goto_0
    return-void

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)I

    .line 1624
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 634
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->dismissLoadingDialog()V

    .line 635
    const-string/jumbo v0, "12304"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    const-string/jumbo v0, "12303"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_2
    const-string/jumbo v0, "123002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->login_error_phone_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 630
    return-void
.end method
