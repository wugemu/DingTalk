.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Lge;
.implements Lgh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$a;,
        Landroid/support/v4/widget/SwipeRefreshLayout$b;
    }
.end annotation


# static fields
.field private static final B:[I

.field private static final l:Ljava/lang/String;


# instance fields
.field private final A:Landroid/view/animation/DecelerateInterpolator;

.field private C:I

.field private D:Landroid/view/animation/Animation;

.field private E:Landroid/view/animation/Animation;

.field private F:Landroid/view/animation/Animation;

.field private G:Landroid/view/animation/Animation;

.field private H:I

.field private I:Landroid/support/v4/widget/SwipeRefreshLayout$a;

.field private J:Landroid/view/animation/Animation$AnimationListener;

.field private final K:Landroid/view/animation/Animation;

.field private final L:Landroid/view/animation/Animation;

.field a:Landroid/support/v4/widget/SwipeRefreshLayout$b;

.field b:Z

.field c:I

.field d:Z

.field e:Lhj;

.field protected f:I

.field protected g:I

.field h:I

.field i:Landroid/support/v4/widget/CircularProgressDrawable;

.field j:Z

.field k:Z

.field private m:Landroid/view/View;

.field private n:I

.field private o:F

.field private p:F

.field private final q:Lgj;

.field private final r:Lgg;

.field private final s:[I

.field private final t:[I

.field private u:Z

.field private v:I

.field private w:F

.field private x:F

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:Ljava/lang/String;

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 330
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    iput-boolean v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Z

    .line 108
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    .line 116
    new-array v2, v4, [I

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:[I

    .line 117
    new-array v2, v4, [I

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:[I

    .line 126
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    .line 139
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:I

    .line 170
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    .line 1099
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    .line 1123
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation;

    .line 332
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    .line 334
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:I

    .line 337
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 338
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/view/animation/DecelerateInterpolator;

    .line 340
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 341
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v2, 0x42200000    # 40.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    .line 1378
    new-instance v2, Lhj;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, -0x50506

    invoke-direct {v2, v3, v4}, Lhj;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    .line 1379
    new-instance v2, Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    .line 1380
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/CircularProgressDrawable;->a(I)V

    .line 1381
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v2, v3}, Lhj;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1382
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lhj;->setVisibility(I)V

    .line 1383
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 344
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/ViewGroup;Z)V

    .line 346
    const/high16 v2, 0x42800000    # 64.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    .line 347
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    .line 348
    new-instance v2, Lgj;

    invoke-direct {v2, p0}, Lgj;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lgj;

    .line 350
    new-instance v2, Lgg;

    invoke-direct {v2, p0}, Lgg;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Lgg;

    .line 351
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 353
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    neg-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    .line 354
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    .line 356
    sget-object v2, Landroid/support/v4/widget/SwipeRefreshLayout;->B:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 357
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 358
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 359
    return-void
.end method

.method private a(II)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "startingAlpha"    # I
    .param p2, "endingAlpha"    # I

    .prologue
    .line 484
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    .line 491
    .local v0, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 493
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    const/4 v2, 0x0

    .line 5091
    iput-object v2, v1, Lhj;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 494
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v1}, Lhj;->clearAnimation()V

    .line 495
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v1, v0}, Lhj;->startAnimation(Landroid/view/animation/Animation;)V

    .line 496
    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1158
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1159
    .local v1, "pointerId":I
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    if-ne v1, v3, :cond_0

    .line 1162
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1163
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    .line 1165
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 4
    .param p1, "refreshing"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Z

    if-eq v0, p1, :cond_1

    .line 451
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Z

    .line 452
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 453
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Z

    .line 454
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Z

    if-eqz v0, :cond_2

    .line 455
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    .line 3071
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:I

    .line 3072
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 3073
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3074
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3075
    if-eqz v1, :cond_0

    .line 3076
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    .line 3091
    iput-object v1, v0, Lhj;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 3078
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v0}, Lhj;->clearAnimation()V

    .line 3079
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lhj;->startAnimation(Landroid/view/animation/Animation;)V

    .line 460
    :cond_1
    :goto_0
    return-void

    .line 457
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private static a(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 897
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 572
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    if-nez v2, :cond_0

    .line 573
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 574
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 575
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    .line 581
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 573
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(F)V
    .locals 20
    .param p1, "overscrollTop"    # F

    .prologue
    .line 901
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v4/widget/CircularProgressDrawable;->a(Z)V

    .line 902
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    div-float v6, p1, v13

    .line 904
    .local v6, "originalDragPercent":F
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 905
    .local v3, "dragPercent":F
    float-to-double v14, v3

    const-wide v16, 0x3fd999999999999aL    # 0.4

    sub-double v14, v14, v16

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v13, v14

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40400000    # 3.0f

    div-float v2, v13, v14

    .line 906
    .local v2, "adjustedPercent":F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    sub-float v5, v13, v14

    .line 907
    .local v5, "extraOS":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    int-to-float v8, v13

    .line 909
    .local v8, "slingshotDist":F
    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v8

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    div-float/2addr v14, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 911
    .local v12, "tensionSlingshotPercent":F
    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v14, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v11, v13, v14

    .line 913
    .local v11, "tensionPercent":F
    mul-float v13, v8, v11

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v4, v13, v14

    .line 915
    .local v4, "extraMove":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    mul-float v14, v8, v3

    add-float/2addr v14, v4

    float-to-int v14, v14

    add-int v10, v13, v14

    .line 917
    .local v10, "targetY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v13}, Lhj;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_0

    .line 918
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lhj;->setVisibility(I)V

    .line 921
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Lhj;->setScaleX(F)V

    .line 922
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Lhj;->setScaleY(F)V

    .line 928
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    cmpg-float v13, p1, v13

    if-gez v13, :cond_2

    .line 929
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v13}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0x4c

    if-le v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    .line 930
    invoke-static {v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 8476
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v13}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0x4c

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    .line 940
    :cond_1
    :goto_0
    const v13, 0x3f4ccccd    # 0.8f

    mul-float v9, v2, v13

    .line 941
    .local v9, "strokeStart":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v14, 0x0

    const v15, 0x3f4ccccd    # 0.8f

    invoke-static {v15, v9}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/widget/CircularProgressDrawable;->a(FF)V

    .line 942
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/support/v4/widget/CircularProgressDrawable;->a(F)V

    .line 944
    const/high16 v13, -0x41800000    # -0.25f

    const v14, 0x3ecccccd    # 0.4f

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v7, v13, v14

    .line 945
    .local v7, "rotation":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    .line 9346
    iget-object v14, v13, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    .line 9872
    iput v7, v14, Landroid/support/v4/widget/CircularProgressDrawable$a;->g:F

    .line 9347
    invoke-virtual {v13}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 946
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    sub-int v13, v10, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 947
    return-void

    .line 935
    .end local v7    # "rotation":F
    .end local v9    # "strokeStart":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v13}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0xff

    if-ge v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/view/animation/Animation;

    invoke-static {v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 8480
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v13}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private c(F)V
    .locals 5
    .param p1, "overscrollTop"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 950
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 951
    invoke-direct {p0, v3, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    .line 980
    :goto_0
    return-void

    .line 954
    :cond_0
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Z

    .line 955
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v1, v2, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->a(FF)V

    .line 956
    const/4 v0, 0x0

    .line 958
    .local v0, "listener":Landroid/view/animation/Animation$AnimationListener;
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    .end local v0    # "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 977
    .restart local v0    # "listener":Landroid/view/animation/Animation$AnimationListener;
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    .line 10087
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:I

    .line 10088
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 10089
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10090
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 10091
    if-eqz v0, :cond_1

    .line 10092
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    .line 11091
    iput-object v0, v1, Lhj;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 10094
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v1}, Lhj;->clearAnimation()V

    .line 10095
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lhj;->startAnimation(Landroid/view/animation/Animation;)V

    .line 978
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/CircularProgressDrawable;->a(Z)V

    goto :goto_0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 657
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Landroid/support/v4/widget/SwipeRefreshLayout$a;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Landroid/support/v4/widget/SwipeRefreshLayout$a;

    invoke-interface {v0}, Landroid/support/v4/widget/SwipeRefreshLayout$a;->a()Z

    move-result v0

    .line 6084
    :goto_0
    return v0

    .line 660
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 661
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    .line 6066
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 6068
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v0

    goto :goto_0

    .line 6071
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 6072
    if-eqz v2, :cond_3

    .line 6076
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 6083
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 6084
    if-gtz v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 661
    goto :goto_0

    .line 663
    :cond_4
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    goto :goto_0
.end method

.method private d(F)V
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 1062
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    sub-float v0, p1, v1

    .line 1063
    .local v0, "yDiff":F
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    if-nez v1, :cond_0

    .line 1064
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:F

    .line 1065
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    .line 1066
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 1068
    :cond_0
    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .param p1, "targetAlpha"    # I

    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v0}, Lhj;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 227
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 228
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v0}, Lhj;->clearAnimation()V

    .line 199
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->stop()V

    .line 200
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lhj;->setVisibility(I)V

    .line 201
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 206
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 208
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v0}, Lhj;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    .line 209
    return-void
.end method

.method final a(F)V
    .locals 5
    .param p1, "interpolatedTime"    # F

    .prologue
    .line 1118
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:I

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 1119
    .local v1, "targetTop":I
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v2}, Lhj;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 1120
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 1121
    return-void
.end method

.method final a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 463
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    .line 469
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 470
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    .line 4091
    iput-object p1, v0, Lhj;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 471
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v0}, Lhj;->clearAnimation()V

    .line 472
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lhj;->startAnimation(Landroid/view/animation/Animation;)V

    .line 473
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 888
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Lgg;

    invoke-virtual {v0, p1, p2, p3}, Lgg;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 893
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Lgg;

    invoke-virtual {v0, p1, p2}, Lgg;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 870
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Lgg;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgg;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 864
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Lgg;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lgg;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 363
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:I

    if-gez v0, :cond_1

    .line 373
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 365
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 367
    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:I

    goto :goto_0

    .line 368
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:I

    if-lt p2, v0, :cond_0

    .line 370
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lgj;

    .line 6088
    iget v0, v0, Lgj;->a:I

    .line 798
    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Lgg;

    .line 8099
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgg;->a(I)Z

    move-result v0

    .line 858
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Lgg;

    .line 7085
    iget-boolean v0, v0, Lgg;->a:Z

    .line 843
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 222
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()V

    .line 223
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 677
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 686
    .local v0, "action":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-eqz v4, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v3

    .line 692
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 730
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    goto :goto_0

    .line 694
    :pswitch_1
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v5}, Lhj;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 695
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    .line 696
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    .line 698
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 699
    .local v1, "pointerIndex":I
    if-ltz v1, :cond_0

    .line 702
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    goto :goto_1

    .line 706
    .end local v1    # "pointerIndex":I
    :pswitch_2
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    if-ne v4, v5, :cond_2

    .line 707
    sget-object v4, Landroid/support/v4/widget/SwipeRefreshLayout;->l:Ljava/lang/String;

    const-string/jumbo v5, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    :cond_2
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 712
    .restart local v1    # "pointerIndex":I
    if-ltz v1, :cond_0

    .line 715
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 716
    .local v2, "y":F
    invoke-direct {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->d(F)V

    goto :goto_1

    .line 720
    .end local v1    # "pointerIndex":I
    .end local v2    # "y":F
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 725
    :pswitch_4
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    .line 726
    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    goto :goto_1

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v8

    .line 595
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v7

    .line 596
    .local v7, "height":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    if-nez v9, :cond_2

    .line 600
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 602
    :cond_2
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 605
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    .line 606
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    .line 607
    .local v2, "childLeft":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    .line 608
    .local v3, "childTop":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v10

    sub-int v4, v9, v10

    .line 609
    .local v4, "childWidth":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v10

    sub-int v1, v9, v10

    .line 610
    .local v1, "childHeight":I
    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 611
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v9}, Lhj;->getMeasuredWidth()I

    move-result v6

    .line 612
    .local v6, "circleWidth":I
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v9}, Lhj;->getMeasuredHeight()I

    move-result v5

    .line 613
    .local v5, "circleHeight":I
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    div-int/lit8 v12, v8, 0x2

    div-int/lit8 v13, v6, 0x2

    add-int/2addr v12, v13

    iget v13, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    add-int/2addr v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Lhj;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 619
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 620
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    if-nez v1, :cond_0

    .line 621
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 623
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    if-nez v1, :cond_2

    .line 640
    :cond_1
    :goto_0
    return-void

    .line 626
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    .line 627
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 626
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 629
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 628
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 626
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 630
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    .line 631
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 630
    invoke-virtual {v1, v2, v3}, Lhj;->measure(II)V

    .line 632
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:I

    .line 634
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 635
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    if-ne v1, v2, :cond_3

    .line 636
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:I

    goto :goto_0

    .line 634
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 883
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 877
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 768
    if-lez p3, :cond_0

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 769
    int-to-float v1, p3

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 770
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    float-to-int v1, v1

    sub-int v1, p3, v1

    aput v1, p4, v4

    .line 771
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    .line 776
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    .line 789
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:[I

    .line 790
    .local v0, "parentConsumed":[I
    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    .line 792
    aget v1, p4, v4

    aget v2, v0, v4

    add-int/2addr v1, v2

    aput v1, p4, v4

    .line 794
    :cond_1
    return-void

    .line 773
    .end local v0    # "parentConsumed":[I
    :cond_2
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    int-to-float v2, p3

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    .line 774
    aput p3, p4, v4

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 819
    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 827
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int v6, p5, v0

    .line 828
    .local v6, "dy":I
    if-gez v6, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    .line 830
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    .line 832
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 757
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lgj;

    invoke-virtual {v0, p1, p2, p3}, Lgj;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 759
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 760
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    .line 762
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 750
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Z

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 803
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Lgj;

    .line 6110
    iput v2, v0, Lgj;->a:I

    .line 804
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    .line 807
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 808
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(F)V

    .line 809
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    .line 812
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 813
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 991
    .local v0, "action":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-eqz v5, :cond_1

    .line 1058
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 997
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 1058
    :cond_2
    :goto_1
    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    .line 999
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    .line 1000
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    goto :goto_1

    .line 1004
    :pswitch_3
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1005
    .local v2, "pointerIndex":I
    if-gez v2, :cond_3

    .line 1006
    sget-object v5, Landroid/support/v4/widget/SwipeRefreshLayout;->l:Ljava/lang/String;

    const-string/jumbo v6, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1010
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 1011
    .local v3, "y":F
    invoke-direct {p0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->d(F)V

    .line 1013
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    if-eqz v5, :cond_2

    .line 1014
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:F

    sub-float v5, v3, v5

    mul-float v1, v5, v6

    .line 1015
    .local v1, "overscrollTop":F
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_0

    .line 1016
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    goto :goto_1

    .line 1024
    .end local v1    # "overscrollTop":F
    .end local v2    # "pointerIndex":I
    .end local v3    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1025
    .restart local v2    # "pointerIndex":I
    if-gez v2, :cond_4

    .line 1026
    sget-object v5, Landroid/support/v4/widget/SwipeRefreshLayout;->l:Ljava/lang/String;

    const-string/jumbo v6, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1030
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    goto :goto_1

    .line 1035
    .end local v2    # "pointerIndex":I
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1039
    :pswitch_6
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1040
    .restart local v2    # "pointerIndex":I
    if-gez v2, :cond_5

    .line 1041
    sget-object v5, Landroid/support/v4/widget/SwipeRefreshLayout;->l:Ljava/lang/String;

    const-string/jumbo v6, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1045
    :cond_5
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    if-eqz v5, :cond_6

    .line 1046
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 1047
    .restart local v3    # "y":F
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:F

    sub-float v5, v3, v5

    mul-float v1, v5, v6

    .line 1048
    .restart local v1    # "overscrollTop":F
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Z

    .line 1049
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(F)V

    .line 1051
    .end local v1    # "overscrollTop":F
    .end local v3    # "y":F
    :cond_6
    const/4 v5, -0x1

    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    goto/16 :goto_0

    .line 997
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 738
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Landroid/view/View;

    .line 739
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->x(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 742
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 744
    :cond_2
    return-void
.end method

.method setAnimationProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 445
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v0, p1}, Lhj;->setScaleX(F)V

    .line 446
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v0, p1}, Lhj;->setScaleY(F)V

    .line 447
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 531
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 3
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 557
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 558
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    .line 5387
    iget-object v1, v0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a([I)V

    .line 5388
    iget-object v1, v0, Landroid/support/v4/widget/CircularProgressDrawable;->a:Landroid/support/v4/widget/CircularProgressDrawable$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a(I)V

    .line 5389
    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 559
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "colorResIds"    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 542
    .local v1, "context":Landroid/content/Context;
    array-length v3, p1

    new-array v0, v3, [I

    .line 543
    .local v0, "colorRes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 544
    aget v3, p1, v2

    invoke-static {v1, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v2

    .line 543
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 547
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 589
    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    .line 590
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 214
    if-nez p1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()V

    .line 217
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 838
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Lgg;

    invoke-virtual {v0, p1}, Lgg;->a(Z)V

    .line 839
    return-void
.end method

.method public setOnChildScrollUpCallback(Landroid/support/v4/widget/SwipeRefreshLayout$a;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v4/widget/SwipeRefreshLayout$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 672
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Landroid/support/v4/widget/SwipeRefreshLayout$a;

    .line 673
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$b;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/SwipeRefreshLayout$b;

    .prologue
    .line 391
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Landroid/support/v4/widget/SwipeRefreshLayout$b;

    .line 392
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "colorRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 505
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v0, p1}, Lhj;->setBackgroundColor(I)V

    .line 523
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 514
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 6
    .param p1, "refreshing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 401
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Z

    if-eq v1, p1, :cond_2

    .line 403
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Z

    .line 406
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    add-int v0, v1, v2

    .line 410
    .local v0, "endTarget":I
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 411
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Z

    .line 412
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    .line 1419
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v2, v3}, Lhj;->setVisibility(I)V

    .line 1420
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 1424
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 1426
    :cond_0
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    .line 1432
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1433
    if-eqz v1, :cond_1

    .line 1434
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    .line 2091
    iput-object v1, v2, Lhj;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 1436
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v1}, Lhj;->clearAnimation()V

    .line 1437
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lhj;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    .end local v0    # "endTarget":I
    :goto_0
    return-void

    .line 414
    :cond_2
    invoke-direct {p0, p1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 297
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 301
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_1

    .line 302
    const/high16 v1, 0x42600000    # 56.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    .line 309
    :goto_1
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lhj;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->a(I)V

    .line 311
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v1, v2}, Lhj;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 304
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    goto :goto_1
.end method

.method setTargetOffsetTopAndBottom(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1151
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v0}, Lhj;->bringToFront()V

    .line 1152
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 1153
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v0}, Lhj;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:I

    .line 1154
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 2
    .param p1, "axes"    # I

    .prologue
    .line 848
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Lgg;

    .line 7128
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgg;->a(II)Z

    move-result v0

    .line 848
    return v0
.end method

.method public stopNestedScroll()V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Lgg;

    .line 7174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgg;->b(I)V

    .line 854
    return-void
.end method
