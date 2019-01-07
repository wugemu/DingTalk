.class public abstract Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;
.super Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;
.source "MultipleTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lrs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;, "Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->getViewTypeCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->a:Landroid/util/SparseArray;

    .line 26
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract a(I)Lrs;
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;, "Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 79
    return-void
.end method

.method public d()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;, "Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 63
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;, "Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->a(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 30
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;, "Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->getItemViewType(I)I

    move-result v4

    .line 31
    .local v4, "viewType":I
    if-eqz p2, :cond_0

    .line 32
    sget v5, Laxo$f;->base_adapter_id:I

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 33
    .local v3, "oldViewType":I
    if-eq v3, v4, :cond_0

    .line 34
    const/4 p2, 0x0

    .line 40
    .end local v3    # "oldViewType":I
    :cond_0
    if-nez p2, :cond_2

    .line 1068
    iget-object v5, p0, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrs;

    .line 1069
    if-nez v5, :cond_3

    .line 1070
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->a(I)Lrs;

    move-result-object v0

    .line 1071
    iget-object v5, p0, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .local v0, "absViewHolder":Lrs;
    :goto_0
    invoke-interface {v0}, Lrs;->a()I

    move-result v2

    .line 43
    .local v2, "layoutRes":I
    if-eqz v2, :cond_1

    .line 44
    iget-object v5, p0, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->e:Landroid/content/Context;

    invoke-static {v5, p2, v2, p1}, Lrr;->a(Landroid/content/Context;Landroid/view/View;II)Lrr;

    move-result-object v1

    .line 1227
    .local v1, "baseAdapterHelper":Lrr;
    :goto_1
    iget-object p2, v1, Lrr;->b:Landroid/view/View;

    .line 50
    sget v5, Laxo$f;->base_adapter_holder:I

    invoke-virtual {p2, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 51
    sget v5, Laxo$f;->base_adapter_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 56
    .end local v2    # "layoutRes":I
    :goto_2
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->d()[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v1, v5, v6}, Lrs;->a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 58
    return-object p2

    .line 47
    .end local v1    # "baseAdapterHelper":Lrr;
    .restart local v2    # "layoutRes":I
    :cond_1
    iget-object v5, p0, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->e:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v0, v6}, Lrs;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v6

    invoke-static {v5, p2, v6, p1}, Lrr;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;I)Lrr;

    move-result-object v1

    .restart local v1    # "baseAdapterHelper":Lrr;
    goto :goto_1

    .line 53
    .end local v0    # "absViewHolder":Lrs;
    .end local v1    # "baseAdapterHelper":Lrr;
    .end local v2    # "layoutRes":I
    :cond_2
    sget v5, Laxo$f;->base_adapter:I

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrr;

    .line 54
    .restart local v1    # "baseAdapterHelper":Lrr;
    sget v5, Laxo$f;->base_adapter_holder:I

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrs;

    .restart local v0    # "absViewHolder":Lrs;
    goto :goto_2

    .end local v0    # "absViewHolder":Lrs;
    .end local v1    # "baseAdapterHelper":Lrr;
    :cond_3
    move-object v0, v5

    goto :goto_0
.end method
