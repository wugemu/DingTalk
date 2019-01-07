.class final Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "PeopleConnectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

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
    .line 430
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 431
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 432
    .local v4, "topView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    .line 433
    .local v2, "lastOffset":I
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->b(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 435
    .local v3, "lastPosition":I
    invoke-static {v3, v2}, Lfcc;->a(II)V

    .line 437
    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->o(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v6}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->b(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->getItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_0

    .line 438
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;

    move-result-object v5

    invoke-virtual {v5}, Lfce;->b()J

    move-result-wide v0

    .line 439
    .local v0, "createAt":J
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    .line 442
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->p(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 451
    .end local v0    # "createAt":J
    :cond_0
    :goto_0
    return-void

    .line 447
    .restart local v0    # "createAt":J
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;Z)Z

    .line 448
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$8;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    iget-object v5, v5, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->b:Lfex;

    invoke-virtual {v5, v0, v1}, Lfex;->a(J)V

    goto :goto_0
.end method

.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 455
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 456
    return-void
.end method
