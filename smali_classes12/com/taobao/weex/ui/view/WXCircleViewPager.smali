.class public Lcom/taobao/weex/ui/view/WXCircleViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "WXCircleViewPager.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private final SCROLL_TO_NEXT:I

.field private intervalTime:J

.field private isAutoScroll:Z

.field private mAutoScrollHandler:Landroid/os/Handler;

.field private mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

.field private mState:I

.field private needLoop:Z

.field private scrollable:Z

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 44
    iput v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->SCROLL_TO_NEXT:I

    .line 47
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    .line 49
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    .line 50
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    .line 52
    new-instance v0, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    .line 68
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->SCROLL_TO_NEXT:I

    .line 47
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    .line 49
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    .line 50
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    .line 52
    new-instance v0, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    .line 129
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->init()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXCircleViewPager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->showNextItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/WXCircleViewPager;)J
    .locals 2
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXCircleViewPager;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/view/WXCircleViewPager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXCircleViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    return p1
.end method

.method static synthetic access$301(Lcom/taobao/weex/ui/view/WXCircleViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXCircleViewPager;

    .prologue
    .line 42
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/WXCircleViewPager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXCircleViewPager;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    return v0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/view/WXCircleViewPager;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXCircleViewPager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setOverScrollMode(I)V

    .line 74
    new-instance v0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 100
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->postInitViewPager()V

    .line 101
    return-void
.end method

.method private postInitViewPager()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v4, "mScroller"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 113
    .local v2, "scroller":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 114
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v4, "sInterpolator"

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 116
    .local v1, "interpolator":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 118
    new-instance v4, Lcom/taobao/weex/ui/view/WXSmoothScroller;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v3, 0x0

    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-direct {v4, v5, v3}, Lcom/taobao/weex/ui/view/WXSmoothScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

    .line 120
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v1    # "interpolator":Ljava/lang/reflect/Field;
    .end local v2    # "scroller":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[CircleViewPager] postInitViewPager: "

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setRealCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Lgl;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getFirst()I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    .line 275
    return-void
.end method

.method private showNextItem()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 315
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    goto :goto_0
.end method

.method private superSetCurrentItem(IZ)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "smooth"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Lgl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Lgl;

    move-result-object v1

    invoke-virtual {v1}, Lgl;->notifyDataSetChanged()V

    .line 284
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 250
    .local v0, "result":Z
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    or-int/2addr v0, v1

    .line 255
    .end local v0    # "result":Z
    :cond_1
    :goto_1
    return v0

    .line 239
    :pswitch_0
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :pswitch_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_1

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Lgl;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIntervalTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    return-wide v0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Lgl;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    return v0
.end method

.method public getRealCurrentItem()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 270
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Lgl;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v1

    return v1
.end method

.method public isAutoScroll()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 144
    :try_start_0
    iget-boolean v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 296
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Lgl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Lgl;

    move-result-object v1

    invoke-virtual {v1}, Lgl;->notifyDataSetChanged()V

    .line 301
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public pauseAutoScroll()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .locals 0
    .param p1, "wxGesture"    # Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 266
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 164
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 166
    :cond_1
    return-void
.end method

.method public setCircle(Z)V
    .locals 0
    .param p1, "circle"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    .line 232
    return-void
.end method

.method public setCirclePageAdapter(Lcom/taobao/weex/ui/view/WXCirclePageAdapter;)V
    .locals 0
    .param p1, "circlePageAdapter"    # Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setAdapter(Lgl;)V

    .line 210
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 0
    .param p1, "item"    # I

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setRealCurrentItem(I)V

    .line 196
    return-void
.end method

.method public setIntervalTime(J)V
    .locals 1
    .param p1, "intervalTime"    # J

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    .line 228
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    .line 312
    return-void
.end method

.method public startAutoScroll()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 172
    iput-boolean v4, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    .line 173
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    return-void
.end method

.method public stopAutoScroll()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    .line 186
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public superGetCurrentItem()I
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method
