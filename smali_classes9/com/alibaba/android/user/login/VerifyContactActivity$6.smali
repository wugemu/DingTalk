.class final Lcom/alibaba/android/user/login/VerifyContactActivity$6;
.super Ljava/lang/Object;
.source "VerifyContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/VerifyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/user/login/VerifyContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyContactActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$6;->b:Lcom/alibaba/android/user/login/VerifyContactActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

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
    .line 290
    const-string/jumbo v0, "login_contact_confirm_nopass_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$6;->b:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/login_pwd.html"

    new-instance v2, Lcom/alibaba/android/user/login/VerifyContactActivity$6$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/VerifyContactActivity$6$1;-><init>(Lcom/alibaba/android/user/login/VerifyContactActivity$6;)V

    .line 292
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 299
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 300
    return-void
.end method
