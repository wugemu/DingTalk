.class Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "ExtendedLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopSnappedSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;

    .line 83
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 85
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;

    .line 90
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, -0x1

    return v0
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStop()V

    .line 101
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->access$000(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;)Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->access$000(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;)Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;->onStop()V

    .line 103
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->access$002(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    .line 105
    :cond_0
    return-void
.end method
