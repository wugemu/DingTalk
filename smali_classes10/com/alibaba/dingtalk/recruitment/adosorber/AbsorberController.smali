.class public final Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;
.super Ljava/lang/Object;
.source "AbsorberController.java"

# interfaces
.implements Lgud;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

.field private e:Landroid/app/Activity;

.field private f:Landroid/animation/ObjectAnimator;

.field private g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "floatContainer"    # Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_BOTH:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;-><init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "floatContainer"    # Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;
    .param p3, "mode"    # Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_BOTH:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "[AbsorberController] context must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    if-nez p2, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "[AbsorberController] floatContainer must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->e:Landroid/app/Activity;

    .line 47
    if-nez p3, :cond_2

    sget-object p3, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_BOTH:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    .end local p3    # "mode":Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;
    :cond_2
    iput-object p3, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    .line 49
    iput-object p2, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    .line 50
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;->setAlpha(F)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->f:Landroid/animation/ObjectAnimator;

    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->f:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 55
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$1;-><init>(Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 61
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 65
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->e:Landroid/app/Activity;

    invoke-static {v1}, Lgvb;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 66
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "absorberView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$2;-><init>(Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->e()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->e:Landroid/app/Activity;

    invoke-static {v1}, Lgvb;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 79
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-nez v0, :cond_1

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 0
    .param p1, "scrollView"    # Landroid/view/View;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->c:Landroid/view/View;

    .line 108
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;->setAlpha(F)V

    goto :goto_0
.end method

.method e()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 132
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    if-nez v5, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;->getVFloat()Landroid/view/View;

    move-result-object v3

    .line 137
    .local v3, "vFloat":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 141
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 142
    .local v1, "locationTo":[I
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 144
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v6, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_BOTH:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v6, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_X:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-ne v5, v6, :cond_3

    .line 145
    :cond_2
    invoke-static {v3, v7}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 146
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    aget v6, v1, v4

    int-to-float v6, v6

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 147
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 150
    :cond_3
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v6, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_BOTH:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v6, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_Y:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-ne v5, v6, :cond_5

    .line 151
    :cond_4
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    const/4 v6, 0x1

    aget v6, v1, v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 152
    invoke-static {v3, v7}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 153
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 158
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 160
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 161
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 162
    .local v0, "isVisible":Z
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {v5, v4}, Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const/4 v4, 0x4

    goto :goto_1
.end method
