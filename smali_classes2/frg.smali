.class public final Lfrg;
.super Ljava/lang/Object;
.source "AlipayLoginView.java"

# interfaces
.implements Lfre$b;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private b:Lfre$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v0, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 74
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "stateCode"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;

    .prologue
    .line 440
    new-instance v0, Lfrg$9;

    invoke-direct {v0, p0, p2, p1}, Lfrg$9;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .local v0, "listener":Lcma;
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;
    check-cast v0, Lcma;

    .line 469
    .restart local v0    # "listener":Lcma;
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4, v0}, Lezm;->a(Ljava/lang/String;IILcma;)V

    .line 471
    return-void
.end method

.method static synthetic a(Lfrg;)V
    .locals 2
    .param p0, "x0"    # Lfrg;

    .prologue
    .line 66
    .line 10401
    invoke-virtual {p0}, Lfrg;->H_()V

    .line 10402
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->setAppFront()V

    .line 10403
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Z)V

    .line 10404
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lfrg;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 8
    .param p0, "x0"    # Lfrg;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    .line 8311
    invoke-virtual {p0}, Lfrg;->b()V

    .line 8312
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 8313
    if-eqz p1, :cond_0

    .line 8314
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 9215
    iput-wide v2, v1, Lccr;->a:J

    .line 8315
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v1, v2, v3}, Lchy;->updateQuotaCenter(J)V

    .line 8316
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 8319
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "init_searcher"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 8321
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    .line 8322
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "init_searcher"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 8326
    invoke-static {}, Lfxn;->a()Lfxn;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfxn;->a(Landroid/content/Context;)V

    .line 8327
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->loginSuccess()V

    .line 8329
    iget-object v1, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const-string/jumbo v2, "pref_user_id"

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v1, v2, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 9408
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v2

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lfrg$8;

    invoke-direct {v3, p0}, Lfrg$8;-><init>(Lfrg;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, v1}, Lfwu;->a(Lcma;)V

    .line 8333
    const-string/jumbo v1, "AlipayLoginView"

    invoke-static {v1, v7}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfrg$6;

    invoke-direct {v2, p0, p1}, Lfrg$6;-><init>(Lfrg;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 8344
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfrg$7;

    invoke-direct {v2, p0, p1, v0}, Lfrg$7;-><init>(Lfrg;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcom/alibaba/doraemon/statistics/Statistics;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 8389
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->q()V

    .line 8390
    invoke-static {}, Lcod;->a()Lcod;

    move-result-object v0

    sget-object v1, Lcod;->c:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcod;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8391
    iget-object v0, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lfrb;->a(Landroid/content/Context;)Z

    move-result v0

    .line 8392
    iget-object v1, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const-string/jumbo v2, "login_device_mainpage"

    const-string/jumbo v3, "is_simulator=%s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1, v2, v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void

    .line 8385
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0, v6}, Lfrg;->a(ZLjava/lang/String;Z)V

    .line 8386
    const-string/jumbo v0, "AlipayLoginView"

    const-string/jumbo v1, "loginWithPwd suc. not register"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lfrg;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lfrg;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p4}, Lfrg;->a(ZLjava/lang/String;Z)V

    return-void
.end method

.method private a(ZLjava/lang/String;Z)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "orgName"    # Ljava/lang/String;
    .param p3, "isUserDataComplete"    # Z

    .prologue
    .line 396
    invoke-virtual {p0}, Lfrg;->H_()V

    .line 397
    iget-object v0, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, p1, p2, p3}, Lfqz;->a(Landroid/app/Activity;ZLjava/lang/String;Z)V

    .line 398
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 262
    .line 7274
    iget-object v0, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 265
    :cond_0
    return-void
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 84
    sget v0, Lezg$l;->dt_user_alipay_auth_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 85
    const-string/jumbo v0, "login_alipay_authorize_failed"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public final a(Lcga;)V
    .locals 5
    .param p1, "authRes"    # Lcga;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 243
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcga;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcga;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "username":Ljava/lang/String;
    iget-object v2, p1, Lcga;->e:Lcee;

    .line 5278
    iget-object v1, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 5279
    new-instance v1, Lfrg$5;

    invoke-direct {v1, p0}, Lfrg$5;-><init>(Lfrg;)V

    .line 5305
    const-class v3, Lcma;

    iget-object v4, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 5307
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v3

    invoke-interface {v3, v0, v2, v1}, Lezm;->a(Ljava/lang/String;Lcee;Lcma;)V

    .line 245
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "mobile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 208
    const-string/jumbo v1, "login_alipay_alert_phoneLogin"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iget-object v1, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "customDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    iget-object v1, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lezg$l;->dt_user_mobile_already_register_tips:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 2226
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->j:Z

    .line 215
    iget-object v1, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lezg$l;->dt_common_i_know:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 3230
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 3275
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 218
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 220
    new-instance v1, Lfrg$4;

    invoke-direct {v1, p0, v0, p1}, Lfrg$4;-><init>(Lfrg;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;)V

    .line 4271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 230
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 231
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "thirdPartyUserId"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "mobile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 132
    iget-object v1, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 133
    new-instance v0, Lfrg$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lfrg$2;-><init>(Lfrg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v0, "listener":Lcma;
    const-class v1, Lcma;

    iget-object v2, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;
    check-cast v0, Lcma;

    .line 165
    .restart local v0    # "listener":Lcma;
    iget-object v1, p0, Lfrg;->b:Lfre$a;

    const-string/jumbo v2, "register"

    invoke-interface {v1, p2, p3, v2, v0}, Lfre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 166
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 270
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 255
    .line 6274
    iget-object v0, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 258
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 170
    new-instance v0, Lfrg$3;

    invoke-direct {v0, p0, p2, p1}, Lfrg$3;-><init>(Lfrg;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v0, "listener":Lcma;
    const-class v1, Lcma;

    iget-object v2, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;
    check-cast v0, Lcma;

    .line 198
    .restart local v0    # "listener":Lcma;
    iget-object v1, p0, Lfrg;->b:Lfre$a;

    const-string/jumbo v2, "register"

    invoke-interface {v1, p1, p2, v2, v0}, Lfre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 199
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tmpCode"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "mobile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 203
    iget-object v1, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1092
    if-nez v1, :cond_0

    .line 1093
    const-string/jumbo v0, "UserNavigator"

    const-string/jumbo v1, "navToVerifyContactPage, activity == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1094
    :goto_0
    return-void

    .line 1097
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/login_verify_contact.html"

    new-instance v2, Lflz$6;

    invoke-direct {v2, p2, p3, p1}, Lflz$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "login_alipay_authorize_confirm"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 235
    const-string/jumbo v1, "login_alipay_noPhone_add"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lezg$l;->dt_user_alipay_auth_no_mobile_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "title":Ljava/lang/String;
    iget-object v2, p0, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 5073
    if-nez v2, :cond_0

    .line 5074
    const-string/jumbo v1, "UserNavigator"

    const-string/jumbo v2, "navToSignUp, activity == null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5075
    :goto_0
    return-void

    .line 5078
    :cond_0
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/login.html"

    new-instance v3, Lflz$5;

    invoke-direct {v3, v0}, Lflz$5;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lfrg;->b:Lfre$a;

    invoke-static {v0}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lfrg;->b:Lfre$a;

    invoke-interface {v0}, Lfre$a;->a()V

    .line 79
    const-string/jumbo v0, "login_alipay_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Lfre$a;

    .line 8249
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8250
    iput-object p1, p0, Lfrg;->b:Lfre$a;

    .line 66
    return-void
.end method
