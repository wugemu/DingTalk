.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "H5TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;,
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;,
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;,
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabLayoutOnPageChangeListener;,
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_HEIGHT:I = 0x2d

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38


# instance fields
.field private mOnTabSelectedListener:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

.field private mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

.field private final mTabBackgroundResId:I

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabMaxWidth:I

.field private final mTabMinWidth:I

.field private mTabPadding:I

.field private mTabSelectedTextColor:I

.field private final mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

.field private final mTabTextAppearance:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabs:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 109
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setFillViewport(Z)V

    .line 112
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->addView(Landroid/view/View;II)V

    .line 115
    sget-object v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout:[I

    sget v2, Lcom/alipay/mobile/nebula/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    sget v2, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabIndicatorHeight:I

    .line 119
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 118
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    sget v2, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    sget v2, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabIndicatorScrollable:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->setSelectedIndicatorScrollable(Z)V

    .line 123
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabTextAppearance:I

    sget v2, Lcom/alipay/mobile/nebula/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabTextAppearance:I

    .line 126
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabPadding:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabPadding:I

    .line 128
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabSelectedTextColor:I

    .line 132
    :cond_0
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabMinWidth:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabMinWidth:I

    .line 133
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabBackgroundResId:I

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->applyModeAndGravity()V

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->updateTab(I)V

    return-void
.end method

.method static synthetic access$1100()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .prologue
    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabBackgroundResId:I

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .prologue
    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabPadding:I

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .prologue
    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabMaxWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .prologue
    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabMinWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .prologue
    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabTextAppearance:I

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .prologue
    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabSelectedTextColor:I

    return v0
.end method

.method static synthetic access$800(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/animation/Animation;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method private addTabView(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;Z)V
    .locals 3
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .param p2, "setSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->createTabView(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;

    move-result-object v0

    .line 325
    .local v0, "tabView":Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    if-eqz p2, :cond_0

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->setSelected(Z)V

    .line 329
    :cond_0
    return-void
.end method

.method private animateToTab(I)V
    .locals 6
    .param p1, "newPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->clearAnimation()V

    .line 372
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 402
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->A(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 379
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setScrollPosition(IF)V

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getScrollX()I

    move-result v1

    .line 384
    .local v1, "startScrollX":I
    invoke-direct {p0, p1, v4}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    .line 387
    .local v2, "targetScrollX":I
    if-eq v1, v2, :cond_3

    .line 388
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;II)V

    .line 395
    .local v0, "animation":Landroid/view/animation/Animation;
    sget-object v3, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 396
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 397
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 401
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    const/16 v4, 0x12c

    invoke-virtual {v3, p1, v4}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    goto :goto_0
.end method

.method private applyModeAndGravity()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 464
    iget v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabPadding:I

    rsub-int/lit8 v1, v1, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 465
    .local v0, "paddingStart":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-static {v1, v0, v2, v2, v2}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;IIII)V

    .line 467
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->setGravity(I)V

    .line 469
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->updateTabViewsLayoutParams()V

    .line 470
    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 448
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v4, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 449
    .local v2, "selectedChild":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    add-int/lit8 v5, p1, 0x1

    .line 450
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, "nextChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 453
    .local v3, "selectedWidth":I
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 455
    .local v1, "nextWidth":I
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-int v5, v3, v1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 457
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 458
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 455
    return v4

    .line 450
    .end local v0    # "nextChild":Landroid/view/View;
    .end local v1    # "nextWidth":I
    .end local v3    # "selectedWidth":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "nextChild":Landroid/view/View;
    :cond_2
    move v3, v1

    .line 452
    goto :goto_1
.end method

.method private configureTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;I)V
    .locals 3
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->setPosition(I)V

    .line 308
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 310
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 311
    .local v0, "count":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 312
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->setPosition(I)V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 332
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 334
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 335
    return-object v0
.end method

.method private createTabView(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
    .locals 2
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;Landroid/content/Context;Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    .line 291
    .local v0, "tabView":Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->setFocusable(Z)V

    .line 293
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    return-object v0
.end method

.method private dpToPx(I)I
    .locals 2
    .param p1, "dps"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 414
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

.method static lerp(FFF)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F

    .prologue
    .line 819
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private setSelectedTabView(I)V
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 405
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v3

    .line 406
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 407
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 408
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    .line 409
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v2    # "isSelected":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 411
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private updateTab(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;

    .line 318
    .local v0, "view":Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->update()V

    .line 321
    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 339
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 340
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 341
    return-void
.end method

.method private updateTabViewsLayoutParams()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 473
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 475
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 476
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->addTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;Z)V

    .line 242
    return-void
.end method

.method public addTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .param p2, "setSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->access$000(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->addTabView(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;Z)V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->configureTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;I)V

    .line 257
    if-eqz p2, :cond_1

    .line 258
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->select()V

    .line 260
    :cond_1
    return-void
.end method

.method public addTabsFromPagerAdapter(Lgl;)V
    .locals 4
    .param p1, "adapter"    # Lgl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lgl;->getCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->newTab()Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p1, v1}, Lgl;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->addTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method public getTabAt(I)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    return-object v0
.end method

.method public newTab()Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/16 v1, 0x2d

    .line 351
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 364
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 366
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0x38

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->dpToPx(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabMaxWidth:I

    .line 367
    return-void

    .line 354
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->dpToPx(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 353
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 356
    goto :goto_0

    .line 358
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->dpToPx(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method selectTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 418
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    if-ne v2, p1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mOnTabSelectedListener:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mOnTabSelectedListener:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;->onTabReselected(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    .line 423
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->animateToTab(I)V

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 426
    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->getPosition()I

    move-result v0

    .line 427
    .local v0, "newPosition":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setSelectedTabView(I)V

    .line 429
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->getPosition()I

    move-result v2

    if-ne v2, v1, :cond_6

    :cond_3
    if-eq v0, v1, :cond_6

    .line 432
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setScrollPosition(IF)V

    .line 437
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mOnTabSelectedListener:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_4

    .line 438
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mOnTabSelectedListener:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;->onTabUnselected(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    .line 440
    :cond_4
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .line 441
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mOnTabSelectedListener:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mOnTabSelectedListener:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;->onTabSelected(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    goto :goto_0

    .end local v0    # "newPosition":I
    :cond_5
    move v0, v1

    .line 426
    goto :goto_1

    .line 434
    .restart local v0    # "newPosition":I
    :cond_6
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->animateToTab(I)V

    goto :goto_2
.end method

.method public setOnTabSelectedListener(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "onTabSelectedListener"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mOnTabSelectedListener:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    .line 269
    return-void
.end method

.method public setScrollPosition(IF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mTabStrip:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->calculateScrollXForTab(IF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->scrollTo(II)V

    .line 159
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v0

    .line 176
    .local v0, "adapter":Lgl;
    if-nez v0, :cond_0

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->addTabsFromPagerAdapter(Lgl;)V

    .line 180
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 181
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setOnTabSelectedListener(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;)V

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->mSelectedTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getTabAt(I)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->select()V

    .line 187
    :cond_2
    return-void
.end method
