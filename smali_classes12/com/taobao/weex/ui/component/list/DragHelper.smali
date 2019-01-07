.class interface abstract Lcom/taobao/weex/ui/component/list/DragHelper;
.super Ljava/lang/Object;
.source "DragHelper.java"


# virtual methods
.method public abstract isDragExcluded(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isDraggable()Z
.end method

.method public abstract isLongPressDragEnabled()Z
.end method

.method public abstract onDragEnd(Lcom/taobao/weex/ui/component/WXComponent;II)V
    .param p1    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onDragStart(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .param p1    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onDragging(II)V
.end method

.method public abstract setDragExcluded(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setDraggable(Z)V
.end method

.method public abstract setLongPressDragEnabled(Z)V
.end method

.method public abstract startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
