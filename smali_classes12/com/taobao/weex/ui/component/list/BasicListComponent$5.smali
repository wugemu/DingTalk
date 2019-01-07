.class Lcom/taobao/weex/ui/component/list/BasicListComponent$5;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;

    .prologue
    .line 714
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$5;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$5;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$5;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$5;"
    const/4 v4, 0x0

    .line 717
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$200(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 718
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$200(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v0

    .line 719
    .local v0, "keepPosition":I
    const/4 v1, 0x0

    .line 720
    .local v1, "offset":I
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$200(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 721
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$200(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 723
    :cond_0
    if-lez v1, :cond_2

    .line 724
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->val$view:Landroid/view/ViewGroup;

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 729
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->val$view:Landroid/view/ViewGroup;

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutFrozen(Z)V

    .line 730
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v2, v4}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$202(Lcom/taobao/weex/ui/component/list/BasicListComponent;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    .line 731
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v2, v4}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$302(Lcom/taobao/weex/ui/component/list/BasicListComponent;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 733
    .end local v0    # "keepPosition":I
    .end local v1    # "offset":I
    :cond_1
    return-void

    .line 726
    .restart local v0    # "keepPosition":I
    .restart local v1    # "offset":I
    :cond_2
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->val$view:Landroid/view/ViewGroup;

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    goto :goto_0
.end method
