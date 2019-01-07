.class Lcom/taobao/weex/ui/component/list/BasicListComponent$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BasicListComponent.java"


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
    .line 286
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$2;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$2;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$2;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$2;"
    const/4 v6, 0x0

    .line 289
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 291
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v1

    .line 292
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/common/OnWXScrollListener;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 293
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/OnWXScrollListener;

    .line 294
    .local v0, "listener":Lcom/taobao/weex/common/OnWXScrollListener;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 296
    .local v2, "topView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 298
    .local v3, "y":I
    invoke-interface {v0, p1, v6, v3, p2}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrollStateChanged(Landroid/view/View;III)V

    goto :goto_0

    .line 303
    .end local v0    # "listener":Lcom/taobao/weex/common/OnWXScrollListener;
    .end local v2    # "topView":Landroid/view/View;
    .end local v3    # "y":I
    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$2;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$2;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 308
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v3

    .line 309
    .local v3, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/common/OnWXScrollListener;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 311
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/OnWXScrollListener;

    .line 312
    .local v2, "listener":Lcom/taobao/weex/common/OnWXScrollListener;
    if-eqz v2, :cond_0

    .line 313
    instance-of v4, v2, Lcom/taobao/weex/common/ICheckBindingScroller;

    if-eqz v4, :cond_1

    .line 314
    move-object v0, v2

    check-cast v0, Lcom/taobao/weex/common/ICheckBindingScroller;

    move-object v4, v0

    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getRef()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lcom/taobao/weex/common/ICheckBindingScroller;->isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    :cond_1
    invoke-interface {v2, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    .end local v2    # "listener":Lcom/taobao/weex/common/OnWXScrollListener;
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method
