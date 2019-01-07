.class public Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSettingsFolderPushActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/ToggleButton;

.field private h:Landroid/widget/ToggleButton;

.field private i:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->c:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->d:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    sget v1, Laxo$g;->alm_cmail_mail_folder_notification_list_item:I

    invoke-direct {v0, p0, p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    .line 265
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e:Lcom/alibaba/alimei/sdk/model/FolderModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 50
    .line 6337
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 6338
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6339
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 6344
    :cond_0
    :goto_0
    return-void

    .line 6341
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 6342
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6343
    iput-boolean p2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    .line 7249
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7250
    invoke-static {p0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    .line 7251
    if-eqz v0, :cond_2

    .line 7252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7253
    const-string/jumbo v1, "CMailSettingsFolderPushActivity"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "updateAllFoldersLastSyncTime, accountName"

    aput-object v3, v2, v4

    aput-object p0, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7254
    invoke-interface {v0, v6}, Lcom/alibaba/alimei/sdk/api/FolderApi;->updateAllPushFoldersLastVisitTime(Lxv;)V

    .line 7257
    :cond_0
    :goto_0
    return-void

    .line 7256
    :cond_1
    const-string/jumbo v1, "CMailSettingsFolderPushActivity"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "updateLastVisit serverId: "

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7257
    invoke-interface {v0, p1, v6}, Lcom/alibaba/alimei/sdk/api/FolderApi;->updateLastVisitTime(Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 7260
    :cond_2
    const-string/jumbo v0, "CMailSettingsFolderPushActivity"

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "updateAllFoldersLastSyncTime, accountName"

    aput-object v2, v1, v4

    aput-object p0, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "syncAccountSwitch"    # Z
    .param p3, "syncAll"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 438
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(J)V

    .line 439
    const-string/jumbo v0, "CMailSettingsFolderPushActivity"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;ZZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 522
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->i()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    .line 6126
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lafv;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->c:Ljava/util/List;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->updateMailPushFolders(Ljava/util/List;Lxv;)V

    .line 50
    return-void
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->h()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e:Lcom/alibaba/alimei/sdk/model/FolderModel;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    return-object v0
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 535
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 536
    .local v0, "f":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_0

    .line 537
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->d:Ljava/util/Map;

    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 540
    .end local v0    # "f":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->h:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    .line 7528
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    .line 8062
    invoke-static {v0}, Lajj;->a(Ljava/lang/String;)Z

    move-result v0

    .line 7528
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lajj;->a(Ljava/lang/String;Z)V

    .line 50
    return-void

    .line 7528
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 50
    .line 8546
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 8547
    if-eqz v0, :cond_0

    .line 8548
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 8549
    if-nez v1, :cond_1

    .line 8550
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 8552
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    goto :goto_0

    .line 50
    :cond_2
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 429
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Ljava/lang/String;ZZ)V

    .line 430
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Ljava/lang/String;ZZ)V

    .line 436
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v2, 0x3e8

    .line 82
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 2140
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2141
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2142
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lpp;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryAllMailPushableFolders(Lxv;)V

    .line 84
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2392
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(J)V

    .line 2393
    new-instance v0, Laba;

    invoke-direct {v0}, Laba;-><init>()V

    .line 2394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Laba;->a:Ljava/util/List;

    .line 2395
    iget-object v1, v0, Laba;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2396
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    invoke-virtual {v1, v0, v2}, Lro;->a(Laba;Lcma;)V

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->h()V

    .line 90
    return-void

    .line 3298
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(J)V

    .line 3299
    const-string/jumbo v0, "CMailSettingsFolderPushActivity"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->h:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    invoke-static {v0, p2}, Lajj;->a(Ljava/lang/String;Z)V

    .line 224
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    .line 3352
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(J)V

    .line 3353
    new-instance v1, Labb;

    invoke-direct {v1}, Labb;-><init>()V

    .line 3354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Labb;->a:Ljava/util/List;

    .line 3355
    new-instance v2, Laaz;

    invoke-direct {v2}, Laaz;-><init>()V

    .line 3356
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Laaz;->a:Ljava/lang/Boolean;

    .line 3357
    iput-object v0, v2, Laaz;->b:Ljava/lang/String;

    .line 3358
    iget-object v0, v1, Labb;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3360
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;Z)V

    .line 3873
    const-string/jumbo v3, "MailRPC"

    const-string/jumbo v4, "setThirdAccountsSubscribeInfo"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    new-instance v3, Lro$25;

    invoke-direct {v3, v0, v2}, Lro$25;-><init>(Lro;Lcma;)V

    .line 3891
    iget-object v0, v0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v0, v1, v3}, Lcom/alibaba/alimei/idl/service/CMailIService;->setThirdAccountsSubscribeInfo(Labb;Liyv;)V

    .line 230
    :goto_0
    if-eqz p2, :cond_2

    .line 4490
    const-string/jumbo v0, "mail_setting_notification_switch_on"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 4432
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 4494
    :cond_2
    const-string/jumbo v0, "mail_setting_notification_switch_off"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->i()V

    .line 238
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iput-boolean p2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    .line 239
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    .line 5435
    invoke-direct {p0, v0, v2, v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->finish()V

    .line 73
    const-string/jumbo v0, "CMailSettingsFolderPushActivity"

    const-string/jumbo v1, "CMailSettingsFolderPushActivity onCreate:"

    const-string/jumbo v2, "mAccount = null"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 2093
    :cond_0
    sget v0, Laxo$g;->alm_cmail_settings_push_folders_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->setContentView(I)V

    .line 2094
    sget v0, Laxo$f;->list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->f:Landroid/widget/ListView;

    .line 2095
    sget v0, Laxo$f;->self_folders_control:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j:Landroid/widget/TextView;

    .line 2096
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2113
    sget v0, Laxo$f;->account_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->h:Landroid/widget/ToggleButton;

    .line 2114
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2116
    sget v0, Laxo$f;->inbox_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g:Landroid/widget/ToggleButton;

    .line 2117
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->i:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2118
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 2119
    :goto_1
    sget v0, Laxo$f;->inner_account_settings_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->k:Landroid/widget/LinearLayout;

    .line 2120
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->k:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2121
    sget v0, Laxo$f;->inbox_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2122
    sget v0, Laxo$f;->folder_list_cover:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->l:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2118
    goto :goto_1

    :cond_2
    move v0, v3

    .line 2120
    goto :goto_2

    :cond_3
    move v2, v3

    .line 2121
    goto :goto_3
.end method
