.class public Lcom/alibaba/android/user/login/NoPwdLoginActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "NoPwdLoginActivity.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    const/4 v3, 0x0

    .line 65
    .line 2246
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 2248
    const-string/jumbo v1, "login_no_pwd"

    const-string/jumbo v2, "login_with_tempToken"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    if-eqz p1, :cond_0

    .line 2253
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 3215
    iput-wide v2, v1, Lccr;->a:J

    .line 2254
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v1, v2, v3}, Lchy;->updateQuotaCenter(J)V

    .line 2255
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 2258
    const-string/jumbo v1, "login_no_pwd"

    const-string/jumbo v2, "init_searcher"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    .line 2261
    const-string/jumbo v1, "login_no_pwd"

    const-string/jumbo v2, "init_searcher"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    invoke-static {}, Lfxn;->a()Lfxn;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfxn;->a(Landroid/content/Context;)V

    .line 2266
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->loginSuccess()V

    .line 2268
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pref_user_id"

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v1, v2, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 3326
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v2

    const-string/jumbo v1, "EVENTBUTLER"

    .line 3327
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/login/NoPwdLoginActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity$7;-><init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V

    const-class v4, Lcma;

    .line 3328
    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 3326
    invoke-virtual {v2, v1}, Lfwu;->a(Lcma;)V

    .line 2272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/login/NoPwdLoginActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity$5;-><init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2282
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/login/NoPwdLoginActivity$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity$6;-><init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcom/alibaba/doraemon/statistics/Statistics;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2322
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->q()V

    .line 65
    return-void

    .line 2319
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0, v3}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(ZLjava/lang/String;Z)V

    .line 2320
    sget-object v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "NoPwdLogin suc. not register"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p4}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(ZLjava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 396
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 397
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/login/NoPwdLoginActivity$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity$9;-><init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 410
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 411
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "reason":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 412
    return-void
.end method

.method private a(ZLjava/lang/String;Z)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "orgName"    # Ljava/lang/String;
    .param p3, "isUserDataComplete"    # Z

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->c()V

    .line 357
    invoke-static {p0, p1, p2, p3}, Lfqz;->a(Landroid/app/Activity;ZLjava/lang/String;Z)V

    .line 358
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->f:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 393
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    const/4 v4, 0x0

    .line 65
    .line 1149
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->f()V

    .line 2188
    :goto_0
    return-void

    .line 1153
    :cond_0
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1155
    const-string/jumbo v1, "login_no_pwd"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;)V

    .line 1157
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "login_no_pwd"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v1, :cond_1

    .line 1382
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 1383
    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 1384
    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    sget v2, Lezg$l;->loading:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1386
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 1160
    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->f:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 1161
    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->f:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1164
    :cond_2
    const-string/jumbo v1, "login_temp_token_click"

    invoke-static {p0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1165
    sget-object v1, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "loginWithPwd begin"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1168
    const-string/jumbo v1, "login_no_pwd"

    const-string/jumbo v2, "login_with_tempToken"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-wide v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1171
    invoke-direct {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->c()V

    .line 1172
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2181
    :cond_3
    new-instance v0, Lfwt;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lfxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lfwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    invoke-virtual {v0}, Lfwt;->a()Lcfo;

    move-result-object v0

    .line 2184
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v1

    .line 2185
    if-nez v1, :cond_4

    .line 2187
    invoke-direct {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->c()V

    goto/16 :goto_0

    .line 2191
    :cond_4
    const-string/jumbo v2, "TempTokenLogin"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;-><init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Lezm;Lcfo;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->k:J

    return-wide v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->c()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 65
    .line 3362
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->clearTempToken()V

    .line 3363
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->setAppFront()V

    .line 3364
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/android/user/login/NoPwdLoginActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity$8;-><init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V

    .line 3365
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 3372
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->finish()V

    .line 65
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget v0, Lezg$j;->activity_no_pwd_login:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->hideToolbar()V

    .line 86
    sget v0, Lezg$h;->avatar_iv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 87
    sget v0, Lezg$h;->username_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->c:Landroid/widget/TextView;

    .line 88
    sget v0, Lezg$h;->no_pwd_login_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->d:Landroid/widget/TextView;

    .line 89
    sget v0, Lezg$h;->tv_login_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->e:Landroid/widget/TextView;

    .line 90
    sget v0, Lezg$h;->login_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->f:Landroid/widget/Button;

    .line 92
    new-instance v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity$1;-><init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V

    invoke-static {v0}, Lfrb;->a(Lfrb$a;)V

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tempToken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->h:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "kickMsg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->i:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/login/NoPwdLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity$2;-><init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/login/NoPwdLoginActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity$3;-><init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->d:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_no_pwd_login_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 419
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 420
    return-void
.end method
