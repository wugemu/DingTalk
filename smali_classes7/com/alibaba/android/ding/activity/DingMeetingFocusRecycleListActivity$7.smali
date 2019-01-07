.class final Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;
.super Ljava/lang/Object;
.source "DingMeetingFocusRecycleListActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 254
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingMeetingFocusRecycleListActivity] onRefresh"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->f(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Lbaj;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7$1;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;)V

    invoke-virtual {v0, v1}, Lbaj;->a(Lbhs$a;)V

    .line 266
    return-void
.end method
