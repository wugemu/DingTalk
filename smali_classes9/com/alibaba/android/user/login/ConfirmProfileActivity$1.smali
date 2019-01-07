.class final Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;
.super Ljava/lang/Object;
.source "ConfirmProfileActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ConfirmProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ConfirmProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 141
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 115
    :cond_0
    sget v0, Lezg$l;->login_pre:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->a(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$l;->login_profile_check_fail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->a(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->group_count:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->b(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;-><init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 146
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 108
    return-void
.end method
