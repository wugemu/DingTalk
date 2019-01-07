.class public Landroid/support/v4/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CircularProgressDrawable$a;,
        Landroid/support/v4/widget/CircularProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:[I


# instance fields
.field final a:Landroid/support/v4/widget/CircularProgressDrawable$a;

.field private e:F

.field private f:Landroid/content/res/Resources;

.field private g:Landroid/animation/Animator;

.field private h:F

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->b:Landroid/view/animation/Interpolator;

    .line 67
    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->c:Landroid/view/animation/Interpolator;

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 136
    invoke-static {p1}, Lfv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->f:Landroid/content/res/Resources;

    .line 138
    new-instance v0, Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-direct {v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 139
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    sget-object v1, Landroid/support/v4/widget/CircularProgressDrawable;->d:[I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a([I)V

    .line 1189
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a(F)V

    .line 1190
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 1559
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 1560
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1561
    new-instance v2, Landroid/support/v4/widget/CircularProgressDrawable$1;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$1;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1570
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1571
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1572
    sget-object v2, Landroid/support/v4/widget/CircularProgressDrawable;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1573
    new-instance v2, Landroid/support/v4/widget/CircularProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$2;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1608
    iput-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->g:Landroid/animation/Animator;

    .line 143
    return-void

    .line 1560
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Landroid/support/v4/widget/CircularProgressDrawable;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 65
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->h:F

    return p1
.end method

.method private a(FFFF)V
    .locals 5
    .param p1, "centerRadius"    # F
    .param p2, "strokeWidth"    # F
    .param p3, "arrowWidth"    # F
    .param p4, "arrowHeight"    # F

    .prologue
    .line 148
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 149
    .local v1, "ring":Landroid/support/v4/widget/CircularProgressDrawable$a;
    iget-object v3, p0, Landroid/support/v4/widget/CircularProgressDrawable;->f:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 150
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 152
    .local v2, "screenDensity":F
    mul-float v3, p2, v2

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a(F)V

    .line 153
    mul-float v3, p1, v2

    .line 1883
    iput v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$a;->q:F

    .line 154
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a(I)V

    .line 155
    mul-float v3, p3, v2

    mul-float v4, p4, v2

    .line 2661
    float-to-int v3, v3

    iput v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$a;->r:I

    .line 2662
    float-to-int v3, v4

    iput v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$a;->s:I

    .line 156
    return-void
.end method

.method private a(FLandroid/support/v4/widget/CircularProgressDrawable$a;)V
    .locals 9
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroid/support/v4/widget/CircularProgressDrawable$a;

    .prologue
    const/high16 v1, 0x3f400000    # 0.75f

    .line 493
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 494
    sub-float v0, p1, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    .line 495
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$a;->b()I

    move-result v1

    .line 7798
    iget-object v2, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->i:[I

    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a()I

    move-result v3

    aget v2, v2, v3

    .line 8471
    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 8472
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 8473
    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 8474
    and-int/lit16 v1, v1, 0xff

    .line 8476
    shr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    .line 8477
    shr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    .line 8478
    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 8479
    and-int/lit16 v2, v2, 0xff

    .line 8481
    sub-int/2addr v6, v3

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    add-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x18

    sub-int v6, v7, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    add-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    sub-int v4, v8, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    or-int/2addr v0, v3

    .line 8771
    iput v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->u:I

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$a;->b()I

    move-result v0

    .line 9771
    iput v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->u:I

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$a;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;
    .param p1, "x1"    # F
    .param p2, "x2"    # Landroid/support/v4/widget/CircularProgressDrawable$a;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->a(FLandroid/support/v4/widget/CircularProgressDrawable$a;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$a;Z)V
    .locals 7
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;
    .param p1, "x1"    # F
    .param p2, "x2"    # Landroid/support/v4/widget/CircularProgressDrawable$a;
    .param p3, "x3"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3f4a3d71    # 0.79f

    const v4, 0x3c23d70a    # 0.01f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 65
    .line 10527
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->i:Z

    if-eqz v0, :cond_1

    .line 11510
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->a(FLandroid/support/v4/widget/CircularProgressDrawable$a;)V

    .line 11920
    iget v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->m:F

    .line 11511
    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 12852
    iget v1, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->k:F

    .line 12856
    iget v2, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->l:F

    .line 11514
    sub-float/2addr v2, v4

    .line 13852
    iget v3, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->k:F

    .line 11514
    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 14844
    iput v1, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->e:F

    .line 14856
    iget v1, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->l:F

    .line 14864
    iput v1, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->f:F

    .line 14920
    iget v1, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->m:F

    .line 15920
    iget v2, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->m:F

    .line 11519
    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 16872
    iput v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->g:F

    .line 10528
    :cond_0
    :goto_0
    return-void

    .line 10531
    :cond_1
    cmpl-float v0, p1, v6

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    .line 16920
    :cond_2
    iget v2, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->m:F

    .line 10535
    cmpg-float v0, p1, v1

    if-gez v0, :cond_3

    .line 10536
    div-float v0, p1, v1

    .line 17852
    iget v1, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->k:F

    .line 10538
    sget-object v3, Landroid/support/v4/widget/CircularProgressDrawable;->c:Landroid/view/animation/Interpolator;

    .line 10539
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 10548
    :goto_1
    const v3, 0x3e570a3c    # 0.20999998f

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 10549
    const/high16 v3, 0x43580000    # 216.0f

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable;->h:F

    add-float/2addr v4, p1

    mul-float/2addr v3, v4

    .line 19844
    iput v1, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->e:F

    .line 19864
    iput v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->f:F

    .line 19872
    iput v2, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->g:F

    .line 20419
    iput v3, p0, Landroid/support/v4/widget/CircularProgressDrawable;->e:F

    goto :goto_0

    .line 10541
    :cond_3
    sub-float v0, p1, v1

    div-float v1, v0, v1

    .line 18852
    iget v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$a;->k:F

    .line 10542
    add-float/2addr v0, v5

    .line 10543
    sget-object v3, Landroid/support/v4/widget/CircularProgressDrawable;->c:Landroid/view/animation/Interpolator;

    .line 10544
    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v6, v1

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    sub-float v1, v0, v1

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v4/widget/CircularProgressDrawable;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->i:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v4/widget/CircularProgressDrawable;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->i:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v4/widget/CircularProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;

    .prologue
    .line 65
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->h:F

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 2907
    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$a;->p:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 2908
    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$a;->p:F

    .line 296
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 297
    return-void
.end method

.method public final a(FF)V
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 326
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    const/4 v1, 0x0

    .line 3844
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$a;->e:F

    .line 327
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 3864
    iput p2, v0, Landroid/support/v4/widget/CircularProgressDrawable$a;->f:F

    .line 328
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 329
    return-void
.end method

.method public final a(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    const/high16 v0, 0x41300000    # 11.0f

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/widget/CircularProgressDrawable;->a(FFFF)V

    .line 171
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 172
    return-void

    .line 169
    :cond_0
    const/high16 v0, 0x40f00000    # 7.5f

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/widget/CircularProgressDrawable;->a(FFFF)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a(Z)V

    .line 277
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 278
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 394
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 395
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 396
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->e:F

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 397
    iget-object v7, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 4685
    iget-object v1, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->a:Landroid/graphics/RectF;

    .line 4686
    iget v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->q:F

    iget v2, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->h:F

    div-float/2addr v2, v11

    add-float/2addr v0, v2

    .line 4687
    iget v2, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->q:F

    cmpg-float v2, v2, v10

    if-gtz v2, :cond_0

    .line 4689
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v2, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->r:I

    int-to-float v2, v2

    iget v3, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->p:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v11

    iget v3, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->h:F

    div-float/2addr v3, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v0, v2

    .line 4692
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 4693
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 4694
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    .line 4695
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    .line 4692
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4697
    iget v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->e:F

    iget v2, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->g:F

    add-float/2addr v0, v2

    mul-float v2, v0, v8

    .line 4698
    iget v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->f:F

    iget v3, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->g:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v8

    .line 4699
    sub-float v3, v0, v2

    .line 4701
    iget-object v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->b:Landroid/graphics/Paint;

    iget v4, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->u:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4702
    iget-object v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->b:Landroid/graphics/Paint;

    iget v4, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->t:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4705
    iget v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->h:F

    div-float/2addr v0, v11

    .line 4706
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 4707
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v11

    iget-object v9, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4709
    neg-float v4, v0

    neg-float v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 4711
    const/4 v4, 0x0

    iget-object v5, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 4717
    iget-boolean v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->n:Z

    if-eqz v0, :cond_1

    .line 4718
    iget-object v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->o:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 4719
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->o:Landroid/graphics/Path;

    .line 4720
    iget-object v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->o:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 4724
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v11

    .line 4725
    iget v4, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->r:I

    int-to-float v4, v4

    iget v5, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->p:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v11

    .line 4730
    iget-object v5, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->o:Landroid/graphics/Path;

    invoke-virtual {v5, v10, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4731
    iget-object v5, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->o:Landroid/graphics/Path;

    iget v8, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->r:I

    int-to-float v8, v8

    iget v9, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->p:F

    mul-float/2addr v8, v9

    invoke-virtual {v5, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4732
    iget-object v5, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->o:Landroid/graphics/Path;

    iget v8, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->r:I

    int-to-float v8, v8

    iget v9, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->p:F

    mul-float/2addr v8, v9

    div-float/2addr v8, v11

    iget v9, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->s:I

    int-to-float v9, v9

    iget v10, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->p:F

    mul-float/2addr v9, v10

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4734
    iget-object v5, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->o:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    add-float/2addr v0, v8

    sub-float/2addr v0, v4

    .line 4735
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v8, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->h:F

    div-float/2addr v8, v11

    add-float/2addr v4, v8

    .line 4734
    invoke-virtual {v5, v0, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 4736
    iget-object v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4738
    iget-object v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->c:Landroid/graphics/Paint;

    iget v4, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->u:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4739
    iget-object v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->c:Landroid/graphics/Paint;

    iget v4, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->t:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4740
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4741
    add-float v0, v2, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 4742
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 4741
    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4743
    iget-object v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->o:Landroid/graphics/Path;

    iget-object v1, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4744
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 398
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 399
    return-void

    .line 4722
    :cond_2
    iget-object v0, v7, Landroid/support/v4/widget/CircularProgressDrawable$a;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 4828
    iget v0, v0, Landroid/support/v4/widget/CircularProgressDrawable$a;->t:I

    .line 409
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 4821
    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$a;->t:I

    .line 404
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 405
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 414
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 5814
    iget-object v0, v0, Landroid/support/v4/widget/CircularProgressDrawable$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 415
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 416
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 442
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->c()V

    .line 444
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 5868
    iget v0, v0, Landroid/support/v4/widget/CircularProgressDrawable$a;->f:F

    .line 444
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 6848
    iget v1, v1, Landroid/support/v4/widget/CircularProgressDrawable$a;->e:F

    .line 444
    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->i:Z

    .line 446
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->g:Landroid/animation/Animator;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 447
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 454
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a(I)V

    .line 450
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->d()V

    .line 451
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->g:Landroid/animation/Animator;

    const-wide/16 v2, 0x534

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 452
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 462
    const/4 v0, 0x0

    .line 7419
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->e:F

    .line 463
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a(Z)V

    .line 464
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a(I)V

    .line 465
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->d()V

    .line 466
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 467
    return-void
.end method
