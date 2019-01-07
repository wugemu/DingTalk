.class public Lcom/alipay/mobile/security/faceauth/widget/Circle;
.super Landroid/view/View;
.source "Circle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/faceauth/widget/Circle$a;,
        Lcom/alipay/mobile/security/faceauth/widget/Circle$ProcessEvaluator;
    }
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:Landroid/animation/ValueAnimator;

.field private e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->g:I

    .line 32
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->h:I

    .line 106
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->j:F

    .line 125
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->k:Z

    .line 147
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->l:Z

    .line 168
    new-instance v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle$1;-><init>(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->m:Ljava/lang/Runnable;

    .line 197
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->a:F

    .line 198
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->b:F

    .line 199
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->c:F

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->g:I

    .line 32
    iput v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->h:I

    .line 106
    iput v6, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->j:F

    .line 125
    iput-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->k:Z

    .line 147
    iput-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->l:Z

    .line 168
    new-instance v5, Lcom/alipay/mobile/security/faceauth/widget/Circle$1;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle$1;-><init>(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V

    iput-object v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->m:Ljava/lang/Runnable;

    .line 197
    iput v6, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->a:F

    .line 198
    const/high16 v5, 0x43b40000    # 360.0f

    iput v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->b:F

    .line 199
    iput v6, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->c:F

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->a()V

    .line 45
    sget-object v5, Ligf$f;->circle:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v5, v6}, Lcom/alipay/mobile/security/bio/utils/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->g:I

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/alipay/mobile/security/bio/utils/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->h:I

    .line 48
    sget v5, Ligf$f;->circle_facesdk_process_width:I

    iget v6, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->h:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 50
    .local v4, "processWidth":I
    sget v5, Ligf$f;->circle_facesdk_color:I

    const/16 v6, -0x100

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 52
    .local v1, "circleColor":I
    sget v5, Ligf$f;->circle_facesdk_process_color:I

    const v6, -0xffff01

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 55
    .local v3, "processColor":I
    sget v5, Ligf$f;->circle_facesdk_interval:I

    const/16 v6, 0x3e8

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 57
    .local v2, "interval":I
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a(I)V

    .line 58
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    .line 1295
    iget-object v5, v5, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->h:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    .line 1303
    iget-object v5, v5, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->i:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    .line 1308
    iput v2, v5, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->g:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->i:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;-><init>(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/widget/Circle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/widget/Circle;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->k:Z

    return v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->k:Z

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    .line 2288
    iget v0, v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->d:I

    .line 153
    iget v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->h:I

    if-ne v0, v1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->g:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a(I)V

    .line 161
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a()V

    .line 162
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->postInvalidate()V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    .line 3288
    iget v0, v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->d:I

    .line 156
    iget v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->g:I

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->h:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/widget/Circle;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->b()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->c:F

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->invalidate()V

    .line 72
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    iget v6, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->c:F

    .line 114
    .local v6, "sweep":F
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget-object v1, v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->f:I

    int-to-float v2, v0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget-object v5, v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget-object v1, v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->f:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget-object v5, v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget-object v1, v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->f:I

    int-to-float v2, v0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget-object v5, v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 123
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 85
    .local v0, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->f:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 93
    :cond_0
    invoke-static {v0, p1}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->resolveSize(II)I

    move-result v1

    .line 94
    invoke-static {v0, p2}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->resolveSize(II)I

    move-result v2

    .line 93
    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->setMeasuredDimension(II)V

    .line 96
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a(II)V

    .line 104
    return-void
.end method

.method public startAnimation()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    new-instance v0, Lcom/alipay/mobile/security/faceauth/widget/Circle$ProcessEvaluator;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle$ProcessEvaluator;-><init>(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->b:F

    .line 205
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 204
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->d:Landroid/animation/ValueAnimator;

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/widget/Circle$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle$2;-><init>(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/widget/Circle$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle$3;-><init>(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget v1, v1, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->g:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 240
    return-void
.end method

.method public startFlicker()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 129
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->l:Z

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 132
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->l:Z

    .line 134
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->k:Z

    .line 135
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->b()V

    goto :goto_0
.end method

.method public stopFlicker()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->k:Z

    .line 140
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->l:Z

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    iget v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->h:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a(I)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle;->e:Lcom/alipay/mobile/security/faceauth/widget/Circle$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a()V

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/Circle;->postInvalidate()V

    .line 145
    return-void
.end method
