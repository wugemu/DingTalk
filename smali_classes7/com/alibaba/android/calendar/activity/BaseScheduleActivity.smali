.class public Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "BaseScheduleActivity.java"


# instance fields
.field a:Landroid/widget/EditText;

.field b:Landroid/widget/ToggleButton;

.field c:Landroid/widget/EditText;

.field d:Lapq$c;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ScrollView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

.field private j:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

.field private k:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private q:Lapq$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 275
    new-instance v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->d:Lapq$c;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lapq$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->q:Lapq$b;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;Lapq$b;)Lapq$b;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;
    .param p1, "x1"    # Lapq$b;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->q:Lapq$b;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->j:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object p1
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 134
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laow$f;->ding_alert_need_give_up:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 137
    sget v1, Laow$f;->ding_alert_giveup:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$3;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 144
    sget v1, Laow$f;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 149
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->d:Lapq$c;

    invoke-interface {v1}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lavh;->a(Landroid/app/Activity;Z)V

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->g:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->k:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    return-object p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->c:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 257
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->b()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->j:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->k:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a()V

    .line 131
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v0, Laow$e;->calendar_activity_schedule_event:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->setContentView(I)V

    .line 1093
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laow$e;->actbar_textview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1094
    sget v0, Laow$d;->tv_ok:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->f:Landroid/widget/TextView;

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->f:Landroid/widget/TextView;

    sget v2, Laow$f;->dt_modify_event_op_modify:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$1;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1078
    iput-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->e:Landroid/view/View;

    .line 1080
    sget v0, Laow$d;->scroll_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->g:Landroid/widget/ScrollView;

    .line 1081
    sget v0, Laow$d;->ll_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    .line 1082
    sget v0, Laow$d;->et_subject:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a:Landroid/widget/EditText;

    .line 1083
    sget v0, Laow$d;->toggle_all_day:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->b:Landroid/widget/ToggleButton;

    .line 1084
    sget v0, Laow$d;->view_time_period:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    .line 1085
    sget v0, Laow$d;->rl_remind:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->l:Landroid/widget/RelativeLayout;

    .line 1086
    sget v0, Laow$d;->tv_remind:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->m:Landroid/widget/TextView;

    .line 1087
    sget v0, Laow$d;->rl_repeat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->n:Landroid/widget/RelativeLayout;

    .line 1088
    sget v0, Laow$d;->tv_send_repeat_frequency:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->o:Landroid/widget/TextView;

    .line 1089
    sget v0, Laow$d;->et_comment:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->c:Landroid/widget/EditText;

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a(Landroid/content/Intent;)V

    .line 1157
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    new-instance v1, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$4;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;->setTouchCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;)V

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$5;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->b:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$6;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    new-instance v1, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$7;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->setStartOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    new-instance v1, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$8;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->setEndOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$9;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1243
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->n:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$10;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->q:Lapq$b;

    invoke-interface {v0}, Lapq$b;->j()V

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 109
    sget v3, Laow$f;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 110
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->e:Landroid/view/View;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 111
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 112
    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    .local v0, "canSend":Z
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 114
    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .end local v0    # "canSend":Z
    :cond_0
    move v0, v2

    .line 112
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->q:Lapq$b;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->q:Lapq$b;

    invoke-interface {v0}, Lapq$b;->i()V

    .line 272
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 273
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a()V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->b()V

    .line 262
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 263
    return-void
.end method
