.class final Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "DingMeetingMinutesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 41
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 42
    .local v0, "lastVisibleItemPosition":I
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->b(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;)Lbam$a;

    move-result-object v1

    invoke-interface {v1}, Lbam$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->c(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;)Laya;

    move-result-object v1

    invoke-virtual {v1}, Laya;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 43
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->b(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;)Lbam$a;

    move-result-object v1

    invoke-interface {v1}, Lbam$a;->c()V

    .line 45
    :cond_0
    return-void
.end method

.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 51
    return-void
.end method
