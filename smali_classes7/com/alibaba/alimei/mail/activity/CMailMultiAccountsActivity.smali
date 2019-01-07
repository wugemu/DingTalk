.class public Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailMultiAccountsActivity.java"


# instance fields
.field private a:Lrz;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 29
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->a:Lrz;

    .line 36
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->a:Lrz;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 101
    sget v4, Laxo$f;->ll_dingtalk_mail:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->c:Landroid/view/View;

    .line 103
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v4

    invoke-virtual {v4}, Lacr;->e()Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->c:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 105
    sget v4, Laxo$f;->add_mail_line:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 106
    sget v4, Laxo$f;->dingtalk_line:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    sget v4, Laxo$f;->agent_mail_line:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->d:Landroid/widget/TextView;

    invoke-static {}, Lacn;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v4

    invoke-virtual {v4}, Lacr;->i()Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "mails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->finish()V

    goto :goto_0

    .line 119
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    sget v4, Laxo$f;->agent_mail_line:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 123
    sget v4, Laxo$f;->add_mail_line:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->c:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->b:Landroid/widget/TextView;

    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 130
    .local v3, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    const-string/jumbo v4, "pref_key_has_show_mail_setting"

    invoke-static {v4, v7}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 132
    .local v0, "hasShowMailSetting":Z
    sget v4, Laxo$f;->red_hot:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 133
    .local v2, "redDot":Landroid/view/View;
    if-eqz v3, :cond_5

    iget-boolean v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    if-eqz v4, :cond_5

    .line 134
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->c:Landroid/view/View;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    if-eqz v0, :cond_4

    .line 137
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_6

    .line 147
    sget v4, Laxo$f;->agent_mail_line:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->d:Landroid/widget/TextView;

    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 139
    :cond_4
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 142
    :cond_5
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->c:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 152
    :cond_6
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v4

    invoke-virtual {v4}, Lacr;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    sget v4, Laxo$f;->add_mail_line:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->b()V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->finish()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Laxo$g;->alm_cmail_fragment_mail_multi_accounts_settings:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->setContentView(I)V

    .line 66
    sget v0, Laxo$f;->dingtalk_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->b:Landroid/widget/TextView;

    .line 67
    sget v0, Laxo$f;->agent_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->d:Landroid/widget/TextView;

    .line 68
    sget v0, Laxo$f;->add_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->e:Landroid/widget/TextView;

    .line 69
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->b()V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 75
    return-void
.end method
