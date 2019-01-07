.class public Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CalendarShareSettingReceiverActivity.java"

# interfaces
.implements Lapl$b;


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private b:Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;

.field private c:Lapl$a;

.field private d:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$1;-><init>(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->b:Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)Lapl$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->c:Lapl$a;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 77
    .line 4090
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 77
    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 124
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laow$f;->dt_ding_share_notice_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 126
    sget v1, Laow$f;->dt_ding_share_make_sure_send_share_message:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 127
    sget v1, Laow$f;->dt_ding_share_send_message:I

    new-instance v2, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$3;-><init>(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 133
    sget v1, Laow$f;->dt_ding_share_donot_send_message:I

    new-instance v2, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$4;-><init>(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 140
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    .local p1, "shareReceiverObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;>;"
    .local p2, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->b:Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;

    .line 3032
    iget-object v1, v0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3033
    iget-object v1, v0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3034
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3035
    iget-object v1, v0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3037
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3038
    iget-object v1, v0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3040
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 69
    .line 3090
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 69
    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 90
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Laow$e;->calendar_activity_set_share_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->setContentView(I)V

    .line 52
    sget v0, Laow$f;->dt_ding_share_setting_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1107
    sget v0, Laow$d;->lv_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1108
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVerticalScrollBarEnabled(Z)V

    .line 1109
    new-instance v0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->b:Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;

    .line 1110
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->b:Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1111
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1113
    sget v0, Laow$d;->ll_add_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$2;-><init>(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2103
    new-instance v0, Lapm;

    invoke-direct {v0, p0, p0}, Lapm;-><init>(Landroid/app/Activity;Lapl$b;)V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->c:Lapl$a;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->c:Lapl$a;

    invoke-interface {v0}, Lapl$a;->i()V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 100
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lapl$a;

    .line 5064
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->c:Lapl$a;

    .line 28
    return-void
.end method
