.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2$1;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 450
    const-string/jumbo v0, "TARGET"

    const-string/jumbo v1, "register"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string/jumbo v0, "phone"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string/jumbo v0, "areaName"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->l(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->m(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    const-string/jumbo v0, "areaCode"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->m(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    :cond_0
    :goto_0
    const-string/jumbo v0, "show_sim_authorization_entry"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 462
    return-object p1

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    const-string/jumbo v0, "areaCode"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0
.end method
