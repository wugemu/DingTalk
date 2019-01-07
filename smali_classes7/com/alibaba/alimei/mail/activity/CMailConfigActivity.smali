.class public Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailConfigActivity.java"


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/view/ViewGroup;

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

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ToggleButton;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Z

.field private r:J

.field private s:I

.field private t:Landroid/widget/TextView;

.field private u:Lrz;

.field private v:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 74
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->g:Landroid/widget/TextView;

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->r:J

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->s:I

    .line 92
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->t:Landroid/widget/TextView;

    .line 93
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->u:Lrz;

    .line 95
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->v:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->u:Lrz;

    return-object v0
.end method

.method private a(Z)Lxv;
    .locals 4
    .param p1, "isNeedFromServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 235
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Z)V

    const-class v3, Lxv;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 307
    .local v0, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/UserSelfContactModel;>;"
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    .line 5463
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->u:Lrz;

    .line 6045
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lrz;->a:J

    .line 5465
    if-nez p1, :cond_0

    .line 5466
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v1, "queryAccountSettingAndNavigate not found account "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 5467
    :goto_0
    return-void

    .line 6843
    :cond_0
    const-string/jumbo v0, "mail_mailbind_normallogin_configure_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 5473
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5474
    const-string/jumbo v0, "mail_account_name"

    iget-object v1, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5476
    const/16 v4, 0x1bb

    .line 5477
    const/16 v0, 0x19

    .line 5480
    :try_start_0
    iget-object v1, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5481
    :try_start_1
    iget-object v4, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 5487
    :goto_1
    const-string/jumbo v4, "imap_server"

    iget-object v6, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5488
    const-string/jumbo v4, "imap_port"

    invoke-virtual {v5, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5489
    const-string/jumbo v1, "imap_ssl"

    iget-boolean v4, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5491
    const-string/jumbo v1, "smtp_server"

    iget-object v4, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5492
    const-string/jumbo v1, "smtp_port"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5493
    const-string/jumbo v1, "smtp_ssl"

    iget v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpSecurityType:I

    if-lez v0, :cond_1

    move v0, v2

    :goto_2
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5494
    invoke-static {p0, v5, v11}, Lacg;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 5482
    :catch_0
    move-exception v1

    move-object v12, v1

    move v1, v4

    move-object v4, v12

    .line 5483
    :goto_3
    const-string/jumbo v6, "CMailConfigActivity"

    const-string/jumbo v7, " navigateToServerConfig() "

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, " incomingPort:"

    aput-object v9, v8, v3

    iget-object v9, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    aput-object v9, v8, v2

    const-string/jumbo v9, " smtpPort:"

    aput-object v9, v8, v10

    const/4 v9, 0x3

    iget-object v10, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    aput-object v10, v8, v9

    const-string/jumbo v9, "   Exception:"

    aput-object v9, v8, v11

    const/4 v9, 0x5

    .line 5484
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    .line 5483
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v0, v3

    .line 5493
    goto :goto_2

    .line 5482
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 335
    .local p1, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "popList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "smtpList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v0, "allMails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 337
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 340
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 341
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 345
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 348
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 349
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 404
    :cond_3
    return-void

    .line 353
    :cond_4
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 354
    .local v8, "viewCount":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 356
    .local v3, "mailSize":I
    if-le v3, v8, :cond_5

    move v4, v8

    .line 358
    .local v4, "min":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 359
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 360
    .local v1, "childView":Landroid/view/View;
    sget v9, Laxo$f;->email:I

    invoke-static {v1, v9}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 361
    .local v6, "senderView":Landroid/widget/TextView;
    sget v9, Laxo$f;->select:I

    invoke-static {v1, v9}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 363
    .local v5, "selectView":Landroid/view/View;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 365
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v10, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 368
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v4    # "min":I
    .end local v5    # "selectView":Landroid/view/View;
    .end local v6    # "senderView":Landroid/widget/TextView;
    :cond_5
    move v4, v3

    .line 356
    goto :goto_0

    .line 370
    .restart local v1    # "childView":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v4    # "min":I
    .restart local v5    # "selectView":Landroid/view/View;
    .restart local v6    # "senderView":Landroid/widget/TextView;
    :cond_6
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 376
    .end local v1    # "childView":Landroid/view/View;
    .end local v5    # "selectView":Landroid/view/View;
    .end local v6    # "senderView":Landroid/widget/TextView;
    :cond_7
    move v2, v4

    :goto_3
    if-ge v2, v8, :cond_8

    .line 377
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 380
    :cond_8
    move v2, v4

    :goto_4
    if-ge v2, v3, :cond_3

    .line 381
    sget v9, Laxo$g;->cmail_setting_sender_item:I

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 382
    .local v7, "view":Landroid/view/View;
    sget v9, Laxo$f;->email:I

    invoke-static {v7, v9}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 383
    .restart local v6    # "senderView":Landroid/widget/TextView;
    sget v9, Laxo$f;->select:I

    invoke-static {v7, v9}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 385
    .restart local v5    # "selectView":Landroid/view/View;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 388
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 389
    new-instance v9, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$8;

    invoke-direct {v9, p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v10, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 399
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 380
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 401
    :cond_9
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Z)Lxv;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromLocal(Lxv;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 319
    .local v0, "tr":Ljava/lang/Throwable;
    const-string/jumbo v1, "refreshAttachmentFromLocal.getUserFromLocal"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->h:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    .line 2686
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v2

    .line 2687
    if-eqz v2, :cond_1

    .line 2688
    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->q:Z

    if-nez v3, :cond_0

    :goto_0
    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Lcom/alibaba/alimei/sdk/api/SettingApi;->setCopySendMail2Sent(ZLxv;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    .line 2691
    :cond_1
    const-string/jumbo v2, "CMailConfigActivity"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "can\'t find setting api for "

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    .line 3423
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3424
    sget v1, Laxo$i;->alm_cmail_mail_account_reset_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3425
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3426
    sget v1, Laxo$i;->alm_cmail_mail_account_reset_confirm:I

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$9;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3435
    sget v1, Laxo$i;->cancel:I

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$10;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3442
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 58
    return-void
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    .line 3498
    const-string/jumbo v0, "CMailConfigActivity"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 3499
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    const/4 v6, 0x0

    .line 58
    .line 3525
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->u:Lrz;

    .line 4045
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lrz;->a:J

    .line 3527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3528
    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->r:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 3529
    iput-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->r:J

    .line 3530
    iput v6, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->s:I

    .line 3535
    :goto_0
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->s:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 3536
    iput v6, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->s:I

    .line 3538
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3539
    sget v1, Laxo$i;->dt_mail_enable_imap_debug_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3540
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3541
    sget v1, Laxo$i;->dt_mail_common_yes:I

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$13;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3551
    sget v1, Laxo$i;->cancel:I

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$14;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3557
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 58
    :cond_0
    return-void

    .line 3532
    :cond_1
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->s:I

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    .line 4518
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4519
    const-string/jumbo v1, "account_name"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4521
    const-string/jumbo v1, "/page/mail_imap_advance"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    .line 4696
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->showLoadingDialog()V

    .line 4697
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    .line 4698
    if-eqz v0, :cond_0

    .line 4699
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    .line 4723
    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->checkMailData(Lxv;)V

    .line 4724
    :goto_0
    return-void

    .line 4725
    :cond_0
    const-string/jumbo v0, "CMailConfigActivity"

    const-string/jumbo v1, "checkUserData fail for mailApi is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    .line 5326
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Z)Lxv;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromServer(Lxv;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5331
    :goto_0
    return-void

    .line 5327
    :catch_0
    move-exception v0

    .line 5329
    const-string/jumbo v1, "getUserFromServer.getUserSelfContactFromServer"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic s(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    .line 5447
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->showLoadingDialog()V

    .line 5449
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$11;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->resetFoldersSyncStatus(Lxv;)V

    .line 58
    return-void
.end method

.method static synthetic u(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 58
    .line 7731
    const-string/jumbo v0, "mail_logout_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 7586
    const-string/jumbo v0, "handleUnbindAccount"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lafg;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 7587
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_mail_account_logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7588
    const-string/jumbo v1, "mail_account_logout"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7589
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 7592
    invoke-static {}, Lafh;->d()V

    .line 7595
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->j()V

    .line 7597
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->finish()V

    .line 7600
    invoke-static {p0}, Lacg;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x8

    .line 190
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 193
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 194
    .local v0, "isAli":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 195
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->i:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->j:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->k:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->l:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->m:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->n:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :goto_1
    return-void

    .end local v0    # "isAli":Z
    :cond_0
    move v0, v2

    .line 193
    goto :goto_0

    .line 203
    .restart local v0    # "isAli":Z
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->i:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->j:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->k:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->l:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v3}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v1

    .line 210
    .local v1, "settingApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/alibaba/alimei/sdk/api/SettingApi;->showAdvanceSetting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->m:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->n:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->m:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->n:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    sget v2, Laxo$g;->alm_cmail_fragment_mail_config:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->setContentView(I)V

    .line 127
    const v2, 0x1020014

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->g:Landroid/widget/TextView;

    .line 128
    sget v2, Laxo$f;->account_layout:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->b:Landroid/view/ViewGroup;

    .line 129
    sget v2, Laxo$f;->copy_sent_mail_toggle:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->h:Landroid/widget/ToggleButton;

    .line 130
    sget v2, Laxo$f;->copy_sent_mail_cell:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->i:Landroid/view/View;

    .line 131
    sget v2, Laxo$f;->copy_sent_mail_tip_label:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->j:Landroid/view/View;

    .line 132
    sget v2, Laxo$f;->copy_sent_mail_cell_spacing:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->k:Landroid/view/View;

    .line 133
    sget v2, Laxo$f;->server_config_btn:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->l:Landroid/view/View;

    .line 134
    sget v2, Laxo$f;->advance_setting_btn:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->m:Landroid/view/View;

    .line 135
    sget v2, Laxo$f;->setting_divider1:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->n:Landroid/view/View;

    .line 136
    sget v2, Laxo$f;->hidden_debug_btn:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o:Landroid/view/View;

    .line 137
    sget v2, Laxo$f;->check_data:I

    .line 1372
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 137
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->p:Landroid/view/View;

    .line 139
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->h:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->p:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v2, Laxo$f;->account_layout:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->b:Landroid/view/ViewGroup;

    .line 147
    sget v2, Laxo$f;->data_reset_btn:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->t:Landroid/widget/TextView;

    .line 148
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->t:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->finish()V

    .line 186
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    .line 156
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->finish()V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Lacn;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->finish()V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$i;->dd_cmail_account:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->c:Ljava/util/List;

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->d:Ljava/util/List;

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->e:Ljava/util/List;

    .line 175
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->f:Ljava/lang/String;

    .line 2224
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2226
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Lafh;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2227
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->b()V

    .line 2231
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->c:Ljava/util/List;

    invoke-direct {p0, v2, v4, v4}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 178
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v1

    .line 179
    .local v1, "settingApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    if-eqz v1, :cond_4

    .line 180
    invoke-interface {v1}, Lcom/alibaba/alimei/sdk/api/SettingApi;->getCopySendMail2Sent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->q:Z

    .line 181
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->h:Landroid/widget/ToggleButton;

    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->q:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 184
    :cond_4
    const-string/jumbo v2, "CMailConfigActivity"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "can\'t find setting api for "

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 414
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 415
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2662
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v0

    .line 2663
    if-eqz v0, :cond_1

    .line 2664
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->f:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    invoke-interface {v0, v3, v1, v2}, Lcom/alibaba/alimei/contact/api/ContactApi;->updateSelfInfo(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    .line 419
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 409
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onPause()V

    .line 410
    return-void
.end method
