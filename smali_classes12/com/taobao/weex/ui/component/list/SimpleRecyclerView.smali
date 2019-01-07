.class Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;
.super Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
.source "SimpleRecyclerView.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/list/ListComponentView;


# instance fields
.field private mAdapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;->mAdapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    .line 42
    return-void
.end method


# virtual methods
.method public getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method

.method public getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;->mAdapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    return-object v0
.end method

.method public notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 0
    .param p1, "component"    # Lcom/taobao/weex/ui/component/list/WXCell;

    .prologue
    .line 67
    return-void
.end method

.method public notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 0
    .param p1, "component"    # Lcom/taobao/weex/ui/component/list/WXCell;

    .prologue
    .line 60
    return-void
.end method

.method public setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 52
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;->mAdapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    .line 53
    return-void
.end method

.method public updateStickyView(I)V
    .locals 0
    .param p1, "currentStickyPos"    # I

    .prologue
    .line 72
    return-void
.end method
