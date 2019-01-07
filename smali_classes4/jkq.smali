.class public final Ljkq;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field a:F

.field b:F

.field private final e:Landroid/graphics/RectF;

.field private f:Landroid/animation/ObjectAnimator;

.field private g:Landroid/animation/ObjectAnimator;

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:F

.field private k:F

.field private l:Z

.field private m:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Ljkq;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Ljkq;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Ljkq;->c:Landroid/view/animation/Interpolator;

    .line 25
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Ljkq;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 7
    .param p1, "color"    # I
    .param p2, "borderWidth"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ljkq;->e:Landroid/graphics/RectF;

    .line 123
    new-instance v0, Ljkq$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "angle"

    invoke-direct {v0, p0, v1, v2}, Ljkq$1;-><init>(Ljkq;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Ljkq;->m:Landroid/util/Property;

    .line 138
    new-instance v0, Ljkq$2;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "arc"

    invoke-direct {v0, p0, v1, v2}, Ljkq$2;-><init>(Ljkq;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Ljkq;->n:Landroid/util/Property;

    .line 55
    iput p2, p0, Ljkq;->k:F

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ljkq;->i:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Ljkq;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Ljkq;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Ljkq;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Ljkq;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1155
    iget-object v0, p0, Ljkq;->m:Landroid/util/Property;

    new-array v1, v4, [F

    const/high16 v2, 0x43b40000    # 360.0f

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Ljkq;->g:Landroid/animation/ObjectAnimator;

    .line 1156
    iget-object v0, p0, Ljkq;->g:Landroid/animation/ObjectAnimator;

    sget-object v1, Ljkq;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1157
    iget-object v0, p0, Ljkq;->g:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1158
    iget-object v0, p0, Ljkq;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1159
    iget-object v0, p0, Ljkq;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1161
    iget-object v0, p0, Ljkq;->n:Landroid/util/Property;

    new-array v1, v4, [F

    const/high16 v2, 0x43960000    # 300.0f

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Ljkq;->f:Landroid/animation/ObjectAnimator;

    .line 1162
    iget-object v0, p0, Ljkq;->f:Landroid/animation/ObjectAnimator;

    sget-object v1, Ljkq;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1163
    iget-object v0, p0, Ljkq;->f:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1164
    iget-object v0, p0, Ljkq;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1165
    iget-object v0, p0, Ljkq;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1166
    iget-object v0, p0, Ljkq;->f:Landroid/animation/ObjectAnimator;

    new-instance v1, Ljkq$3;

    invoke-direct {v1, p0}, Ljkq$3;-><init>(Ljkq;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    return-void
.end method

.method static synthetic a(Ljkq;)V
    .locals 2
    .param p0, "x0"    # Ljkq;

    .prologue
    .line 20
    .line 2103
    iget-boolean v0, p0, Ljkq;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljkq;->h:Z

    .line 2104
    iget-boolean v0, p0, Ljkq;->h:Z

    if-eqz v0, :cond_0

    .line 2106
    iget v0, p0, Ljkq;->j:F

    const/high16 v1, 0x42700000    # 60.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Ljkq;->j:F

    .line 20
    :cond_0
    return-void

    .line 2103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/high16 v4, 0x41f00000    # 30.0f

    .line 69
    iget v0, p0, Ljkq;->a:F

    iget v1, p0, Ljkq;->j:F

    sub-float v2, v0, v1

    .line 70
    .local v2, "startAngle":F
    iget v3, p0, Ljkq;->b:F

    .line 71
    .local v3, "sweepAngle":F
    iget-boolean v0, p0, Ljkq;->h:Z

    if-nez v0, :cond_0

    .line 73
    add-float/2addr v2, v3

    .line 74
    const/high16 v0, 0x43b40000    # 360.0f

    sub-float/2addr v0, v3

    sub-float v3, v0, v4

    .line 80
    :goto_0
    iget-object v1, p0, Ljkq;->e:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Ljkq;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 81
    return-void

    .line 78
    :cond_0
    add-float/2addr v3, v4

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, -0x2

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Ljkq;->l:Z

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 113
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 114
    iget-object v0, p0, Ljkq;->e:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Ljkq;->k:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 115
    iget-object v0, p0, Ljkq;->e:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Ljkq;->k:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 116
    iget-object v0, p0, Ljkq;->e:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Ljkq;->k:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 117
    iget-object v0, p0, Ljkq;->e:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Ljkq;->k:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 118
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 86
    iget-object v0, p0, Ljkq;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 92
    iget-object v0, p0, Ljkq;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    return-void
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Ljkq;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljkq;->l:Z

    .line 202
    iget-object v0, p0, Ljkq;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 203
    iget-object v0, p0, Ljkq;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 204
    invoke-virtual {p0}, Ljkq;->invalidateSelf()V

    goto :goto_0
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Ljkq;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljkq;->l:Z

    .line 215
    iget-object v0, p0, Ljkq;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 216
    iget-object v0, p0, Ljkq;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 217
    invoke-virtual {p0}, Ljkq;->invalidateSelf()V

    goto :goto_0
.end method
