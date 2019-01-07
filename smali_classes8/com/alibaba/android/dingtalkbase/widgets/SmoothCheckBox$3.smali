.class final Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 489
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Z)Z

    .line 490
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->h(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->h(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->i(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;->a(Z)V

    .line 493
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 481
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Z)Z

    .line 482
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->h(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->h(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->i(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;->a(Z)V

    .line 485
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 497
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 476
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Z)Z

    .line 477
    return-void
.end method
