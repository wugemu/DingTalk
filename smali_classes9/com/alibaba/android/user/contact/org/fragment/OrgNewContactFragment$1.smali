.class final Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;
.super Ljava/lang/Object;
.source "OrgNewContactFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

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
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->g(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)Lcne;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcne;->onScroll(Landroid/widget/AbsListView;III)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->b(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;I)I

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->c(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;I)I

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->d(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;I)I

    .line 182
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
    .line 159
    if-nez p2, :cond_0

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->a(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->b(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->c(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)I

    move-result v2

    add-int v0, v1, v2

    .line 163
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->c(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->d(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    .line 164
    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->b(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->e(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->a(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;I)I

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->f(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->a(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;ZZ)V

    .line 172
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment$1;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->g(Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;)Lcne;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcne;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 173
    return-void
.end method
