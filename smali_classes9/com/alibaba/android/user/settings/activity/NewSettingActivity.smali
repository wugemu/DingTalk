.class public Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "NewSettingActivity.java"


# instance fields
.field private a:Lfws;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ToggleButton;

.field private n:Landroid/content/BroadcastReceiver;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;Lfws;)Lfws;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
    .param p1, "x1"    # Lfws;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->a:Lfws;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v2, 0x0

    .line 86
    .line 3272
    if-eqz p1, :cond_0

    .line 3273
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->d:Landroid/widget/TextView;

    sget v1, Lezg$g;->message_remind:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void

    .line 3275
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 241
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->a:Lfws;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->a:Lfws;

    iget-boolean v1, v1, Lfws;->a:Z

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$g;->icon_device_safe:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    .local v0, "leftIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 244
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->b:Landroid/widget/TextView;

    sget v2, Lezg$l;->personal_device_safe_on:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 252
    :goto_0
    return-void

    .line 247
    .end local v0    # "leftIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$g;->icon_device_unsafe:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 248
    .restart local v0    # "leftIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 249
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->b:Landroid/widget/TextView;

    sget v2, Lezg$l;->personal_device_safe_off:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v2, 0x0

    .line 86
    .line 3280
    if-eqz p1, :cond_0

    .line 3281
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->f:Landroid/widget/TextView;

    sget v1, Lezg$g;->message_remind:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void

    .line 3283
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)Lfws;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->a:Lfws;

    return-object v0
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 301
    .local v1, "versionName":Ljava/lang/String;
    const-string/jumbo v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v1    # "versionName":Ljava/lang/String;
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "NewSettingActivity"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v2, 0x0

    .line 86
    .line 3288
    if-eqz p1, :cond_0

    .line 3289
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->g:Landroid/widget/TextView;

    sget v1, Lezg$g;->message_remind:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void

    .line 3291
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 363
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->confirm_log_out:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->login_ok:I

    new-instance v3, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$11;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$11;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    .line 365
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    const/4 v3, 0x0

    .line 373
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 374
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 86
    .line 3456
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3457
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 86
    .line 4447
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 4448
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 4449
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 4450
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4452
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 4335
    const-string/jumbo v0, "NewSettingActivity"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$9;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    new-instance v2, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$10;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;)V

    .line 86
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 86
    .line 4462
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->n:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 4463
    new-instance v0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->n:Landroid/content/BroadcastReceiver;

    .line 4473
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_user_password_changed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4474
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->d()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->setting_device_rl:I

    if-ne v0, v1, :cond_1

    .line 312
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/account_safe_settings.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->setting_msg_notice:I

    if-ne v0, v1, :cond_2

    .line 314
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/settings/new_msg.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->setting_silence_mode:I

    if-ne v0, v1, :cond_3

    .line 316
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/silence_mode_setting.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->setting_common:I

    if-ne v0, v1, :cond_4

    .line 318
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/common_settings.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->setting_about:I

    if-ne v0, v1, :cond_5

    .line 320
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/about.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->setting_sign_out:I

    if-ne v0, v1, :cond_a

    .line 2377
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->o:Z

    if-nez v0, :cond_0

    .line 2382
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2383
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->d()V

    goto/16 :goto_0

    .line 2385
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 2386
    if-eqz v2, :cond_7

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2387
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->d()V

    goto/16 :goto_0

    .line 2390
    :cond_8
    iput-boolean v6, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->o:Z

    .line 2392
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2398
    :goto_1
    sget v0, Lezg$l;->dt_processing_please_wait:I

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v0, v4, v5}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->showLoadingDialogDelay(IJ)V

    .line 2399
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v3

    .line 2400
    sget-object v0, Lcom/alibaba/android/user/devset/DevSettingActivity;->x:Ljava/lang/String;

    .line 2401
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const-string/jumbo v4, "-"

    aput-object v4, v0, v6

    const/4 v4, 0x2

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    aput-object v5, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;

    invoke-direct {v5, p0, p0, v1, v2}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    const-class v1, Lcma;

    invoke-interface {v0, v5, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v3, v4, v0}, Lezm;->a(Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 2395
    :cond_9
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    .line 323
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->setting_private:I

    if-ne v0, v1, :cond_b

    .line 324
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 325
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->setting_lab:I

    if-ne v0, v1, :cond_c

    .line 326
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 327
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/setting_lab.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->setting_main_org:I

    if-ne v0, v1, :cond_0

    .line 329
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://tms.dingtalk.com/markets/dingtalk/select-main-org?showmenu=false&dd_share=false"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget v0, Lezg$j;->activity_new_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->setContentView(I)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->title_activity_settings:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1118
    sget v0, Lezg$h;->user_safe_switch_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->b:Landroid/widget/TextView;

    .line 1119
    sget v0, Lezg$h;->setting_about:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->c:Landroid/widget/TextView;

    .line 1120
    sget v0, Lezg$h;->setting_about:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->d:Landroid/widget/TextView;

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->c:Landroid/widget/TextView;

    sget v1, Lezg$l;->setting_about_parm:I

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lezg$l;->app_name:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    sget v0, Lezg$h;->setting_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->f:Landroid/widget/TextView;

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    sget v0, Lezg$h;->setting_msg_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->g:Landroid/widget/TextView;

    .line 1125
    sget v0, Lezg$h;->setting_lab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->h:Landroid/widget/TextView;

    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$g;->ic_setting_lab:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1127
    sget v0, Lezg$h;->setting_lab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->i:Landroid/widget/TextView;

    .line 1128
    sget v0, Lezg$h;->setting_main_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->j:Landroid/view/View;

    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->j:Landroid/view/View;

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->k:Landroid/widget/TextView;

    .line 1130
    sget v0, Lezg$h;->setting_efficient:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->l:Landroid/widget/TextView;

    .line 1131
    sget v0, Lezg$h;->setting_efficient:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->m:Landroid/widget/ToggleButton;

    .line 1132
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->c()V

    .line 1133
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->e:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 1140
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->D:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 1147
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->F:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 1154
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->E:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$6;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 1165
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_2

    .line 1167
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 1168
    if-eqz v0, :cond_1

    .line 1169
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->k:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    const-string/jumbo v1, "NewSettingActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "CurrentUserMainOrg is : "

    aput-object v3, v2, v4

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1195
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->y()Z

    move-result v1

    .line 1196
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    sget v0, Lezg$l;->dt_efficient_switch_tips_on:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->m:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->m:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$7;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    return-void

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    sget v0, Lezg$h;->setting_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    const-string/jumbo v0, "NewSettingActivity"

    const-string/jumbo v1, "CurrentUserMainOrg is null!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1181
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    sget v1, Lezg$h;->setting_common:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lezg$h;->uidic_forms_item_bottom_divider:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    if-nez v0, :cond_3

    .line 1187
    const-string/jumbo v0, "NewSettingActivity"

    const-string/jumbo v1, "UserProfileExtensionObject is null!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1188
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-nez v1, :cond_4

    .line 1189
    const-string/jumbo v0, "NewSettingActivity"

    const-string/jumbo v1, "UserProfileExtensionObject.orgEmployees is null!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1190
    :cond_4
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v5, :cond_0

    .line 1191
    const-string/jumbo v0, "NewSettingActivity"

    const-string/jumbo v1, "UserProfileExtensionObject.orgEmployees.size <= 1!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1196
    :cond_5
    sget v0, Lezg$l;->dt_efficient_switch_tips_off:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 262
    .line 1479
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1480
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->n:Landroid/content/BroadcastReceiver;

    .line 263
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 268
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 269
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 256
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 1214
    invoke-static {}, Lfwr;->a()Lfwr;

    move-result-object v0

    invoke-virtual {v0}, Lfwr;->b()Lfws;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->a:Lfws;

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->a:Lfws;

    if-nez v0, :cond_0

    .line 1217
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$8;-><init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v0}, Lfwu;->a(Lcma;)V

    .line 1236
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->b()V

    .line 258
    return-void
.end method
