.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 479
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->n(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->n(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 484
    .local v1, "tag":I
    if-ne v1, v4, :cond_2

    .line 485
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 486
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Lezg$c;->ali_account_login:I

    new-instance v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3$1;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 502
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->o(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    goto :goto_0
.end method
