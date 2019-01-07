.class public Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailDistributeLimitOrgEmailsActivity.java"


# instance fields
.field private a:J

.field private b:Z

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/EditText;

.field private g:I

.field private h:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 42
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->g:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->h()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->c:I

    return p1
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x0

    .line 102
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 105
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 108
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    move v2, v4

    .line 109
    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->g:I

    if-le v2, v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->h:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    sget v5, Laxo$i;->dt_mail_dispatch_auto_limit_input_err_tips:I

    invoke-static {v5}, Lcms;->a(I)V

    .line 111
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->h:Landroid/view/MenuItem;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 113
    :cond_1
    const-string/jumbo v0, ""

    .line 114
    .local v0, "content":Ljava/lang/String;
    if-lez v2, :cond_2

    .line 115
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 118
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 121
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->h:Landroid/view/MenuItem;

    if-lez v2, :cond_4

    iget v6, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->g:I

    if-gt v2, v6, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 122
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->h:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 123
    iput v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->c:I

    .line 128
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_5
    :goto_1
    return-void

    .line 108
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CMailDistributeLimitOrgEmailsActivity"

    const-string/jumbo v5, " afterTextChanged error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->b()V

    return-void
.end method

.method private h()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 185
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->b:Z

    if-eqz v1, :cond_2

    .line 186
    sget v1, Laxo$f;->select_limit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    sget v1, Laxo$f;->select_no_limit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 189
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 190
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 191
    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->c:I

    if-lez v1, :cond_0

    .line 192
    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 196
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    invoke-static {v1}, Lsr;->a(Landroid/view/View;)V

    .line 197
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->h:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->b()V

    .line 3051
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    sget v1, Laxo$f;->select_no_limit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 202
    sget v1, Laxo$f;->select_limit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 204
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 205
    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->c:I

    if-lez v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->h:Landroid/view/MenuItem;

    if-eqz v1, :cond_4

    .line 209
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->h:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    .line 3050
    if-eqz v2, :cond_1

    .line 3053
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3054
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3055
    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Laxo$g;->activity_mail_distribute_org_mails_limit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->setContentView(I)V

    .line 49
    sget v0, Laxo$f;->limit_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->d:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v0, Laxo$f;->no_limit_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->e:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->e:Landroid/view/View;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget v0, Laxo$f;->limit_num:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    .line 66
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->a:J

    .line 93
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->finish()V

    .line 99
    :goto_0
    return-void

    .line 1216
    :cond_0
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1217
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1216
    invoke-virtual {v1, v2, v0}, Lro;->a(Ljava/lang/Long;Lcma;)V

    .line 1245
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->showLoadingDialog()V

    .line 1246
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1247
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$7;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1246
    invoke-virtual {v1, v2, v3, v0}, Lro;->a(JLcma;)V

    .line 98
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->h()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 133
    sget v0, Laxo$i;->create_complete:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->h:Landroid/view/MenuItem;

    .line 134
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->h:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 135
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 2151
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->showLoadingDialog()V

    .line 2152
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->b:Z

    iget v4, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->c:I

    const-string/jumbo v5, "EVENTBUTLER"

    .line 2153
    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$5;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V

    const-class v7, Lcma;

    invoke-interface {v5, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 2152
    invoke-virtual/range {v0 .. v5}, Lro;->a(Ljava/lang/Long;ZZILcma;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
