.class public Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "WXRecyclerViewOnScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
    }
.end annotation


# instance fields
.field protected layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentScrollState:I

.field private mFirstPositions:[I

.field private mFirstVisibleItemPosition:I

.field private mLastPositions:[I

.field private mLastVisibleItemPosition:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    .line 70
    return-void
.end method

.method private findMax([I)I
    .locals 4
    .param p1, "lastPositions"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 156
    aget v0, p1, v2

    .line 157
    .local v0, "max":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 158
    .local v1, "value":I
    if-le v1, v0, :cond_0

    .line 159
    move v0, v1

    .line 157
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "value":I
    :cond_1
    return v0
.end method

.method private findMin([I)I
    .locals 4
    .param p1, "firstPositions"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 166
    aget v0, p1, v2

    .line 167
    .local v0, "min":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 168
    .local v1, "value":I
    if-ge v1, v0, :cond_0

    .line 169
    move v0, v1

    .line 167
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "value":I
    :cond_1
    return v0
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 75
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    .line 76
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 77
    .local v1, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    .line 78
    .local v3, "visibleItemCount":I
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    .line 80
    .local v2, "totalItemCount":I
    if-eqz v3, :cond_0

    .line 81
    iget v4, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    div-int v0, v4, v3

    .line 82
    .local v0, "bottomOffset":I
    if-lez v3, :cond_0

    iget v4, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    if-nez v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    invoke-interface {v4, v0}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onLoadMore(I)V

    .line 88
    .end local v0    # "bottomOffset":I
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 10
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 93
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    .line 94
    .local v4, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-nez v8, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    .line 99
    .local v3, "iOnLoadMoreListener":Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;
    if-eqz v3, :cond_0

    .line 101
    invoke-interface {v3, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onBeforeScroll(II)V

    .line 103
    instance-of v8, v4, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v8, :cond_2

    .line 104
    sget-object v8, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    move-object v5, v4

    .line 105
    check-cast v5, Landroid/support/v7/widget/LinearLayoutManager;

    .line 106
    .local v5, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    iput v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 107
    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 108
    .local v1, "firstVisible":I
    iget v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-interface {v3, v1, v8, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V

    goto :goto_0

    .line 112
    .end local v1    # "firstVisible":I
    .end local v5    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_2
    instance-of v8, v4, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v8, :cond_3

    .line 113
    sget-object v8, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    move-object v2, v4

    .line 114
    check-cast v2, Landroid/support/v7/widget/GridLayoutManager;

    .line 115
    .local v2, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    iput v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 116
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v8

    iget v9, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-interface {v3, v8, v9, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V

    goto :goto_0

    .line 121
    .end local v2    # "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_3
    instance-of v8, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v8, :cond_8

    .line 122
    sget-object v8, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    move-object v7, v4

    .line 123
    check-cast v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 124
    .local v7, "staggeredGridLayoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v6

    .line 125
    .local v6, "newSpanCount":I
    iget-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    array-length v8, v8

    if-eq v6, v8, :cond_5

    .line 126
    :cond_4
    new-array v8, v6, [I

    iput-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    .line 128
    :cond_5
    iget-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    array-length v8, v8

    if-eq v6, v8, :cond_7

    .line 129
    :cond_6
    new-array v8, v6, [I

    iput-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    .line 133
    :cond_7
    :try_start_0
    iget-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 134
    iget-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    invoke-direct {p0, v8}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->findMin([I)I

    move-result v8

    iput v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstVisibleItemPosition:I

    .line 135
    iget-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 136
    iget-object v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    invoke-direct {p0, v8}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->findMax([I)I

    move-result v8

    iput v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 137
    iget v8, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstVisibleItemPosition:I

    iget v9, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-interface {v3, v8, v9, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "newSpanCount":I
    .end local v7    # "staggeredGridLayoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    :cond_8
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
