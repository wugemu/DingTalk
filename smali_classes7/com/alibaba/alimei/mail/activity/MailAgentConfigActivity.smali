.class public Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailAgentConfigActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

.field private e:Landroid/widget/ToggleButton;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

.field private h:Landroid/widget/ToggleButton;

.field private i:Landroid/view/View;

.field private j:Landroid/view/MenuItem;

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/ScrollView;

.field private o:I

.field private p:[Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

.field private q:Z

.field private r:J

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Landroid/content/Intent;

.field private x:Lrz;

.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 90
    iput v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->o:I

    .line 94
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->q:Z

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->r:J

    .line 96
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->s:Z

    .line 98
    iput v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->t:I

    .line 100
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->u:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    .line 105
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->x:Lrz;

    .line 107
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->y:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->x:Lrz;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;Ljava/lang/String;IZLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct/range {p0 .. p8}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a(Ljava/lang/String;IZLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    .line 3775
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 4230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 3778
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 4275
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 3781
    sget v1, Laxo$i;->dt_mail_scs_login_failed:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 3783
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    invoke-static {v0, p1, p2, v1}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Ljava/lang/String;Laer;)Z

    move-result v1

    .line 3834
    if-eqz v1, :cond_0

    .line 3835
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 3836
    :goto_0
    return-void

    .line 3839
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[Code:"

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "] "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3840
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    .line 7587
    if-eqz p1, :cond_0

    .line 7588
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    const-string/jumbo v1, "993"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 7589
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 7591
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    const-string/jumbo v1, "465"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 7592
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 7601
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b()V

    .line 68
    return-void

    .line 7594
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    const-string/jumbo v1, "143"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 7595
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 7597
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    const-string/jumbo v1, "25"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 7598
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;IZLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "imapServer"    # Ljava/lang/String;
    .param p2, "imapPort"    # I
    .param p3, "imapSSL"    # Z
    .param p4, "smtpServer"    # Ljava/lang/String;
    .param p5, "smtpPort"    # I
    .param p6, "smtpSSL"    # Z
    .param p7, "mailAccount"    # Ljava/lang/String;
    .param p8, "mailPass"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 322
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v3, p7}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v3, p8}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->v:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    const/16 v3, 0x40

    invoke-virtual {p7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->v:Ljava/lang/String;

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v0, "incomingServer":Ljava/lang/StringBuilder;
    if-nez p1, :cond_4

    .line 333
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->v:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 334
    const-string/jumbo v3, "imap."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v2, "outingServer":Ljava/lang/StringBuilder;
    if-nez p4, :cond_5

    .line 343
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->v:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 344
    const-string/jumbo v3, "smtp."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 356
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 359
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 375
    :cond_3
    :goto_2
    return-void

    .line 336
    .end local v2    # "outingServer":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "incomingServer":Ljava/lang/StringBuilder;
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v0    # "incomingServer":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 346
    .restart local v2    # "outingServer":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "outingServer":Ljava/lang/StringBuilder;
    invoke-direct {v2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v2    # "outingServer":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 362
    :cond_6
    invoke-static {p7}, Lacn;->e(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 364
    .local v1, "orgModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_7

    .line 366
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a()V

    .line 367
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->alm_cmail_color_6_3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 371
    :cond_7
    iget v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->t:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 372
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a()V

    .line 373
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->alm_cmail_color_6_3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->t:I

    return v0
.end method

.method private b()V
    .locals 35

    .prologue
    .line 524
    invoke-static/range {p0 .. p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 525
    sget v11, Laxo$i;->network_no_connection:I

    invoke-static {v11}, Lcms;->a(I)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 2609
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->p:[Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    if-eqz v11, :cond_4

    .line 2610
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->p:[Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    array-length v13, v12

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_4

    aget-object v14, v12, v11

    .line 2611
    if-nez v14, :cond_2

    const/4 v11, 0x0

    .line 528
    :goto_2
    if-eqz v11, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->h()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 529
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "incomingServer":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 531
    .local v8, "incomingUser":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 532
    .local v9, "incomingPass":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "incomingPort":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v11}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x1

    .line 535
    .local v4, "incomingSSL":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 538
    .local v5, "smtpServer":Ljava/lang/String;
    move-object v10, v9

    .line 540
    .local v10, "smtpPass":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 541
    .local v6, "smtpPort":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v11}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v7, 0x1

    .line 543
    .local v7, "smtpSSL":Z
    :goto_4
    const-string/jumbo v11, "@"

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 545
    .local v18, "tempDomain":Ljava/lang/String;
    sget v11, Laxo$i;->dt_mail_please_wait:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->showLoadingDialog(I)V

    .line 547
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->s:Z

    .line 549
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->b(Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->t:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 552
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->k:Ljava/lang/String;

    invoke-static {v11}, Lacn;->g(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 553
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    .line 554
    .local v34, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "account_name"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->k:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string/jumbo v11, "/page/mail_oauth_login.html"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v11, v1}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->dismissLoadingDialog()V

    goto/16 :goto_0

    .line 2613
    .end local v2    # "incomingServer":Ljava/lang/String;
    .end local v3    # "incomingPort":Ljava/lang/String;
    .end local v4    # "incomingSSL":Z
    .end local v5    # "smtpServer":Ljava/lang/String;
    .end local v6    # "smtpPort":Ljava/lang/String;
    .end local v7    # "smtpSSL":Z
    .end local v8    # "incomingUser":Ljava/lang/String;
    .end local v9    # "incomingPass":Ljava/lang/String;
    .end local v10    # "smtpPass":Ljava/lang/String;
    .end local v18    # "tempDomain":Ljava/lang/String;
    .end local v34    # "bundle":Landroid/os/Bundle;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->k:Ljava/lang/String;

    invoke-static {v15}, Lacn;->g(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2614
    sget v11, Laxo$i;->dt_mail_csc_not_null:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcms;->a(Ljava/lang/String;)V

    .line 2615
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 2610
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 2618
    :cond_4
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 533
    .restart local v2    # "incomingServer":Ljava/lang/String;
    .restart local v3    # "incomingPort":Ljava/lang/String;
    .restart local v8    # "incomingUser":Ljava/lang/String;
    .restart local v9    # "incomingPass":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 541
    .restart local v4    # "incomingSSL":Z
    .restart local v5    # "smtpServer":Ljava/lang/String;
    .restart local v6    # "smtpPort":Ljava/lang/String;
    .restart local v10    # "smtpPass":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 558
    .restart local v7    # "smtpSSL":Z
    .restart local v18    # "tempDomain":Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    .line 559
    invoke-static/range {v2 .. v7}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Lccx;

    move-result-object v12

    .line 560
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->i()Lcma;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->s:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->q:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->r:J

    move-wide/from16 v16, v0

    .line 558
    invoke-static/range {v8 .. v18}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLccx;Lcma;ZZJLjava/lang/String;)V

    goto/16 :goto_0

    .line 562
    :cond_8
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->t:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_a

    .line 563
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->k:Ljava/lang/String;

    invoke-static {v11}, Lacn;->g(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 564
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    .line 565
    .restart local v34    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "account_name"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->k:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string/jumbo v11, "/page/mail_oauth_login.html"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v11, v1}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->dismissLoadingDialog()V

    goto/16 :goto_0

    .line 569
    .end local v34    # "bundle":Landroid/os/Bundle;
    :cond_9
    const/16 v28, 0x0

    .line 571
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->i()Lcma;

    move-result-object v29

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v10

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v27, v7

    .line 569
    invoke-static/range {v19 .. v29}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcma;)V

    goto/16 :goto_0

    .line 574
    :cond_a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->t:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_b

    const/16 v33, 0x1

    .line 578
    .local v33, "bindDomain":Z
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->i()Lcma;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->q:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->r:J

    move-wide/from16 v30, v0

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v10

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v27, v7

    move-object/from16 v32, v18

    .line 575
    invoke-static/range {v19 .. v33}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcma;ZJLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 574
    .end local v33    # "bindDomain":Z
    :cond_b
    const/16 v33, 0x0

    goto :goto_5
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 68
    .line 2845
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->q:Z

    if-eqz v0, :cond_0

    .line 2846
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 2848
    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->queryOrgEmailManageUrl(Ljava/lang/String;Liyv;)V

    .line 2873
    :goto_0
    return-void

    .line 2874
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    .line 3749
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3750
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 3751
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 3753
    :goto_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3754
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 3755
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3757
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "mail_config_update_sucess"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3759
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3761
    :try_start_0
    const-string/jumbo v8, "imap_server"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3762
    const-string/jumbo v3, "imap_port"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3763
    const-string/jumbo v3, "imap_ssl"

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3764
    const-string/jumbo v0, "smtp_server"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3765
    const-string/jumbo v0, "smtp_port"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3766
    const-string/jumbo v0, "smtp_ssl"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3767
    invoke-virtual {v2, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3768
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3771
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 3751
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3755
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    const/4 v2, 0x0

    .line 68
    .line 5266
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5267
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 5268
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    .line 5270
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->l:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 5271
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    const/4 v2, 0x0

    .line 68
    .line 5379
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 6230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 5382
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 6275
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 5385
    sget v1, Laxo$i;->dt_mail_common_warning_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 5386
    sget v1, Laxo$i;->dt_mail_ali_imap_not_need:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 5388
    sget v1, Laxo$b;->mail_bind_warning_choose:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 5390
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    return-void
.end method

.method private h()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const v6, 0xffff

    const/4 v4, 0x0

    .line 626
    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 652
    :goto_0
    return v4

    .line 630
    :cond_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "incomingUser":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "smtpUser":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v4

    .line 636
    .local v1, "receiverPort":I
    :goto_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    move v2, v4

    .line 642
    .local v2, "senderPort":I
    :goto_2
    if-lez v1, :cond_1

    if-gt v1, v6, :cond_1

    if-lez v2, :cond_1

    if-le v2, v6, :cond_4

    .line 643
    :cond_1
    sget v5, Laxo$i;->dt_mail_agent_port_ban:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 635
    .end local v1    # "receiverPort":I
    .end local v2    # "senderPort":I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 636
    .restart local v1    # "receiverPort":I
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_2

    .line 638
    .end local v1    # "receiverPort":I
    :catch_0
    move-exception v5

    sget v5, Laxo$i;->dt_mail_agent_port_ban:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    .restart local v1    # "receiverPort":I
    .restart local v2    # "senderPort":I
    :cond_4
    invoke-static {v0}, Lafh;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v3}, Lafh;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 648
    :cond_5
    sget v5, Laxo$i;->dt_mail_scs_invalid_address:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 652
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private i()Lcma;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$11;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    .line 695
    .local v0, "agentMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 700
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->finish()V

    .line 702
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->t:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 703
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->b()V

    .line 705
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 187
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    sget v0, Laxo$g;->activity_mail_csconfig:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->setContentView(I)V

    .line 1196
    sget v0, Laxo$f;->mail_csc_receiver_server:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 1197
    sget v0, Laxo$f;->mail_csc_receiver_user:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 1198
    sget v0, Laxo$f;->mail_csc_receiver_pass:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 1199
    sget v0, Laxo$f;->mail_csc_receiver_port:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 1200
    sget v0, Laxo$f;->mail_csc_receiver_ssl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Laxo$f;->toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->e:Landroid/widget/ToggleButton;

    .line 1202
    sget v0, Laxo$f;->mail_csc_sender_server:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 1203
    sget v0, Laxo$f;->mail_csc_sender_port:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 1204
    sget v0, Laxo$f;->mail_csc_sender_ssl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Laxo$f;->toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->h:Landroid/widget/ToggleButton;

    .line 1205
    sget v0, Laxo$f;->mail_csc_advanced_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->l:Landroid/widget/ImageView;

    .line 1206
    sget v0, Laxo$f;->mail_csc_advanced_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->m:Landroid/widget/LinearLayout;

    .line 1208
    sget v0, Laxo$f;->rl_advanced_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->i:Landroid/view/View;

    .line 1210
    sget v0, Laxo$f;->scrollview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->n:Landroid/widget/ScrollView;

    .line 1212
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxo$i;->dt_mail_csc_config:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1214
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 1216
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 1217
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewVisible(I)V

    .line 1219
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 1220
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 1222
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    aput-object v1, v0, v2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->p:[Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 1225
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1279
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    .line 1280
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    const-string/jumbo v1, "mail_org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->r:J

    .line 1285
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->r:J

    invoke-static {v0, v1}, Lacn;->a(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->q:Z

    .line 1287
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    const-string/jumbo v1, "domain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->v:Ljava/lang/String;

    .line 1289
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    const-string/jumbo v1, "mail_config_from_flag"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->t:I

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    const-string/jumbo v1, "mail_account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->k:Ljava/lang/String;

    .line 1297
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    const-string/jumbo v1, "account_pass"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1300
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    const-string/jumbo v1, "imap_server"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1301
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    const-string/jumbo v2, "imap_ssl"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1302
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    const-string/jumbo v2, "imap_port"

    .line 1303
    invoke-static {v3}, Lafh;->a(Z)I

    move-result v4

    .line 1302
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1305
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    const-string/jumbo v4, "smtp_server"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1306
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    const-string/jumbo v5, "smtp_port"

    .line 1307
    invoke-static {v3}, Lafh;->b(Z)I

    move-result v6

    .line 1306
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1308
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->w:Landroid/content/Intent;

    const-string/jumbo v6, "smtp_ssl"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 1310
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move-object v0, p0

    .line 1311
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a(Ljava/lang/String;IZLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .line 2232
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->e:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2239
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->h:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2246
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2253
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->i:Landroid/view/View;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void

    .line 1400
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1401
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 1402
    if-eqz v0, :cond_2

    .line 1403
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->v:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->r:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;

    invoke-direct {v4, p0, v7, v8}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/idl/service/CMailIService;->listAgentConfigV2(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 485
    sget v3, Laxo$i;->experience:I

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 486
    .local v2, "menuItem":Landroid/view/MenuItem;
    sget v3, Laxo$e;->ic_actbar_guide:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 487
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 489
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Laxo$g;->actionbar_finish_button_layout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 490
    .local v1, "finishView":Landroid/view/View;
    sget v3, Laxo$f;->finish:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 491
    .local v0, "finishButton":Landroid/widget/Button;
    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$10;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$10;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    const-string/jumbo v3, "FINISH"

    invoke-interface {p1, v6, v6, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->j:Landroid/view/MenuItem;

    .line 502
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->j:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 503
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->j:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 504
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 709
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 710
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 711
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 712
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 713
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 714
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->e:Landroid/widget/ToggleButton;

    .line 716
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 717
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 718
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->h:Landroid/widget/ToggleButton;

    .line 719
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->y:Landroid/os/Handler;

    .line 721
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->j:Landroid/view/MenuItem;

    .line 723
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->p:[Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 725
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->x:Lrz;

    .line 726
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 509
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 510
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    .line 512
    .local v1, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    const-string/jumbo v2, "url"

    const-string/jumbo v3, "https://tms.dingtalk.com/markets/dingtalk/common_email_settings"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 514
    const/4 v2, 0x0

    .line 516
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method
