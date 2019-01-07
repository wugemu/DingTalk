.class public Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailNotificationSubscribeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;

.field private b:Landroid/widget/ListView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->c:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;

    sget v1, Laxo$g;->alm_cmail_mail_account_notification_list_item:I

    invoke-direct {v0, p0, p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;

    .line 244
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    .line 2197
    invoke-static {p0, p1}, Lacg;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1063
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1064
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "guide_push"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1065
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "guide_push_account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 1197
    :cond_0
    invoke-static {p0, v0}, Lacg;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 2083
    :cond_1
    sget v0, Laxo$g;->activity_cmail_notification_subscribe:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->setContentView(I)V

    .line 2086
    sget v0, Laxo$f;->account_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->b:Landroid/widget/ListView;

    .line 2087
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2088
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 2162
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->c:Ljava/util/List;

    .line 2163
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2164
    :cond_0
    const-string/jumbo v0, "CMailNotificationSubscribeActivity"

    const-string/jumbo v1, "CMailNotificationSubscribeActivity loginMails.isEmpty"

    invoke-static {v0, v1}, Lafg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2166
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->finish()V

    .line 2169
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;->b(Ljava/util/List;)V

    .line 2173
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method
