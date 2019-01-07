.class public Lcom/taobao/weex/ui/view/WXHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "WXHorizontalScrollView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWXScroller;
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;
    }
.end annotation


# instance fields
.field private mScrollViewListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

.field private mScrollViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollable:Z

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollable:Z

    .line 43
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollable:Z

    .line 53
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->init()V

    .line 54
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setWillNotDraw(Z)V

    .line 48
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setOverScrollMode(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public addScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V
    .locals 1
    .param p1, "scrollViewListener"    # Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 99
    .local v0, "result":Z
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 102
    :cond_0
    return v0
.end method

.method public getContentFrame()Landroid/graphics/Rect;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->computeVerticalScrollRange()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollable:Z

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 59
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    if-eqz v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;->onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    .local v0, "listener":Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 64
    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;->onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V

    goto :goto_0

    .line 67
    .end local v0    # "listener":Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollable:Z

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .locals 0
    .param p1, "wxGesture"    # Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 94
    return-void
.end method

.method public removeScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V
    .locals 1
    .param p1, "scrollViewListener"    # Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public setScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V
    .locals 0
    .param p1, "scrollViewListener"    # Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    .line 71
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollable:Z

    .line 124
    return-void
.end method
