.class Lcom/taobao/weex/ui/component/list/DragSupportCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "DragSupportCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WXListExComponent"


# instance fields
.field private dragFrom:I

.field private dragTo:I

.field private final mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

.field private mEnableDifferentViewTypeDrag:Z


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/DragHelper;)V
    .locals 2
    .param p1, "DragHelper"    # Lcom/taobao/weex/ui/component/list/DragHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mEnableDifferentViewTypeDrag:Z

    .line 43
    iput v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    .line 44
    iput v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    .line 49
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    .line 50
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mEnableDifferentViewTypeDrag:Z

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/taobao/weex/ui/component/list/DragHelper;Z)V
    .locals 2
    .param p1, "DragHelper"    # Lcom/taobao/weex/ui/component/list/DragHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enableDifferentViewTypeDrag"    # Z

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mEnableDifferentViewTypeDrag:Z

    .line 43
    iput v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    .line 44
    iput v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    .line 54
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    .line 55
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mEnableDifferentViewTypeDrag:Z

    .line 56
    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 132
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 134
    instance-of v1, p2, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 135
    check-cast v0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    .line 136
    .local v0, "vh":Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    iget v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    if-eq v1, v5, :cond_0

    .line 138
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    invoke-interface {v1, v2, v3, v4}, Lcom/taobao/weex/ui/component/list/DragHelper;->onDragEnd(Lcom/taobao/weex/ui/component/WXComponent;II)V

    .line 144
    .end local v0    # "vh":Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    :cond_0
    iput v5, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    iput v5, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    .line 145
    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->makeMovementFlags(II)I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x3

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->makeMovementFlags(II)I

    move-result v0

    goto :goto_0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/DragHelper;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/DragHelper;->isLongPressDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 73
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v3

    .line 77
    :cond_1
    iget-boolean v4, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mEnableDifferentViewTypeDrag:Z

    if-nez v4, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 81
    :cond_2
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v4, p2}, Lcom/taobao/weex/ui/component/list/DragHelper;->isDragExcluded(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 87
    .local v1, "fromPos":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 89
    .local v2, "toPos":I
    iget v4, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 90
    iput v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    .line 92
    :cond_3
    iput v2, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    .line 94
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v4, v1, v2}, Lcom/taobao/weex/ui/component/list/DragHelper;->onDragging(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v3, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "fromPos":I
    .end local v2    # "toPos":I
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WXListExComponent"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    if-eqz p2, :cond_0

    instance-of v1, p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    .line 121
    .local v0, "vh":Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/taobao/weex/ui/component/list/DragHelper;->onDragStart(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 126
    .end local v0    # "vh":Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 127
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 110
    return-void
.end method
