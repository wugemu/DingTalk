.class public Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSettingsSubscribeCainiaoActivity.java"


# instance fields
.field final a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 30
    const-string/jumbo v0, "pref_key_mail_cainiao_subscribe"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # I

    .prologue
    .line 26
    .line 3103
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3222
    const-string/jumbo v0, "mail_cainiaov2_Subscribe"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 3109
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;I)V

    .line 3148
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3150
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lro;->a(ILcma;)V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->c:Z

    return p1
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 154
    const-string/jumbo v0, "pref_key_mail_cainiao_subscribe"

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->c:Z

    .line 155
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->c:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    sget v0, Laxo$f;->subscribe_stamp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    sget v0, Laxo$f;->subscribe_stamp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Laxo$g;->alm_cmail_fragment_mail_settings_subscribe_cainiao:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->setContentView(I)V

    .line 40
    sget v0, Laxo$f;->subscribe_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->b:Landroid/view/View;

    .line 41
    const-string/jumbo v0, "pref_key_mail_cainiao_subscribe"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->c:Z

    .line 42
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->b()V

    .line 43
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 67
    sget v0, Laxo$i;->dt_cmail_my_subscribe:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->d:Landroid/view/MenuItem;

    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->d:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 69
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 2226
    :pswitch_0
    const-string/jumbo v0, "mail_cainiaov2_MySubscription"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lacg;->c(Landroid/content/Context;Lcma;)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 75
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->b()V

    .line 76
    return-void
.end method
