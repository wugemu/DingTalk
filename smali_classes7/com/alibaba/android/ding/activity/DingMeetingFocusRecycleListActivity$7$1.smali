.class final Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7$1;
.super Ljava/lang/Object;
.source "DingMeetingFocusRecycleListActivity.java"

# interfaces
.implements Lbhs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 259
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 264
    return-void
.end method
