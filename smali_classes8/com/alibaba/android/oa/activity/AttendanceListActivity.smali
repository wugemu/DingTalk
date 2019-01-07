.class public Lcom/alibaba/android/oa/activity/AttendanceListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "AttendanceListActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

.field private c:J

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->c:J

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->d:I

    .line 54
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/oa/activity/AttendanceListActivity$1;-><init>(Lcom/alibaba/android/oa/activity/AttendanceListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceListActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->c:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/activity/AttendanceListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/oa/activity/AttendanceListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/oa/activity/AttendanceListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceListActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->d:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget v0, Ledz$g;->activity_attendance_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->setContentView(I)V

    .line 1103
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1104
    const-string/jumbo v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1106
    if-eqz v0, :cond_0

    .line 1107
    const-string/jumbo v1, "date_time_millis"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->c:J

    .line 1108
    const-string/jumbo v1, "attendance_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->d:I

    .line 1109
    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->e:Ljava/lang/String;

    .line 1110
    const-string/jumbo v1, "subAppId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->f:Ljava/lang/String;

    .line 1111
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1122
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1124
    const-string/jumbo v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1125
    new-instance v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-direct {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .line 1126
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    sget-object v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    .line 1375
    iput-object v1, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    .line 1128
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1130
    sget v1, Ledz$f;->ll_content:I

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1131
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 2135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2136
    const-string/jumbo v1, "com.workapp.add.new.fragment"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2137
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 90
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceListActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 98
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 99
    return-void
.end method
