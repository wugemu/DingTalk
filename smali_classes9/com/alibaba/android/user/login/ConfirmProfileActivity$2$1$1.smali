.class final Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;
.super Ljava/lang/Object;
.source "ConfirmProfileActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 259
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 14
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    .line 211
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-virtual {v7}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 254
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 215
    .local v6, "animatorSet3":Landroid/animation/AnimatorSet;
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->d(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->a(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 216
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->e(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    add-int/lit8 v8, v8, -0x64

    invoke-static {v7, v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->b(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 217
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->a(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string/jumbo v8, "translationY"

    new-array v9, v11, [F

    iget-object v10, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->e(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v12

    iget-object v10, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->d(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v13

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 218
    .local v4, "animator8":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->j(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->e(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 219
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->i(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    add-int/lit8 v8, v8, -0x64

    invoke-static {v7, v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->f(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 220
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->h(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string/jumbo v8, "translationY"

    new-array v9, v11, [F

    iget-object v10, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->i(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v12

    iget-object v10, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->j(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v13

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 221
    .local v5, "animator9":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->g(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 222
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    iget-object v8, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v8, v8, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->f(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v8

    add-int/lit8 v8, v8, -0x64

    invoke-static {v7, v8}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->d(Lcom/alibaba/android/user/login/ConfirmProfileActivity;I)I

    .line 223
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string/jumbo v8, "translationY"

    new-array v9, v11, [F

    iget-object v10, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->f(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v12

    iget-object v10, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v10, v10, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->g(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v13

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 224
    .local v0, "animator10":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->a(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string/jumbo v8, "alpha"

    new-array v9, v11, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 225
    .local v1, "animator11":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->h(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string/jumbo v8, "alpha"

    new-array v9, v11, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 226
    .local v2, "animator12":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;

    iget-object v7, v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2;->b:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->c(Lcom/alibaba/android/user/login/ConfirmProfileActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string/jumbo v8, "alpha"

    new-array v9, v11, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 227
    .local v3, "animator13":Landroid/animation/ObjectAnimator;
    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v4, v7, v12

    aput-object v5, v7, v13

    aput-object v0, v7, v11

    const/4 v8, 0x3

    aput-object v1, v7, v8

    const/4 v8, 0x4

    aput-object v2, v7, v8

    const/4 v8, 0x5

    aput-object v3, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 228
    const-wide/16 v8, 0x5dc

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 229
    new-instance v7, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1$1;-><init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity$2$1$1;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 224
    .line 225
    .line 226
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 264
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 207
    return-void
.end method
