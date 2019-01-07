.class final Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1$1;
.super Ljava/lang/Object;
.source "ConfirmProfileActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 246
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v1, v0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    .line 1296
    iget-object v0, v1, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/user/edit_profile.html"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 1312
    :goto_1
    sget v0, Lezg$a;->alpha_in:I

    sget v2, Lezg$a;->alpha_out:I

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->overridePendingTransition(II)V

    .line 1313
    invoke-virtual {v1}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->finish()V

    goto :goto_0

    .line 1299
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "intent_key_is_user_data_complete"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c:Z

    .line 1300
    iget-boolean v0, v1, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c:Z

    if-eqz v0, :cond_2

    .line 1301
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/user/confirm_org_profile.html"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_1

    .line 1303
    :cond_2
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/user/edit_profile.html"

    new-instance v3, Lcom/alibaba/android/user/login/ConfirmProfileActivity$3;

    invoke-direct {v3, v1}, Lcom/alibaba/android/user/login/ConfirmProfileActivity$3;-><init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 251
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 233
    return-void
.end method
