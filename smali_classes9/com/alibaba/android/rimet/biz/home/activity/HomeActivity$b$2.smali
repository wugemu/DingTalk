.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a(I)Landroid/support/v4/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    .prologue
    .line 3519
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const v3, 0x7f1105cd

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 3522
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_3

    .line 3523
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 3525
    .local v0, "firstPosition":I
    if-eqz v0, :cond_2

    .line 3526
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 3527
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3531
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2, v6}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    .line 3537
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 3538
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3539
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 3540
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 3541
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->M(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3543
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    .line 3552
    .end local v0    # "firstPosition":I
    .end local v1    # "v":Landroid/view/View;
    :goto_2
    return-void

    .line 3529
    .restart local v0    # "firstPosition":I
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3533
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3534
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    goto :goto_1

    .line 3548
    .end local v0    # "firstPosition":I
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 3549
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3551
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2, v6}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    goto :goto_2
.end method
