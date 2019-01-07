.class final Lhcm$1;
.super Ljava/lang/Object;
.source "SwipeViewHolder.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhcm;->a(Landroid/app/Activity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:Lhcm;


# direct methods
.method constructor <init>(Lhcm;Landroid/app/Activity;J)V
    .locals 1
    .param p1, "this$0"    # Lhcm;

    .prologue
    .line 61
    iput-object p1, p0, Lhcm$1;->c:Lhcm;

    iput-object p2, p0, Lhcm$1;->a:Landroid/app/Activity;

    iput-wide p3, p0, Lhcm$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v12, 0x116

    const/16 v11, 0x10

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lhcm$1;->c:Lhcm;

    .line 1023
    iget-object v0, v0, Lhcm;->a:Landroid/view/View;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 65
    iget-object v5, p0, Lhcm$1;->c:Lhcm;

    iget-object v0, p0, Lhcm$1;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lhcm$1;->b:J

    .line 2072
    iget-object v4, v5, Lhcm;->a:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 2075
    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2084
    invoke-static {v0, v2, v3}, Lhcm;->c(Landroid/app/Activity;J)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    move-result-object v6

    .line 2209
    iget-object v4, v5, Lhcm;->a:Landroid/view/View;

    invoke-static {v2, v3, v4}, Lhcl;->a(JLandroid/view/View;)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    move-result-object v7

    .line 2210
    iget v2, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    if-eqz v2, :cond_0

    iget v2, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    if-eqz v2, :cond_0

    .line 2211
    invoke-static {v0}, Lhcn;->b(Landroid/content/Context;)I

    move-result v2

    .line 2212
    invoke-static {v0}, Lhcn;->c(Landroid/content/Context;)I

    move-result v0

    .line 2214
    int-to-float v3, v2

    iget v4, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 2215
    iget v4, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    .line 2216
    iget v4, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    .line 2217
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerX:F

    .line 2218
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerY:F

    .line 2086
    :cond_0
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    iget-wide v2, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->id:J

    iget-wide v8, v6, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->id:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_4

    iget v0, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    if-eqz v0, :cond_4

    iget v0, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    if-eqz v0, :cond_4

    .line 2088
    iget v0, v6, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    int-to-float v0, v0

    iget v2, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    int-to-float v2, v2

    div-float v4, v0, v2

    .line 2089
    iget v0, v6, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    int-to-float v0, v0

    iget v2, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    int-to-float v2, v2

    div-float v3, v0, v2

    .line 2090
    iget v0, v6, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerX:F

    iget v2, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerX:F

    sub-float v2, v0, v2

    .line 2091
    iget v0, v6, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerY:F

    iget v6, v7, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerY:F

    sub-float/2addr v0, v6

    .line 2094
    :goto_0
    iget-object v6, v5, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleX(F)V

    .line 2095
    iget-object v4, v5, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    .line 2096
    iget-object v3, v5, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2097
    iget-object v2, v5, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2099
    iget-object v0, v5, Lhcm;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2100
    invoke-virtual {v0, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2101
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2102
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 2103
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2104
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_1

    .line 2105
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 2107
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2109
    iget-object v0, v5, Lhcm;->b:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2110
    iget-object v0, v5, Lhcm;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2111
    iget-object v0, v5, Lhcm;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2112
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lhcm$2;

    invoke-direct {v1, v5}, Lhcm$2;-><init>(Lhcm;)V

    .line 2113
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_2

    .line 2120
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 2122
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 66
    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto :goto_0
.end method
