.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "WXRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOnSmoothScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$onSmoothScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput-object p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->val$onSmoothScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 140
    if-nez p2, :cond_0

    .line 141
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 142
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->val$onSmoothScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->val$onSmoothScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;->onStop()V

    .line 146
    :cond_0
    return-void
.end method
