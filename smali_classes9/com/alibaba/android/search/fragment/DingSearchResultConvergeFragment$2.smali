.class final Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$2;
.super Ljava/lang/Object;
.source "DingSearchResultConvergeFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

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
    .line 140
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;I)I

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v0, p3}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->b(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;I)I

    .line 142
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 136
    return-void
.end method
