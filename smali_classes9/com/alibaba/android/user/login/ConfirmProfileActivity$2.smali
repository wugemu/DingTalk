.class final Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;
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
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iput p2, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 285
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 165
    iget-object v3, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 170
    .local v2, "animatorSet1":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->d(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->a(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 171
    iget-object v3, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->e(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->a(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x28

    invoke-static {v3, v4}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->b(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 172
    iget-object v3, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->a(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "translationY"

    new-array v5, v9, [F

    iget-object v6, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->e(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v7

    iget-object v6, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->d(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 173
    .local v0, "animator2":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 174
    iget-object v3, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->f(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v4

    iget v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->a:I

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xc

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->d(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 175
    iget-object v3, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "translationY"

    new-array v5, v9, [F

    iget-object v6, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->f(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v7

    iget-object v6, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->g(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 176
    .local v1, "animator3":Landroid/animation/ObjectAnimator;
    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 177
    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 178
    new-instance v3, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;-><init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 279
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 290
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 161
    return-void
.end method
