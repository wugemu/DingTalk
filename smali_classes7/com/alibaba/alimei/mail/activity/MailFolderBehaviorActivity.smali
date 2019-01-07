.class public Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailFolderBehaviorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/ListView;

.field private g:Lacw;

.field private h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;

    .prologue
    .line 28
    .line 3169
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3173
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v0

    .line 3174
    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/SettingApi;->getFolderSync2Server(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->d:Z

    .line 3175
    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/SettingApi;->getSelectedFolderByType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->e:Ljava/lang/String;

    .line 3176
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->d:Z

    if-nez v0, :cond_0

    .line 3177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->e:Ljava/lang/String;

    .line 3180
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->a:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->getAllDatas()Ljava/util/List;

    move-result-object v0

    .line 3181
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->d:Z

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lacw;->a(Ljava/util/List;ZLjava/lang/String;)V

    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1146
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1148
    const-string/jumbo v3, "account_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->b:Ljava/lang/String;

    .line 1150
    const-string/jumbo v3, "mail_folder_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    .line 1152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v1

    .line 83
    :goto_0
    if-nez v0, :cond_3

    .line 85
    const-string/jumbo v0, "MailFolderBehaviorActivity"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "mAccountName: "

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->b:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", mFolderType: "

    aput-object v2, v3, v1

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->finish()V

    .line 96
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1152
    goto :goto_0

    .line 90
    :cond_3
    sget v0, Laxo$g;->activity_mail_folder_behavior:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->setContentView(I)V

    .line 92
    sget v0, Laxo$f;->folder_list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->f:Landroid/widget/ListView;

    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1158
    new-instance v0, Lacw;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    invoke-direct {v0, p0, v1}, Lacw;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    .line 1159
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lafw;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->a:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    .line 1162
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->a:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->a:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->a:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->forceReload()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 100
    const/4 v1, 0x1

    sget v2, Laxo$i;->create_complete:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 101
    .local v0, "menuItemDone":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 102
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 205
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->a:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->a:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 207
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->a:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    .line 208
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    invoke-virtual {v0}, Lacw;->c()V

    .line 213
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    .line 216
    :cond_1
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->b:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 186
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    invoke-virtual {v2, p3}, Lacw;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 188
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 190
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    if-eq v2, v4, :cond_0

    iget v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget v3, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    if-ne v2, v3, :cond_1

    .line 191
    :cond_0
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lacw;->a(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    invoke-virtual {v2, v4}, Lacw;->a(Z)V

    .line 200
    .end local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_1
    :goto_0
    return-void

    .line 195
    .restart local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lacw;->a(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lacw;->a(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 115
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 109
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->onBackPressed()V

    goto :goto_1

    .line 2119
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v3

    .line 2120
    if-nez v3, :cond_0

    .line 2121
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->finish()V

    goto :goto_0

    .line 2125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    .line 3087
    iget-boolean v0, v0, Lacw;->a:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 2126
    :goto_2
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->g:Lacw;

    .line 3091
    iget-object v4, v4, Lacw;->b:Ljava/lang/String;

    .line 2128
    if-eqz v0, :cond_2

    .line 2129
    iget v2, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    invoke-interface {v3, v2, v1, v5}, Lcom/alibaba/alimei/sdk/api/SettingApi;->setFolderSync2Server(IZLxv;)V

    .line 2130
    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    invoke-interface {v3, v4, v1, v5}, Lcom/alibaba/alimei/sdk/api/SettingApi;->selectFolderAsType(Ljava/lang/String;ILxv;)V

    .line 2135
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2136
    const-string/jumbo v2, "mail_folder_type"

    iget v3, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2137
    const-string/jumbo v2, "mail_folder_sync2server"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2138
    const-string/jumbo v0, "mail_folder_type_user_define_serverid"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2140
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->setResult(ILandroid/content/Intent;)V

    .line 2142
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->finish()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3087
    goto :goto_2

    .line 2132
    :cond_2
    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->c:I

    invoke-interface {v3, v1, v2, v5}, Lcom/alibaba/alimei/sdk/api/SettingApi;->setFolderSync2Server(IZLxv;)V

    goto :goto_3

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
