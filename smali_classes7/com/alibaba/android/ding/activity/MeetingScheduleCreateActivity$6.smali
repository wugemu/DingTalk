.class final Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "MeetingScheduleCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$6;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 287
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ding create event: receiver_action:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 288
    const-string/jumbo v0, "com.workapp.choose.people.from.group.member"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.workapp.choose.people.from.contact"

    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.workapp.ding.choose.myself"

    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$6;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Landroid/content/Intent;)V

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    const-string/jumbo v0, "com.workapp.ding.choose.event.remind.mode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$6;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->b(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 294
    :cond_3
    const-string/jumbo v0, "com.workapp.ding.choose.repeat.mode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$6;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->c(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method
