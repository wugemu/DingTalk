.class final Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2$1;
.super Ljava/lang/Object;
.source "DingNotifyCenterAbstractFragmentV2.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;

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
    .line 98
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;

    iget-boolean v0, v0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->f:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;)V

    .line 94
    :cond_0
    return-void
.end method
