.class final Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$2;
.super Ljava/lang/Object;
.source "DingMeetingMinutesActivity.java"

# interfaces
.implements Laya$d;


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
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .param p1, "disallow"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->d(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 73
    return-void
.end method
