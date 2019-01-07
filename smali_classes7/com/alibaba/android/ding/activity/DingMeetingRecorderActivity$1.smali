.class final Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$1;
.super Ljava/lang/Object;
.source "DingMeetingRecorderActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 1987
    if-eqz v0, :cond_0

    .line 1990
    if-eqz v1, :cond_0

    .line 1993
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/ding/ding_meeting_recorder_edit"

    new-instance v3, Lbjv$19;

    invoke-direct {v3, v1}, Lbjv$19;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 86
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
