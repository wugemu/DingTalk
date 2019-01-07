.class final Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;
.super Ljava/lang/Object;
.source "SecurityCenterActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ObjectAnimator;

.field final synthetic b:Landroid/animation/ObjectAnimator;

.field final synthetic c:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->c:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->a:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->b:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 252
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->c:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->c:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->c:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;Z)Z

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->c:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->c(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->c:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->d(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->a:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->b:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$1;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 261
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 237
    return-void
.end method
