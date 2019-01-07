.class final Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$1;
.super Ljava/lang/Object;
.source "DingMeetingStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lbjg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lbjg;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    sget v2, Laxp$i;->ding_add_meeting_participant_user:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjg;->a(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method
