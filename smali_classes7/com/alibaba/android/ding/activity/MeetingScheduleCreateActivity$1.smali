.class final Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$1;
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
    .line 205
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$1;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$1;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->finish()V

    .line 209
    return-void
.end method
