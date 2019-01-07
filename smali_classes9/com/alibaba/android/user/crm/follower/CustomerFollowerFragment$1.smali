.class final Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;
.super Ljava/lang/Object;
.source "CustomerFollowerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Lcne;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcne;->onScroll(Landroid/widget/AbsListView;III)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->b(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;I)I

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;I)I

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->d(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;I)I

    .line 186
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    if-nez p2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->b(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)I

    move-result v2

    add-int v0, v1, v2

    .line 167
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->d(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .line 168
    invoke-static {v1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->b(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->e(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;I)I

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v3}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->f(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;ZZ)V

    .line 176
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Lcne;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcne;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 177
    return-void
.end method
