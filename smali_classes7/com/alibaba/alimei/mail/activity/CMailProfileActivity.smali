.class public Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailProfileActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v1, Laxo$g;->cmail_profile_activity:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "user_profile_addr"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "user_profile_alias"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->b:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->finish()V

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->b:Ljava/lang/String;

    .line 1049
    :cond_1
    sget v1, Laxo$f;->invite:I

    .line 1372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1049
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->c:Landroid/view/View;

    .line 1050
    sget v1, Laxo$f;->name:I

    .line 2372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1050
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->d:Landroid/widget/TextView;

    .line 1051
    sget v1, Laxo$f;->email:I

    .line 3372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1051
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->e:Landroid/widget/TextView;

    .line 1052
    sget v1, Laxo$f;->send_mail_button:I

    .line 4372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1052
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->f:Landroid/view/View;

    .line 1053
    sget v1, Laxo$f;->avatar:I

    .line 5372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1053
    check-cast v1, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->g:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 1054
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->g:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->b:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1055
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->a:Ljava/lang/String;

    .line 1058
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v3

    .line 1057
    invoke-virtual {v1, v2, v3}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1059
    sget v2, Laxo$f;->mail_not_same_org_tips:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->c:Landroid/view/View;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1082
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->f:Landroid/view/View;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1059
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
