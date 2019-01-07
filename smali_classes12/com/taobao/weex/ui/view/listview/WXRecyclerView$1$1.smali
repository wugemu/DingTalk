.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1$1;
.super Ljava/lang/Object;
.source "WXRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;

    iget v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->val$orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;

    iget-object v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;

    iget v1, v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->val$offset:I

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->smoothScrollBy(II)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;

    iget-object v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;

    iget v1, v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->val$offset:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->smoothScrollBy(II)V

    goto :goto_0
.end method
