.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$3;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$3;->c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    iput-object p2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1042
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$3;->c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$3;->c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$3;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$3;->c:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const-string/jumbo v1, "login_faceid_confirm_ok_click"

    invoke-static {v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1044
    return-void
.end method
