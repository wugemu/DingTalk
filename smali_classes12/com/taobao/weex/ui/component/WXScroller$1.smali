.class Lcom/taobao/weex/ui/component/WXScroller$1;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->addEvent(Ljava/lang/String;)V
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
    .line 162
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 0
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 187
    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .locals 6
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 166
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$000(Lcom/taobao/weex/ui/component/WXScroller;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/taobao/weex/ui/component/WXScroller;->access$100(Lcom/taobao/weex/ui/component/WXScroller;Landroid/graphics/Rect;IIII)V

    goto :goto_0
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 0
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 182
    return-void
.end method

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .locals 0
    .param p1, "scrollView"    # Lcom/taobao/weex/ui/view/WXScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 177
    return-void
.end method
