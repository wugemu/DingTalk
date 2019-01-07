.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;
.super Ljava/lang/Object;
.source "CSpaceSearchFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

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
    .line 260
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v0, p3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;I)I

    .line 261
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v0, p2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;I)I

    .line 262
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v0, p4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;I)I

    .line 263
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
    .line 238
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->g(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I

    move-result v2

    add-int v0, v1, v2

    .line 244
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x19

    if-le v0, v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->k(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 254
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;I)I

    .line 255
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->e(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)V

    goto :goto_0
.end method
