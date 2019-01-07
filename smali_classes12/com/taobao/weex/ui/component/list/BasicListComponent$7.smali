.class Lcom/taobao/weex/ui/component/list/BasicListComponent$7;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BasicListComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFirstEvent:Z

.field private offsetXCorrection:I

.field private offsetYCorrection:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V
    .locals 1
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;

    .prologue
    .line 1271
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$7;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$7;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 1273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->mFirstEvent:Z

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1277
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$7;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$7;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 1283
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 1284
    .local v1, "offsetX":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    .line 1286
    .local v2, "offsetY":I
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1287
    iput v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->offsetXCorrection:I

    .line 1288
    iput v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->offsetYCorrection:I

    .line 1289
    const/4 v1, 0x0

    .line 1290
    const/4 v2, 0x0

    .line 1295
    :goto_0
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 1296
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v3

    const-string/jumbo v4, "scroll"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1313
    :cond_0
    :goto_1
    return-void

    .line 1292
    :cond_1
    iget v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->offsetXCorrection:I

    sub-int/2addr v1, v3

    .line 1293
    iget v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->offsetYCorrection:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 1299
    :cond_2
    iget-boolean v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->mFirstEvent:Z

    if-eqz v3, :cond_3

    .line 1301
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->mFirstEvent:Z

    goto :goto_1

    .line 1305
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1306
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1310
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v3, v1, v2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$500(Lcom/taobao/weex/ui/component/list/BasicListComponent;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1311
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v3, p1, v1, v2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$600(Lcom/taobao/weex/ui/component/list/BasicListComponent;Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_1
.end method
