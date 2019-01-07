.class public Lcom/taobao/weex/ui/component/WXScroller;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WXScroller.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/Scrollable;
.implements Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXScroller$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer",
        "<",
        "Landroid/view/ViewGroup;",
        ">;",
        "Lcom/taobao/weex/ui/component/Scrollable;",
        "Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;"
    }
.end annotation


# static fields
.field public static final DIRECTION:Ljava/lang/String; = "direction"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isScrollable:Z

.field private mAppearanceComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/AppearanceHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenLayoutOffset:I

.field private mContentHeight:I

.field private mForceLoadmoreNextTime:Z

.field private mHasAddScrollEvent:Z

.field private mLastReport:Landroid/graphics/Point;

.field private mOffsetAccuracy:I

.field protected mOrientation:I

.field private mRealView:Landroid/widget/FrameLayout;

.field private mRefreshs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

.field private mStickyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 4
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 74
    iput v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    .line 77
    iput v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    .line 78
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    .line 79
    const/16 v0, 0xa

    iput v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    .line 80
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    .line 81
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    .line 105
    iput v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    .line 110
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

    .line 119
    new-instance v0, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;-><init>(Lcom/taobao/weex/ui/component/Scrollable;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    .line 120
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
    .line 114
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXScroller;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXScroller;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXScroller;->shouldReport(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXScroller;Landroid/graphics/Rect;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXScroller;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/ui/component/WXScroller;->fireScrollEvent(Landroid/graphics/Rect;IIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXScroller;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

    return-void
.end method

.method private checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 6
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x64

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "result":Z
    instance-of v2, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    move-object v3, p1

    check-cast v3, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 317
    new-instance v2, Lcom/taobao/weex/ui/component/WXScroller$3;

    invoke-direct {v2, p0, p1}, Lcom/taobao/weex/ui/component/WXScroller$3;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 323
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    const/4 v0, 0x1

    .line 327
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_0
    instance-of v2, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    move-object v3, p1

    check-cast v3, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 329
    new-instance v2, Lcom/taobao/weex/ui/component/WXScroller$4;

    invoke-direct {v2, p0, p1}, Lcom/taobao/weex/ui/component/WXScroller$4;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 335
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    const/4 v0, 0x1

    .line 338
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_1
    return v0
.end method

.method private fireScrollEvent(Landroid/graphics/Rect;IIII)V
    .locals 2
    .param p1, "contentFrame"    # Landroid/graphics/Rect;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    const-string/jumbo v0, "scroll"

    invoke-virtual {p0, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollEvent(II)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/WXScroller;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 208
    return-void
.end method

.method private procAppear(IIII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldx"    # I
    .param p4, "oldy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 685
    sub-int v4, p2, p4

    .line 686
    .local v4, "moveY":I
    sub-int v3, p1, p3

    .line 687
    .local v3, "moveX":I
    if-lez v4, :cond_2

    const-string/jumbo v0, "up"

    .line 689
    .local v0, "direction":Ljava/lang/String;
    :goto_0
    iget v7, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-nez v7, :cond_0

    if-eqz v3, :cond_0

    .line 690
    if-lez v3, :cond_4

    const-string/jumbo v0, "right"

    .line 693
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 694
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 696
    .local v1, "helper":Lcom/taobao/weex/ui/component/AppearanceHelper;
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 699
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isViewVisible(Z)Z

    move-result v6

    .line 701
    .local v6, "visible":Z
    invoke-virtual {v1, v6}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result v5

    .line 702
    .local v5, "result":I
    if-eqz v5, :cond_1

    .line 703
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v9

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5

    const-string/jumbo v7, "appear"

    :goto_3
    invoke-virtual {v9, v7, v0}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 687
    .end local v0    # "direction":Ljava/lang/String;
    .end local v1    # "helper":Lcom/taobao/weex/ui/component/AppearanceHelper;
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .end local v5    # "result":I
    .end local v6    # "visible":Z
    :cond_2
    if-gez v4, :cond_3

    const-string/jumbo v0, "down"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 690
    .restart local v0    # "direction":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "left"

    goto :goto_1

    .line 703
    .restart local v1    # "helper":Lcom/taobao/weex/ui/component/AppearanceHelper;
    .restart local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .restart local v5    # "result":I
    .restart local v6    # "visible":Z
    :cond_5
    const-string/jumbo v7, "disappear"

    goto :goto_3

    .line 706
    .end local v1    # "helper":Lcom/taobao/weex/ui/component/AppearanceHelper;
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .end local v5    # "result":I
    .end local v6    # "visible":Z
    :cond_6
    return-void
.end method

.method private setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p3, "isWatch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 580
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 581
    .local v0, "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .end local v0    # "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    invoke-direct {v0, p2}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 583
    .restart local v0    # "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    .line 589
    invoke-direct {p0, v3, v3, v3, v3}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

    .line 590
    return-void
.end method

.method private shouldReport(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 235
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_0

    .line 236
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->x:I

    .line 237
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, v1, Landroid/graphics/Point;->y:I

    .line 255
    :goto_0
    return v0

    .line 241
    :cond_0
    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int v1, p1, v1

    .line 242
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    if-lt v1, v2, :cond_1

    .line 243
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->x:I

    .line 244
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 248
    :cond_1
    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, p2, v1

    .line 249
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    if-lt v1, v2, :cond_2

    .line 250
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->x:I

    .line 251
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 255
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 1
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "index"    # I

    .prologue
    .line 300
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 306
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addEvent(Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->isScrollEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    .line 161
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXScroller$1;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXScroller$2;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

    goto :goto_0
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 263
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    instance-of v2, p1, Lcom/taobao/weex/ui/view/WXBaseRefreshLayout;

    if-nez v2, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 272
    .local v0, "count":I
    if-lt p2, v0, :cond_2

    move p2, v1

    .line 273
    :cond_2
    if-ne p2, v1, :cond_3

    .line 274
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getRealView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getRealView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 576
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 577
    return-void
.end method

.method public bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    const/4 v0, 0x1

    .line 597
    invoke-direct {p0, v0, p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 598
    return-void
.end method

.method public bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 563
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    .line 564
    return-void
.end method

.method public createViewImpl()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->createViewImpl()V

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 136
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    .line 137
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->destroy()V

    .line 354
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/IWXScroller;

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/IWXScroller;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWXScroller;->destroy()V

    .line 363
    :cond_2
    return-void
.end method

.method protected getChildrenLayoutTopOffset()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    iget v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    if-nez v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 285
    .local v2, "listSize":I
    if-lez v2, :cond_0

    .line 286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 287
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 288
    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    iget v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutTopOffsetForSibling()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v1    # "i":I
    .end local v2    # "listSize":I
    :cond_0
    iget v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    return v3
.end method

.method public getInnerView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getScrollEvent(II)Ljava/util/Map;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 212
    .local v0, "contentFrame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v5

    instance-of v5, v5, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v5, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/WXScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 217
    :cond_0
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 218
    .local v3, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 219
    .local v2, "contentSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 221
    .local v1, "contentOffset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v4

    .line 223
    .local v4, "viewport":I
    const-string/jumbo v5, "width"

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string/jumbo v5, "height"

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v5, "x"

    int-to-float v6, p1

    invoke-static {v6, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v6

    neg-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v5, "y"

    int-to-float v6, p2

    invoke-static {v6, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v6

    neg-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string/jumbo v5, "contentSize"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string/jumbo v5, "contentOffset"

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-object v3

    .line 214
    .end local v1    # "contentOffset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "contentSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "viewport":I
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v5

    instance-of v5, v5, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v5, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    return-object v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method public getStickMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 387
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/dom/WXAttr;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 388
    const-string/jumbo v3, "vertical"

    .line 394
    .local v3, "scroll":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "horizontal"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 395
    iput v9, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 396
    new-instance v4, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-direct {v4, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 397
    .local v4, "scrollView":Lcom/taobao/weex/ui/view/WXHorizontalScrollView;
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    .line 398
    new-instance v6, Lcom/taobao/weex/ui/component/WXScroller$5;

    invoke-direct {v6, p0}, Lcom/taobao/weex/ui/component/WXScroller$5;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {v4, v6}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

    .line 404
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 406
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6, v2}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-virtual {v4, v9}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 409
    move-object v0, v4

    .line 465
    .end local v4    # "scrollView":Lcom/taobao/weex/ui/view/WXHorizontalScrollView;
    .local v0, "host":Landroid/view/ViewGroup;
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/taobao/weex/ui/component/WXScroller$7;

    invoke-direct {v7, p0}, Lcom/taobao/weex/ui/component/WXScroller$7;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 481
    return-object v0

    .line 390
    .end local v0    # "host":Landroid/view/ViewGroup;
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "scroll":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/dom/WXAttr;->getScrollDirection()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "scroll":Ljava/lang/String;
    goto :goto_0

    .line 411
    :cond_1
    iput v8, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 412
    new-instance v5, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    iget v6, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    invoke-direct {v5, p1, v6, p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;-><init>(Landroid/content/Context;ILcom/taobao/weex/ui/component/WXScroller;)V

    .line 413
    .local v5, "scrollerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    .line 414
    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXScrollView;

    .line 415
    .local v1, "innerView":Lcom/taobao/weex/ui/view/WXScrollView;
    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 416
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 418
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6, v2}, Lcom/taobao/weex/ui/view/WXScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    invoke-virtual {v1, v8}, Lcom/taobao/weex/ui/view/WXScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    const-string/jumbo v7, "nestedScrollingEnabled"

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/taobao/weex/ui/view/WXScrollView;->setNestedScrollingEnabled(Z)V

    .line 421
    new-instance v6, Lcom/taobao/weex/ui/component/WXScroller$6;

    invoke-direct {v6, p0}, Lcom/taobao/weex/ui/component/WXScroller$6;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {v1, v6}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 462
    move-object v0, v5

    .restart local v0    # "host":Landroid/view/ViewGroup;
    goto :goto_1
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

    return v0
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 367
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;-><init>()V

    .line 368
    .local v0, "measureOutput":Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    iget v6, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-nez v6, :cond_2

    .line 369
    sget-object v6, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v6}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 370
    .local v2, "screenW":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexWidth(Ljava/lang/String;)I

    move-result v4

    .line 371
    .local v4, "weexW":I
    if-lt v4, v2, :cond_1

    .end local v2    # "screenW":I
    :goto_0
    if-le p1, v2, :cond_0

    move p1, v5

    .end local p1    # "width":I
    :cond_0
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 373
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    .line 381
    .end local v4    # "weexW":I
    :goto_1
    return-object v0

    .restart local v2    # "screenW":I
    .restart local v4    # "weexW":I
    .restart local p1    # "width":I
    :cond_1
    move v2, v4

    .line 371
    goto :goto_0

    .line 375
    .end local v2    # "screenW":I
    .end local v4    # "weexW":I
    :cond_2
    sget-object v6, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v6}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 376
    .local v1, "screenH":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexHeight(Ljava/lang/String;)I

    move-result v3

    .line 377
    .local v3, "weexH":I
    if-lt v3, v1, :cond_3

    .end local v1    # "screenH":I
    :goto_2
    if-le p2, v1, :cond_4

    :goto_3
    iput v5, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    .line 379
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    goto :goto_1

    .restart local v1    # "screenH":I
    :cond_3
    move v1, v3

    .line 377
    goto :goto_2

    .end local v1    # "screenH":I
    :cond_4
    move v5, p2

    goto :goto_3
.end method

.method protected onLoadMore(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 8
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 732
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/dom/WXAttr;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, "offset":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 755
    .end local v3    # "offset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 736
    .restart local v3    # "offset":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v6

    float-to-int v4, v6

    .line 738
    .local v4, "offsetInt":I
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/taobao/weex/ui/view/WXScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 739
    .local v0, "contentH":I
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXScrollView;->getHeight()I

    move-result v5

    .line 740
    .local v5, "scrollerH":I
    sub-int v6, v0, p3

    sub-int v2, v6, v5

    .line 741
    .local v2, "offScreenY":I
    if-ge v2, v4, :cond_0

    .line 742
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 743
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[WXScroller-onScroll] offScreenY :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 745
    :cond_2
    iget v6, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    if-ne v6, v0, :cond_3

    iget-boolean v6, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    if-eqz v6, :cond_0

    .line 746
    :cond_3
    const-string/jumbo v6, "loadmore"

    invoke-virtual {p0, v6}, Lcom/taobao/weex/ui/component/WXScroller;->fireEvent(Ljava/lang/String;)V

    .line 747
    iput v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    .line 748
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 751
    .end local v0    # "contentH":I
    .end local v2    # "offScreenY":I
    .end local v3    # "offset":Ljava/lang/String;
    .end local v4    # "offsetInt":I
    .end local v5    # "scrollerH":I
    :catch_0
    move-exception v1

    .line 752
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "[WXScroller-onScroll] "

    invoke-static {v6, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 0
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 720
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->onLoadMore(Lcom/taobao/weex/ui/view/WXScrollView;II)V

    .line 721
    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .locals 0
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    .line 677
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

    .line 678
    return-void
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 0
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 715
    return-void
.end method

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 0
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 711
    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 1
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "destory"    # Z

    .prologue
    .line 343
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 344
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->removeHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0
.end method

.method public resetLoadmore()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    .line 760
    return-void
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/weex/ui/component/WXScroller;->scrollBy(IIZ)V

    .line 646
    return-void
.end method

.method public scrollBy(IIZ)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "smooth"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 672
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$8;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/taobao/weex/ui/component/WXScroller$8;-><init>(Lcom/taobao/weex/ui/component/WXScroller;ZII)V

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .locals 9
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 618
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 619
    .local v2, "offsetFloat":F
    const/4 v3, 0x1

    .line 621
    .local v3, "smooth":Z
    if-eqz p2, :cond_0

    .line 622
    const-string/jumbo v6, "offset"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v1, "0"

    .line 623
    .local v1, "offset":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "animated"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 624
    if-eqz v1, :cond_0

    .line 626
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 633
    .end local v1    # "offset":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteY()I

    move-result v6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteY()I

    move-result v7

    sub-int v5, v6, v7

    .line 634
    .local v5, "viewYInScroller":I
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result v6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteX()I

    move-result v7

    sub-int v4, v6, v7

    .line 636
    .local v4, "viewXInScroller":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result v6

    sub-int v6, v4, v6

    float-to-int v7, v2

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v7

    sub-int v7, v5, v7

    float-to-int v8, v2

    add-int/2addr v7, v8

    invoke-virtual {p0, v6, v7, v3}, Lcom/taobao/weex/ui/component/WXScroller;->scrollBy(IIZ)V

    .line 637
    return-void

    .line 622
    .end local v4    # "viewXInScroller":I
    .end local v5    # "viewYInScroller":I
    :cond_1
    const-string/jumbo v6, "offset"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 627
    .restart local v1    # "offset":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Float parseFloat error :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setOffsetAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "offsetAccuracy"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 551
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    .line 552
    .local v0, "realPx":F
    float-to-int v1, v0

    iput v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    .line 553
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 505
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 523
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    :goto_1
    return v3

    .line 505
    :sswitch_0
    const-string/jumbo v5, "showScrollbar"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "scrollable"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "offsetAccuracy"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 507
    :pswitch_0
    const/4 v4, 0x0

    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 508
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 509
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/taobao/weex/ui/component/WXScroller;->setShowScrollbar(Z)V

    goto :goto_1

    .line 513
    .end local v1    # "result":Ljava/lang/Boolean;
    :pswitch_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 514
    .local v2, "scrollable":Z
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/WXScroller;->setScrollable(Z)V

    goto :goto_1

    .line 517
    .end local v2    # "scrollable":Z
    :pswitch_2
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 518
    .local v0, "accuracy":I
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXScroller;->setOffsetAccuracy(I)V

    goto :goto_1

    .line 505
    :sswitch_data_0
    .sparse-switch
        -0xd52a857 -> :sswitch_0
        -0x55c154 -> :sswitch_2
        0x3f94da7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setScrollable(Z)V
    .locals 2
    .param p1, "scrollable"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

    .line 541
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 542
    .local v0, "hostView":Landroid/view/View;
    instance-of v1, v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v1, :cond_1

    .line 543
    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    .end local v0    # "hostView":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setScrollable(Z)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 544
    .restart local v0    # "hostView":Landroid/view/View;
    :cond_1
    instance-of v1, v0, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v1, :cond_0

    .line 545
    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    .end local v0    # "hostView":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXScrollView;->setScrollable(Z)V

    goto :goto_0
.end method

.method public setShowScrollbar(Z)V
    .locals 2
    .param p1, "show"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showScrollbar"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 531
    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    const/4 v0, 0x0

    .line 605
    invoke-direct {p0, v0, p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 606
    return-void
.end method

.method public unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 613
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 614
    return-void
.end method

.method public unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 568
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    .line 569
    return-void
.end method
