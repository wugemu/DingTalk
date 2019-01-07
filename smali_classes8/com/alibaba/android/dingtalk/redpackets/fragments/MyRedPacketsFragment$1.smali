.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;
.super Ljava/lang/Object;
.source "MyRedPacketsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    .prologue
    .line 85
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

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
    .line 105
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-static {v0, p3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;I)I

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;I)I

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-static {v0, p4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->c(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;I)I

    .line 108
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 88
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;"
    if-nez p2, :cond_0

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->g:Z

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)I

    move-result v2

    add-int v0, v1, v2

    .line 92
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->c(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    iget v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->f:I

    if-eq v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    iput v0, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->f:I

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->a(Z)V

    .line 101
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    return-void
.end method
