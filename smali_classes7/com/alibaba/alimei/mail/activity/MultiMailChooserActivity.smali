.class public Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MultiMailChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/content/BroadcastReceiver;

.field private l:Lrz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 67
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->l:Lrz;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->l:Lrz;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->l:Lrz;

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->l:Lrz;

    .line 14041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 14767
    const-string/jumbo v0, "mail_mailbind_open_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 265
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/mail_login.html"

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;I)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 134
    :cond_0
    sget v2, Laxo$f;->img_mail_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 135
    .local v0, "icon":Landroid/widget/ImageView;
    sget v2, Laxo$f;->tv_mail_name:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    .local v1, "title":Landroid/widget/TextView;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    sget v2, Laxo$i;->dt_mail_supplier_QQ:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$e;->cmail_mail_qq_icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 142
    :pswitch_1
    sget v2, Laxo$i;->dt_mail_supplier_tencentEnt:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$e;->cmail_mail_qq_en_icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 146
    :pswitch_2
    sget v2, Laxo$i;->dt_mail_supplier_163_personal:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$e;->cmail_mail_163_icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 150
    :pswitch_3
    sget v2, Laxo$i;->dt_mail_supplier_163ent:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$e;->cmail_mail_163_en_icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 154
    :pswitch_4
    sget v2, Laxo$i;->dt_mail_supplier_126:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$e;->cmail_mail_126_icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 158
    :pswitch_5
    sget v2, Laxo$i;->dt_cmail_gmail:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    sget v2, Laxo$e;->cmail_gmail:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 162
    :pswitch_6
    sget v2, Laxo$i;->dt_cmail_outlook:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget v2, Laxo$e;->cmail_outlook:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 166
    :pswitch_7
    sget v2, Laxo$i;->dt_mail_supplier_others:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$e;->cmail_mail_other_icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    .line 15311
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    invoke-interface {v0, p1}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 15312
    :goto_0
    if-eqz v0, :cond_1

    .line 15908
    const-string/jumbo v0, "mail_logout_click_almail"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 15321
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->showLoadingDialog()V

    .line 15322
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;Ljava/lang/String;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, p1, v0}, Lro;->a(Ljava/lang/String;Lcma;)V

    .line 51
    return-void

    .line 15311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 15912
    :cond_1
    const-string/jumbo v0, "mail_logout_click_nonalimei"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 15317
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lpq;->logout(Ljava/lang/String;Lxv;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    .line 16731
    const-string/jumbo v0, "mail_logout_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 16364
    const-string/jumbo v0, "handleUnbindAccount"

    invoke-static {v0, p1}, Lafg;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 16365
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_mail_account_logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16366
    const-string/jumbo v1, "mail_account_logout"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16367
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 16370
    invoke-static {}, Lafh;->d()V

    .line 16373
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->j()V

    .line 51
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 279
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 280
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "account":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Laxo$i;->dd_mail_del_and_add_account_label:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 284
    sget v2, Laxo$i;->dd_mail_replace:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 292
    sget v2, Laxo$i;->cancel:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 304
    .end local v1    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 221
    .local v0, "id":I
    sget v1, Laxo$f;->rl_ali_item:I

    if-ne v1, v0, :cond_1

    .line 222
    const-string/jumbo v1, "alimail"

    .line 4930
    const-string/jumbo v2, "mail_login_choose_mailbox_click"

    invoke-static {v2, v1}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(I)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    sget v1, Laxo$f;->include_qq_item:I

    if-ne v1, v0, :cond_2

    .line 225
    const-string/jumbo v1, "qqmail"

    .line 5930
    const-string/jumbo v2, "mail_login_choose_mailbox_click"

    invoke-static {v2, v1}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(I)V

    goto :goto_0

    .line 227
    :cond_2
    sget v1, Laxo$f;->include_qq_en_item:I

    if-ne v1, v0, :cond_3

    .line 228
    const-string/jumbo v1, "qqorgmail"

    .line 6930
    const-string/jumbo v2, "mail_login_choose_mailbox_click"

    invoke-static {v2, v1}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(I)V

    goto :goto_0

    .line 230
    :cond_3
    sget v1, Laxo$f;->include_163_item:I

    if-ne v1, v0, :cond_4

    .line 231
    const-string/jumbo v1, "163mail"

    .line 7930
    const-string/jumbo v2, "mail_login_choose_mailbox_click"

    invoke-static {v2, v1}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(I)V

    goto :goto_0

    .line 233
    :cond_4
    sget v1, Laxo$f;->include_163_en_item:I

    if-ne v1, v0, :cond_5

    .line 234
    const-string/jumbo v1, "163orgmail"

    .line 8930
    const-string/jumbo v2, "mail_login_choose_mailbox_click"

    invoke-static {v2, v1}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(I)V

    goto :goto_0

    .line 236
    :cond_5
    sget v1, Laxo$f;->include_126_item:I

    if-ne v1, v0, :cond_6

    .line 237
    const-string/jumbo v1, "126mail"

    .line 9930
    const-string/jumbo v2, "mail_login_choose_mailbox_click"

    invoke-static {v2, v1}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(I)V

    goto :goto_0

    .line 239
    :cond_6
    sget v1, Laxo$f;->include_gmail_item:I

    if-ne v1, v0, :cond_7

    .line 240
    const-string/jumbo v1, "gmail"

    .line 10930
    const-string/jumbo v2, "mail_login_choose_mailbox_click"

    invoke-static {v2, v1}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(I)V

    goto :goto_0

    .line 242
    :cond_7
    sget v1, Laxo$f;->include_outlook_item:I

    if-ne v1, v0, :cond_8

    .line 243
    const-string/jumbo v1, "outlook"

    .line 11930
    const-string/jumbo v2, "mail_login_choose_mailbox_click"

    invoke-static {v2, v1}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(I)V

    goto/16 :goto_0

    .line 245
    :cond_8
    sget v1, Laxo$f;->include_other_item:I

    if-ne v1, v0, :cond_9

    .line 246
    const-string/jumbo v1, "other"

    .line 12930
    const-string/jumbo v2, "mail_login_choose_mailbox_click"

    invoke-static {v2, v1}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(I)V

    goto/16 :goto_0

    .line 248
    :cond_9
    sget v1, Laxo$f;->img_en_mail_free_get:I

    if-ne v1, v0, :cond_0

    .line 249
    invoke-static {}, Lcms;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13743
    const-string/jumbo v1, "mail_login_freemailbox_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://h5.dingtalk.com/buyMailDomain/index.html"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 73
    const-string/jumbo v0, "MultiMailChooserActivity"

    .line 1982
    const-string/jumbo v1, "mail_login_view_click"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget v0, Laxo$g;->activity_multi_mail_chooser:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->setContentView(I)V

    .line 2081
    sget v0, Laxo$f;->img_en_mail_free_get:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a:Landroid/widget/ImageView;

    .line 2083
    sget v0, Laxo$f;->rl_ali_item:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->b:Landroid/view/View;

    .line 2084
    sget v0, Laxo$f;->include_gmail_item:I

    .line 2372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2084
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->c:Landroid/view/View;

    .line 2085
    sget v0, Laxo$f;->include_outlook_item:I

    .line 3372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2085
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->d:Landroid/view/View;

    .line 2086
    sget v0, Laxo$f;->include_qq_item:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->e:Landroid/view/View;

    .line 2087
    sget v0, Laxo$f;->include_qq_en_item:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->f:Landroid/view/View;

    .line 2088
    sget v0, Laxo$f;->include_163_item:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->g:Landroid/view/View;

    .line 2089
    sget v0, Laxo$f;->include_163_en_item:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->h:Landroid/view/View;

    .line 2090
    sget v0, Laxo$f;->include_126_item:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->i:Landroid/view/View;

    .line 2091
    sget v0, Laxo$f;->include_other_item:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->j:Landroid/view/View;

    .line 2093
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->e:Landroid/view/View;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Landroid/view/View;I)V

    .line 2094
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->c:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Landroid/view/View;I)V

    .line 2095
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->d:Landroid/view/View;

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Landroid/view/View;I)V

    .line 2096
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->f:Landroid/view/View;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Landroid/view/View;I)V

    .line 2097
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Landroid/view/View;I)V

    .line 2098
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->h:Landroid/view/View;

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Landroid/view/View;I)V

    .line 2099
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->i:Landroid/view/View;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Landroid/view/View;I)V

    .line 2100
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->j:Landroid/view/View;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Landroid/view/View;I)V

    .line 2102
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2103
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2104
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2105
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2107
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2108
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2109
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2110
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2111
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxo$i;->dt_mail_chose_page_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2115
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "mail_orgmail_dispatch_enable"

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2117
    if-eqz v0, :cond_1

    .line 2118
    invoke-static {}, Lcms;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a:Landroid/widget/ImageView;

    sget v1, Laxo$e;->img_en_mail_free_get_en:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2124
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4173
    :goto_1
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->k:Landroid/content/BroadcastReceiver;

    .line 4186
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "mail_login_success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4187
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 78
    return-void

    .line 2121
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a:Landroid/widget/ImageView;

    sget v1, Laxo$e;->cmail_mail_free_get_banner:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2126
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 194
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->k:Landroid/content/BroadcastReceiver;

    .line 197
    :cond_0
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 198
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 199
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->j:Landroid/view/View;

    .line 200
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->i:Landroid/view/View;

    .line 201
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->g:Landroid/view/View;

    .line 202
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->f:Landroid/view/View;

    .line 203
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->e:Landroid/view/View;

    .line 204
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->b:Landroid/view/View;

    .line 205
    return-void
.end method

.method public showLoadingDialog()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 209
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    sget v1, Laxo$i;->loading:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 211
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 212
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 215
    return-void
.end method
