.class public Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailSpeciListActivity.java"


# instance fields
.field a:Ladr;

.field private b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->c:J

    .line 34
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->a:Ladr;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v6, -0x1

    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n()V

    .line 69
    sget v3, Laxo$g;->alm_cmail_session_activity:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 71
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 72
    const-string/jumbo v3, "mail_folder_id"

    invoke-virtual {v1, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->c:J

    .line 74
    :cond_0
    iget-wide v4, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->c:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->finish()V

    .line 104
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, "accountName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-nez v3, :cond_2

    .line 1108
    new-instance v3, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-direct {v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 1110
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Ljava/lang/String;)V

    .line 1111
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(I)V

    .line 1112
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 1208
    const/4 v4, 0x1

    iput v4, v3, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l:I

    .line 1114
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->a:Ladr;

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Ladr;)V

    .line 1116
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 1117
    sget v4, Laxo$f;->fragment_container:I

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1118
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->finish()V

    goto :goto_0

    .line 84
    :cond_3
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;)V

    .line 103
    .local v2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-static {v0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->c:J

    invoke-interface {v3, v4, v5, v2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderById(JLxv;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 123
    invoke-static {}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->o()V

    .line 124
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Ladr;)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l()V

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 134
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 57
    invoke-virtual {v0, p1, v1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 139
    return-void
.end method
