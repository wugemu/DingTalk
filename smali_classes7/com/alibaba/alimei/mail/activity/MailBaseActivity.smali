.class public Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "MailBaseActivity.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lacr$a;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a:Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->b:Z

    .line 43
    const-string/jumbo v0, "MailBaseActivity"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->c:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->f:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->g:Ljava/util/HashMap;

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .prologue
    const/4 v4, 0x0

    .line 39
    .line 9170
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 9171
    sget v1, Laxo$i;->dt_mail_force_logout_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 9173
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9174
    sget v1, Laxo$i;->dt_mail_force_logout_message:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 9179
    :goto_0
    sget v1, Laxo$i;->mail_guide_text_i_know_that:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 11230
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 11275
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 9182
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 12271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 9191
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 39
    return-void

    .line 9176
    :cond_0
    sget v1, Laxo$i;->dt_mail_force_logout_message_fmt:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->j:Z

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->finish()V

    .line 310
    invoke-static {p0}, Lacg;->a(Landroid/content/Context;)V

    .line 311
    return-void
.end method

.method public final a(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "cancelable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 397
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    .line 398
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 400
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 402
    :cond_0
    return-void
.end method

.method protected final a(J)V
    .locals 3
    .param p1, "delayTimeInMills"    # J

    .prologue
    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->j:Z

    .line 382
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-static {p1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->finish()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dingtalk://qr.dingtalk.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lafu;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 427
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "reqCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dingtalk://qr.dingtalk.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9071
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lafu;->a(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object v0

    .line 9072
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 435
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->b:Z

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->finish()V

    .line 327
    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->b:Z

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->finish()V

    .line 334
    :cond_0
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->i:Z

    if-eqz v2, :cond_0

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->h:J

    sub-long v0, v2, v4

    .line 65
    .local v0, "cost":J
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->g:Ljava/util/HashMap;

    const-string/jumbo v3, "totalTime"

    long-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->i:Z

    .line 67
    sget-object v2, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v3, "CMail"

    const-string/jumbo v4, "cmail_page_cost"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->f:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->g:Ljava/util/HashMap;

    invoke-static {v2, v3, v4, v5, v6}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method e(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 8246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 364
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->logout(Ljava/lang/String;Lxv;)V

    .line 365
    const-string/jumbo v1, "handleLogoutResult"

    invoke-static {v1, p1}, Lafg;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_mail_account_logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "mail_account_logout"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 369
    return-void
.end method

.method protected f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 3872
    const-string/jumbo v0, "mail_logout_imap_pwd_error"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 4217
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 4218
    sget v1, Laxo$i;->dt_mail_account_auth_fail_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 4219
    sget v1, Laxo$i;->dt_mail_account_auth_fail_tips:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 4220
    sget v1, Laxo$i;->dt_mail_config_setting:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 6230
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 6275
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 4223
    sget v1, Laxo$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7263
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 4224
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 7267
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 4233
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 7271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 4241
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 340
    return-void
.end method

.method protected final g()V
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->j:Z

    .line 414
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->dismissLoadingDialog()V

    .line 415
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 72
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->h:J

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "pageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->f:Ljava/util/HashMap;

    const-string/jumbo v3, "pageName"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iput-object p0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a:Landroid/content/Context;

    .line 78
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->e:Lacr$a;

    if-nez v2, :cond_1

    .line 79
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->e:Lacr$a;

    .line 152
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->e:Lacr$a;

    .line 1688
    if-eqz v3, :cond_1

    .line 1692
    iget-object v4, v2, Lacr;->j:Ljava/util/List;

    monitor-enter v4

    .line 1693
    :try_start_0
    iget-object v5, v2, Lacr;->j:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1694
    iget-object v2, v2, Lacr;->j:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_1
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v2

    .line 2531
    if-eqz p0, :cond_2

    .line 2535
    iget v3, v2, Lacr;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lacr;->f:I

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->c:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "activity "

    aput-object v5, v3, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, " onCreate"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 161
    .local v0, "dimenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "pageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v2, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v3, "CMail"

    const-string/jumbo v4, "pageName"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 164
    return-void

    .line 1696
    .end local v0    # "dimenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->e:Lacr$a;

    if-eqz v0, :cond_2

    .line 298
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->e:Lacr$a;

    .line 2700
    if-eqz v1, :cond_1

    .line 2704
    iget-object v2, v0, Lacr;->j:Ljava/util/List;

    monitor-enter v2

    .line 2705
    :try_start_0
    iget-object v3, v0, Lacr;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2706
    iget-object v0, v0, Lacr;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2708
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->e:Lacr$a;

    .line 301
    :cond_2
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    .line 3543
    if-eqz p0, :cond_3

    .line 3547
    iget v1, v0, Lacr;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lacr;->f:I

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->c:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "activity "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " onDestroy"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 306
    return-void

    .line 2708
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->b:Z

    .line 276
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->d:Ljava/lang/String;

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->e()V

    .line 283
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->b:Z

    .line 289
    return-void
.end method
