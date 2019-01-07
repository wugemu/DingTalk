.class public Lcom/alibaba/android/user/namecard/widget/ParabolaView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "ParabolaView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/graphics/Point;

.field protected c:Landroid/graphics/Point;

.field protected d:I

.field protected e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->a:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->a:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->d:I

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->a:Landroid/content/Context;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->e:I

    .line 69
    return-void
.end method

.method public final getBackBeizerAnimation$5ce750a4()Landroid/animation/Animator;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    iget-object v9, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->b:Landroid/graphics/Point;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->c:Landroid/graphics/Point;

    if-nez v9, :cond_1

    :cond_0
    const/4 v8, 0x0

    .line 161
    :goto_0
    return-object v8

    .line 130
    :cond_1
    iget-object v9, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->b:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->c:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v10

    div-int/lit8 v4, v9, 0x2

    .line 131
    .local v4, "pointX":I
    iget-object v9, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->b:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->a:Landroid/content/Context;

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    add-int v5, v9, v10

    .line 132
    .local v5, "pointY":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 133
    .local v3, "controllPoint":Landroid/graphics/Point;
    new-instance v2, Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;

    invoke-direct {v2, p0, v3}, Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;-><init>(Lcom/alibaba/android/user/namecard/widget/ParabolaView;Landroid/graphics/Point;)V

    .line 135
    .local v2, "bezierEvaluator":Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->b:Landroid/graphics/Point;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->c:Landroid/graphics/Point;

    aput-object v11, v9, v10

    invoke-static {v2, v9}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 136
    .local v1, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 137
    const-wide/16 v10, 0x258

    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 138
    new-instance v9, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 141
    .local v8, "set":Landroid/animation/AnimatorSet;
    const-string/jumbo v9, "scaleY"

    const/4 v10, 0x3

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 142
    .local v6, "scaleXAnim":Landroid/animation/Animator;
    const-wide/16 v10, 0x258

    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 143
    const-string/jumbo v9, "scaleX"

    const/4 v10, 0x3

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 144
    .local v7, "scaleYAnim":Landroid/animation/Animator;
    const-wide/16 v10, 0x258

    invoke-virtual {v7, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 145
    const-string/jumbo v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 146
    .local v0, "alphaAnim":Landroid/animation/Animator;
    const-wide/16 v10, 0x190

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 147
    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 152
    new-instance v9, Lcom/alibaba/android/user/namecard/widget/ParabolaView$2;

    invoke-direct {v9, p0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView$2;-><init>(Lcom/alibaba/android/user/namecard/widget/ParabolaView;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 141
    .line 143
    .line 145
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final getBeizerAnimation$5ce750a4()Landroid/animation/Animator;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x2

    .line 98
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->b:Landroid/graphics/Point;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->c:Landroid/graphics/Point;

    if-nez v8, :cond_1

    .line 99
    :cond_0
    const/4 v7, 0x0

    .line 125
    :goto_0
    return-object v7

    .line 101
    :cond_1
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->b:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->c:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v9

    div-int/lit8 v3, v8, 0x2

    .line 102
    .local v3, "pointX":I
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->b:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->a:Landroid/content/Context;

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v9

    sub-int v4, v8, v9

    .line 103
    .local v4, "pointY":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 104
    .local v2, "controllPoint":Landroid/graphics/Point;
    new-instance v1, Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;-><init>(Lcom/alibaba/android/user/namecard/widget/ParabolaView;Landroid/graphics/Point;)V

    .line 106
    .local v1, "bezierEvaluator":Lcom/alibaba/android/user/namecard/widget/ParabolaView$a;
    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->b:Landroid/graphics/Point;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->c:Landroid/graphics/Point;

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 107
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 108
    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 111
    .local v7, "set":Landroid/animation/AnimatorSet;
    const-string/jumbo v8, "scaleY"

    new-array v9, v11, [F

    fill-array-data v9, :array_0

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 112
    .local v5, "scaleXAnim":Landroid/animation/Animator;
    const-string/jumbo v8, "scaleX"

    new-array v9, v11, [F

    fill-array-data v9, :array_1

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 113
    .local v6, "scaleYAnim":Landroid/animation/Animator;
    const-wide/16 v8, 0x258

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 114
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 116
    new-instance v8, Lcom/alibaba/android/user/namecard/widget/ParabolaView$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView$1;-><init>(Lcom/alibaba/android/user/namecard/widget/ParabolaView;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 111
    .line 112
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method public getEndPosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method public getStartPosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->e:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->d:I

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 167
    .local v0, "point":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setX(F)V

    .line 168
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setY(F)V

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->invalidate()V

    .line 170
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->d:I

    iget v1, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setMeasuredDimension(II)V

    .line 74
    return-void
.end method

.method public setEndPosition(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "endPosition"    # Landroid/graphics/Point;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->c:Landroid/graphics/Point;

    .line 64
    return-void
.end method

.method public setStartPosition(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "startPosition"    # Landroid/graphics/Point;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->b:Landroid/graphics/Point;

    .line 57
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setX(F)V

    .line 58
    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setY(F)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->invalidate()V

    .line 60
    return-void
.end method
