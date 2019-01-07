.class public Lcom/taobao/weex/ui/component/list/GapItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GapItemDecoration.java"


# instance fields
.field private listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/list/WXListComponent;)V
    .locals 0
    .param p1, "listComponent"    # Lcom/taobao/weex/ui/component/list/WXListComponent;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    .line 40
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v7, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {v7}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getSpanOffsets()[Ljava/lang/Float;

    move-result-object v6

    .line 45
    .local v6, "spanOffsets":[Ljava/lang/Float;
    if-nez v6, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 49
    .local v3, "position":I
    if-ltz v3, :cond_0

    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v7, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 54
    .local v2, "params":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v7

    if-nez v7, :cond_0

    .line 57
    iget-object v7, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {v7, v3}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    .line 58
    .local v1, "component":Lcom/taobao/weex/ui/component/WXComponent;
    instance-of v7, v1, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v7, :cond_0

    move-object v0, v1

    .line 59
    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 60
    .local v0, "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->isFixed()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->isSticky()Z

    move-result v7

    if-nez v7, :cond_0

    .line 64
    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v7

    array-length v8, v6

    if-ge v7, v8, :cond_0

    .line 67
    iget-object v7, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {v7}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getSpanOffsets()[Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 68
    .local v4, "spanOffset":F
    iget-object v7, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {v7}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getViewPortWidth()I

    move-result v7

    invoke-static {v4, v7}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 69
    .local v5, "spanOffsetPx":I
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 70
    neg-int v7, v5

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method
