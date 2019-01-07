.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;
.super Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
.source "VerifyPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-direct {p0, p2}, Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 408
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "vcode_phone_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    const-string/jumbo v2, "contact_verification_code_call_for_code_link_click"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v4, v4, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 413
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->get_verify_code_phone_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->get_verify_code_phone:I

    new-instance v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;)V

    .line 415
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$1;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;)V

    .line 432
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 439
    return-void
.end method
