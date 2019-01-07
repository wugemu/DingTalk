.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$2;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$2;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    iput-object p2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$2;->a:Ljava/lang/String;

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
    .line 1022
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$2;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/login_verify_contact.html"

    new-instance v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$2$1;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$2;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1033
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$2;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const-string/jumbo v1, "login_contact_confirm_ok_click"

    invoke-static {v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1034
    return-void
.end method
