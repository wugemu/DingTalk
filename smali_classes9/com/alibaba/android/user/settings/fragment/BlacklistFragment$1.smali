.class final Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;
.super Ljava/lang/Object;
.source "BlacklistFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)I

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)I

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)I

    .line 116
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 89
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I

    move-result v2

    add-int v0, v1, v2

    .line 95
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .line 96
    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->e(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)I

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$1;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->a(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Z)V

    goto :goto_0
.end method
