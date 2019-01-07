.class public Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "DingTalkIdSettingActivity.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->d:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 122
    const-string/jumbo v1, "click save"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Lcpg;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string/jumbo v1, "invalid dingtalkid"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    sget v1, Lezg$l;->dingtalk_account_check:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 139
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "dialogBuilder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->dingtalk_account_confirm:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 130
    sget v1, Lezg$l;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 131
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$3;-><init>(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    .prologue
    .line 34
    .line 1143
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    .line 1144
    if-nez v0, :cond_0

    .line 1145
    const-string/jumbo v0, "network is not available"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1146
    sget v0, Lezg$l;->server_down:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1147
    :goto_0
    return-void

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->showLoadingDialog()V

    .line 1150
    new-instance v1, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$4;-><init>(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)V

    .line 1183
    const-class v0, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 1184
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alibaba/android/user/idl/services/UserIService;->applyNewDingtalkId(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1075
    sget v0, Lezg$j;->activity_dingtalk_account:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->setContentView(I)V

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dingtalk_account_label:I

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lezg$l;->app_name:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1077
    sget v0, Lezg$h;->et_dingtalk_account:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->a:Landroid/widget/EditText;

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->a:Landroid/widget/EditText;

    .line 1087
    new-instance v1, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$2;-><init>(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)V

    .line 1078
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1079
    sget v0, Lezg$h;->tv_done_result:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->b:Landroid/widget/TextView;

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->b:Landroid/widget/TextView;

    sget v1, Lezg$l;->dingtalk_account_suffix:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->actbar_button:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "actionView":Landroid/view/View;
    sget v2, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->d:Landroid/widget/Button;

    .line 51
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->d:Landroid/widget/Button;

    sget v3, Lezg$l;->save:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->d:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->d:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$1;-><init>(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const/4 v2, 0x1

    sget v3, Lezg$l;->save:I

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 60
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 61
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 63
    .end local v0    # "actionView":Landroid/view/View;
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 68
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->b()V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
