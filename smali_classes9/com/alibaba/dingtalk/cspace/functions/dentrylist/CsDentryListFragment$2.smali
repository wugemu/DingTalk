.class final Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CsDentryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 147
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 148
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdv;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdv;

    move-result-object v2

    iget-object v2, v2, Lgdv;->itemView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->c(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 164
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 153
    .local v0, "childCount":I
    if-gtz v0, :cond_2

    .line 154
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->c(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, "firstItemView":Landroid/view/View;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdv;

    move-result-object v2

    iget-object v2, v2, Lgdv;->itemView:Landroid/view/View;

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    .line 159
    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lgdv;

    move-result-object v2

    iget-object v2, v2, Lgdv;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-nez v2, :cond_3

    .line 160
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->c(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->c(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0
.end method
