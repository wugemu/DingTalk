.class public abstract Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "BaseFolderApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/api/FolderApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFolderApiImpl"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public changeFolderHashNewMail(Ljava/lang/String;ZLxv;)V
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "hasNewMail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 394
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$23;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$23;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 401
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 402
    return-void
.end method

.method public hasInvalidInboxFolder()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v2

    .line 44
    .local v2, "store":Lxz;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 45
    .local v0, "mUserAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v6

    invoke-interface {v4, v6, v7, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v1

    .line 46
    .local v1, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public queryAccountStatus(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AccountStatusModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 367
    .local p1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/AccountStatusModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$21;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$21;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 373
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/AccountStatusModel;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 374
    return-void
.end method

.method public queryAllFolderMsgCountStatus(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 304
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$16;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$16;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 310
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 311
    return-void
.end method

.method public queryAllMailPushableFolders(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 238
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$13;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$13;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 248
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 250
    return-void
.end method

.method public queryAllMailPushableFoldersSync()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 254
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    .line 255
    .local v1, "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v1, :cond_1

    .line 256
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryAllMailPushableFolders(J)Ljava/util/List;

    move-result-object v0

    .line 257
    .local v0, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v0, :cond_0

    .line 258
    sget-object v2, Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 264
    .end local v0    # "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryAllPushFolders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 186
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    .line 187
    .local v1, "store":Lxz;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 188
    .local v2, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v2, :cond_0

    .line 189
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryAllPushFolders(J)Ljava/util/List;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryAllPushFolders(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 197
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$11;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$11;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 207
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 208
    return-void
.end method

.method public queryAllUnReadCount(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 356
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$20;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$20;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 362
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Long;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 363
    return-void
.end method

.method public queryCalendarFolders(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;>;>;"
    return-void
.end method

.method public queryCollectionFolders(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 378
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$22;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$22;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 388
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 389
    return-void
.end method

.method public queryCustomMailFolders(ZLxv;)V
    .locals 2
    .param p1, "withChildrenStructure"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 341
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$19;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$19;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;Z)V

    .line 351
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 352
    return-void
.end method

.method public queryFolderById(JLxv;)V
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$7;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$7;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;J)V

    .line 135
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 136
    return-void
.end method

.method public queryFolderByMailServerId(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 175
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$10;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$10;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 182
    return-void
.end method

.method public queryFolderByServerId(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 6
    .param p1, "serverId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 152
    :try_start_0
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    .line 153
    .local v0, "store":Lxz;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 154
    .local v2, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, p1}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryFolderByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 159
    .end local v0    # "store":Lxz;
    .end local v2    # "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :goto_0
    return-object v3

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "BaseFolderApiImpl"

    const-string/jumbo v4, "queryFolderByServerId fail"

    invoke-static {v3, v4, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public queryFolderByServerId(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 140
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$8;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$8;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 147
    return-void
.end method

.method public queryFolderByType(ILxv;)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 164
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$9;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$9;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;I)V

    .line 170
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 171
    return-void
.end method

.method public queryFolderMsgUnreadCountStatus(JLagw;Lxv;)V
    .locals 7
    .param p1, "folderId"    # J
    .param p3, "filterModel"    # Lagw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lagw;",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$17;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$17;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;JLagw;)V

    .line 321
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 322
    return-void
.end method

.method public queryHasNewMail(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 409
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$24;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$24;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 415
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 416
    return-void
.end method

.method public queryInboxFolder(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 287
    .local p1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$15;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$15;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 298
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 299
    return-void
.end method

.method public queryMailPushFolders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 227
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    .line 228
    .local v1, "store":Lxz;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 229
    .local v2, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v2, :cond_0

    .line 230
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailPushFolders(J)Ljava/util/List;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryMailPushFolders(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 212
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$12;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$12;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 222
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 223
    return-void
.end method

.method public varargs queryMovableFolders(Lxv;[Ljava/lang/String;)V
    .locals 2
    .param p2, "excludeServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 118
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$6;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$6;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 125
    return-void
.end method

.method public queryNewMailCounts(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 444
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$27;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$27;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 451
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 452
    return-void
.end method

.method public querySessionFolder(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 93
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$4;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$4;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 100
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 102
    return-void
.end method

.method public querySystemMailFolders(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 326
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$18;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$18;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 336
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 337
    return-void
.end method

.method public varargs queryVisibleFolderChildren(Ljava/lang/String;Lxv;[Ljava/lang/String;)V
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;
    .param p3, "excludeServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 107
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$5;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$5;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 114
    return-void
.end method

.method public varargs queryVisibleFolders(ZLxv;[Ljava/lang/String;)V
    .locals 2
    .param p1, "withChildrenStructure"    # Z
    .param p3, "excludeServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 52
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$1;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 60
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 61
    return-void
.end method

.method public varargs queryVisibleFoldersForDingTalk(ZLxv;[Ljava/lang/String;)V
    .locals 2
    .param p1, "withChildrenStructure"    # Z
    .param p3, "excludeServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$2;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$2;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 74
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 75
    return-void
.end method

.method public varargs queryVisibleFoldersIncludeVirtual(ZLxv;[Ljava/lang/String;)V
    .locals 2
    .param p1, "withChildrenStructure"    # Z
    .param p3, "excludeServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$3;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$3;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 88
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 89
    return-void
.end method

.method public syncCareFolderOrders(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    return-void
.end method

.method public updateAllPushFoldersLastVisitTime(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 432
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$26;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$26;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V

    .line 439
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 440
    return-void
.end method

.method public updateLastVisitTime(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 420
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$25;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$25;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 428
    return-void
.end method

.method public updateMailPushFolders(Ljava/util/List;Lxv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 269
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 270
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 283
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$14;

    invoke-direct {v1, p0, v0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$14;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 282
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method
