.class final Lcom/alibaba/android/user/external/list/ExternalListFragment$11;
.super Ljava/lang/Object;
.source "ExternalListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/external/list/ExternalListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 422
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->a:Z

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->e(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lfnq;

    move-result-object v0

    invoke-virtual {v0}, Lfnq;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lfnq;

    move-result-object v0

    invoke-virtual {v0}, Lfnq;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lfnq;

    move-result-object v1

    invoke-virtual {v1}, Lfnq;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->getFooterViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->c(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(Lcom/alibaba/android/user/external/list/ExternalListFragment;ZILjava/lang/Runnable;)V

    goto :goto_0
.end method
