.class final Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;
.super Ljava/lang/Object;
.source "SubDeptAttendanceListActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;->a(Landroid/content/Context;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->a:J

    iput-wide p3, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->b:J

    iput-wide p5, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->c:J

    iput p7, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->d:I

    iput-object p8, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->e:Ljava/lang/String;

    iput-object p9, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->f:Ljava/lang/String;

    iput-object p10, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "paramIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    const-string/jumbo v1, "dept_id"

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    const-string/jumbo v1, "date_time_millis"

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    const-string/jumbo v1, "attendance_type"

    iget v2, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string/jumbo v1, "appId"

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "subAppId"

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "bundle"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "dept_name"

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    return-object p1
.end method
