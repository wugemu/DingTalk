.class final Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "DingMeetingFocusRecycleListActivity.java"


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
    .line 348
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 351
    const-string/jumbo v2, "com.workapp.ding.choose.mode.change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    const-string/jumbo v2, "intent_key_seed"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 353
    .local v0, "seed":J
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->i(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 362
    .end local v0    # "seed":J
    :cond_0
    :goto_0
    return-void

    .line 357
    .restart local v0    # "seed":J
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    const-string/jumbo v3, "choose_mode"

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;I)I

    .line 358
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->g(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 359
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->a()V

    .line 360
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->d(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Laxs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->j(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Lbiz;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-static {v5}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->g(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Laxs;->a(ILbiz;Ljava/util/Set;)V

    goto :goto_0
.end method
