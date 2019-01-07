.class public Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSignTemplateListActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private d:Landroid/app/Activity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laca;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ladd;

.field private g:J

.field private h:J

.field private i:J

.field private j:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->i:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;JI)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 36
    .line 10210
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    if-gez p3, :cond_1

    .line 10211
    :cond_0
    :goto_0
    return-void

    .line 10214
    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->a(J)V

    .line 10215
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$5;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;I)V

    .line 10246
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 10247
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lro;->a(JILcma;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)Ladd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->f:Ladd;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;J)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 36
    .line 10290
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_mail_signature_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10291
    const-string/jumbo v1, "mail_sign_template_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 10292
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 10293
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->finish()V

    .line 36
    return-void
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    .prologue
    .line 36
    .line 10175
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10176
    :cond_0
    const-string/jumbo v0, "CMailSignTemplateListActivity"

    const-string/jumbo v1, "data error"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10177
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->finish()V

    .line 10178
    :goto_0
    return-void

    .line 10181
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 10182
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 10183
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->f:Ladd;

    invoke-virtual {v0}, Ladd;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->g:J

    return-wide v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 6135
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->a(J)V

    .line 6136
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)V

    .line 6170
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6171
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->a:Ljava/lang/String;

    .line 6233
    if-nez v0, :cond_0

    .line 6234
    const-string/jumbo v0, "syncSignatureTemplates"

    const-string/jumbo v1, "listener == null"

    invoke-static {v0, v1}, Lafg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6235
    :goto_0
    return-void

    .line 6238
    :cond_0
    new-instance v3, Lacr$10;

    invoke-direct {v3, v1, v0, v2}, Lacr$10;-><init>(Lacr;Lcma;Ljava/lang/String;)V

    .line 6267
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    .line 7188
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v4, "listMailSignatureTemplate"

    invoke-static {v1, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7189
    new-instance v1, Lro$32;

    invoke-direct {v1, v0, v3}, Lro$32;-><init>(Lro;Lcma;)V

    .line 7206
    iget-object v0, v0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v0, v2, v1}, Lcom/alibaba/alimei/idl/service/CMailIService;->listMailSignatureTemplate(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v4, -0x1

    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v1, Laxo$g;->alm_cmail_fragment_mail_sign_template_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->setContentView(I)V

    .line 2156
    const-string/jumbo v1, "JustForStatisticActivity"

    const-string/jumbo v2, "mail_sign_moban"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 57
    const-string/jumbo v1, "CMailSignTemplateListActivity"

    const-string/jumbo v2, "data error"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->finish()V

    .line 3115
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->a:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->g:J

    .line 64
    const-string/jumbo v1, "mail_sign_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->h:J

    .line 65
    iput-object p0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->d:Landroid/app/Activity;

    .line 66
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const-string/jumbo v1, "CMailSignTemplateListActivity"

    const-string/jumbo v2, "mAccountName is empty"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->finish()V

    goto :goto_0

    .line 3108
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->e:Ljava/util/List;

    .line 3109
    new-instance v1, Ladd;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->e:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Ladd;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->f:Ladd;

    .line 3110
    sget v1, Laxo$f;->sign_template_list:I

    .line 3372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3110
    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->b:Landroid/widget/ListView;

    .line 3111
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lacr;->b(Ljava/lang/String;)Laca;

    move-result-object v2

    .line 3112
    sget v1, Laxo$f;->list_empty_view:I

    .line 4372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3112
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 3113
    if-nez v2, :cond_2

    .line 3114
    const-string/jumbo v1, "CMailSignTemplateListActivity"

    const-string/jumbo v2, "initView() signatureDo = null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3118
    :cond_2
    iget-wide v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->g:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 3119
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->f:Ladd;

    iget v2, v2, Laca;->s:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ladd;->a(J)V

    .line 3121
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->f:Ladd;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)V

    .line 5169
    iput-object v2, v1, Ladd;->b:Ladd$a;

    .line 3131
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->f:Ladd;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 85
    sget v0, Laxo$i;->dt_mail_save:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->j:Landroid/view/MenuItem;

    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->j:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 298
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 299
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->f:Ladd;

    if-eqz v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->f:Ladd;

    .line 9179
    :try_start_0
    iget-object v0, v1, Ladd;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 9180
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 9181
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9183
    :catch_0
    move-exception v0

    .line 9184
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 9185
    iget-object v1, v1, Ladd;->a:Ljava/lang/String;

    const-string/jumbo v2, "cleanWebviews"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9186
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 95
    :pswitch_0
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 96
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->i:J

    long-to-int v0, v0

    .line 8187
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8188
    sget v2, Laxo$i;->dt_mail_signature_open_tips:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8189
    sget v2, Laxo$i;->dt_mail_signature_open_orgsignature:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;I)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8198
    sget v0, Laxo$i;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8206
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 98
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->h:J

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->i:J

    .line 8251
    new-instance v4, Laca;

    invoke-direct {v4}, Laca;-><init>()V

    .line 8252
    iput-wide v0, v4, Laca;->b:J

    .line 8253
    long-to-int v0, v2

    iput v0, v4, Laca;->s:I

    .line 8255
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->a(J)V

    .line 8256
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$6;

    invoke-direct {v0, p0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;J)V

    .line 8284
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 8285
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    .line 8286
    invoke-virtual {v4}, Laca;->a()Labr;

    move-result-object v2

    .line 8285
    invoke-virtual {v1, v2, v0}, Lro;->a(Labr;Lcma;)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
