.class public Lcom/alibaba/android/user/login/SignUpActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SignUpActivity.java"


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field e:Landroid/content/BroadcastReceiver;

.field f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field g:Landroid/widget/Button;

.field h:Landroid/view/View;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/login/SignUpActivity;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->p:J

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;
    .param p1, "x1"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->p:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/login/SignUpActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 63
    .line 8582
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/login_verify.html"

    new-instance v2, Lcom/alibaba/android/user/login/SignUpActivity$10;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/alibaba/android/user/login/SignUpActivity$10;-><init>(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 63
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 471
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->login_invalid_phone_number_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 473
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    const/4 v3, 0x0

    .line 474
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 476
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 477
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "areaCode"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 435
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v0

    .line 436
    .local v0, "api":Lezm;
    sget-object v1, Lcom/alibaba/android/user/devset/DevSettingActivity;->x:Ljava/lang/String;

    .line 437
    if-eqz p1, :cond_0

    const-string/jumbo v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 440
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "EVENTBUTLER"

    .line 441
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/login/SignUpActivity$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/login/SignUpActivity$8;-><init>(Lcom/alibaba/android/user/login/SignUpActivity;)V

    const-class v4, Lcma;

    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 440
    invoke-interface {v0, v2, v1}, Lezm;->a(Ljava/lang/String;Lcma;)V

    .line 467
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/alibaba/android/user/login/SignUpActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "areaCode"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 507
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 508
    .local v2, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 509
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity;->g:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 510
    invoke-direct {p0}, Lcom/alibaba/android/user/login/SignUpActivity;->c()V

    .line 511
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v0

    .line 512
    .local v0, "api":Lezm;
    sget-object v3, Lcom/alibaba/android/user/devset/DevSettingActivity;->x:Ljava/lang/String;

    .line 513
    const-string/jumbo v3, "send code"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 515
    const-string/jumbo v3, "register"

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    const/16 v1, 0xe

    .line 522
    .local v1, "bizType":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/user/login/SignUpActivity$9;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/alibaba/android/user/login/SignUpActivity$9;-><init>(Lcom/alibaba/android/user/login/SignUpActivity;Lcom/alibaba/doraemon/performance/DDStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-class v7, Lcma;

    invoke-interface {v3, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    invoke-interface {v0, v4, v1, v5, v3}, Lezm;->a(Ljava/lang/String;IILcma;)V

    .line 579
    return-void

    .line 517
    .end local v1    # "bizType":I
    :cond_0
    const-string/jumbo v3, "forgetPwd"

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    const/16 v1, 0xf

    .restart local v1    # "bizType":I
    goto :goto_0

    .line 520
    .end local v1    # "bizType":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "bizType":I
    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/SignUpActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->p:J

    return-wide v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 480
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 482
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 483
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    sget v1, Lezg$l;->sending:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    .line 8604
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/login_newuser_not_invitation.html"

    new-instance v2, Lcom/alibaba/android/user/login/SignUpActivity$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/alibaba/android/user/login/SignUpActivity$2;-><init>(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 63
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/login/SignUpActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 63
    .line 7494
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 7495
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 63
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/login/SignUpActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 63
    .line 8424
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->m:Ljava/lang/String;

    .line 8426
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/user/login/SignUpActivity;->i:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lfrb;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8428
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/login/SignUpActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8429
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/login/SignUpActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->q:Z

    return v0
.end method


# virtual methods
.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    const-string/jumbo v0, "User_Input_Number"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    const-string/jumbo v0, "a2o5v.11792317.0.0"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lezg$h;->btn_next:I

    if-ne v4, v5, :cond_c

    .line 351
    const-string/jumbo v4, "next_click"

    const-string/jumbo v5, "a2o5v.11792317.1.register_next"

    invoke-static {p1, v4, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 353
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpActivity;->f()V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "phone":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    sget v3, Lezg$l;->login_empty_phone_number:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_2
    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "-"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "rawNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    .line 368
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x15

    if-gt v4, v5, :cond_4

    const-string/jumbo v4, "+86"

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    .line 369
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "86"

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_5

    .line 370
    :cond_4
    sget v4, Lezg$l;->login_invalid_phone_number:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Ljava/lang/String;)V

    .line 371
    const-string/jumbo v4, "bh_register_mobile_format_error"

    const-string/jumbo v5, "phone=%s"

    new-array v6, v9, [Ljava/lang/Object;

    new-array v7, v7, [Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    aput-object v8, v7, v10

    const-string/jumbo v8, "-"

    aput-object v8, v7, v9

    aput-object v2, v7, v11

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 3315
    invoke-static {v3, v4, v5, v6}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 375
    :cond_5
    iput-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity;->l:Ljava/lang/String;

    .line 3626
    const-string/jumbo v4, "SignUpWithPwd"

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpActivity;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 377
    if-eqz v4, :cond_6

    .line 378
    const-string/jumbo v4, "OLDUSER"

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpActivity;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 379
    const-string/jumbo v4, "loginpage_codelogin_mobile_click"

    invoke-static {v4}, Lfxo;->a(Ljava/lang/String;)V

    .line 384
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity;->l:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 385
    const-string/jumbo v4, "contact_new_register_next_btn_click"

    const-string/jumbo v5, "mobile_no=%s, region_info=%s, is_new=%d"

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/alibaba/android/user/login/SignUpActivity;->l:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    aput-object v7, v6, v9

    .line 386
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    .line 4315
    invoke-static {v3, v4, v5, v6}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_7
    new-instance v0, Lcom/alibaba/android/user/login/SignUpActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/SignUpActivity$7;-><init>(Lcom/alibaba/android/user/login/SignUpActivity;)V

    .line 412
    .local v0, "checkPhoneNumberCallback":Lcma;, "Lcma<Lcho;>;"
    invoke-direct {p0}, Lcom/alibaba/android/user/login/SignUpActivity;->c()V

    .line 413
    const-class v4, Lcma;

    invoke-static {v0, v4, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "checkPhoneNumberCallback":Lcma;, "Lcma<Lcho;>;"
    check-cast v0, Lcma;

    .line 414
    .restart local v0    # "checkPhoneNumberCallback":Lcma;, "Lcma<Lcho;>;"
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpActivity;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/user/login/SignUpActivity;->l:Ljava/lang/String;

    .line 5211
    if-eqz v0, :cond_0

    .line 5216
    if-eqz v5, :cond_8

    const-string/jumbo v3, "\\+"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5218
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 5219
    :cond_9
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v5, Lfas$19;

    invoke-direct {v5, v4, v0}, Lfas$19;-><init>(Lfas;Lcma;)V

    invoke-virtual {v3, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 381
    .end local v0    # "checkPhoneNumberCallback":Lcma;, "Lcma<Lcho;>;"
    :cond_a
    const-string/jumbo v4, "loginpage_newregist_mobile_click"

    invoke-static {v4}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 5229
    .restart local v0    # "checkPhoneNumberCallback":Lcma;, "Lcma<Lcho;>;"
    :cond_b
    new-instance v5, Lfas$20;

    invoke-direct {v5, v4, v0}, Lfas$20;-><init>(Lfas;Lcma;)V

    .line 5236
    new-instance v7, Lhzx;

    invoke-direct {v7}, Lhzx;-><init>()V

    .line 5238
    const-wide/16 v8, 0x7d0

    .line 6043
    iput-wide v8, v7, Lhzx;->a:J

    .line 5239
    invoke-virtual {v5, v7}, Lcmg;->addBeforeFiler(Liyt;)V

    .line 5241
    new-instance v7, Lchp;

    invoke-direct {v7}, Lchp;-><init>()V

    .line 5242
    iput-object v3, v7, Lchp;->a:Ljava/lang/String;

    .line 5243
    iput-object v6, v7, Lchp;->b:Ljava/lang/String;

    .line 5244
    iget-object v3, v4, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    .line 7035
    new-instance v4, Lcfp;

    invoke-direct {v4}, Lcfp;-><init>()V

    .line 7037
    iget-object v6, v7, Lchp;->a:Ljava/lang/String;

    iput-object v6, v4, Lcfp;->a:Ljava/lang/String;

    .line 7038
    iget-object v6, v7, Lchp;->b:Ljava/lang/String;

    iput-object v6, v4, Lcfp;->b:Ljava/lang/String;

    .line 5244
    invoke-interface {v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->checkPhoneNumber(Lcfp;Liyv;)V

    goto/16 :goto_0

    .line 415
    .end local v0    # "checkPhoneNumberCallback":Lcma;, "Lcma<Lcho;>;"
    .end local v1    # "phone":Ljava/lang/String;
    .end local v2    # "rawNumber":Ljava/lang/String;
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->ll_area_view:I

    if-ne v3, v4, :cond_0

    .line 416
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v3, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/select_area.html"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1134
    sget v0, Lezg$j;->activity_sign_up:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpActivity;->setContentView(I)V

    .line 1136
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpActivity;->hideToolbarDivide()V

    .line 1138
    sget v0, Lezg$h;->et_phone:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 2086
    sget v1, Lezg$e;->ui_common_level1_icon_bg_color:I

    invoke-static {v1}, Lfxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1139
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1140
    sget v0, Lezg$h;->tv_area_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    .line 1141
    sget v0, Lezg$h;->ll_area_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->h:Landroid/view/View;

    .line 1142
    sget v0, Lezg$h;->login_agreement:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->b:Landroid/widget/TextView;

    .line 1143
    sget v0, Lezg$h;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->g:Landroid/widget/Button;

    .line 1144
    sget v0, Lezg$h;->tv_registration_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->c:Landroid/widget/TextView;

    .line 1146
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "OLDUSER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->n:Ljava/lang/String;

    .line 1147
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "TARGET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->o:Ljava/lang/String;

    .line 1148
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->l:Ljava/lang/String;

    .line 1149
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1155
    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->k:Ljava/lang/String;

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 1161
    const-string/jumbo v0, "OLDUSER"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1162
    sget v0, Lezg$l;->dt_user_login_agreement_at2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1163
    sget v1, Lezg$l;->service_protocol:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1164
    sget v2, Lezg$l;->privacy_policy:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1165
    new-array v3, v10, [Ljava/lang/Object;

    aput-object v1, v3, v8

    aput-object v2, v3, v9

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1168
    new-instance v4, Lcom/alibaba/android/user/login/SignUpActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/login/SignUpActivity$3;-><init>(Lcom/alibaba/android/user/login/SignUpActivity;)V

    .line 1181
    new-instance v5, Lcom/alibaba/android/user/login/SignUpActivity$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/login/SignUpActivity$4;-><init>(Lcom/alibaba/android/user/login/SignUpActivity;)V

    .line 1194
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {v3, v4, v6, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1195
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v3, v5, v1, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1196
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1197
    if-ltz v1, :cond_2

    .line 1198
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lezg$e;->home_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1199
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1200
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v4, v1, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1203
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_3

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1225
    :cond_3
    :goto_0
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1229
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SignUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1230
    if-eqz v0, :cond_8

    .line 1232
    const-string/jumbo v1, "show_sim_authorization_entry"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->q:Z

    .line 1234
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1235
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1237
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1238
    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    :cond_5
    const-string/jumbo v1, "areaName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1243
    const-string/jumbo v1, "areaName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->k:Ljava/lang/String;

    .line 1246
    :cond_6
    const-string/jumbo v1, "areaCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1247
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    const-string/jumbo v2, "areaCode"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->h:Landroid/view/View;

    new-array v1, v11, [Ljava/lang/String;

    sget v2, Lezg$l;->login_title_select_area:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity;->k:Ljava/lang/String;

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    .line 1252
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 1250
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1254
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1256
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1257
    sget-object v0, Lcom/alibaba/android/user/login/SignUpActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/login/SignUpActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpActivity$5;-><init>(Lcom/alibaba/android/user/login/SignUpActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 95
    :cond_9
    if-eqz p1, :cond_a

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const-string/jumbo v0, "areaName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->k:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    const-string/jumbo v1, "areaCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->h:Landroid/view/View;

    new-array v1, v11, [Ljava/lang/String;

    sget v2, Lezg$l;->login_title_select_area:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity;->k:Ljava/lang/String;

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    .line 103
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 101
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/login/SignUpActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SignUpActivity$1;-><init>(Lcom/alibaba/android/user/login/SignUpActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2300
    new-instance v0, Lcom/alibaba/android/user/login/SignUpActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/SignUpActivity$6;-><init>(Lcom/alibaba/android/user/login/SignUpActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->e:Landroid/content/BroadcastReceiver;

    .line 2343
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.workapp.select.area"

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2344
    const-string/jumbo v0, "internal_action_privacy_agreement"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2345
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v2, p0, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 125
    return-void

    .line 1209
    :cond_b
    const-string/jumbo v0, "forgetPwd"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_c

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1213
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->c:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_login_mobile_input_placeholder:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1215
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_3

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->login_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity;->g:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 131
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 618
    const-string/jumbo v0, "areaName"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string/jumbo v0, "areaCode"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string/jumbo v0, "phone"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 623
    return-void
.end method
