.class public Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
.super Ljava/lang/Object;
.source "ScrollStartEndHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private handler:Landroid/os/Handler;

.field private hasStart:Z

.field private minInterval:J

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->handler:Landroid/os/Handler;

    .line 52
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string/jumbo v1, "minscrolldelayinterval"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->minInterval:J

    .line 53
    return-void
.end method

.method private getScrollEvent(II)Ljava/util/Map;
    .locals 5
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v4, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    instance-of v4, v4, Lcom/taobao/weex/ui/component/list/BasicListComponent;

    if-eqz v4, :cond_0

    .line 89
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    check-cast v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;

    .line 90
    .local v0, "basicListComponent":Lcom/taobao/weex/ui/component/list/BasicListComponent;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    if-eqz v4, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    .line 92
    .local v1, "componentView":Lcom/taobao/weex/ui/component/list/ListComponentView;
    if-eqz v1, :cond_2

    .line 93
    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    invoke-virtual {v0, v4, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getScrollEvent(Landroid/support/v7/widget/RecyclerView;II)Ljava/util/Map;

    move-result-object v4

    .line 103
    .end local v0    # "basicListComponent":Lcom/taobao/weex/ui/component/list/BasicListComponent;
    .end local v1    # "componentView":Lcom/taobao/weex/ui/component/list/ListComponentView;
    :goto_0
    return-object v4

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    instance-of v4, v4, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    if-eqz v4, :cond_1

    .line 97
    iget-object v3, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    check-cast v3, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 98
    .local v3, "templateList":Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getScrollEvent(Landroid/support/v7/widget/RecyclerView;II)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    .line 99
    .end local v3    # "templateList":Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    instance-of v4, v4, Lcom/taobao/weex/ui/component/WXScroller;

    if-eqz v4, :cond_2

    .line 100
    iget-object v2, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    check-cast v2, Lcom/taobao/weex/ui/component/WXScroller;

    .line 101
    .local v2, "scroller":Lcom/taobao/weex/ui/component/WXScroller;
    invoke-virtual {v2, p1, p2}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollEvent(II)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    .line 103
    .end local v2    # "scroller":Lcom/taobao/weex/ui/component/WXScroller;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isScrollEvent(Ljava/lang/String;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 108
    const-string/jumbo v1, "scroll"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    const-string/jumbo v1, "scrollstart"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const-string/jumbo v1, "scrollend"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onScrolled(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "scrollstart"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 61
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "scrollend"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    :cond_0
    iput p1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->x:I

    .line 63
    iput p2, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->y:I

    .line 64
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->hasStart:Z

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "scrollstart"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    const-string/jumbo v1, "scrollstart"

    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->getScrollEvent(II)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->hasStart:Z

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->minInterval:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    :cond_3
    return-void
.end method

.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "scrollend"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    const-string/jumbo v1, "scrollend"

    iget v2, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->x:I

    iget v3, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->y:I

    invoke-direct {p0, v2, v3}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->getScrollEvent(II)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->hasStart:Z

    goto :goto_0
.end method
