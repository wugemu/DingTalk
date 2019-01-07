.class public Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailMovetoFolderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field private d:Z

.field private e:Landroid/widget/ListView;

.field private f:Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;

.field private g:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

.field private h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

.field private i:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Lxv$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 95
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->i:Lxv;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;

    .prologue
    .line 29
    .line 4112
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4116
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->f:Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->g:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    if-eqz v0, :cond_7

    .line 4117
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->f:Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->g:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->getAllDatas()Ljava/util/List;

    move-result-object v0

    .line 5073
    iget-object v2, v1, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5074
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5075
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5076
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5078
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 5079
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 5080
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5081
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isRecentReadFolder()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5082
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5083
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isAllFavoriteFolder()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5084
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSyncableFolder()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5087
    iget-boolean v6, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    if-eqz v6, :cond_1

    .line 5088
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5089
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isCustomMailFolder()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5090
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5092
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5097
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5098
    iget-object v0, v1, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->a:Ljava/util/List;

    iget-object v5, v1, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->c:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5099
    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->e(Ljava/util/List;)V

    .line 5102
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5103
    iget-object v0, v1, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->a:Ljava/util/List;

    iget-object v2, v1, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5104
    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->e(Ljava/util/List;)V

    .line 5107
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5108
    iget-object v0, v1, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->a:Ljava/util/List;

    iget-object v2, v1, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->g:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5109
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->e(Ljava/util/List;)V

    .line 5112
    :cond_6
    iget-object v0, v1, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->a:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->a(Ljava/util/List;)V

    .line 29
    :cond_7
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1140
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1141
    const-string/jumbo v0, "account_name"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->b:Ljava/lang/String;

    .line 1142
    const-string/jumbo v0, "mail_folder"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->c:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1143
    const-string/jumbo v0, "mail_is_sessionable"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->d:Z

    .line 1144
    const-string/jumbo v0, "mail_server_ids"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->a:[Ljava/lang/String;

    .line 1146
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 125
    :goto_0
    if-nez v0, :cond_1

    .line 127
    const-string/jumbo v0, "MailMovetoFolderActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAccountName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mMailServerIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->finish()V

    .line 137
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1146
    goto :goto_0

    .line 132
    :cond_1
    sget v0, Laxo$g;->cmail_mail_moveto_folder:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->setContentView(I)V

    .line 133
    sget v0, Laxo$f;->list_view:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->e:Landroid/widget/ListView;

    .line 1150
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxo$i;->dt_mail_action_moveto_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 2154
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->f:Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;

    .line 2155
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->f:Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->c:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 3069
    iput-object v1, v0, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->b:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 2156
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->f:Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lafw;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->g:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    .line 2159
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->g:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 2160
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->g:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->forceReload()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->g:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->g:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 196
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->g:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    .line 197
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->f:Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->f:Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->c()V

    .line 202
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->f:Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;

    .line 205
    :cond_1
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->a:[Ljava/lang/String;

    .line 206
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->b:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->f:Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;

    invoke-virtual {v0, p3}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 170
    .local v7, "obj":Ljava/lang/Object;
    if-eqz v7, :cond_0

    instance-of v0, v7, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_0

    move-object v6, v7

    .line 171
    check-cast v6, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 3611
    .local v6, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    const-string/jumbo v0, "mail_move_to_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 3183
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->d:Z

    .line 3186
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->i:Lxv;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->a:[Ljava/lang/String;

    .line 3184
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->moveMailToNewFolder(ZJLxv;[Ljava/lang/String;)V

    .line 174
    .end local v6    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_0
    return-void
.end method
