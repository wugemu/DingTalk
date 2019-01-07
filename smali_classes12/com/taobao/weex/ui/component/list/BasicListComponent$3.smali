.class Lcom/taobao/weex/ui/component/list/BasicListComponent$3;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;

    .prologue
    .line 331
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$3;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$3;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$3;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$3;"
    const/4 v3, 0x0

    .line 336
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "view":Landroid/view/ViewGroup;, "TT;"
    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$000(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    move-result-object v2

    move-object v1, v0

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {v2, v1, v3, v3}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 339
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 340
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
