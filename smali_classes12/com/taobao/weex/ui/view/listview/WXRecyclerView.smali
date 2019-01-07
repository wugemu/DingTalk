.class public Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "WXRecyclerView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# static fields
.field public static final TYPE_GRID_LAYOUT:I = 0x2

.field public static final TYPE_LINEAR_LAYOUT:I = 0x1

.field public static final TYPE_STAGGERED_GRID_LAYOUT:I = 0x3


# instance fields
.field private hasTouch:Z

.field private mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

.field private scrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->hasTouch:Z

    .line 49
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->hasTouch:Z

    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 98
    .local v0, "result":Z
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 101
    :cond_0
    return v0
.end method

.method public initView(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 60
    const/4 v3, 0x1

    const/high16 v4, 0x42000000    # 32.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 61
    return-void
.end method

.method public initView(Landroid/content/Context;IIFI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "columnCount"    # I
    .param p4, "columnGap"    # F
    .param p5, "orientation"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 73
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v0, p1, p3, p5, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 75
    new-instance v0, Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;

    invoke-direct {v0, p3, p5}, Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 76
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 77
    new-instance v0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;

    invoke-direct {v0, p1, p5, v1}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .locals 0
    .param p1, "wxGesture"    # Lcom/taobao/weex/ui/view/gesture/WXGesture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 84
    return-void
.end method

.method public scrollTo(ZIII)V
    .locals 2
    .param p1, "smooth"    # Z
    .param p2, "position"    # I
    .param p3, "offset"    # I
    .param p4, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    if-nez p1, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 107
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 109
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    neg-int v1, p3

    invoke-virtual {v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_0

    .line 111
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    neg-int v1, p3

    invoke-virtual {v0, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->smoothScrollToPosition(I)V

    .line 116
    if-eqz p3, :cond_0

    .line 117
    new-instance v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;

    invoke-direct {v1, p0, p4, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;II)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOnSmoothScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V

    goto :goto_0
.end method

.method public setOnSmoothScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
    .locals 1
    .param p1, "onSmoothScrollEndListener"    # Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    .prologue
    .line 137
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 148
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    .line 57
    return-void
.end method
