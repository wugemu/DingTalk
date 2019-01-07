.class public Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SignUpWithPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Lfrg;

.field private F:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;

.field private G:Landroid/view/View;

.field private H:Landroid/view/View;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:J

.field private O:Z

.field private P:Lfrn;

.field private Q:Lfro;

.field private R:Z

.field a:Landroid/widget/TextView;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/content/BroadcastReceiver;

.field f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/Button;

.field private i:Landroid/view/View;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->A:Z

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->B:Z

    .line 140
    new-instance v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->F:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->N:J

    .line 1550
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    .line 16328
    invoke-direct {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d()V

    .line 16329
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->setAppFront()V

    .line 16330
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$21;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$21;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 16337
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->finish()V

    .line 104
    return-void
.end method

.method static synthetic B(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->A:Z

    return v0
.end method

.method static synthetic D(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Landroid/text/Editable;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Landroid/text/Editable;

    .prologue
    .line 104
    .line 8773
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8774
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 8776
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    .line 8441
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8442
    sget v1, Lezg$c;->dt_user_login_more_items:I

    new-instance v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$26;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8469
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 104
    .line 14132
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 14133
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->H:Landroid/view/View;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 14136
    :cond_0
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 14138
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "login_with_Pwd"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 14142
    if-eqz p1, :cond_1

    .line 14143
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 15215
    iput-wide v2, v1, Lccr;->a:J

    .line 14144
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v1, v2, v3}, Lchy;->updateQuotaCenter(J)V

    .line 14145
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 14148
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "init_searcher"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 14150
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    .line 14151
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "init_searcher"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 14154
    invoke-static {}, Lfxn;->a()Lfxn;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfxn;->a(Landroid/content/Context;)V

    .line 14155
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->loginSuccess()V

    .line 14157
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pref_user_id"

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v1, v2, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 15342
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v2

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$23;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$23;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    const-class v4, Lcma;

    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, v1}, Lfwu;->a(Lcma;)V

    .line 14161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$16;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$16;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 14171
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$17;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$17;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcom/alibaba/doraemon/statistics/Statistics;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 14211
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->q()V

    .line 14212
    invoke-static {}, Lcod;->a()Lcod;

    move-result-object v0

    sget-object v1, Lcod;->c:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcod;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 14213
    invoke-static {p0}, Lfrb;->a(Landroid/content/Context;)Z

    move-result v0

    .line 14214
    const-string/jumbo v1, "login_device_mainpage"

    const-string/jumbo v2, "is_simulator=%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {p0, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->N:J

    .line 104
    return-void

    .line 14208
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0, v6}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(ZLjava/lang/String;Z)V

    .line 14209
    const-string/jumbo v0, "SignUpWithPwdActivity"

    const-string/jumbo v1, "loginWithPwd suc. not register"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 104
    .line 11410
    sget v0, Lezg$l;->dt_user_alipay_login_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 11411
    sget v0, Lezg$l;->dt_login_password_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 11412
    sget v0, Lezg$l;->dt_login_facebox_switch_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 11413
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/CharSequence;

    .line 11414
    const/4 v0, 0x0

    aput-object v4, v3, v0

    .line 11415
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->B:Z

    if-eqz v0, :cond_0

    .line 11416
    aput-object v5, v3, v1

    .line 11421
    :goto_0
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11422
    new-instance v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11437
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 104
    return-void

    .line 11418
    :cond_0
    aput-object v6, v3, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 104
    .line 16106
    const-string/jumbo v0, "11084"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16108
    const/4 v0, 0x0

    invoke-static {v0}, Lfls;->a(Z)V

    .line 16109
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16110
    sget v0, Lezg$l;->dt_face_box_device_not_supported:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 16111
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16112
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$15;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$15;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 16117
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 16122
    .end local p2    # "x2":Ljava/lang/String;
    :goto_0
    return-void

    .line 16119
    .restart local p2    # "x2":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 16125
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lezg$l;->dt_login_facebox_fail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 16126
    .end local p2    # "x2":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16127
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 104
    .line 17276
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/login_verify.html"

    new-instance v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p4}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(ZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "fullPhone"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 633
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 639
    invoke-direct {p0, v2, v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(ZZ)V

    .line 640
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->s:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 643
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 944
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 946
    .local v8, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v0, "login"

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;)V

    .line 948
    const-string/jumbo v0, "DD"

    const-string/jumbo v1, "login"

    const-string/jumbo v5, "totalTime"

    invoke-interface {v8, v0, v1, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-direct {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c()V

    .line 951
    const-string/jumbo v0, "loginpage_login_click"

    invoke-static {p0, v0}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 952
    const-string/jumbo v0, "SignUpWithPwdActivity"

    const-string/jumbo v1, "loginWithPwd begin"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 954
    new-instance v7, Lfwt;

    const/4 v0, 0x0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lfxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v0, v1, v5, v6}, Lfwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .local v7, "deviceObject":Lfwt;
    invoke-virtual {v7}, Lfwt;->a()Lcfo;

    move-result-object v4

    .line 958
    .local v4, "deviceModel":Lcfo;
    const-string/jumbo v0, "login"

    const-string/jumbo v1, "login_with_Pwd"

    invoke-interface {v8, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v3

    .line 961
    .local v3, "authorizationAPI":Lezm;
    if-nez v3, :cond_0

    .line 963
    invoke-direct {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d()V

    .line 1072
    :goto_0
    return-void

    .line 967
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 968
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v0, "SignUpWithPwdLogin"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v9

    new-instance v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Landroid/content/Context;Lezm;Lcfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 8
    .param p1, "ignore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 539
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "areaCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "phone":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    const-string/jumbo v4, "-"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "fullPhone":Ljava/lang/String;
    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j:Ljava/lang/String;

    .line 543
    iput-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->k:Ljava/lang/String;

    .line 545
    iget-boolean v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->A:Z

    if-eqz v3, :cond_2

    .line 547
    invoke-static {v1}, Lfls;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 548
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    invoke-direct {p0, v6, v5}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(ZZ)V

    .line 550
    invoke-direct {p0, v5}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Z)V

    .line 596
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-boolean v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->B:Z

    if-eqz v3, :cond_1

    .line 555
    invoke-direct {p0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Ljava/lang/String;)V

    .line 563
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    invoke-direct {p0, v5, v5}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(ZZ)V

    .line 566
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->t:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$5;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$5;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 557
    :cond_1
    invoke-direct {p0, v5}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Z)V

    .line 559
    invoke-direct {p0, v5}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c(Z)V

    goto :goto_1

    .line 577
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    invoke-static {v1}, Lfls;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 579
    if-eqz p1, :cond_3

    .line 580
    invoke-direct {p0, v6}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Z)V

    goto :goto_0

    .line 583
    :cond_3
    invoke-direct {p0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Ljava/lang/String;)V

    .line 585
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->q:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$6;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$6;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 594
    :cond_4
    invoke-direct {p0, v5}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Z)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;Z)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "orgName"    # Ljava/lang/String;
    .param p3, "isUserDataComplete"    # Z

    .prologue
    .line 1322
    invoke-direct {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d()V

    .line 1323
    invoke-static {p0, p1, p2, p3}, Lfqz;->a(Landroid/app/Activity;ZLjava/lang/String;Z)V

    .line 1324
    return-void
.end method

.method private a(ZZ)V
    .locals 3
    .param p1, "alipayLoginEnable"    # Z
    .param p2, "icbuLoginEnable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1509
    if-eqz p1, :cond_1

    .line 1510
    if-eqz p2, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 1512
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->y:Landroid/view/View;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 1513
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->y:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1514
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->z:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_login_alilogin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1530
    :goto_0
    return-void

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->x:Landroid/view/View;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 1517
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->y:Landroid/view/View;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 1520
    :cond_1
    if-eqz p2, :cond_2

    .line 1521
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 1522
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->y:Landroid/view/View;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 1523
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->y:Landroid/view/View;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1524
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->z:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_login_icbu:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1526
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 1527
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->y:Landroid/view/View;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->H:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->I:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 282
    const-string/jumbo v1, "key_signup_phone_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->J:Ljava/lang/String;

    .line 284
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .param p1, "tempCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 1224
    invoke-direct {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c()V

    .line 1225
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v0

    .line 1226
    .local v0, "api":Lezm;
    if-nez v0, :cond_0

    .line 1273
    :goto_0
    return-void

    .line 1230
    :cond_0
    sget-object v1, Lcom/alibaba/android/user/devset/DevSettingActivity;->x:Ljava/lang/String;

    .line 1232
    const-string/jumbo v1, "SignUpWithPwdActivity"

    const-string/jumbo v2, "getVerifyCode begin"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V

    const-class v4, Lcma;

    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v0, v2, v5, v5, v1}, Lezm;->a(Ljava/lang/String;IILcma;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "tempCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1075
    const-string/jumbo v2, "facerecognition_signin_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 1076
    new-instance v1, Lfrk;

    invoke-direct {v1, p0}, Lfrk;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 1077
    .local v1, "faceLoginView":Lfri$b;
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->showLoadingDialog()V

    .line 1078
    new-instance v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$14;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    .local v0, "apiEventListener":Lcma;
    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 1102
    .restart local v0    # "apiEventListener":Lcma;
    invoke-interface {v1, p1, p2, v0}, Lfri$b;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1103
    return-void
.end method

.method private b(Z)V
    .locals 3
    .param p1, "canShowFaceboxLoginEntry"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 599
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->s:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 607
    if-eqz p1, :cond_0

    .line 608
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$7;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    invoke-direct {p0, v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c(Z)V

    .line 630
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->O:Z

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->s:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 624
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c(Z)V

    goto :goto_0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->s:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 627
    invoke-direct {p0, v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->K:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 1396
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 1397
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 1398
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 1401
    return-void
.end method

.method private c(Z)V
    .locals 2
    .param p1, "isLeft"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, -0x2

    .line 646
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 648
    .local v0, "params1":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 649
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 654
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    return-void

    .line 651
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->A:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->L:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1407
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->B:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->M:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->G:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    .line 12271
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_0

    .line 12275
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->J:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p1    # "x1":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 12276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Z)V

    .line 104
    :cond_0
    return-void

    .line 12275
    .restart local p1    # "x1":Ljava/lang/String;
    :cond_1
    iget-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->J:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    .line 12375
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12376
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$24;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$24;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 12382
    .end local p1    # "x1":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 12383
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 104
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 104
    .line 8909
    const-string/jumbo v0, "loginpage_codelogin_click"

    invoke-static {p0, v0}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 8910
    const-string/jumbo v0, "contact_login_find_password_link_click"

    const-string/jumbo v1, "is_new=%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 9315
    invoke-static {v8, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8911
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8912
    const-string/jumbo v0, "bh_register_forget_pwd"

    const-string/jumbo v2, "phone=%s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string/jumbo v5, "-"

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 10315
    invoke-static {v8, v0, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8913
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/login.html"

    new-instance v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$12;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$12;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 104
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    .line 10510
    new-instance v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-direct {v0}, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;-><init>()V

    .line 10511
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->phone:Ljava/lang/String;

    .line 10512
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->areaCode:Ljava/lang/String;

    .line 10513
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->isDeviceSecurity:Z

    .line 10514
    const-string/jumbo v1, "OLDUSER"

    iput-object v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->oldUserFlag:Ljava/lang/String;

    .line 10515
    const-string/jumbo v1, "uicLogin"

    iput-object v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->target:Ljava/lang/String;

    .line 10516
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->P:Lfrn;

    .line 11211
    invoke-static {}, Lfxm;->a()Lfxm;

    invoke-static {}, Lfxm;->b()Lcom/ali/user/open/core/config/Environment;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/user/open/core/AliMemberSDK;->setEnvironment(Lcom/ali/user/open/core/config/Environment;)V

    .line 11212
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/ali/user/open/core/config/ConfigManager;->setAppKeyIndex(II)V

    .line 11214
    iget-object v2, v1, Lfrn;->a:Landroid/app/Activity;

    const-string/jumbo v3, "dingding"

    new-instance v4, Lfrn$3;

    invoke-direct {v4, v1, v0}, Lfrn$3;-><init>(Lfrn;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    invoke-static {v2, v3, v4}, Lcom/ali/user/open/core/AliMemberSDK;->init(Landroid/content/Context;Ljava/lang/String;Lcom/ali/user/open/core/callback/InitResultCallback;)V

    .line 104
    return-void
.end method

.method static synthetic p(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Lfrg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->E:Lfrg;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->N:J

    return-wide v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d()V

    return-void
.end method

.method static synthetic w(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    .line 13220
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method static synthetic x(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->F:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 104
    .line 13293
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13294
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13295
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->login_wrong_much_times:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->login_ok:I

    new-instance v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$20;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$20;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    .line 13296
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    const/4 v2, 0x0

    .line 13316
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 13317
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1589
    const-string/jumbo v0, "Ding_User_Login"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1584
    const-string/jumbo v0, "a2o5v.11792263.0.0"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 832
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v6, Lezg$h;->btn_next:I

    if-ne v3, v6, :cond_9

    .line 833
    const-string/jumbo v3, "login_click"

    const-string/jumbo v6, "a2o5v.11792263.1.login"

    invoke-static {p1, v3, v10, v6}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 835
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 836
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f()V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, "phone":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->F:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;

    .line 6560
    if-nez v1, :cond_5

    iget-object v6, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;->a:Ljava/lang/String;

    if-nez v6, :cond_5

    move v3, v4

    .line 842
    :goto_1
    if-nez v3, :cond_2

    .line 843
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->F:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;

    .line 7555
    iput-object v1, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;->a:Ljava/lang/String;

    .line 7556
    iput v5, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;->b:I

    .line 847
    :cond_2
    const-string/jumbo v3, " "

    const-string/jumbo v6, ""

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "-"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 848
    .local v2, "rawNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "areaCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x15

    if-gt v3, v6, :cond_4

    const-string/jumbo v3, "+86"

    .line 851
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "86"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0xb

    if-eq v3, v6, :cond_8

    .line 7874
    :cond_4
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7875
    sget v6, Lezg$l;->login_invalid_phone_number_title:I

    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7876
    sget v6, Lezg$l;->login_invalid_phone_number:I

    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7877
    sget v6, Lezg$l;->sure:I

    new-instance v7, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$10;

    invoke-direct {v7, p0, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$10;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7883
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 853
    const-string/jumbo v3, "bh_register_mobile_format_error"

    const-string/jumbo v6, "phone=%s"

    new-array v7, v4, [Ljava/lang/Object;

    new-array v8, v8, [Ljava/lang/String;

    aput-object v0, v8, v5

    const-string/jumbo v9, "-"

    aput-object v9, v8, v4

    aput-object v2, v8, v11

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    .line 8315
    invoke-static {v10, v3, v6, v7}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6562
    .end local v0    # "areaCode":Ljava/lang/String;
    .end local v2    # "rawNumber":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    iget-object v6, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;->a:Ljava/lang/String;

    if-nez v6, :cond_7

    :cond_6
    move v3, v5

    .line 6563
    goto/16 :goto_1

    .line 6565
    :cond_7
    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1

    .line 855
    .restart local v0    # "areaCode":Ljava/lang/String;
    .restart local v2    # "rawNumber":Ljava/lang/String;
    :cond_8
    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j:Ljava/lang/String;

    .line 856
    iput-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->k:Ljava/lang/String;

    .line 857
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->n:Ljava/lang/String;

    .line 859
    new-array v3, v8, [Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j:Ljava/lang/String;

    aput-object v6, v3, v5

    const-string/jumbo v5, "-"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->k:Ljava/lang/String;

    aput-object v4, v3, v11

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->m:Ljava/lang/String;

    .line 861
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j:Ljava/lang/String;

    const-string/jumbo v5, "SignUpWithPwdActivity"

    invoke-static {p0, v3, v4, v5}, Lfrb;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 862
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->n:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 865
    .end local v0    # "areaCode":Ljava/lang/String;
    .end local v1    # "phone":Ljava/lang/String;
    .end local v2    # "rawNumber":Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->ll_area_code:I

    if-ne v3, v4, :cond_a

    .line 866
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v3, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/select_area.html"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 867
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->btn_facebox_next:I

    if-ne v3, v4, :cond_0

    .line 868
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    .restart local v1    # "phone":Ljava/lang/String;
    invoke-direct {p0, v1, v10}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 163
    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->requestWindowFeature(I)Z

    .line 164
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lezg$g;->login_bg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    sget v0, Lezg$j;->activity_sign_up_with_pwd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->setContentView(I)V

    .line 1781
    new-instance v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->e:Landroid/content/BroadcastReceiver;

    .line 1825
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.workapp.select.area"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1826
    const-string/jumbo v1, "internal_action_privacy_agreement"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1827
    const-string/jumbo v1, "action_user_alipay_login_entry"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1828
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2297
    sget v0, Lezg$h;->login_pwd_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->H:Landroid/view/View;

    .line 2298
    sget v0, Lezg$h;->user_avatar_login_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->o:Landroid/widget/ImageView;

    .line 2299
    sget v0, Lezg$h;->login_pwd_input_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->G:Landroid/view/View;

    .line 2300
    sget v0, Lezg$h;->et_phone_input:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 2301
    sget v0, Lezg$h;->tv_facebox_phone:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c:Landroid/widget/TextView;

    .line 2302
    sget v0, Lezg$h;->ll_pwd_login_mode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d:Landroid/view/View;

    .line 2303
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    sget v1, Lezg$e;->ui_common_white_uninput_text_color:I

    invoke-static {v1}, Lfxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2304
    sget v0, Lezg$h;->tv_area_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    .line 2305
    sget v0, Lezg$h;->ll_area_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->i:Landroid/view/View;

    .line 2307
    sget v0, Lezg$h;->tv_welcome_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->C:Landroid/widget/TextView;

    .line 2308
    sget v0, Lezg$h;->tv_welcome:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->D:Landroid/widget/TextView;

    .line 2310
    sget v0, Lezg$h;->et_pwd_login:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 2311
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    sget v1, Lezg$e;->ui_common_white_uninput_text_color:I

    invoke-static {v1}, Lfxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2312
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$22;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$22;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2323
    sget v0, Lezg$h;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->g:Landroid/widget/Button;

    .line 2324
    sget v0, Lezg$h;->btn_facebox_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->h:Landroid/widget/Button;

    .line 2325
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2326
    sget v0, Lezg$h;->login_has_problem:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->p:Landroid/widget/TextView;

    .line 2327
    sget v0, Lezg$h;->login_mode_pwd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->q:Landroid/widget/TextView;

    .line 2328
    sget v0, Lezg$h;->login_mode_switch:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->t:Landroid/widget/TextView;

    .line 2329
    sget v0, Lezg$h;->login_mode_face:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->r:Landroid/widget/TextView;

    .line 2330
    sget v0, Lezg$h;->login_mode_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->s:Landroid/widget/TextView;

    .line 2331
    sget v0, Lezg$h;->login_new_user:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->u:Landroid/widget/TextView;

    .line 2332
    sget v0, Lezg$h;->login_more:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->w:Landroid/widget/TextView;

    .line 2333
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->w:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$27;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$27;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2341
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$28;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$28;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_5

    .line 2352
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2353
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2359
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$29;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$29;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2397
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$30;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$30;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2421
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$31;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$31;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2433
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->s:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$32;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$32;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2440
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->u:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$2;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2520
    sget v0, Lezg$h;->login_alipay:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->x:Landroid/view/View;

    .line 2521
    new-instance v0, Lfrg;

    invoke-direct {v0, p0}, Lfrg;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->E:Lfrg;

    .line 2522
    new-instance v0, Lfrf;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->E:Lfrg;

    invoke-direct {v0, p0, v1}, Lfrf;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfre$b;)V

    .line 2523
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->x:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$4;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2531
    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2532
    invoke-direct {p0, v6, v6}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(ZZ)V

    .line 3473
    :cond_0
    :goto_2
    sget v0, Lezg$h;->ll_ali_account_login:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->y:Landroid/view/View;

    .line 3474
    sget v0, Lezg$h;->tv_ali_account_login:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->z:Landroid/widget/TextView;

    .line 3476
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->y:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3658
    new-instance v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-static {v0}, Lfrb;->a(Lfrb$a;)V

    .line 184
    if-eqz p1, :cond_2

    .line 186
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_1
    const-string/jumbo v0, "areaCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    const-string/jumbo v1, "areaCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$1;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    invoke-direct {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b()V

    .line 216
    invoke-static {}, Lfrb;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->O:Z

    .line 4251
    const-string/jumbo v0, "SignUpWithPwdActivity"

    const-string/jumbo v1, "new user login"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4252
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.user.newlogin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4253
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 5129
    invoke-static {}, Lcmm;->b()Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, v2

    .line 4289
    :goto_3
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5502
    :cond_3
    :goto_4
    iput-boolean v6, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->R:Z

    .line 222
    invoke-static {}, Lfvw;->a()Lfvw;

    move-result-object v0

    .line 6061
    iget-boolean v1, v0, Lfvw;->c:Z

    if-nez v1, :cond_4

    .line 6065
    const-string/jumbo v1, "start fetchSwitchData"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6066
    iget-object v1, v0, Lfvw;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6067
    new-instance v1, Lfvw$1;

    invoke-direct {v1, v0}, Lfvw$1;-><init>(Lfvw;)V

    .line 6099
    invoke-static {}, Lfaj;->a()Lfbi;

    move-result-object v0

    invoke-interface {v0, v1}, Lfbi;->b(Lcma;)V

    .line 227
    :cond_4
    new-instance v0, Lfro;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$11;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    invoke-direct {v0, p0, v1}, Lfro;-><init>(Landroid/app/Activity;Lfro$a;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->Q:Lfro;

    .line 238
    new-instance v0, Lfrn;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->Q:Lfro;

    invoke-direct {v0, p0, v1}, Lfrn;-><init>(Landroid/app/Activity;Lcom/alibaba/android/user/login/verify/VerifyContract$b;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->P:Lfrn;

    .line 239
    return-void

    :catch_0
    move-exception v0

    .line 172
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000c

    .line 173
    invoke-static {p0, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    const-string/jumbo v0, "Signup setBackground oom"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 176
    :catch_1
    move-exception v0

    const-string/jumbo v0, "Signup setBackground oom2"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2355
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2356
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 2534
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->E:Lfrg;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->x:Landroid/view/View;

    .line 3095
    if-nez v3, :cond_7

    .line 3096
    const-string/jumbo v0, "AlipayLoginView"

    const-string/jumbo v1, "null == view"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3099
    :cond_7
    new-instance v0, Lfrg$1;

    invoke-direct {v0, v1, v3}, Lfrg$1;-><init>(Lfrg;Landroid/view/View;)V

    .line 3124
    iget-object v3, v1, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_c

    .line 3125
    const-class v3, Lcma;

    iget-object v1, v1, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v3, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v1, v0

    .line 3127
    :goto_5
    invoke-static {}, Lfvw;->a()Lfvw;

    move-result-object v3

    const-string/jumbo v4, "AlipayLogin"

    .line 3182
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 3186
    iget-boolean v0, v3, Lfvw;->c:Z

    if-eqz v0, :cond_8

    .line 3187
    iget-object v0, v3, Lfvw;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3191
    :cond_8
    iget-object v0, v3, Lfvw;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3192
    if-nez v0, :cond_9

    .line 3193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3195
    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3196
    iget-object v1, v3, Lfvw;->b:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 5133
    :cond_a
    new-instance v0, Lcmm;

    invoke-direct {v0}, Lcmm;-><init>()V

    invoke-virtual {v0}, Lcmm;->a()Landroid/accounts/Account;

    move-result-object v0

    goto/16 :goto_3

    .line 4292
    :cond_b
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "+86-"

    aput-object v2, v1, v6

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4293
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    move-object v1, v0

    goto :goto_5
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1535
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->e:Landroid/content/BroadcastReceiver;

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_1

    .line 1540
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1543
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 1544
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 261
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->setIntent(Landroid/content/Intent;)V

    .line 262
    invoke-direct {p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b()V

    .line 263
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 268
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1388
    const-string/jumbo v0, "areaCode"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string/jumbo v0, "phone"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1392
    return-void
.end method
