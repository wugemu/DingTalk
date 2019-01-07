.class public Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;
.super Landroid/widget/FrameLayout;
.source "CalendarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$c;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;
    }
.end annotation


# static fields
.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$c;

.field private B:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;

.field private C:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;

.field public a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

.field public c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

.field private d:I

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lhr;

.field private o:I

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:Landroid/graphics/Rect;

.field private u:[I

.field private v:Z

.field private w:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;

.field private x:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;

.field private y:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;

.field private z:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->MONTH:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    .line 68
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->v:Z

    .line 88
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcig$l;->CalendarLayout:[I

    invoke-virtual {v3, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Lcig$l;->CalendarLayout_c_initial_type:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 92
    .local v2, "typeIntValue":I
    if-ne v2, v6, :cond_1

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    :goto_0
    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1280
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "typeIntValue":I
    :cond_0
    :goto_1
    sget v3, Lcjj;->b:I

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->d:I

    .line 1281
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->t:Landroid/graphics/Rect;

    .line 1282
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->u:[I

    .line 1283
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;

    invoke-direct {v3, p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;B)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;

    .line 1284
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->e:Landroid/view/animation/Interpolator;

    .line 2049
    new-instance v5, Lhr;

    invoke-direct {v5, v3, v4}, Lhr;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 1284
    iput-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->n:Lhr;

    .line 101
    return-void

    .line 92
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "typeIntValue":I
    :cond_1
    :try_start_1
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->MONTH:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v2    # "typeIntValue":I
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method private static a(IIII)I
    .locals 1
    .param p0, "top"    # I
    .param p1, "distanceY"    # I
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 463
    add-int v0, p0, p1

    if-ge v0, p2, :cond_1

    .line 464
    sub-int p1, p2, p0

    .line 469
    .end local p1    # "distanceY":I
    :cond_0
    :goto_0
    return p1

    .line 466
    .restart local p1    # "distanceY":I
    :cond_1
    add-int v0, p0, p1

    if-lez v0, :cond_0

    .line 467
    rsub-int/lit8 p1, p0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;

    return-object v0
.end method

.method private a(I)V
    .locals 6
    .param p1, "distanceY"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 413
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->getTop()I

    move-result v3

    .line 414
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->getMonthSelectRectTop()I

    move-result v4

    neg-int v4, v4

    .line 413
    invoke-static {v3, p1, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a(IIII)I

    move-result v1

    .line 415
    .local v1, "disYOfMonthViewPager":I
    if-eqz v1, :cond_0

    .line 416
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-static {v3, v1}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->getMaxDistance()I

    move-result v2

    .line 420
    .local v2, "maxDistance":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->f:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->k:I

    sub-int/2addr v3, v4

    neg-int v4, v2

    invoke-static {v3, p1, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a(IIII)I

    move-result v0

    .line 422
    .local v0, "disYOfBottomView":I
    if-eqz v0, :cond_1

    .line 423
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->f:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a(Landroid/view/View;I)V

    .line 424
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 425
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->h:Landroid/view/View;

    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a(Landroid/view/View;I)V

    .line 426
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->i:Landroid/view/View;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 430
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$c;

    if-eqz v3, :cond_2

    .line 431
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->f:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    .line 434
    :cond_2
    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 447
    if-eqz p0, :cond_0

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 450
    :cond_0
    return-void
.end method

.method private b(I)I
    .locals 4
    .param p1, "distanceY"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    const/4 v2, 0x0

    .line 443
    :goto_0
    return v2

    .line 441
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->getMaxDistance()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 442
    .local v1, "range":F
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    const/high16 v3, 0x43800000    # 256.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 443
    .local v0, "duration":I
    const/16 v2, 0x258

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    return-object v0
.end method

.method private c()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;

    if-eqz v2, :cond_1

    .line 303
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;->a()Z

    move-result v1

    .line 307
    :cond_0
    :goto_0
    return v1

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 306
    .local v0, "firstChildView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    return-object v0
.end method

.method private getDistanceY()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 350
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->MONTH:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->k:I

    .line 351
    .local v0, "height":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    sub-int v1, v0, v1

    return v1

    .line 350
    .end local v0    # "height":I
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->l:I

    goto :goto_0
.end method

.method private getMaxDistance()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 453
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->k:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->l:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getMonthSelectRectTop()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 457
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->t:Landroid/graphics/Rect;

    .line 7066
    iget-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    .line 7067
    if-nez v0, :cond_2

    .line 7068
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    move-object v1, v0

    .line 7070
    :goto_0
    if-eqz v1, :cond_0

    .line 7071
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b:Lckq;

    .line 7123
    iget-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    .line 7126
    :cond_1
    iget-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    invoke-static {v0, v2}, Lcqd;->f(Lckq;Lckq;)I

    move-result v0

    .line 7127
    if-ltz v0, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 7130
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7131
    if-eqz v0, :cond_0

    .line 7132
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 355
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->MONTH:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    .line 357
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->getDistanceY()I

    move-result v4

    .line 358
    .local v4, "distanceY":I
    if-eqz v4, :cond_1

    .line 359
    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b(I)I

    move-result v5

    .line 360
    .local v5, "duration":I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->n:Lhr;

    .line 5273
    iget-object v0, v0, Lhr;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->n:Lhr;

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lhr;->a(IIIII)V

    .line 362
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->invalidate()V

    .line 367
    .end local v5    # "duration":I
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;->a()V

    .line 370
    :cond_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->requestLayout()V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 373
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    .line 375
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->getDistanceY()I

    move-result v4

    .line 376
    .local v4, "distanceY":I
    if-eqz v4, :cond_1

    .line 377
    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b(I)I

    move-result v5

    .line 378
    .local v5, "duration":I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->n:Lhr;

    .line 6273
    iget-object v0, v0, Lhr;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 379
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->n:Lhr;

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lhr;->a(IIIII)V

    .line 380
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->invalidate()V

    .line 390
    .end local v5    # "duration":I
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;->b()V

    .line 393
    :cond_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->getSelectedCalendarBean()Lckq;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lckq;Z)V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setVisibility(I)V

    .line 387
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->requestLayout()V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 242
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->f:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->m:I

    .line 244
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->n:Lhr;

    .line 3094
    iget-object v3, v3, Lhr;->a:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 245
    .local v0, "currY":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->n:Lhr;

    .line 3142
    iget-object v3, v3, Lhr;->a:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    .line 246
    .local v2, "keepGoing":Z
    if-eqz v2, :cond_0

    .line 247
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->p:Z

    .line 248
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->o:I

    sub-int v1, v0, v3

    .line 249
    .local v1, "distanceY":I
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->o:I

    .line 250
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a(I)V

    .line 251
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 254
    .end local v1    # "distanceY":I
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->n:Lhr;

    .line 4114
    iget-object v3, v3, Lhr;->a:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    .line 254
    if-ne v0, v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->n:Lhr;

    .line 4273
    iget-object v3, v3, Lhr;->a:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 256
    const/4 v2, 0x0

    .line 258
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$c;

    if-eqz v3, :cond_1

    .line 259
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    .line 263
    :cond_1
    if-nez v2, :cond_5

    .line 264
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->p:Z

    if-eqz v3, :cond_4

    .line 265
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v4, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    if-ne v3, v4, :cond_3

    .line 266
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->getSelectedCalendarBean()Lckq;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lckq;Z)V

    .line 269
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setVisibility(I)V

    .line 270
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setVisibility(I)V

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->requestLayout()V

    .line 274
    :cond_4
    iput v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->o:I

    .line 275
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->p:Z

    .line 277
    :cond_5
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x12c

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 126
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "first child should be CalendarMonthViewPager."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    sget v0, Lcig$f;->calendar_month_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    .line 131
    sget v0, Lcig$f;->calendar_week_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .line 132
    sget v0, Lcig$f;->calendar_bottom_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->f:Landroid/view/ViewGroup;

    .line 133
    sget v0, Lcig$f;->calendar_list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->g:Landroid/widget/ListView;

    .line 134
    sget v0, Lcig$f;->calendar_ll_list_empty_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->h:Landroid/view/View;

    .line 135
    sget v0, Lcig$f;->empty_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->i:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-static {v0, v1}, Lcqb;->a(Landroid/support/v4/view/ViewPager;I)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v0, v1}, Lcqb;->a(Landroid/support/v4/view/ViewPager;I)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    if-ne v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setVisibility(I)V

    .line 2288
    :goto_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;

    .line 2289
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;

    .line 2290
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;

    .line 2292
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setOnItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;)V

    .line 2293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;)V

    .line 2294
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 2296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setOnItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;)V

    .line 2297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;)V

    .line 2298
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->y:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 149
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setVisibility(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    iget-boolean v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->v:Z

    if-nez v7, :cond_0

    move v0, v5

    .line 230
    :goto_0
    return v0

    .line 189
    :cond_0
    iget-boolean v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->p:Z

    if-eqz v7, :cond_1

    move v0, v6

    .line 190
    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    .line 194
    .local v0, "intercept":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 196
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->q:I

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->r:I

    .line 198
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->u:[I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->getLocationOnScreen([I)V

    .line 199
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->f:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->u:[I

    aget v8, v8, v5

    iget v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->q:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->u:[I

    aget v6, v9, v6

    iget v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->r:I

    add-int/2addr v6, v9

    invoke-static {v7, v8, v6, v5}, Lcqc;->a(Landroid/view/View;III)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->s:Z

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 205
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 207
    .local v3, "y":I
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->q:I

    sub-int v2, v1, v5

    .line 208
    .local v2, "xDiff":I
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->r:I

    sub-int v4, v3, v5

    .line 210
    .local v4, "yDiff":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->d:I

    if-le v5, v6, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_3

    .line 211
    const/4 v0, 0x1

    .line 212
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->s:Z

    if-eqz v5, :cond_3

    .line 213
    if-lez v4, :cond_4

    .line 215
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v6, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->MONTH:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    if-eq v5, v6, :cond_2

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 216
    :cond_2
    const/4 v0, 0x0

    .line 226
    :cond_3
    :goto_1
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->q:I

    .line 227
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->r:I

    goto :goto_0

    .line 220
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v6, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    if-eq v5, v6, :cond_5

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 221
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    sub-int v1, p4, p2

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->k:I

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->layout(IIII)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->getMonthSelectRectTop()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->f:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->m:I

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->h:Landroid/view/View;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->m:I

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 181
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 153
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->l:I

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->k:I

    .line 157
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->l:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->j:I

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->l:I

    :goto_0
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->m:I

    .line 161
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->l:I

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 164
    .local v0, "height":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 166
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->m:I

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->h:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    .line 169
    return-void

    .line 159
    .end local v0    # "height":I
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->k:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 235
    .line 2311
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->p:Z

    if-nez v2, :cond_0

    .line 2314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 2316
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 2317
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 2318
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getSelectedCalendarBean()Lckq;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->a(Lckq;Z)V

    .line 2319
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->getMonthSelectRectTop()I

    move-result v4

    neg-int v4, v4

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 2320
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setVisibility(I)V

    .line 2321
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setVisibility(I)V

    .line 2328
    :cond_1
    :goto_1
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->r:I

    goto :goto_0

    .line 2323
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->r:I

    sub-int v0, v2, v0

    .line 2324
    if-eqz v0, :cond_1

    .line 2325
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a(I)V

    goto :goto_1

    .line 2333
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->getDistanceY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->j:I

    if-ge v2, v3, :cond_4

    .line 2335
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->MONTH:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 2340
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 2341
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a()V

    goto :goto_0

    .line 2338
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->MONTH:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_2

    .line 2343
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b()V

    goto :goto_0

    .line 2314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCalendarLayoutDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;)V
    .locals 0
    .param p1, "calendarLayoutDelegate"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;

    .line 109
    return-void
.end method

.method public setCalendarLayoutListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;)V
    .locals 0
    .param p1, "calendarLayoutListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    .line 105
    return-void
.end method

.method public setCalendarSwitchListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$c;)V
    .locals 0
    .param p1, "calendarSwitchListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$c;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$c;

    .line 488
    return-void
.end method

.method public setEnableSwitch(Z)V
    .locals 1
    .param p1, "enableSwitch"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->v:Z

    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->v:Z

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b()V

    .line 120
    :cond_0
    return-void
.end method
