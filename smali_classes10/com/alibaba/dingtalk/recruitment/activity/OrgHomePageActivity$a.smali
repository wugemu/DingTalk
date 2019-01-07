.class final Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "OrgHomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 543
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 545
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->b:Z

    .line 546
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

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

    .line 550
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 551
    packed-switch p2, :pswitch_data_0

    .line 568
    :goto_0
    return-void

    .line 553
    :pswitch_0
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->c:Z

    .line 554
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->o(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    .line 555
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;I)V

    .line 556
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->b:Z

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->p(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    .line 559
    :cond_0
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->b:Z

    goto :goto_0

    .line 562
    :pswitch_1
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->c:Z

    goto :goto_0

    .line 565
    :pswitch_2
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->c:Z

    goto :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 9
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 572
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 574
    if-nez p1, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->d(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 582
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->q(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 586
    const/4 v2, 0x0

    .line 587
    .local v2, "maxVisibleWidth":I
    const/4 v4, 0x0

    .line 588
    .local v4, "shouldShowPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->q(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 589
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 590
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 593
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    .line 1025
    .local v3, "position":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1026
    invoke-virtual {v0, v7}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    .line 1027
    if-nez v6, :cond_4

    .line 1028
    const/4 v5, 0x0

    .line 595
    .local v5, "visibleWidth":I
    :goto_2
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)I

    move-result v6

    if-ne v3, v6, :cond_2

    .line 596
    mul-int/lit8 v5, v5, 0x6

    .line 598
    :cond_2
    if-lt v5, v2, :cond_3

    .line 599
    move v2, v5

    .line 600
    move v4, v3

    .line 588
    .end local v3    # "position":I
    .end local v5    # "visibleWidth":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1031
    .restart local v3    # "position":I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1032
    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-gtz v8, :cond_5

    iget v8, v7, Landroid/graphics/Rect;->right:I

    if-lez v8, :cond_6

    iget v8, v7, Landroid/graphics/Rect;->right:I

    if-ge v8, v6, :cond_6

    .line 1034
    :cond_5
    iget v6, v7, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    :cond_6
    move v5, v6

    .line 1037
    goto :goto_2

    .line 603
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_7
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)I

    move-result v6

    if-eq v6, v4, :cond_0

    .line 604
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->r(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    .line 605
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v6, v4}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;I)I

    .line 606
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v7}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->setCurVideoPosition(I)V

    .line 607
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;->b:Z

    goto/16 :goto_0
.end method
