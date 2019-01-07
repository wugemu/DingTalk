.class public Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "AddCommonExpressionActivity.java"


# instance fields
.field private a:Lael;

.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->b:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 73
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->finish()V

    .line 75
    sget v0, Laxo$a;->pop:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->overridePendingTransition(II)V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v1, Laxo$g;->activity_add_common_expression:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->setContentView(I)V

    .line 29
    sget v1, Laxo$f;->add_expression_field:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->b:Landroid/widget/EditText;

    .line 31
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_0
    invoke-static {v0}, Laej;->a(Ljava/lang/String;)Laej;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->a:Lael;

    .line 37
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 41
    const/4 v1, 0x1

    sget v2, Laxo$i;->create_complete:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 42
    .local v0, "menuItemDone":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 56
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 50
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->onBackPressed()V

    .line 51
    const/4 v0, 0x1

    goto :goto_1

    .line 2061
    :sswitch_1
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->b()V

    .line 2063
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2064
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2065
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->a:Lael;

    invoke-interface {v1, v0}, Lael;->b(Ljava/lang/String;)V

    .line 2068
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/AddCommonExpressionActivity;->finish()V

    goto :goto_0

    .line 48
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
