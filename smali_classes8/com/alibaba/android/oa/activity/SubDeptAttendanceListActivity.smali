.class public Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SubDeptAttendanceListActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "deptName"    # Ljava/lang/String;
    .param p6, "currentTimeMillis"    # J
    .param p8, "appId"    # Ljava/lang/String;
    .param p9, "subAppId"    # Ljava/lang/String;
    .param p10, "type"    # I

    .prologue
    .line 79
    const-string/jumbo v0, "https://qr.dingtalk.com/calendar/sub_dept_attendance.html"

    .line 80
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v12

    new-instance v1, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p6

    move/from16 v8, p10

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity$1;-><init>(JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Ledz$g;->activity_attendance_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;->setContentView(I)V

    .line 1055
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1056
    const-string/jumbo v1, "dept_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1066
    const-string/jumbo v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1067
    new-instance v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-direct {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .line 1068
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    sget-object v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->SUB_DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    .line 1375
    iput-object v1, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    .line 1070
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 1071
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1072
    sget v1, Ledz$f;->ll_content:I

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/SubDeptAttendanceListActivity;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1073
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 51
    return-void
.end method
