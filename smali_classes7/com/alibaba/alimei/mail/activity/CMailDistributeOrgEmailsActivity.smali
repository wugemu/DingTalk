.class public Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailDistributeOrgEmailsActivity.java"


# instance fields
.field private a:J

.field private b:Lrz;

.field private c:Labs;

.field private d:Labt;

.field private e:I

.field private f:I

.field private g:Ldq;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Landroid/widget/ToggleButton;

.field private j:Z

.field private k:Laac;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 58
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->b:Lrz;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->j:Z

    .line 76
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Laac;)Laac;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;
    .param p1, "x1"    # Laac;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->k:Laac;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Labs;)Labs;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;
    .param p1, "x1"    # Labs;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->c:Labs;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Labt;)Labt;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;
    .param p1, "x1"    # Labt;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->d:Labt;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->b:Lrz;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;I)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 51
    const/16 v0, 0x2711

    .line 4022
    const-string/jumbo v1, "mail_mailcompose_choose_contact"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 3444
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    .line 3445
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3446
    const-string/jumbo v3, "choose_mode"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3447
    const-string/jumbo v3, "count_limit"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3448
    const-string/jumbo v3, "title"

    sget v4, Laxo$i;->dt_mail_orgmail_dispatch_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3449
    const-string/jumbo v3, "activity_identify"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3450
    const-string/jumbo v0, "choose_people_action"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3451
    const-string/jumbo v0, "can_choose_current_user"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3452
    const-string/jumbo v0, "filter_myself"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3453
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3454
    const-string/jumbo v0, "show_group"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3455
    const-string/jumbo v0, "choose_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3457
    invoke-virtual {v1, p0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a:J

    return-wide v0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->showLoadingDialog()V

    .line 196
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 197
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 196
    invoke-virtual {v1, v2, v0}, Lro;->a(Ljava/lang/Long;Lcma;)V

    .line 225
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 226
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$8;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 225
    invoke-virtual {v1, v2, v3, v0}, Lro;->a(JLcma;)V

    .line 251
    return-void
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 51
    .line 4310
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4311
    sget v1, Laxo$i;->dt_mail_dispatch_one_key:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->dt_mail_dispatch_one_key_tips:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->dt_mail_dispatch_action:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$12;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$12;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 4312
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->cancel:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$11;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$11;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 4319
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4325
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 51
    return-void
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)Laac;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->k:Laac;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->i:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    const/4 v3, 0x0

    .line 51
    .line 5254
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->c:Labs;

    if-eqz v0, :cond_0

    .line 5257
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->c:Labs;

    iget-object v0, v0, Labs;->d:Ljava/lang/Integer;

    .line 6033
    invoke-static {v0, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    .line 5258
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->c:Labs;

    iget-object v0, v0, Labs;->c:Ljava/lang/Integer;

    .line 7033
    invoke-static {v0, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 5259
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->c:Labs;

    iget-object v1, v1, Labs;->a:Ljava/lang/Integer;

    .line 8033
    invoke-static {v1, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 5260
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->c:Labs;

    iget-object v2, v2, Labs;->b:Ljava/lang/Integer;

    .line 9033
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 5262
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->e:I

    .line 5263
    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->f:I

    .line 5265
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 5266
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->i:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->j:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 5267
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->i:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 5268
    sget v0, Laxo$f;->set_auto_distribute_left_limit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->j:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 5269
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->j:Z

    if-eqz v0, :cond_1

    .line 5270
    sget v0, Laxo$f;->set_limit_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_text_content_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5271
    sget v0, Laxo$f;->set_limit_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_content_fg_color_alpha_40:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5277
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->k:Laac;

    if-eqz v0, :cond_0

    .line 5278
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->k:Laac;

    iget-object v0, v0, Laac;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5279
    sget v0, Laxo$f;->set_limit_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->k:Laac;

    iget-object v1, v1, Laac;->c:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    .line 5273
    :cond_1
    sget v0, Laxo$f;->set_limit_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5274
    sget v0, Laxo$f;->set_limit_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5281
    :cond_2
    sget v0, Laxo$f;->set_limit_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_mail_dispatch_auto_no_limit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->b()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 51
    .line 9408
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->showLoadingDialog()V

    .line 9409
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V

    .line 9436
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 9437
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(JLcma;)V

    .line 51
    return-void
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 51
    .line 11026
    const-string/jumbo v0, "org_management_mail_distribute_auto_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 10331
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->e:I

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->f:I

    if-ge v0, v1, :cond_0

    .line 11291
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11292
    sget v1, Laxo$i;->dt_mail_dispatch_expand_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->dt_mail_dispatch_expand_tips:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->dt_mail_dispatch_expand:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$10;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$10;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 11293
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->cancel:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$9;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 11300
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11306
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 10333
    :goto_0
    return-void

    .line 10336
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->showLoadingDialog()V

    .line 10337
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 10338
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 11607
    const-string/jumbo v4, "MailRPC"

    const-string/jumbo v5, "dispatchOrgEmails"

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11608
    new-instance v4, Lro$15;

    invoke-direct {v4, v1, v0}, Lro$15;-><init>(Lro;Lcma;)V

    .line 11625
    iget-object v0, v1, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/alibaba/alimei/idl/service/CMailIService;->dispatchOrgEmails(JILiyv;)V

    goto :goto_0
.end method


# virtual methods
.method protected final i_()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 385
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->d:Labt;

    if-nez v1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 389
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, "customDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->d:Labt;

    iget-object v1, v1, Labt;->b:Ljava/lang/String;

    .line 1218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 391
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->d:Labt;

    iget-object v1, v1, Labt;->c:Ljava/lang/String;

    .line 1239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 392
    sget v1, Laxo$i;->mail_guide_text_i_know_that:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 2230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 2275
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 395
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 3271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 404
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    sget v1, Laxo$g;->activity_mail_distribute_org_mails:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->setContentView(I)V

    .line 102
    new-array v3, v6, [I

    sget v1, Laxo$f;->manual_distribute_layout:I

    aput v1, v3, v2

    const/4 v1, 0x1

    sget v4, Laxo$f;->set_auto_distribute_left_limit:I

    aput v4, v3, v1

    const/4 v1, 0x2

    sget v4, Laxo$f;->auto_distribute_all:I

    aput v4, v3, v1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->l:Landroid/view/View$OnClickListener;

    move v1, v2

    .line 1071
    :goto_0
    if-ge v1, v6, :cond_0

    aget v5, v3, v1

    .line 1072
    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {}, Lacq;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    sget v1, Laxo$f;->auto_distribute_feature:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_1
    sget v1, Laxo$f;->auto_distribute_toggle:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->i:Landroid/widget/ToggleButton;

    .line 107
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->i:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "org_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a:J

    .line 124
    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->finish()V

    .line 130
    :goto_1
    return-void

    .line 1133
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->h:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    .line 1134
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->h:Landroid/content/BroadcastReceiver;

    .line 1187
    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1188
    const-string/jumbo v2, "mail_employee_account_changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1189
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1190
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->g:Ldq;

    .line 1191
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->g:Ldq;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 375
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->dismissLoadingDialog()V

    .line 376
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 377
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->g:Ldq;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->g:Ldq;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 379
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->g:Ldq;

    .line 380
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->h:Landroid/content/BroadcastReceiver;

    .line 382
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 369
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onPause()V

    .line 370
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 462
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 463
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->b()V

    .line 464
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 468
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 469
    return-void
.end method
