.class final Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$2;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 319
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 312
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->h(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->i(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 324
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->e(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->d(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)I

    move-result v0

    if-gez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->f(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$l;->dt_user_security_header_advice_fail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->g(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$l;->dt_user_security_header_action_fail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->e(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_0
    return-void
.end method
