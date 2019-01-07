.class Lcom/taobao/weex/ui/component/WXScroller$6;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXScroller;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 6
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 446
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v1

    .line 447
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/common/OnWXScrollListener;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 448
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/OnWXScrollListener;

    .line 449
    .local v0, "listener":Lcom/taobao/weex/common/OnWXScrollListener;
    if-eqz v0, :cond_0

    .line 450
    instance-of v2, v0, Lcom/taobao/weex/common/ICheckBindingScroller;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 451
    check-cast v2, Lcom/taobao/weex/common/ICheckBindingScroller;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXScroller;->getRef()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/taobao/weex/common/ICheckBindingScroller;->isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    :cond_1
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V

    goto :goto_0

    .line 460
    .end local v0    # "listener":Lcom/taobao/weex/common/OnWXScrollListener;
    :cond_2
    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .locals 0
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    .line 425
    return-void
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 4
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 434
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v1

    .line 435
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/common/OnWXScrollListener;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 436
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/OnWXScrollListener;

    .line 437
    .local v0, "listener":Lcom/taobao/weex/common/OnWXScrollListener;
    if-eqz v0, :cond_0

    .line 438
    const/4 v3, 0x0

    invoke-interface {v0, p1, p2, p3, v3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrollStateChanged(Landroid/view/View;III)V

    goto :goto_0

    .line 442
    .end local v0    # "listener":Lcom/taobao/weex/common/OnWXScrollListener;
    :cond_1
    return-void
.end method

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 0
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 430
    return-void
.end method
