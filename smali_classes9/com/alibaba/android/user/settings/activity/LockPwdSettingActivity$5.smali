.class final Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$5;
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
    .line 585
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$5;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 588
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$5;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    const-class v2, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "validate_pwd"

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$5;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string/jumbo v1, "first_step_title_res"

    sget v2, Lezg$l;->enter_old_passcode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$5;->a:Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 592
    return-void
.end method
