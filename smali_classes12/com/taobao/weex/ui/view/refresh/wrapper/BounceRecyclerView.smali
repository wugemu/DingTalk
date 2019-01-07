.class public Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
.super Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;
.source "BounceRecyclerView.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/list/ListComponentView;
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView",
        "<",
        "Lcom/taobao/weex/ui/view/listview/WXRecyclerView;",
        ">;",
        "Lcom/taobao/weex/ui/component/list/ListComponentView;",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_COLUMN_COUNT:I = 0x1

.field public static final DEFAULT_COLUMN_GAP:I = 0x1


# instance fields
.field private adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

.field private mColumnCount:I

.field private mColumnGap:F

.field private mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

.field private mLayoutType:I

.field private mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 54
    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;-><init>(Landroid/content/Context;IIFI)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIFI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "columnCount"    # I
    .param p4, "columnGap"    # F
    .param p5, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1, p5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;-><init>(Landroid/content/Context;I)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    .line 39
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mLayoutType:I

    .line 40
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnCount:I

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnGap:F

    .line 46
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mLayoutType:I

    .line 47
    iput p3, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnCount:I

    .line 48
    iput p4, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnGap:F

    .line 49
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->init(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    .line 51
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
    .line 70
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 71
    .local v0, "result":Z
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 74
    :cond_0
    return v0
.end method

.method public bridge synthetic getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    return-object v0
.end method

.method public getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    return-object v0
.end method

.method public getStickyHeaderHelper()Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    return-object v0
.end method

.method public notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 1
    .param p1, "compToRemove"    # Lcom/taobao/weex/ui/component/list/WXCell;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 117
    return-void
.end method

.method public notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/list/WXCell;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 103
    return-void
.end method

.method public onLoadmoreComplete()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void
.end method

.method public onRefreshingComplete()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyDataSetChanged()V

    .line 89
    :cond_0
    return-void
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .locals 1
    .param p1, "wxGesture"    # Lcom/taobao/weex/ui/view/gesture/WXGesture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 126
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V

    .line 127
    return-void
.end method

.method public bridge synthetic setInnerView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setInnerView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public setInnerView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getOrientation()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 81
    return-object v0
.end method

.method public setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    .line 59
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 62
    :cond_0
    return-void
.end method

.method public updateStickyView(I)V
    .locals 1
    .param p1, "currentStickyPos"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->updateStickyView(I)V

    .line 108
    return-void
.end method
