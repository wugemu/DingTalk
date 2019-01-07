.class final Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$3;
.super Ljava/lang/Object;
.source "DingMeetingMinutesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;->b(Lcom/alibaba/android/ding/activity/DingMeetingMinutesActivity;)Lbam$a;

    move-result-object v0

    invoke-interface {v0}, Lbam$a;->a()V

    .line 92
    return-void
.end method
