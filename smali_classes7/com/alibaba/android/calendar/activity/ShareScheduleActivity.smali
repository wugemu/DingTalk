.class public Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "ShareScheduleActivity.java"


# instance fields
.field private a:J

.field private b:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Laow$e;->calendar_activity_user_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->setContentView(I)V

    .line 1057
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_2

    .line 1059
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1060
    if-eqz v1, :cond_0

    .line 1061
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1062
    iput-wide v2, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->a:J

    .line 1064
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->a:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 1065
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->a:J

    .line 1067
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->a:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    .line 1068
    const-string/jumbo v0, "[ShareSchedule]uid is invalid"

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->finish()V

    .line 2080
    :cond_2
    :goto_0
    new-instance v0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->b:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    .line 2081
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2082
    const-string/jumbo v1, "user_id"

    iget-wide v2, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2083
    const-string/jumbo v1, "calendar_mode"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2084
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->b:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2086
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2087
    sget v1, Laow$d;->calendar_detail:I

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->b:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2088
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2092
    invoke-static {}, Larl;->a()Larl;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->a:J

    new-instance v1, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity$1;-><init>(Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;)V

    invoke-virtual {v0, v2, v3, v1}, Larl;->a(JLapv;)V

    .line 42
    return-void

    .line 1073
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 1074
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    sget v1, Laow$f;->dt_calendar_detail_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 52
    invoke-static {}, Larl;->a()Larl;

    move-result-object v0

    const/4 v1, 0x0

    .line 2652
    iput-object v1, v0, Larl;->b:Lasl;

    .line 53
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 54
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;->b:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->setUserVisibleHint(Z)V

    .line 48
    return-void
.end method
