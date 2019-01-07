.class final Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;
.super Ljava/lang/Object;
.source "DeptMemberFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

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
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->h(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lcne;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcne;->onScroll(Landroid/widget/AbsListView;III)V

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->b(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;I)I

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;I)I

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;I)I

    .line 176
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    if-nez p2, :cond_0

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->e(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)I

    move-result v2

    add-int v0, v1, v2

    .line 159
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->e(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->f(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->g(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->a(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;I)I

    .line 162
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->a(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;Z)V

    .line 167
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->h(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lcne;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcne;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 168
    return-void
.end method
