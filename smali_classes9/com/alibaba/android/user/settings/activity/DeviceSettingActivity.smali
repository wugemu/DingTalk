.class public Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DeviceSettingActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/ToggleButton;

.field private c:Lcom/alibaba/android/user/settings/adapter/DeviceAdapter;

.field private d:Lfws;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)Lfws;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->d:Lfws;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Lfws;)Lfws;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;
    .param p1, "x1"    # Lfws;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->d:Lfws;

    return-object p1
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->d:Lfws;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->b:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->b:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->d:Lfws;

    iget-boolean v1, v1, Lfws;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->c:Lcom/alibaba/android/user/settings/adapter/DeviceAdapter;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->d:Lfws;

    iget-object v1, v1, Lfws;->b:Ljava/util/List;

    .line 2027
    iput-object v1, v0, Lcom/alibaba/android/user/settings/adapter/DeviceAdapter;->a:Ljava/util/List;

    .line 2028
    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/adapter/DeviceAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Lfwt;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;
    .param p1, "x1"    # Lfwt;

    .prologue
    const/16 v3, 0x1e

    .line 35
    .line 3190
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 3191
    sget v0, Lezg$l;->modify_device_name:I

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 3192
    iget-object v0, p1, Lfwt;->b:Ljava/lang/String;

    .line 3193
    iget-object v2, p1, Lfwt;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lfwt;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 3194
    iget-object v0, p1, Lfwt;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3196
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3197
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 3198
    new-instance v2, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$9;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3218
    if-eqz v0, :cond_1

    .line 3219
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3221
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3222
    sget v2, Lezg$l;->modify_device_name:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3223
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3224
    sget v2, Lezg$l;->cancel:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3225
    sget v2, Lezg$l;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;

    invoke-direct {v3, p0, v1, p1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Landroid/widget/EditText;Lfwt;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3268
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "status"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->b:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 157
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Z)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3058
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lfwu$2;

    invoke-direct {v3, v1, v0, p1}, Lfwu$2;-><init>(Lfwu;Lcma;Z)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Lfwt;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;
    .param p1, "x1"    # Lfwt;

    .prologue
    .line 35
    .line 3272
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3273
    sget v1, Lezg$l;->device_delete_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    const/4 v3, 0x0

    .line 3274
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Lfwt;)V

    .line 3275
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3308
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 35
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->b:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)Lcom/alibaba/android/user/settings/adapter/DeviceAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->c:Lcom/alibaba/android/user/settings/adapter/DeviceAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->toggle_device_security:I

    if-ne v0, v1, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2127
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2128
    sget v1, Lezg$l;->device_alert_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$7;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V

    .line 2129
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$6;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V

    .line 2135
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V

    .line 2141
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2149
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 2150
    :cond_0
    :goto_0
    return-void

    .line 2151
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lezg$j;->activity_device_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->setContentView(I)V

    .line 1055
    sget v0, Lezg$h;->device_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a:Landroid/widget/ListView;

    .line 1056
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->activity_device_setting_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1057
    sget v0, Lezg$h;->toggle_device_security:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->b:Landroid/widget/ToggleButton;

    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1060
    new-instance v0, Lcom/alibaba/android/user/settings/adapter/DeviceAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/settings/adapter/DeviceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->c:Lcom/alibaba/android/user/settings/adapter/DeviceAdapter;

    .line 1061
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->c:Lcom/alibaba/android/user/settings/adapter/DeviceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->personal_device_tip:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1080
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->showLoadingDialog()V

    .line 1081
    invoke-static {}, Lfwr;->a()Lfwr;

    move-result-object v0

    invoke-virtual {v0}, Lfwr;->b()Lfws;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->d:Lfws;

    .line 1082
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a()V

    .line 1083
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->dismissLoadingDialog()V

    .line 1084
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v0}, Lfwu;->a(Lcma;)V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 319
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 313
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 314
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 323
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 324
    return-void
.end method
