.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AttendanceHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.alibaba.android.rimet.biz.calendar.BOSSSETTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const-string/jumbo v2, "is_boss"

    iget-object v3, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z

    .line 168
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const-string/jumbo v2, "is_master_admin"

    iget-object v3, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z

    .line 169
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const-string/jumbo v2, "is_subscribe"

    iget-object v3, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z

    .line 171
    :cond_0
    return-void
.end method
