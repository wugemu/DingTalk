.class public Lcom/alibaba/alimei/adpater/api/impl/CommonFolderApiImpl;
.super Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;
.source "CommonFolderApiImpl.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public changeFolderHashNewMail(Ljava/lang/String;ZLxv;)V
    .locals 0
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

    .prologue
    .line 164
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->changeFolderHashNewMail(Ljava/lang/String;ZLxv;)V

    .line 165
    return-void
.end method

.method public hasInvalidInboxFolder()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->hasInvalidInboxFolder()Z

    move-result v0

    return v0
.end method

.method public queryAllFolderMsgCountStatus(Lxv;)V
    .locals 0
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

    .prologue
    .line 138
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryAllFolderMsgCountStatus(Lxv;)V

    .line 139
    return-void
.end method

.method public queryAllMailPushableFolders(Lxv;)V
    .locals 0
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

    .prologue
    .line 123
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryAllMailPushableFolders(Lxv;)V

    .line 124
    return-void
.end method

.method public queryAllPushFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryAllPushFolders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAllPushFolders(Lxv;)V
    .locals 0
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

    .prologue
    .line 108
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryAllPushFolders(Lxv;)V

    .line 109
    return-void
.end method

.method public queryAllUnReadCount(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryAllUnReadCount(Lxv;)V

    .line 154
    return-void
.end method

.method public queryCollectionFolders(Lxv;)V
    .locals 0
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

    .prologue
    .line 158
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryCollectionFolders(Lxv;)V

    .line 159
    return-void
.end method

.method public queryCustomMailFolders(ZLxv;)V
    .locals 0
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

    .prologue
    .line 148
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryCustomMailFolders(ZLxv;)V

    .line 149
    return-void
.end method

.method public queryFolderById(JLxv;)V
    .locals 1
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
    .line 83
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryFolderById(JLxv;)V

    .line 84
    return-void
.end method

.method public queryFolderByMailServerId(Ljava/lang/String;Lxv;)V
    .locals 0
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

    .prologue
    .line 98
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryFolderByMailServerId(Ljava/lang/String;Lxv;)V

    .line 99
    return-void
.end method

.method public queryFolderByServerId(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 1
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryFolderByServerId(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    return-object v0
.end method

.method public queryFolderByServerId(Ljava/lang/String;Lxv;)V
    .locals 0
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

    .prologue
    .line 88
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryFolderByServerId(Ljava/lang/String;Lxv;)V

    .line 89
    return-void
.end method

.method public queryInboxFolder(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryInboxFolder(Lxv;)V

    .line 134
    return-void
.end method

.method public queryMailPushFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-super {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryMailPushFolders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryMailPushFolders(Lxv;)V
    .locals 0
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

    .prologue
    .line 113
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryMailPushFolders(Lxv;)V

    .line 114
    return-void
.end method

.method public varargs queryMovableFolders(Lxv;[Ljava/lang/String;)V
    .locals 0
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

    .prologue
    .line 78
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryMovableFolders(Lxv;[Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public querySessionFolder(Lxv;)V
    .locals 0
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

    .prologue
    .line 66
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->querySessionFolder(Lxv;)V

    .line 68
    return-void
.end method

.method public querySystemMailFolders(Lxv;)V
    .locals 0
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

    .prologue
    .line 143
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->querySystemMailFolders(Lxv;)V

    .line 144
    return-void
.end method

.method public varargs queryVisibleFolderChildren(Ljava/lang/String;Lxv;[Ljava/lang/String;)V
    .locals 0
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

    .prologue
    .line 73
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryVisibleFolderChildren(Ljava/lang/String;Lxv;[Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public varargs queryVisibleFolders(ZLxv;[Ljava/lang/String;)V
    .locals 0
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

    .prologue
    .line 56
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryVisibleFolders(ZLxv;[Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public varargs queryVisibleFoldersIncludeVirtual(ZLxv;[Ljava/lang/String;)V
    .locals 0
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

    .prologue
    .line 62
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryVisibleFoldersIncludeVirtual(ZLxv;[Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public refreshByFullWay(Lxv;Z)V
    .locals 3
    .param p2, "includeVirtualFolders"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 35
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;-><init>(Ljava/lang/String;Z)V

    .line 36
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startImapSyncFolder--->>account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->i(Ljava/lang/String;)I

    .line 37
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->executeCommand()V

    .line 38
    return-void
.end method

.method public refreshByIncrementWay(Lxv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderGroupModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 43
    .local p1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderGroupModel;>;"
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;-><init>(Ljava/lang/String;Z)V

    .line 44
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startImapSyncFolder--->>account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->i(Ljava/lang/String;)I

    .line 45
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->executeCommand()V

    .line 46
    return-void
.end method

.method public startSyncFolder(Z)V
    .locals 3
    .param p1, "isForceFullSync"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;-><init>(Ljava/lang/String;Z)V

    .line 28
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startImapSyncFolder--->>account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonFolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->i(Ljava/lang/String;)I

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->executeCommand()V

    .line 30
    return-void
.end method

.method public updateMailPushFolders(Ljava/util/List;Lxv;)V
    .locals 0
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

    .prologue
    .line 128
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->updateMailPushFolders(Ljava/util/List;Lxv;)V

    .line 129
    return-void
.end method
