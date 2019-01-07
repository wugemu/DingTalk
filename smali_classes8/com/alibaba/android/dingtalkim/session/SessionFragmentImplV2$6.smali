.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$6;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

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
    .line 1623
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->C(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->C(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1626
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->C(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->C(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 1619
    :cond_0
    return-void
.end method
