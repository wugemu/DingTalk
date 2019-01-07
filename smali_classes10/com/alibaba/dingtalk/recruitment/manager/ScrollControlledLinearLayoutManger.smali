.class public Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "ScrollControlledLinearLayoutManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger$a;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isVertical"    # Z

    .prologue
    const/4 v1, 0x0

    .line 19
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 15
    const v0, 0x3d75c28f    # 0.06f

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->a:F

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->b:F

    .line 20
    return-void

    :cond_0
    move v0, v1

    .line 19
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    .prologue
    .line 10
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->a:F

    return v0
.end method


# virtual methods
.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->b:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-super {p0, v1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 32
    .local v0, "a":I
    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->b:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-ne v0, v1, :cond_0

    .line 35
    .end local p1    # "dy":I
    :goto_0
    return p1

    .restart local p1    # "dy":I
    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger$a;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger$a;-><init>(Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;Landroid/content/Context;)V

    .line 25
    .local v0, "smoothScroller":Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 27
    return-void
.end method
