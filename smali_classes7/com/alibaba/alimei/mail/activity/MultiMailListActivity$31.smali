.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;
.super Landroid/content/BroadcastReceiver;
.source "MultiMailListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 1843
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1846
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1847
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v9, "mail_folder_selected"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1848
    const-string/jumbo v9, "mail_request_ticket"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1849
    .local v8, "requestTicket":Ljava/lang/String;
    const-string/jumbo v9, "account_name"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1850
    .local v0, "accountName":Ljava/lang/String;
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->v(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v0, :cond_0

    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v9

    .line 2503
    iget-object v9, v9, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 1850
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1851
    const-string/jumbo v9, "mail_folder"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1852
    .local v7, "model":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v9, v7}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    .line 1854
    .end local v7    # "model":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_0
    sget-object v9, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v10, "CMail"

    const-string/jumbo v11, "mail.switchFolder"

    invoke-static {v9, v10, v11}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v8    # "requestTicket":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1856
    :cond_2
    const-string/jumbo v9, "action_mail_account_logout"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1857
    const-string/jumbo v9, "mail_account_logout"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1858
    .restart local v0    # "accountName":Ljava/lang/String;
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v3

    .line 1860
    .local v3, "currentAcount":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1862
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v9

    invoke-virtual {v9}, Lacr;->e()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1863
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {}, Lacn;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1866
    :cond_3
    invoke-static {}, Lacg;->d()V

    .line 1867
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->finish()V

    goto :goto_0

    .line 1870
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v3    # "currentAcount":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "mail_folder_new_mail"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1871
    const-string/jumbo v9, "account_name"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1872
    .restart local v0    # "accountName":Ljava/lang/String;
    const-string/jumbo v9, "mail_folder_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    .line 1874
    .local v6, "folders":Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1876
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v9

    .line 3503
    iget-object v9, v9, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 1876
    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1877
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v9

    .line 4246
    iget-object v2, v9, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 1878
    .local v2, "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    if-eqz v2, :cond_1

    .line 1881
    instance-of v9, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v9, :cond_6

    move-object v4, v2

    .line 1882
    check-cast v4, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1883
    .local v4, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->getFolders()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;

    .line 1884
    .local v5, "folder":Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->getFolderId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v4, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1885
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->getFolderType()I

    move-result v10

    iget v11, v4, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverType:I

    if-eq v10, v11, :cond_5

    .line 1901
    .end local v2    # "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    .end local v4    # "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v5    # "folder":Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "pref_key_mail_menu_new_dot"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1899
    :cond_7
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$31;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "pref_key_mail_account_new_dot"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1
.end method
