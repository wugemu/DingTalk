.class final Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;
.super Ljava/lang/Object;
.source "ChangePwdActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

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
    .line 360
    .line 1363
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Z)V

    .line 1364
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1365
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->d(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V

    .line 1366
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->dismissLoadingDialog()V

    .line 1367
    const-string/jumbo v0, "intent_key_change_pwd_from_setting"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "empty_pwd"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    .line 1368
    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    sget v1, Lezg$l;->input_pwd_change_success:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_user_password_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1374
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->finish()V

    :goto_0
    return-void

    .line 1376
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->c(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V

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
    .line 387
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x3523

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 389
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->d(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V

    .line 390
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->dismissLoadingDialog()V

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 393
    const-string/jumbo v0, "12304"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;Ljava/lang/String;)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    const-string/jumbo v0, "12303"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_2
    const-string/jumbo v0, "123002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->login_error_phone_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 383
    return-void
.end method
