.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;
.super Ljava/lang/Object;
.source "WXRecyclerView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$offset:I

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->val$orientation:I

    iput p3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    new-instance v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1$1;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method
