.class public Lcom/alibaba/alimei/mail/activity/MailLoginActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailLoginActivity.java"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    .line 45
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->c:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->d:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailLoginActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a(ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "isLoginByH5"    # Z
    .param p2, "isOperable"    # Z
    .param p3, "defaultEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Labf;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 288
    .local p4, "distributionEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "unEditableMails":Ljava/util/List;, "Ljava/util/List<Labf;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    if-nez v1, :cond_0

    .line 289
    if-eqz p1, :cond_1

    .line 290
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    invoke-direct {v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    .line 295
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    invoke-virtual {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 296
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    invoke-virtual {v1, p3, p4}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 297
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->c:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->a(I)V

    .line 298
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->d:Z

    .line 10177
    iput-boolean v2, v1, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->f:Z

    .line 299
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->e:Ljava/lang/String;

    .line 10181
    iput-object v2, v1, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->g:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->a(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->f(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->b(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->a(Ljava/util/Map;)V

    .line 304
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->c(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    invoke-virtual {v1, p5}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->b(Ljava/util/List;)V

    .line 306
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    invoke-virtual {v1, p3}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->d(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    invoke-virtual {v1, p2}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->b(Z)V

    .line 308
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->e(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 311
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Laxo$f;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 312
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 313
    return-void

    .line 292
    .end local v0    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-direct {v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->l:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailLoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;)Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->finish()V

    .line 347
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->b()V

    .line 348
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x64

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 91
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 93
    .local v12, "intent":Landroid/content/Intent;
    if-nez v12, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->finish()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string/jumbo v0, "mail_name"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "mMailName":Ljava/lang/String;
    const-string/jumbo v0, "mail_login_choose"

    invoke-virtual {v12, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->c:I

    .line 99
    const-string/jumbo v0, "intent_key_nav_to_mail_list"

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->d:Z

    .line 100
    const-string/jumbo v0, "mail_request_ticket"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->e:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->hideToolbarDivide()V

    .line 103
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->c:I

    .line 1191
    packed-switch v0, :pswitch_data_0

    .line 1259
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->f:Ljava/lang/String;

    .line 1260
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->h:Ljava/lang/String;

    .line 1261
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message_other:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->i:Ljava/lang/String;

    .line 1262
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->j:Ljava/lang/String;

    .line 1266
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laxo$e;->bg_common_cell_white:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8316
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a:Landroid/content/BroadcastReceiver;

    .line 8337
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "mail_login_success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8338
    const-string/jumbo v1, "com.workapp.org_employee_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8339
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 107
    const/4 v6, 0x0

    .line 108
    .local v6, "isLoginByH5":Z
    invoke-static {}, Lacn;->d()Ljava/util/List;

    move-result-object v9

    .line 109
    .local v9, "distributionOrgEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v8}, Lacn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    const/4 v6, 0x1

    .line 126
    :cond_2
    :goto_2
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->c:I

    if-eq v0, v5, :cond_6

    .line 128
    const/4 v1, 0x0

    const-string/jumbo v3, ""

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a(ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1193
    .end local v6    # "isLoginByH5":Z
    .end local v9    # "distributionOrgEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->f:Ljava/lang/String;

    .line 1194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    .line 1195
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    const-string/jumbo v1, "type"

    const-string/jumbo v3, "alimail"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->i:Ljava/lang/String;

    .line 1197
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->g:Ljava/lang/String;

    .line 1198
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->j:Ljava/lang/String;

    .line 1199
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->ALIMAIL:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 2198
    iput-object v1, v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    goto/16 :goto_1

    .line 1202
    :pswitch_1
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_qqnum:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->f:Ljava/lang/String;

    .line 1203
    sget v0, Laxo$i;->dt_cmail_login_tips_tecent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->g:Ljava/lang/String;

    .line 1204
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP_qq"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->h:Ljava/lang/String;

    .line 1205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    .line 1206
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    const-string/jumbo v1, "type"

    const-string/jumbo v3, "qqmail"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message_qq:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->i:Ljava/lang/String;

    .line 1208
    const-string/jumbo v0, "@qq.com"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->j:Ljava/lang/String;

    .line 1209
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->QQ:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 3198
    iput-object v1, v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    goto/16 :goto_1

    .line 1212
    :pswitch_2
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->f:Ljava/lang/String;

    .line 1213
    sget v0, Laxo$i;->dt_cmail_login_tips_tecentEnt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->g:Ljava/lang/String;

    .line 1214
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/tencent_mail_faq"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->h:Ljava/lang/String;

    .line 1215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    .line 1216
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    const-string/jumbo v1, "type"

    const-string/jumbo v3, "qqorgmail"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message_tecentqq:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->i:Ljava/lang/String;

    .line 1218
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->j:Ljava/lang/String;

    .line 1219
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->TENcENT_EN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 4198
    iput-object v1, v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    goto/16 :goto_1

    .line 1222
    :pswitch_3
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_prefix:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->f:Ljava/lang/String;

    .line 1223
    sget v0, Laxo$i;->dt_cmail_login_tips_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->g:Ljava/lang/String;

    .line 1224
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP_163"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->h:Ljava/lang/String;

    .line 1225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    .line 1226
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    const-string/jumbo v1, "type"

    const-string/jumbo v3, "163mail"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message_163:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->i:Ljava/lang/String;

    .line 1228
    const-string/jumbo v0, "@163.com"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->j:Ljava/lang/String;

    .line 1229
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->NETEASE_163:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 5198
    iput-object v1, v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    goto/16 :goto_1

    .line 1232
    :pswitch_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    .line 1233
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    const-string/jumbo v1, "type"

    const-string/jumbo v3, "163orgmail"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->f:Ljava/lang/String;

    .line 1235
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->i:Ljava/lang/String;

    .line 1236
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->j:Ljava/lang/String;

    .line 1237
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->NETEASE_EN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 6198
    iput-object v1, v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    goto/16 :goto_1

    .line 1240
    :pswitch_5
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_126:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->f:Ljava/lang/String;

    .line 1241
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP_163"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->h:Ljava/lang/String;

    .line 1242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    .line 1243
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    const-string/jumbo v1, "type"

    const-string/jumbo v3, "126mail"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message_126:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->i:Ljava/lang/String;

    .line 1245
    const-string/jumbo v0, "@126.com"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->j:Ljava/lang/String;

    .line 1246
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->NETEASE_126:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 7198
    iput-object v1, v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    goto/16 :goto_1

    .line 1249
    :pswitch_6
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->f:Ljava/lang/String;

    .line 1250
    sget v0, Laxo$i;->dt_cmail_login_tips_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->g:Ljava/lang/String;

    .line 1251
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->h:Ljava/lang/String;

    .line 1252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    .line 1253
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->k:Ljava/util/Map;

    const-string/jumbo v1, "type"

    const-string/jumbo v3, "other"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message_other:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->i:Ljava/lang/String;

    .line 1255
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->j:Ljava/lang/String;

    .line 1256
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->OTHER:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 8198
    iput-object v1, v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    goto/16 :goto_1

    .line 113
    .restart local v6    # "isLoginByH5":Z
    .restart local v9    # "distributionOrgEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 114
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 117
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 118
    .local v11, "email":Ljava/lang/String;
    invoke-static {v11}, Lacn;->a(Ljava/lang/String;)Z

    move-result v6

    .line 119
    if-nez v6, :cond_2

    goto :goto_3

    .line 129
    .end local v11    # "email":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lacn;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9147
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->l:Z

    .line 9148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9156
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 9157
    if-eqz v0, :cond_0

    .line 9158
    const-string/jumbo v1, "MailLogin"

    const-string/jumbo v2, "[Method:getMailListFromNet] getOrgMailsV2"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9160
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;

    invoke-direct {v1, p0, v6, v8, v9}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;ZLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/idl/service/CMailIService;->getOrgMailsV2(Liyv;)V

    goto/16 :goto_0

    :cond_7
    move-object v5, p0

    move v7, v2

    move-object v10, v4

    .line 132
    invoke-direct/range {v5 .. v10}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a(ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Laxo$g;->activity_mail_login:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->setContentView(I)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxo$i;->dt_mail_agent_bind_titile:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-string/jumbo v1, "MailLogin"

    invoke-virtual {v0, p1, v1}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    .line 77
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 354
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a:Landroid/content/BroadcastReceiver;

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->dismissLoadingDialog()V

    .line 357
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 359
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->d()V

    .line 361
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    .line 363
    :cond_1
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 364
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->c()V

    .line 284
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 273
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->b()V

    .line 276
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-string/jumbo v1, "MailLogin"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;

    invoke-virtual {v0, p1, v1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
