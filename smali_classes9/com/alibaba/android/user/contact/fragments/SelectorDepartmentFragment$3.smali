.class final Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;
.super Ljava/lang/Object;
.source "SelectorDepartmentFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

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
    .line 183
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;I)I

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;I)I

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->d(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;I)I

    .line 186
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
    .line 167
    if-nez p2, :cond_0

    .line 168
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->e(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->g(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)I

    move-result v2

    add-int v0, v1, v2

    .line 171
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->g(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->h(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->i(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;I)I

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Z)V

    .line 179
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    return-void
.end method
