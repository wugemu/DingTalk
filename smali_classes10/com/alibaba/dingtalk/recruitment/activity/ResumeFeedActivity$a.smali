.class final Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ResumeFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 427
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 429
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->b:Z

    .line 430
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 434
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 435
    packed-switch p2, :pswitch_data_0

    .line 452
    :goto_0
    return-void

    .line 437
    :pswitch_0
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->c:Z

    .line 438
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->h(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    .line 439
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 440
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->b:Z

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->k(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    .line 443
    :cond_0
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->b:Z

    goto :goto_0

    .line 446
    :pswitch_1
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->c:Z

    goto :goto_0

    .line 449
    :pswitch_2
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->c:Z

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 456
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 458
    if-nez p1, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 466
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 470
    const/4 v2, 0x0

    .line 471
    .local v2, "maxVisibleHeight":I
    const/4 v4, 0x0

    .line 472
    .local v4, "shouldShowChildPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 473
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 474
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 477
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    .line 478
    .local v3, "position":I
    invoke-static {v0}, Lgvb;->a(Landroid/view/View;)I

    move-result v5

    .line 479
    .local v5, "visibleHeight":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)I

    move-result v6

    if-ne v3, v6, :cond_2

    .line 480
    mul-int/lit8 v5, v5, 0x6

    .line 482
    :cond_2
    if-lt v5, v2, :cond_3

    .line 483
    move v2, v5

    .line 484
    move v4, v3

    .line 472
    .end local v3    # "position":I
    .end local v5    # "visibleHeight":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)I

    move-result v6

    if-eq v6, v4, :cond_0

    .line 489
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->l(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    .line 490
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v6, v4}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;I)I

    .line 491
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;->b:Z

    goto :goto_0
.end method
