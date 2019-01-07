.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7$1;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 650
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->s(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 651
    const-string/jumbo v0, "is_boss"

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 652
    const-string/jumbo v0, "is_master_admin"

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 653
    const-string/jumbo v0, "is_subscribe"

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7$1;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    return-object p1
.end method
