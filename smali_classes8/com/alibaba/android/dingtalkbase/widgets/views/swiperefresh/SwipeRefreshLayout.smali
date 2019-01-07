.class public Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final q:[I


# instance fields
.field private A:F

.field private B:Z

.field private C:I

.field private D:I

.field private E:Z

.field private F:Landroid/view/animation/Animation$AnimationListener;

.field private G:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$a;

.field private final H:Landroid/view/animation/Animation;

.field private final I:Landroid/view/animation/Animation;

.field public a:Z

.field protected b:I

.field protected c:I

.field private e:Landroid/view/View;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

.field private g:I

.field private h:F

.field private i:I

.field private j:I

.field private k:Z

.field private l:F

.field private m:Z

.field private n:I

.field private o:Z

.field private final p:Landroid/view/animation/DecelerateInterpolator;

.field private r:Lcta;

.field private s:I

.field private t:F

.field private u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

.field private v:Landroid/view/animation/Animation;

.field private w:Landroid/view/animation/Animation;

.field private x:Landroid/view/animation/Animation;

.field private y:Landroid/view/animation/Animation;

.field private z:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->d:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->q:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const v7, -0x50506

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    .line 100
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->h:F

    .line 104
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->k:Z

    .line 108
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    .line 121
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->s:I

    .line 152
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->F:Landroid/view/animation/Animation$AnimationListener;

    .line 885
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$6;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->H:Landroid/view/animation/Animation;

    .line 908
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->I:Landroid/view/animation/Animation;

    .line 276
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->g:I

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->i:I

    .line 281
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 282
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->p:Landroid/view/animation/DecelerateInterpolator;

    .line 284
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->q:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 285
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 286
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 289
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->C:I

    .line 290
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->D:I

    .line 1315
    new-instance v2, Lcta;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v2, v3, v7, v4}, Lcta;-><init>(Landroid/content/Context;IF)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    .line 1316
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    .line 1317
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->b(I)V

    .line 1318
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v2, v3}, Lcta;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1319
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcta;->setVisibility(I)V

    .line 1320
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 293
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/ViewGroup;Z)V

    .line 295
    const/high16 v2, 0x42800000    # 64.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->A:F

    .line 296
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->A:F

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->h:F

    .line 297
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 265
    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p0, "ev"    # Landroid/view/MotionEvent;
    .param p1, "activePointerId"    # I

    .prologue
    .line 694
    .line 7488
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 695
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 696
    const/high16 v1, -0x40800000    # -1.0f

    .line 698
    :goto_0
    return v1

    .line 7521
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    goto :goto_0
.end method

.method private a(II)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "startingAlpha"    # I
    .param p2, "endingAlpha"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->o:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 460
    :goto_0
    return-object v0

    .line 447
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;II)V

    .line 455
    .local v0, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 457
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    .line 5108
    iput-object v1, v2, Lcta;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 458
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v1}, Lcta;->clearAnimation()V

    .line 459
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v1, v0}, Lcta;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "requiresUpdate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 941
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v0}, Lcta;->bringToFront()V

    .line 942
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v0, p1}, Lcta;->offsetTopAndBottom(I)V

    .line 943
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v0}, Lcta;->getTop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->j:I

    .line 944
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->invalidate()V

    .line 948
    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 951
    .line 16477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 16499
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 953
    .local v1, "pointerId":I
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    if-ne v1, v3, :cond_0

    .line 956
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 17499
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 957
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    .line 959
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 956
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 417
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->w:Landroid/view/animation/Animation;

    .line 423
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->w:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    .line 4108
    iput-object p1, v0, Lcta;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 427
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v0}, Lcta;->clearAnimation()V

    .line 428
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->w:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->w:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcta;->startAnimation(Landroid/view/animation/Animation;)V

    .line 431
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .param p1, "x1"    # F

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .param p1, "x1"    # I

    .prologue
    .line 59
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorViewAlpha(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .param p1, "x1"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4
    .param p1, "refreshing"    # Z
    .param p2, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    if-eq v0, p1, :cond_1

    .line 405
    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->B:Z

    .line 406
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->b()V

    .line 407
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    .line 408
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    if-eqz v0, :cond_2

    .line 409
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->j:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->F:Landroid/view/animation/Animation$AnimationListener;

    .line 2857
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->b:I

    .line 2858
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->H:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2859
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->H:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2860
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->H:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->p:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2861
    if-eqz v1, :cond_0

    .line 2862
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    .line 3108
    iput-object v1, v0, Lcta;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 2864
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v0}, Lcta;->clearAnimation()V

    .line 2865
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->H:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcta;->startAnimation(Landroid/view/animation/Animation;)V

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->F:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 707
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

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->j:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 520
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    if-nez v2, :cond_0

    .line 521
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 522
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 524
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    .line 529
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 521
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;F)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .param p1, "x1"    # F

    .prologue
    .line 59
    .line 17903
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->b:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->c:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 17904
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v1}, Lcta;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 17905
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(IZ)V

    .line 59
    return-void
.end method

.method private c()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 601
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$a;

    if-eqz v2, :cond_0

    .line 602
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$a;

    invoke-interface {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$a;->a()Z

    move-result v2

    .line 622
    :goto_0
    return v2

    .line 604
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsListView;

    if-eqz v2, :cond_3

    .line 605
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 606
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 607
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 608
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    if-ge v2, v5, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .line 610
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    .line 611
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 612
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/AbsListView;

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 613
    check-cast v0, Landroid/widget/AbsListView;

    .line 614
    .restart local v0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 615
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_4

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 616
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    if-ge v2, v5, :cond_5

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_0

    .line 618
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-lez v2, :cond_7

    move v2, v3

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_0

    .line 622
    .end local v1    # "child":Landroid/view/View;
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-lez v2, :cond_9

    move v2, v3

    goto :goto_0

    :cond_9
    move v2, v4

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->B:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)Lcta;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->o:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->j:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->E:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->A:F

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->t:F

    return v0
.end method

.method private setAnimationProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 395
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 401
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 399
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .param p1, "targetAlpha"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v0}, Lcta;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 191
    return-void
.end method


# virtual methods
.method public final a(ZII)V
    .locals 2
    .param p1, "scale"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->o:Z

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcta;->setVisibility(I)V

    .line 210
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->j:I

    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->c:I

    .line 211
    int-to-float v0, p3

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->A:F

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->E:Z

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v0}, Lcta;->invalidate()V

    .line 214
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 300
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->s:I

    if-gez v0, :cond_1

    .line 310
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 302
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 304
    iget p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->s:I

    goto :goto_0

    .line 305
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->s:I

    if-lt p2, v0, :cond_0

    .line 307
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 638
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->b()V

    .line 6465
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 646
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->c()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    if-eqz v5, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v4

    .line 651
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 690
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->m:Z

    goto :goto_0

    .line 653
    :pswitch_1
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->c:I

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v6}, Lcta;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(IZ)V

    .line 6499
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 654
    iput v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    .line 655
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->m:Z

    .line 656
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    invoke-static {p1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 657
    .local v1, "initialMotionY":F
    cmpl-float v5, v1, v7

    if-eqz v5, :cond_0

    .line 660
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->l:F

    .line 663
    .end local v1    # "initialMotionY":F
    :pswitch_2
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    if-ne v5, v8, :cond_3

    .line 664
    sget-object v5, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->d:Ljava/lang/String;

    const-string/jumbo v6, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    :cond_3
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    invoke-static {p1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 669
    .local v2, "y":F
    cmpl-float v5, v2, v7

    if-eqz v5, :cond_0

    .line 672
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->l:F

    sub-float v3, v2, v4

    .line 673
    .local v3, "yDiff":F
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->g:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->m:Z

    if-nez v4, :cond_2

    .line 674
    iput-boolean v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->m:Z

    .line 675
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    const/16 v5, 0x4c

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    goto :goto_1

    .line 680
    .end local v2    # "y":F
    .end local v3    # "yDiff":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 685
    :pswitch_4
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->m:Z

    .line 686
    iput v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    goto :goto_1

    .line 651
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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v8

    .line 543
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v7

    .line 544
    .local v7, "height":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    if-nez v9, :cond_2

    .line 548
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->b()V

    .line 550
    :cond_2
    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 553
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    .line 554
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    .line 555
    .local v2, "childLeft":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    .line 556
    .local v3, "childTop":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getPaddingRight()I

    move-result v10

    sub-int v4, v9, v10

    .line 557
    .local v4, "childWidth":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v10

    sub-int v1, v9, v10

    .line 558
    .local v1, "childHeight":I
    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 559
    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v9}, Lcta;->getMeasuredWidth()I

    move-result v6

    .line 560
    .local v6, "circleWidth":I
    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v9}, Lcta;->getMeasuredHeight()I

    move-result v5

    .line 561
    .local v5, "circleHeight":I
    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->j:I

    div-int/lit8 v12, v8, 0x2

    div-int/lit8 v13, v6, 0x2

    add-int/2addr v12, v13

    iget v13, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->j:I

    add-int/2addr v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Lcta;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 567
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 568
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    if-nez v1, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->b()V

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    if-nez v1, :cond_2

    .line 592
    :cond_1
    :goto_0
    return-void

    .line 574
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->e:Landroid/view/View;

    .line 575
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 574
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 577
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 576
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 574
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 578
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->C:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->D:I

    .line 579
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 578
    invoke-virtual {v1, v2, v3}, Lcta;->measure(II)V

    .line 580
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->E:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->k:Z

    if-nez v1, :cond_3

    .line 581
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->k:Z

    .line 582
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v1}, Lcta;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->c:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->j:I

    .line 584
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->s:I

    .line 586
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 587
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    if-ne v1, v2, :cond_4

    .line 588
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->s:I

    goto :goto_0

    .line 586
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 712
    .line 8465
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 718
    .local v4, "action":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->isEnabled()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->c()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 720
    :cond_0
    const/16 v22, 0x0

    .line 853
    :goto_0
    return v22

    .line 723
    :cond_1
    packed-switch v4, :pswitch_data_0

    .line 853
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v22, 0x1

    goto :goto_0

    .line 725
    :pswitch_1
    const/16 v22, 0x0

    .line 8499
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    .line 725
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    .line 726
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->m:Z

    goto :goto_1

    .line 730
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    move/from16 v22, v0

    .line 9488
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 731
    .local v14, "pointerIndex":I
    if-gez v14, :cond_3

    .line 732
    sget-object v22, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->d:Ljava/lang/String;

    const-string/jumbo v23, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/16 v22, 0x0

    goto :goto_0

    .line 9521
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    .line 737
    .local v21, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->l:F

    move/from16 v22, v0

    sub-float v22, v21, v22

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v13, v22, v23

    .line 738
    .local v13, "overscrollTop":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->m:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a(Z)V

    .line 740
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->h:F

    move/from16 v22, v0

    div-float v12, v13, v22

    .line 741
    .local v12, "originalDragPercent":F
    const/16 v22, 0x0

    cmpg-float v22, v12, v22

    if-gez v22, :cond_4

    .line 742
    const/16 v22, 0x0

    goto :goto_0

    .line 744
    :cond_4
    const/high16 v22, 0x3f800000    # 1.0f

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 745
    .local v6, "dragPercent":F
    float-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide v24, 0x3fd999999999999aL    # 0.4

    sub-double v22, v22, v24

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40a00000    # 5.0f

    mul-float v22, v22, v23

    const/high16 v23, 0x40400000    # 3.0f

    div-float v5, v22, v23

    .line 746
    .local v5, "adjustedPercent":F
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->h:F

    move/from16 v23, v0

    sub-float v9, v22, v23

    .line 747
    .local v9, "extraOS":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->E:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->A:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->c:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v16, v22, v23

    .line 749
    .local v16, "slingshotDist":F
    :goto_2
    const/16 v22, 0x0

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v23, v23, v16

    .line 750
    move/from16 v0, v23

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v23

    div-float v23, v23, v16

    .line 749
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 751
    .local v20, "tensionSlingshotPercent":F
    const/high16 v22, 0x40800000    # 4.0f

    div-float v22, v20, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const/high16 v24, 0x40800000    # 4.0f

    div-float v24, v20, v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v19, v22, v23

    .line 753
    .local v19, "tensionPercent":F
    mul-float v22, v16, v19

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v8, v22, v23

    .line 755
    .local v8, "extraMove":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->c:I

    move/from16 v22, v0

    mul-float v23, v16, v6

    add-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v18, v22, v23

    .line 758
    .local v18, "targetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcta;->getVisibility()I

    move-result v22

    if-eqz v22, :cond_5

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcta;->setVisibility(I)V

    .line 761
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->o:Z

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-static/range {v22 .. v23}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-static/range {v22 .. v23}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;F)V

    .line 765
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->h:F

    move/from16 v22, v0

    cmpg-float v22, v13, v22

    if-gez v22, :cond_b

    .line 766
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->o:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 767
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->h:F

    move/from16 v22, v0

    div-float v22, v13, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 769
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    move-result v22

    const/16 v23, 0x4c

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->x:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    .line 770
    invoke-static/range {v22 .. v22}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 10434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    move-result v22

    const/16 v23, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->x:Landroid/view/animation/Animation;

    .line 774
    :cond_8
    const v22, 0x3f4ccccd    # 0.8f

    mul-float v17, v5, v22

    .line 775
    .local v17, "strokeStart":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const v24, 0x3f4ccccd    # 0.8f

    move/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a(FF)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .line 11196
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    move-object/from16 v22, v0

    .line 11686
    move-object/from16 v0, v22

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->p:F

    move/from16 v24, v0

    cmpl-float v24, v23, v24

    if-eqz v24, :cond_9

    .line 11687
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->p:F

    .line 11688
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->c()V

    .line 784
    .end local v17    # "strokeStart":F
    :cond_9
    :goto_3
    const/high16 v22, -0x41800000    # -0.25f

    const v23, 0x3ecccccd    # 0.4f

    mul-float v23, v23, v5

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v23, v23, v19

    add-float v22, v22, v23

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v15, v22, v23

    .line 785
    .local v15, "rotation":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v22, v0

    .line 13216
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->c(F)V

    .line 786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->j:I

    move/from16 v22, v0

    sub-int v22, v18, v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(IZ)V

    goto/16 :goto_1

    .line 747
    .end local v8    # "extraMove":F
    .end local v15    # "rotation":F
    .end local v16    # "slingshotDist":F
    .end local v18    # "targetY":I
    .end local v19    # "tensionPercent":F
    .end local v20    # "tensionSlingshotPercent":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->A:F

    move/from16 v16, v0

    goto/16 :goto_2

    .line 778
    .restart local v8    # "extraMove":F
    .restart local v16    # "slingshotDist":F
    .restart local v18    # "targetY":I
    .restart local v19    # "tensionPercent":F
    .restart local v20    # "tensionSlingshotPercent":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    move-result v22

    const/16 v23, 0xff

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->y:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    .line 779
    invoke-static/range {v22 .. v22}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 12438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    move-result v22

    const/16 v23, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->y:Landroid/view/animation/Animation;

    goto :goto_3

    .line 13477
    .end local v5    # "adjustedPercent":F
    .end local v6    # "dragPercent":F
    .end local v8    # "extraMove":F
    .end local v9    # "extraOS":F
    .end local v12    # "originalDragPercent":F
    .end local v13    # "overscrollTop":F
    .end local v14    # "pointerIndex":I
    .end local v16    # "slingshotDist":F
    .end local v18    # "targetY":I
    .end local v19    # "tensionPercent":F
    .end local v20    # "tensionSlingshotPercent":F
    .end local v21    # "y":F
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    .line 13499
    .local v10, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    .line 793
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    goto/16 :goto_1

    .line 798
    .end local v10    # "index":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 803
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 804
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_c

    .line 805
    sget-object v22, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->d:Ljava/lang/String;

    const-string/jumbo v23, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 810
    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    move/from16 v22, v0

    .line 14488
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 14521
    .restart local v14    # "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    .line 812
    .restart local v21    # "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->l:F

    move/from16 v22, v0

    sub-float v22, v21, v22

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v13, v22, v23

    .line 813
    .restart local v13    # "overscrollTop":F
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->m:Z

    .line 814
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->h:F

    move/from16 v22, v0

    cmpl-float v22, v13, v22

    if-lez v22, :cond_e

    .line 815
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(ZZ)V

    .line 844
    :goto_4
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->n:I

    .line 849
    .end local v13    # "overscrollTop":F
    .end local v14    # "pointerIndex":I
    .end local v21    # "y":F
    :goto_5
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 818
    .restart local v13    # "overscrollTop":F
    .restart local v14    # "pointerIndex":I
    .restart local v21    # "y":F
    :cond_e
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a(FF)V

    .line 820
    const/4 v11, 0x0

    .line 821
    .local v11, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->o:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 822
    new-instance v11, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$5;

    .end local v11    # "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$5;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)V

    .line 841
    .restart local v11    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->j:I

    move/from16 v22, v0

    .line 14869
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->o:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    .line 14917
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->b:I

    .line 14918
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 14919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->t:F

    .line 14923
    :goto_6
    new-instance v22, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$8;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->z:Landroid/view/animation/Animation;

    .line 14931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->z:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x1f4

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 14932
    if-eqz v11, :cond_10

    .line 14933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    move-object/from16 v22, v0

    .line 15108
    move-object/from16 v0, v22

    iput-object v11, v0, Lcta;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 14935
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcta;->clearAnimation()V

    .line 14936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->z:Landroid/view/animation/Animation;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcta;->startAnimation(Landroid/view/animation/Animation;)V

    .line 842
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 845
    .end local v11    # "listener":Landroid/view/animation/Animation$AnimationListener;
    .end local v13    # "overscrollTop":F
    .end local v14    # "pointerIndex":I
    .end local v21    # "y":F
    :catch_0
    move-exception v7

    .line 846
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 14921
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "listener":Landroid/view/animation/Animation$AnimationListener;
    .restart local v13    # "overscrollTop":F
    .restart local v14    # "pointerIndex":I
    .restart local v21    # "y":F
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/support/v4/view/ViewCompat;->m(Landroid/view/View;)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->t:F

    goto :goto_6

    .line 14873
    :cond_12
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->b:I

    .line 14874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->I:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Animation;->reset()V

    .line 14875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->I:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    const-wide/16 v24, 0xc8

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 14876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->I:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->p:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 14877
    if-eqz v11, :cond_13

    .line 14878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    move-object/from16 v22, v0

    .line 16108
    move-object/from16 v0, v22

    iput-object v11, v0, Lcta;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 14880
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcta;->clearAnimation()V

    .line 14881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->I:Landroid/view/animation/Animation;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcta;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 704
    return-void
.end method

.method public setChildScrollupListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$a;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$a;

    .line 630
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1, "colors"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 479
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->b()V

    .line 506
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    .line 5234
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->a([I)V

    .line 5235
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;

    .line 5559
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable$b;->j:I

    .line 507
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "colorResIds"    # [I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 490
    .local v2, "res":Landroid/content/res/Resources;
    array-length v3, p1

    new-array v0, v3, [I

    .line 491
    .local v0, "colorRes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 492
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 495
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 537
    int-to-float v0, p1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->h:F

    .line 538
    return-void
.end method

.method public setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    .line 329
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 2
    .param p1, "colorRes"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 469
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v0, p1}, Lcta;->setBackgroundColor(I)V

    .line 470
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->b(I)V

    .line 471
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 6
    .param p1, "refreshing"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 345
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    if-eq v1, p1, :cond_3

    .line 347
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    .line 349
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->E:Z

    if-nez v1, :cond_2

    .line 350
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->A:F

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->c:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 354
    .local v0, "endTarget":I
    :goto_0
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->j:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(IZ)V

    .line 356
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->B:Z

    .line 357
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->F:Landroid/view/animation/Animation$AnimationListener;

    .line 1364
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v2, v3}, Lcta;->setVisibility(I)V

    .line 1365
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 1369
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 1371
    :cond_0
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->v:Landroid/view/animation/Animation;

    .line 1380
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->v:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1383
    if-eqz v1, :cond_1

    .line 1384
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    .line 2108
    iput-object v1, v2, Lcta;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 1386
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    invoke-virtual {v1}, Lcta;->clearAnimation()V

    .line 1387
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->v:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcta;->startAnimation(Landroid/view/animation/Animation;)V

    .line 361
    .end local v0    # "endTarget":I
    :goto_1
    return-void

    .line 352
    :cond_2
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->A:F

    float-to-int v0, v1

    .restart local v0    # "endTarget":I
    goto :goto_0

    .line 359
    .end local v0    # "endTarget":I
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 238
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 242
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_1

    .line 243
    const/high16 v1, 0x42600000    # 56.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->C:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->D:I

    .line 250
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcta;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;->a(I)V

    .line 252
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->r:Lcta;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v1, v2}, Lcta;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 245
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->C:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->D:I

    goto :goto_1
.end method
