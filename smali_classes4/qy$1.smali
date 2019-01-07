.class final Lqy$1;
.super Luv;
.source "SyncImapFoldersTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqy;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqy;


# direct methods
.method constructor <init>(Lqy;)V
    .locals 0
    .param p1, "this$0"    # Lqy;

    .prologue
    .line 66
    iput-object p1, p0, Lqy$1;->a:Lqy;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final listFoldersFailed(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    invoke-super {p0, p1}, Luv;->listFoldersFailed(Lcom/alibaba/alimei/emailcommon/Account;)V

    .line 102
    const-string/jumbo v0, "SyncImapFoldersTask"

    const-string/jumbo v1, "listFoldersFailed"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lqy$1;->a:Lqy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lqy;->a(Lqy;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 104
    return-void
.end method

.method public final listRemoteFolders(Lcom/alibaba/alimei/emailcommon/Account;Ljava/util/List;Lwl;)V
    .locals 12
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p3, "imapServer"    # Lwl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/alimei/emailcommon/mail/Folder;",
            ">;",
            "Lwl;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "allRemoteFolder":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    const/4 v8, 0x1

    .line 70
    invoke-super {p0, p1, p2, p3}, Luv;->listRemoteFolders(Lcom/alibaba/alimei/emailcommon/Account;Ljava/util/List;Lwl;)V

    .line 71
    if-eqz p2, :cond_0

    .line 72
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v3

    .line 73
    .local v3, "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    iget-object v0, p0, Lqy$1;->a:Lqy;

    iget-object v1, p0, Lqy$1;->a:Lqy;

    iget-object v1, v1, Lqy;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lqy;->a(Lqy;Ljava/util/List;Lwl;Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;J)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;

    move-result-object v7

    .line 74
    .local v7, "syncFolderResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;
    iget-object v0, p0, Lqy$1;->a:Lqy;

    iget-object v0, v0, Lqy;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    iget-object v0, p0, Lqy$1;->a:Lqy;

    iget-object v6, v0, Lqy;->a:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->handleSyncFoldersResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;Z)Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    .line 79
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v9

    .line 1110
    .local v9, "config":Lafy;
    iget-boolean v0, v9, Lafy;->c:Z

    .line 80
    if-eqz v0, :cond_2

    iget-object v0, p0, Lqy$1;->a:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lqy$1;->a:Lqy;

    iget-object v0, v0, Lqy;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-interface {v3, v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v11

    .line 82
    .local v11, "inbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v11, :cond_1

    .line 83
    const-string/jumbo v0, "SyncImapFoldersTask"

    const-string/jumbo v1, "Auto sync inbox mails(AlimeiAdapterSDK.getMailApi(mAccountName).startSyncMails)"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lqy$1;->a:Lqy;

    iget-object v0, v0, Lqy;->a:Ljava/lang/String;

    invoke-static {v0}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-wide v4, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    iget v1, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    invoke-interface {v0, v4, v5, v1, v8}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncMails(JIZ)V

    .line 85
    new-instance v10, Lyc;

    const-string/jumbo v0, "basic_SyncFolder"

    iget-object v1, p0, Lqy$1;->a:Lqy;

    iget-object v1, v1, Lqy;->a:Ljava/lang/String;

    invoke-direct {v10, v0, v1, v8}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    .local v10, "eventMessage":Lyc;
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    invoke-interface {v0, v10}, Lya;->a(Lyc;)V

    .line 97
    .end local v3    # "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .end local v7    # "syncFolderResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;
    .end local v9    # "config":Lafy;
    .end local v10    # "eventMessage":Lyc;
    .end local v11    # "inbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_0
    :goto_0
    return-void

    .line 89
    .restart local v3    # "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .restart local v7    # "syncFolderResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;
    .restart local v9    # "config":Lafy;
    .restart local v11    # "inbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_1
    new-instance v10, Lyc;

    const-string/jumbo v0, "basic_SyncFolder"

    iget-object v1, p0, Lqy$1;->a:Lqy;

    iget-object v1, v1, Lqy;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v10, v0, v1, v2}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    .restart local v10    # "eventMessage":Lyc;
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    invoke-interface {v0, v10}, Lya;->a(Lyc;)V

    goto :goto_0

    .line 93
    .end local v10    # "eventMessage":Lyc;
    .end local v11    # "inbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_2
    new-instance v10, Lyc;

    const-string/jumbo v0, "basic_SyncFolder"

    iget-object v1, p0, Lqy$1;->a:Lqy;

    iget-object v1, v1, Lqy;->a:Ljava/lang/String;

    invoke-direct {v10, v0, v1, v8}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    .restart local v10    # "eventMessage":Lyc;
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    invoke-interface {v0, v10}, Lya;->a(Lyc;)V

    goto :goto_0
.end method
