.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ConnectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 614
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 615
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 616
    .local v4, "topView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    .line 617
    .local v2, "lastOffset":I
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->i(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 619
    .local v3, "lastPosition":I
    invoke-static {v3, v2}, Lfcc;->a(II)V

    .line 620
    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->j(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->i(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->getItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_0

    .line 621
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v5

    invoke-virtual {v5}, Lfce;->b()J

    move-result-wide v0

    .line 622
    .local v0, "createAt":J
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    .line 624
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->k(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 635
    .end local v0    # "createAt":J
    :cond_0
    :goto_0
    return-void

    .line 628
    .restart local v0    # "createAt":J
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->l(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 629
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Z)Z

    .line 630
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    iget-object v5, v5, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d:Lfex;

    invoke-virtual {v5, v0, v1}, Lfex;->a(J)V

    goto :goto_0
.end method

.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 639
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 641
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->i(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;I)I

    .line 642
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 643
    .local v0, "firstView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->i(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;F)V

    goto :goto_0

    .line 650
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 651
    .local v1, "top":I
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    int-to-float v3, v1

    sget v4, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;F)V

    goto :goto_0
.end method
