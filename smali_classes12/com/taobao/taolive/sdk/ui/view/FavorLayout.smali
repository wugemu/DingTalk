.class public Lcom/taobao/taolive/sdk/ui/view/FavorLayout;
.super Landroid/view/View;
.source "FavorLayout.java"

# interfaces
.implements Lcom/taobao/taolive/sdk/utils/IHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;,
        Lcom/taobao/taolive/sdk/ui/view/FavorLayout$BezierListener;,
        Lcom/taobao/taolive/sdk/ui/view/FavorLayout$AnimEndListener;
    }
.end annotation


# static fields
.field private static final ADD_FAVOR:I = 0x141

.field private static final FAVOR_DURATION:I = 0xa8c

.field private static final FAVOR_FAST_DURATION:I = 0x4b0

.field private static final MAX_COUNT:I = 0x64

.field private static final SHOW_FAKE_FAVOR:I = 0x7b


# instance fields
.field private mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mColorSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mFavorObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

.field private mHeight:I

.field private mPlusDrawable:Landroid/graphics/drawable/Drawable;

.field private mRandom:Ljava/util/Random;

.field private mTmpCount:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mRandom:Ljava/util/Random;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mColorSet:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mCurrentIndex:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    .line 92
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->init()V

    .line 93
    return-void
.end method

.method private getAnimator(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Z)Landroid/animation/Animator;
    .locals 7
    .param p1, "target"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
    .param p2, "isFastMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getStartAnimatorObject()Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    move-result-object v5

    .line 295
    .local v5, "startObject":Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    invoke-direct {p0, p2}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getBreakAnimatorObject(Z)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    move-result-object v1

    .line 296
    .local v1, "breakObject":Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getEndAnimatorObject()Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    move-result-object v2

    .line 297
    .local v2, "endObject":Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    invoke-direct {p0, p1, v5, v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getEnterAnimator(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 298
    .local v3, "enterAnimator":Landroid/animation/ValueAnimator;
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getBezierValueAnimator(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 300
    .local v0, "bezierValueAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 301
    .local v4, "finalSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 302
    iget-object v6, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 304
    return-object v4
.end method

.method private getBezierPointF()Landroid/graphics/PointF;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 253
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 254
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 256
    .local v2, "y":I
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 257
    .local v0, "pointF":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 258
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 259
    return-object v0
.end method

.method private getBezierValueAnimator(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;Z)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "target"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
    .param p2, "start"    # Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    .param p3, "end"    # Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    .param p4, "isFastMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    new-instance v1, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;

    invoke-direct {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getBezierPointF()Landroid/graphics/PointF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/taolive/sdk/utils/BezierEvaluator;-><init>(Landroid/graphics/PointF;)V

    .line 318
    .local v1, "evaluator":Lcom/taobao/taolive/sdk/utils/BezierEvaluator;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 319
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$BezierListener;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$BezierListener;-><init>(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/taobao/taolive/sdk/ui/view/FavorLayout;Lcom/taobao/taolive/sdk/ui/view/FavorLayout$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 320
    if-eqz p4, :cond_0

    const-wide/16 v2, 0x4b0

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 321
    return-object v0

    .line 320
    :cond_0
    const-wide/16 v2, 0xa8c

    goto :goto_0
.end method

.method private getBreakAnimatorObject(Z)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    .locals 5
    .param p1, "isFastMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 273
    new-instance v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;-><init>()V

    .line 274
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->alpha:F

    .line 275
    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleX:F

    .line 276
    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleY:F

    .line 277
    iget v1, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mDrawableWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mRandom:Ljava/util/Random;

    iget v3, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mWidth:I

    iget v4, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mDrawableWidth:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->x:F

    .line 278
    iget v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHeight:I

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_0

    const/high16 v1, 0x42f00000    # 120.0f

    :goto_0
    invoke-static {v3, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mRandom:Ljava/util/Random;

    .line 279
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->y:F

    .line 280
    return-object v0

    .line 278
    :cond_0
    const/high16 v1, 0x43160000    # 150.0f

    goto :goto_0
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    .line 104
    if-ltz p1, :cond_0

    iget-object v7, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mColorSet:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 105
    :cond_0
    const/4 p1, 0x0

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 108
    .local v1, "context":Landroid/content/Context;
    sget v7, Lbtp$g;->icon_likegood_fill:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "iconfont":Ljava/lang/String;
    sget v7, Lbtp$b;->ui_common_white_icon_bg_color:I

    invoke-static {v1, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    .line 110
    .local v4, "iconColor":I
    new-instance v3, Lecw;

    invoke-direct {v3, v5, v4}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 111
    .local v3, "drawablePraise":Lecw;
    invoke-static {v1, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    .line 112
    invoke-static {v1, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v8

    .line 111
    invoke-virtual {v3, v9, v9, v7, v8}, Lecw;->setBounds(IIII)V

    .line 113
    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v1, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    .line 1083
    iput v7, v3, Lecw;->c:I

    .line 115
    iget-object v7, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mColorSet:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    .local v0, "color":I
    sget v7, Lbtp$d;->live_drawable_anim_praise:I

    .line 117
    invoke-static {v1, v7}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 118
    .local v2, "drawableOval":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 119
    const/4 v7, 0x2

    new-array v6, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v9

    const/4 v7, 0x1

    aput-object v3, v6, v7

    .line 122
    .local v6, "list":[Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v7
.end method

.method private getEndAnimatorObject()Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 284
    new-instance v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;-><init>()V

    .line 285
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->alpha:F

    .line 286
    iput v2, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleX:F

    .line 287
    iput v2, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleY:F

    .line 288
    iget v1, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mDrawableWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mRandom:Ljava/util/Random;

    iget v3, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mWidth:I

    iget v4, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mDrawableWidth:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->x:F

    .line 289
    iget v1, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->y:F

    .line 290
    return-object v0
.end method

.method private getEnterAnimator(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "target"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
    .param p2, "start"    # Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    .param p3, "end"    # Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    new-instance v1, Lbys;

    invoke-direct {v1}, Lbys;-><init>()V

    .line 309
    .local v1, "evaluator":Lbys;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 310
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$BezierListener;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$BezierListener;-><init>(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/taobao/taolive/sdk/ui/view/FavorLayout;Lcom/taobao/taolive/sdk/ui/view/FavorLayout$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 312
    return-object v0
.end method

.method private getPlusDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v6, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mPlusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 127
    const-string/jumbo v5, "+10"

    .line 128
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, "context":Landroid/content/Context;
    sget v6, Lbtp$b;->ui_common_white_icon_bg_color:I

    invoke-static {v0, v6}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    .line 130
    .local v3, "iconColor":I
    new-instance v2, Lecw;

    invoke-direct {v2, v5, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 131
    .local v2, "drawableText":Lecw;
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    .line 2083
    iput v6, v2, Lecw;->c:I

    .line 132
    sget v6, Lbtp$d;->live_drawable_anim_praise:I

    .line 133
    invoke-static {v0, v6}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 134
    .local v1, "drawableOval":Landroid/graphics/drawable/GradientDrawable;
    const-string/jumbo v6, "#FF943E"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 135
    const/4 v6, 0x2

    new-array v4, v6, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    const/4 v6, 0x1

    aput-object v2, v4, v6

    .line 138
    .local v4, "list":[Landroid/graphics/drawable/Drawable;
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mPlusDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "drawableOval":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "drawableText":Lecw;
    .end local v3    # "iconColor":I
    .end local v4    # "list":[Landroid/graphics/drawable/Drawable;
    .end local v5    # "text":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mPlusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v6
.end method

.method private getStartAnimatorObject()Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v4, 0x3f19999a    # 0.6f

    .line 263
    new-instance v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;-><init>()V

    .line 264
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    iget v1, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mWidth:I

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->x:F

    .line 265
    iget v1, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHeight:I

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->y:F

    .line 266
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->alpha:F

    .line 267
    iput v4, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleX:F

    .line 268
    iput v4, v0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleY:F

    .line 269
    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mColorSet:Ljava/util/List;

    const-string/jumbo v1, "#f0818b"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mColorSet:Ljava/util/List;

    const-string/jumbo v1, "#3a8ada"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mColorSet:Ljava/util/List;

    const-string/jumbo v1, "#ffb669"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mColorSet:Ljava/util/List;

    const-string/jumbo v1, "#a36dea"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mColorSet:Ljava/util/List;

    const-string/jumbo v1, "#50e3c2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method private stopFakeFavor()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->invalidate()V

    .line 101
    return-void
.end method


# virtual methods
.method public addFavor(IZ)V
    .locals 7
    .param p1, "count"    # I
    .param p2, "isFastMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x141

    .line 223
    if-lez p1, :cond_1

    .line 224
    const/16 v3, 0xa8c

    div-int v2, v3, p1

    .line 225
    .local v2, "period":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 226
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    if-nez v3, :cond_0

    .line 227
    new-instance v3, Lcom/taobao/taolive/sdk/utils/WeakHandler;

    invoke-direct {v3, p0}, Lcom/taobao/taolive/sdk/utils/WeakHandler;-><init>(Lcom/taobao/taolive/sdk/utils/IHandler;)V

    iput-object v3, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    .line 229
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 230
    .local v1, "msg":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 231
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    mul-int v4, v0, v2

    int-to-long v4, v4

    invoke-virtual {v3, v6, v4, v5}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "period":I
    :cond_1
    return-void
.end method

.method public addFavor(ZZ)V
    .locals 6
    .param p1, "isFastMode"    # Z
    .param p2, "isUserSelf"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 190
    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 220
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mCurrentIndex:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mCurrentIndex:I

    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mColorSet:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 195
    :cond_1
    iput v4, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mCurrentIndex:I

    .line 198
    :cond_2
    iget v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mTmpCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mTmpCount:I

    .line 200
    new-instance v1, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;

    invoke-direct {v1, v5}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;-><init>(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$1;)V

    .line 201
    .local v1, "obj":Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
    if-eqz p2, :cond_4

    iget v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mTmpCount:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_4

    .line 202
    iput v4, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mTmpCount:I

    .line 203
    const/4 p1, 0x0

    .line 204
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getPlusDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$102(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 208
    :goto_1
    iget v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mCurrentIndex:I

    .line 209
    iget v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mDrawableWidth:I

    if-gtz v2, :cond_3

    .line 210
    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$100(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mDrawableWidth:I

    .line 211
    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$100(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mDrawableHeight:I

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-direct {p0, v1, p1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getAnimator(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Z)Landroid/animation/Animator;

    move-result-object v0

    .line 217
    .local v0, "animator":Landroid/animation/Animator;
    new-instance v2, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$AnimEndListener;

    invoke-direct {v2, p0, v1, v5}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$AnimEndListener;-><init>(Lcom/taobao/taolive/sdk/ui/view/FavorLayout;Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/taobao/taolive/sdk/ui/view/FavorLayout$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 219
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->invalidate()V

    goto :goto_0

    .line 206
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_4
    iget v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$102(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public clearFavor()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 244
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->stopFakeFavor()V

    .line 327
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 330
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 65
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 67
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    invoke-virtual {v3}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->addFavor(IZ)V

    .line 69
    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    invoke-virtual {v2}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 70
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x7b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 71
    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    invoke-virtual {v2}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHandler:Lcom/taobao/taolive/sdk/utils/WeakHandler;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v1, v4, v5}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 76
    .end local v1    # "message":Landroid/os/Message;
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 77
    .local v0, "isFastMode":Z
    invoke-virtual {p0, v0, v4}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->addFavor(ZZ)V

    goto :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x141 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 154
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 156
    iget-object v6, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 157
    iget-object v6, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;

    .line 158
    .local v1, "object":Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$000(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 161
    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$000(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    move-result-object v7

    iget v4, v7, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->x:F

    .line 162
    .local v4, "x":F
    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$000(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    move-result-object v7

    iget v5, v7, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->y:F

    .line 163
    .local v5, "y":F
    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$000(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    move-result-object v7

    iget v2, v7, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleX:F

    .line 164
    .local v2, "scaleX":F
    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$000(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    move-result-object v7

    iget v3, v7, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleY:F

    .line 165
    .local v3, "scaleY":F
    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$100(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->access$000(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    move-result-object v7

    iget v7, v7, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->alpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 167
    iget v7, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mDrawableWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    div-float/2addr v7, v11

    sub-float v7, v4, v7

    float-to-int v7, v7

    iget v8, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mDrawableHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    div-float/2addr v8, v11

    sub-float v8, v5, v8

    float-to-int v8, v8

    iget v9, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mDrawableWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    div-float/2addr v9, v11

    add-float/2addr v9, v4

    float-to-int v9, v9

    iget v10, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mDrawableHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v3

    div-float/2addr v10, v11

    add-float/2addr v10, v5

    float-to-int v10, v10

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 175
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "object":Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 148
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mWidth:I

    .line 149
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mHeight:I

    .line 150
    return-void
.end method

.method public removeFavor(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)V
    .locals 1
    .param p1, "object"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->mFavorObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    return-void
.end method
