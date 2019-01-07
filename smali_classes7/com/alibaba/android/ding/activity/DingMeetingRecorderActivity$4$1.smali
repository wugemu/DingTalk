.class final Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4$1;
.super Ljava/lang/Object;
.source "DingMeetingRecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfv;

.field final synthetic b:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;Lbfv;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4$1;->b:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4$1;->a:Lbfv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4$1;->b:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4$1;->a:Lbfv;

    .line 1036
    iget-wide v2, v1, Lbfv;->d:J

    .line 178
    invoke-static {v0, v2, v3}, Lbjv;->a(Landroid/app/Activity;J)V

    .line 179
    return-void
.end method
