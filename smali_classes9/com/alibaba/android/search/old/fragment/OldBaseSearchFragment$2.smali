.class final Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment$2;
.super Ljava/lang/Object;
.source "OldBaseSearchFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;

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
    .line 119
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
    .line 107
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->b(Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 109
    .local v1, "lastVisibleIndex":I
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->b(Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 110
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->d()V

    .line 114
    .end local v0    # "count":I
    .end local v1    # "lastVisibleIndex":I
    :cond_0
    return-void
.end method
