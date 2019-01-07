.class final Lcsh$1;
.super Ljava/lang/Object;
.source "TitleAnimationWrapper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcsh;->a(JLcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:I

.field final synthetic c:Lcsh;


# direct methods
.method constructor <init>(Lcsh;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "this$0"    # Lcsh;

    .prologue
    .line 109
    iput-object p1, p0, Lcsh$1;->c:Lcsh;

    iput-object p2, p0, Lcsh$1;->a:Ljava/lang/CharSequence;

    iput p3, p0, Lcsh$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcsh$1;->c:Lcsh;

    iget-object v1, p0, Lcsh$1;->c:Lcsh;

    .line 8016
    iget-object v1, v1, Lcsh;->a:Landroid/widget/TextView;

    .line 136
    const/4 v2, 0x0

    .line 9016
    invoke-virtual {v0, v1, v2}, Lcsh;->a(Landroid/widget/TextView;I)V

    .line 137
    iget-object v0, p0, Lcsh$1;->c:Lcsh;

    .line 10016
    iget-object v0, v0, Lcsh;->a:Landroid/widget/TextView;

    .line 137
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 138
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-object v1, p0, Lcsh$1;->c:Lcsh;

    .line 1016
    iget-object v1, v1, Lcsh;->a:Landroid/widget/TextView;

    .line 116
    iget-object v2, p0, Lcsh$1;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcsh$1;->c:Lcsh;

    iget-object v2, p0, Lcsh$1;->c:Lcsh;

    .line 2016
    iget-object v2, v2, Lcsh;->a:Landroid/widget/TextView;

    .line 117
    iget v3, p0, Lcsh$1;->b:I

    .line 3016
    invoke-virtual {v1, v2, v3}, Lcsh;->a(Landroid/widget/TextView;I)V

    .line 119
    iget-object v1, p0, Lcsh$1;->c:Lcsh;

    .line 4016
    iget-object v1, v1, Lcsh;->a:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 120
    .local v0, "propertyAnimator":Landroid/view/ViewPropertyAnimator;
    iget-object v1, p0, Lcsh$1;->c:Lcsh;

    .line 5016
    iget v1, v1, Lcsh;->d:I

    .line 120
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 121
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 126
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcsh$1;->c:Lcsh;

    .line 6016
    iget v2, v2, Lcsh;->c:I

    .line 128
    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcsh$1;->c:Lcsh;

    .line 7016
    iget-object v2, v2, Lcsh;->f:Landroid/animation/TimeInterpolator;

    .line 129
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 132
    return-void

    .line 123
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 142
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 112
    return-void
.end method
