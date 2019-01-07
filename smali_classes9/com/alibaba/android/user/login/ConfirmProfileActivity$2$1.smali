.class final Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;
.super Ljava/lang/Object;
.source "ConfirmProfileActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 272
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 186
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->h(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 191
    .local v4, "animatorSet2":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->d(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->a(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 192
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->e(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x28

    invoke-static {v5, v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->b(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 193
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->a(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->e(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v9

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->d(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 194
    .local v0, "animator4":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->g(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 195
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->f(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x28

    invoke-static {v5, v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->d(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 196
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->f(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v9

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->g(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 197
    .local v1, "animator5":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->h(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->e(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 198
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->i(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->a:I

    mul-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xc

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->f(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 199
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->h(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->i(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v9

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->j(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 200
    .local v2, "animator6":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->a(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 201
    .local v3, "animator7":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v1, v5, v11

    aput-object v2, v5, v10

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 202
    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 203
    new-instance v5, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;-><init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 200
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 277
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 182
    return-void
.end method
