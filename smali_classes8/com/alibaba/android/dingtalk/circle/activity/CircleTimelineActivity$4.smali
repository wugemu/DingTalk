.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CircleTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 594
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 595
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->d(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 596
    .local v4, "topView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    .line 597
    .local v2, "lastOffset":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 599
    .local v3, "lastPosition":I
    invoke-static {v3, v2}, Lbnm;->a(II)V

    .line 601
    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->j(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;->getItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_0

    .line 602
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v5

    invoke-virtual {v5}, Lbnq;->b()J

    move-result-wide v0

    .line 603
    .local v0, "createAt":J
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    .line 606
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->k(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 615
    .end local v0    # "createAt":J
    :cond_0
    :goto_0
    return-void

    .line 611
    .restart local v0    # "createAt":J
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Z)Z

    .line 612
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->d:Lbpz;

    .line 1195
    iget-object v5, v5, Lbpz;->b:Lbpw;

    invoke-virtual {v5, v0, v1}, Lbpw;->b(J)V

    goto :goto_0
.end method

.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 619
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 620
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;I)I

    .line 621
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->d(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 622
    .local v0, "firstView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;F)V

    goto :goto_0

    .line 629
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 630
    .local v1, "top":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    int-to-float v3, v1

    sget v4, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;F)V

    goto :goto_0
.end method
