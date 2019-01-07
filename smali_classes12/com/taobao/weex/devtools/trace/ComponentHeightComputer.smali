.class Lcom/taobao/weex/devtools/trace/ComponentHeightComputer;
.super Ljava/lang/Object;
.source "ComponentHeightComputer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeComponentContentHeight(Lcom/taobao/weex/ui/component/WXComponent;)I
    .locals 9
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    .line 24
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v6

    .line 27
    :cond_1
    instance-of v7, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;

    if-eqz v7, :cond_3

    move-object v3, p0

    .line 28
    check-cast v3, Lcom/taobao/weex/ui/component/list/WXListComponent;

    .line 29
    .local v3, "listComponent":Lcom/taobao/weex/ui/component/list/WXListComponent;
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    .line 30
    .local v0, "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 34
    .local v2, "innerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    if-nez v2, :cond_2

    .line 35
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getMeasuredHeight()I

    move-result v6

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->computeVerticalScrollRange()I

    move-result v6

    goto :goto_0

    .line 39
    .end local v0    # "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .end local v2    # "innerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .end local v3    # "listComponent":Lcom/taobao/weex/ui/component/list/WXListComponent;
    :cond_3
    instance-of v7, p0, Lcom/taobao/weex/ui/component/WXScroller;

    if-eqz v7, :cond_7

    move-object v4, p0

    .line 40
    check-cast v4, Lcom/taobao/weex/ui/component/WXScroller;

    .line 41
    .local v4, "scroller":Lcom/taobao/weex/ui/component/WXScroller;
    invoke-static {v4}, Lcom/taobao/weex/devtools/trace/ViewUtils;->isVerticalScroller(Lcom/taobao/weex/ui/component/WXScroller;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 42
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 45
    .local v1, "group":Landroid/view/ViewGroup;
    if-nez v1, :cond_5

    .line 46
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    goto :goto_0

    .line 48
    :cond_5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    .line 49
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    goto :goto_0

    .line 51
    :cond_6
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    goto :goto_0

    .line 54
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v4    # "scroller":Lcom/taobao/weex/ui/component/WXScroller;
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    goto :goto_0
.end method
