.class final Lcom/alibaba/android/oa/activity/AttendanceListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AttendanceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/AttendanceListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 60
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string/jumbo v1, "com.workapp.add.new.fragment"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v1, "node"

    .line 67
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 68
    .local v0, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    .line 74
    invoke-static {v7}, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceListActivity;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    invoke-static {v9}, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->b(Lcom/alibaba/android/oa/activity/AttendanceListActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    invoke-static {v10}, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->c(Lcom/alibaba/android/oa/activity/AttendanceListActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    invoke-static {v11}, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->d(Lcom/alibaba/android/oa/activity/AttendanceListActivity;)I

    move-result v11

    .line 73
    invoke-static/range {v1 .. v11}, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;->a(Landroid/content/Context;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
