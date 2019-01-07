.class public Lcom/taobao/weex/ui/component/WXSlider;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WXSlider.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;,
        Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;,
        Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;,
        Lcom/taobao/weex/ui/component/WXSlider$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer",
        "<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final INDEX:Ljava/lang/String; = "index"

.field public static final INFINITE:Ljava/lang/String; = "infinite"


# instance fields
.field private initIndex:I

.field private initRunnable:Ljava/lang/Runnable;

.field private isInfinite:Z

.field private keepIndex:Z

.field protected mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

.field protected mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

.field protected mPageChangeListener:Landroid/support/v4/view/ViewPager$d;

.field protected mShowIndicators:Z

.field mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

.field private offsetXAccuracy:F

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->isInfinite:Z

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->params:Ljava/util/Map;

    .line 64
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->offsetXAccuracy:F

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->keepIndex:Z

    .line 95
    new-instance v0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;-><init>(Lcom/taobao/weex/ui/component/WXSlider;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mPageChangeListener:Landroid/support/v4/view/ViewPager$d;

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXSlider;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXSlider;

    .prologue
    .line 56
    iget v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/component/WXSlider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXSlider;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXSlider;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getInitIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/component/WXSlider;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXSlider;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXSlider;)F
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXSlider;

    .prologue
    .line 56
    iget v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->offsetXAccuracy:F

    return v0
.end method

.method private getInitIndex()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "index"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, "index":Ljava/lang/Object;
    iget v2, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 271
    .local v1, "select":I
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 272
    :cond_0
    const/4 v2, 0x0

    .line 277
    :goto_0
    return v2

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v2

    rem-int/2addr v1, v2

    :cond_2
    move v2, v1

    .line 277
    goto :goto_0
.end method

.method private hackTwoItemsInfiniteScroll()V
    .locals 4

    .prologue
    .line 533
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez v1, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->isInfinite:Z

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 538
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-direct {v2, v3}, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 539
    .local v0, "gestureDetector":Landroid/view/GestureDetector;
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    new-instance v2, Lcom/taobao/weex/ui/component/WXSlider$2;

    invoke-direct {v2, p0, v0}, Lcom/taobao/weex/ui/component/WXSlider$2;-><init>(Lcom/taobao/weex/ui/component/WXSlider;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 546
    .end local v0    # "gestureDetector":Landroid/view/GestureDetector;
    :cond_2
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addEvent(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v0, "scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    new-instance v1, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;-><init>(Lcom/taobao/weex/ui/component/WXSlider;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    goto :goto_0
.end method

.method public addIndicator(Lcom/taobao/weex/ui/component/WXIndicator;)V
    .locals 3
    .param p1, "indicator"    # Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 254
    .local v1, "root":Landroid/widget/FrameLayout;
    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    .line 258
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    .line 259
    .local v0, "indicatorView":Lcom/taobao/weex/ui/view/WXCircleIndicator;
    if-eqz v0, :cond_0

    .line 260
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setCircleViewPager(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    .line 262
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    instance-of v0, p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->addPageView(Landroid/view/View;)V

    .line 189
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXSlider;->hackTwoItemsInfiniteScroll()V

    .line 190
    iget v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    if-le v0, v1, :cond_4

    .line 191
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->initRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 192
    new-instance v0, Lcom/taobao/weex/ui/component/WXSlider$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXSlider$1;-><init>(Lcom/taobao/weex/ui/component/WXSlider;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->initRunnable:Ljava/lang/Runnable;

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 203
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->forceLayout()V

    .line 211
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->requestLayout()V

    goto :goto_0

    .line 205
    :cond_4
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->keepIndex:Z

    if-nez v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z
    .locals 1
    .param p1, "WXGestureType"    # Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->destroy()V

    .line 229
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->stopAutoScroll()V

    .line 231
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->removeAllViews()V

    .line 232
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->destory()V

    .line 234
    :cond_0
    return-void
.end method

.method public getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "top"    # I
    .param p8, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 138
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 139
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 147
    instance-of v1, p1, Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 148
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p5, p7, p6, p8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 153
    :cond_0
    :goto_1
    return-object v0

    .line 141
    :cond_1
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 150
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, -0x1

    .line 108
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .local v2, "view":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "infinite"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "obj":Ljava/lang/Object;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/WXSlider;->isInfinite:Z

    .line 114
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v1, "pagerParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-direct {v3, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    .line 117
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-boolean v4, p0, Lcom/taobao/weex/ui/component/WXSlider;->isInfinite:Z

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCircle(Z)V

    .line 118
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v3, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v3, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    iget-boolean v4, p0, Lcom/taobao/weex/ui/component/WXSlider;->isInfinite:Z

    invoke-direct {v3, v4}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;-><init>(Z)V

    iput-object v3, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    .line 122
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setAdapter(Lgl;)V

    .line 124
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 125
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXSlider;->mPageChangeListener:Landroid/support/v4/view/ViewPager$d;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 127
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->registerActivityStateListener()V

    .line 129
    return-object v2
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->onActivityResume()V

    .line 239
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->startAutoScroll()V

    .line 242
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->onActivityStop()V

    .line 247
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->pauseAutoScroll()V

    .line 250
    :cond_0
    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 2
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "destroy"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->removePageView(Landroid/view/View;)V

    .line 222
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXSlider;->hackTwoItemsInfiniteScroll()V

    .line 223
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    goto :goto_0
.end method

.method public setAutoPlay(Ljava/lang/String;)V
    .locals 1
    .param p1, "autoPlay"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoPlay"
    .end annotation

    .prologue
    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->stopAutoScroll()V

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->stopAutoScroll()V

    .line 354
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->startAutoScroll()V

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "index"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_2

    .line 383
    :cond_0
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(I)V

    .line 387
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    .line 388
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->getRealCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setIndex >>>> correction indicator to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setRealCurrentItem(I)V

    .line 392
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->invalidate()V

    .line 394
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mPageChangeListener:Landroid/support/v4/view/ViewPager$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mPageChangeListener:Landroid/support/v4/view/ViewPager$d;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getFirst()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$d;->onPageSelected(I)V

    goto :goto_0
.end method

.method public setInterval(I)V
    .locals 4
    .param p1, "intervalMS"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "interval"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setIntervalTime(J)V

    .line 377
    :cond_0
    return-void
.end method

.method public setOffsetXAccuracy(F)V
    .locals 0
    .param p1, "accuracy"    # F
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "offsetXAccuracy"
    .end annotation

    .prologue
    .line 409
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->offsetXAccuracy:F

    .line 410
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 283
    const/4 v8, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 328
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    :cond_1
    :goto_1
    return v7

    .line 283
    :sswitch_0
    const-string/jumbo v10, "value"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v8, v9

    goto :goto_0

    :sswitch_1
    const-string/jumbo v10, "autoPlay"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v8, v7

    goto :goto_0

    :sswitch_2
    const-string/jumbo v10, "showIndicators"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v10, "interval"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v10, "index"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v10, "offsetXAccuracy"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v10, "scrollable"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v10, "keepIndex"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x7

    goto :goto_0

    .line 285
    :pswitch_0
    invoke-static {p2, v11}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 287
    invoke-virtual {p0, v6}, Lcom/taobao/weex/ui/component/WXSlider;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 291
    .end local v6    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-static {p2, v11}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "aotu_play":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXSlider;->setAutoPlay(Ljava/lang/String;)V

    goto :goto_1

    .line 297
    .end local v1    # "aotu_play":Ljava/lang/String;
    :pswitch_2
    invoke-static {p2, v11}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "indicators":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 299
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXSlider;->setShowIndicators(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 303
    .end local v3    # "indicators":Ljava/lang/String;
    :pswitch_3
    invoke-static {p2, v11}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    .line 304
    .local v4, "interval":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 305
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/taobao/weex/ui/component/WXSlider;->setInterval(I)V

    goto/16 :goto_1

    .line 309
    .end local v4    # "interval":Ljava/lang/Integer;
    :pswitch_4
    invoke-static {p2, v11}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    .line 310
    .local v2, "index":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 311
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/taobao/weex/ui/component/WXSlider;->setIndex(I)V

    goto/16 :goto_1

    .line 315
    .end local v2    # "index":Ljava/lang/Integer;
    :pswitch_5
    const v8, 0x3dcccccd    # 0.1f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {p2, v8}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    .line 316
    .local v0, "accuracy":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 317
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {p0, v8}, Lcom/taobao/weex/ui/component/WXSlider;->setOffsetXAccuracy(F)V

    goto/16 :goto_1

    .line 321
    .end local v0    # "accuracy":Ljava/lang/Float;
    :pswitch_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 322
    .local v5, "scrollable":Z
    invoke-virtual {p0, v5}, Lcom/taobao/weex/ui/component/WXSlider;->setScrollable(Z)V

    goto/16 :goto_1

    .line 325
    .end local v5    # "scrollable":Z
    :pswitch_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/taobao/weex/ui/component/WXSlider;->keepIndex:Z

    goto/16 :goto_1

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        -0x696287b3 -> :sswitch_7
        0x3f94da7 -> :sswitch_6
        0x5fb28d2 -> :sswitch_4
        0x6ac9171 -> :sswitch_0
        0x21ffe4c5 -> :sswitch_3
        0x3b6be321 -> :sswitch_2
        0x55bf6d83 -> :sswitch_1
        0x5d56563e -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setScrollable(Z)V

    .line 405
    :cond_0
    return-void
.end method

.method public setShowIndicators(Ljava/lang/String;)V
    .locals 2
    .param p1, "show"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showIndicators"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mShowIndicators:Z

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-nez v0, :cond_2

    .line 370
    :goto_1
    return-void

    .line 363
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mShowIndicators:Z

    goto :goto_0

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mShowIndicators:Z

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXIndicator;->setShowIndicators(Z)V

    goto :goto_1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "value"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 334
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 345
    .local v1, "i":I
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXSlider;->setIndex(I)V

    goto :goto_0

    .line 340
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, ""

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
