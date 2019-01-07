.class public Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerViewBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;)V
    .locals 0
    .param p1, "Listener"    # Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    .prologue
    .line 33
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    .line 35
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->getItemCount()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->getItemViewType(I)I

    move-result p1

    .line 72
    .end local p1    # "position":I
    :cond_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V
    .locals 1
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    .local p1, "viewHolder":Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;, "TT;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 65
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->onFailedToRecycleView(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    .local p1, "holder":Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;, "TT;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->onViewAttachedToWindow(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    .local p1, "holder":Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;, "TT;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isFullSpan()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 51
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 54
    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 55
    .local v1, "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 58
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->onViewRecycled(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    .local p1, "holder":Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;, "TT;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 94
    return-void
.end method
