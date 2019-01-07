.class final Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$2;
.super Ljava/lang/Object;
.source "MeetingScheduleCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$2;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$2;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    const-string/jumbo v1, "meeting"

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$2;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$2;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->b(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V

    .line 218
    return-void
.end method
