.class final Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;
.super Ljava/lang/Object;
.source "DingReceiverActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingReceiverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 82
    add-int v0, p2, p3

    .line 83
    .local v0, "lastVisibleItemPosition":I
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->b(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Layi;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->c(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .line 84
    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->c(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->H()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->b(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Layi;

    move-result-object v2

    invoke-virtual {v2}, Layi;->getCount()I

    move-result v2

    if-le v1, v2, :cond_0

    if-lez p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .line 85
    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->b(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Layi;

    move-result-object v1

    invoke-virtual {v1}, Layi;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->b(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Layi;

    move-result-object v2

    invoke-virtual {v2}, Layi;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;I)V

    .line 88
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 78
    return-void
.end method
