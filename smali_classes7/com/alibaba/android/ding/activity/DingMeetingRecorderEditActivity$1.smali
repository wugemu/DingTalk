.class final Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$1;
.super Ljava/lang/Object;
.source "DingMeetingRecorderEditActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
