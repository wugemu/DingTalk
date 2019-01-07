.class public Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "DentryGridLayoutManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    .line 32
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 33
    const/high16 v0, 0x42c00000    # 96.0f

    invoke-static {p1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;->a:I

    .line 34
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;->b:I

    .line 35
    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;->getWidth()I

    move-result v3

    .line 43
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;->getHeight()I

    move-result v0

    .line 44
    .local v0, "height":I
    if-lez v3, :cond_0

    if-lez v0, :cond_0

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;->a:I

    if-lez v4, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 47
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;->b:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 51
    .local v2, "totalSpace":I
    :goto_0
    const/4 v4, 0x3

    iget v5, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;->a:I

    div-int v5, v2, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 52
    .local v1, "spanCount":I
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;->setSpanCount(I)V

    .line 54
    .end local v1    # "spanCount":I
    .end local v2    # "totalSpace":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 55
    return-void

    .line 49
    :cond_1
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;->b:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v2, v0, v4

    .restart local v2    # "totalSpace":I
    goto :goto_0
.end method
