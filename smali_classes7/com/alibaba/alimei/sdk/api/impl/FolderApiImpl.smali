.class public Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;
.super Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;
.source "FolderApiImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 239
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->changeFolderHashNewMail(Ljava/lang/String;ZLxv;)V

    .line 240
    return-void
.end method

.method public hasInvalidInboxFolder()Z
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->hasInvalidInboxFolder()Z

    move-result v0

    return v0
.end method

.method public queryAccountStatus(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AccountStatusModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/AccountStatusModel;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryAccountStatus(Lxv;)V

    .line 229
    return-void
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
    .line 208
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryAllFolderMsgCountStatus(Lxv;)V

    .line 209
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
    .line 193
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryAllMailPushableFolders(Lxv;)V

    .line 194
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
    .line 173
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
    .line 178
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryAllPushFolders(Lxv;)V

    .line 179
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
    .line 223
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryAllUnReadCount(Lxv;)V

    .line 224
    return-void
.end method

.method public queryCalendarFolders(Lxv;)V
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 253
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;>;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$3;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$3;-><init>(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;Ljava/lang/String;)V

    .line 262
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;>;>;"
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 263
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
    .line 233
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryCollectionFolders(Lxv;)V

    .line 234
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
    .line 218
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryCustomMailFolders(ZLxv;)V

    .line 219
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
    .line 153
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryFolderById(JLxv;)V

    .line 154
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
    .line 168
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryFolderByMailServerId(Ljava/lang/String;Lxv;)V

    .line 169
    return-void
.end method

.method public queryFolderByServerId(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 1
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 163
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
    .line 158
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryFolderByServerId(Ljava/lang/String;Lxv;)V

    .line 159
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
    .line 203
    .local p1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryInboxFolder(Lxv;)V

    .line 204
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
    .line 188
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
    .line 183
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryMailPushFolders(Lxv;)V

    .line 184
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
    .line 148
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryMovableFolders(Lxv;[Ljava/lang/String;)V

    .line 149
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
    .line 136
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->querySessionFolder(Lxv;)V

    .line 138
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
    .line 213
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->querySystemMailFolders(Lxv;)V

    .line 214
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
    .line 143
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryVisibleFolderChildren(Ljava/lang/String;Lxv;[Ljava/lang/String;)V

    .line 144
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
    .line 126
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryVisibleFolders(ZLxv;[Ljava/lang/String;)V

    .line 127
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
    .line 132
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryVisibleFoldersIncludeVirtual(ZLxv;[Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public refreshByFullWay(Lxv;Z)V
    .locals 2
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 51
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;

    invoke-direct {v1, p0, v0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 82
    return-void
.end method

.method public refreshByIncrementWay(Lxv;)V
    .locals 2
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 86
    .local p1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderGroupModel;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;

    invoke-direct {v1, p0, v0, v0}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;-><init>(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/FolderGroupModel;>;"
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 116
    return-void
.end method

.method public startSyncFolder(Z)V
    .locals 3
    .param p1, "isForceFullSync"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;-><init>(Ljava/lang/String;Z)V

    .line 45
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startSyncFolder--->>isForceFullSync: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyx;->b(Ljava/lang/String;)I

    .line 46
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->executeCommand()V

    .line 47
    return-void
.end method

.method public syncCareFolderOrders(Lxv;)V
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
    .line 244
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;->executeCommand()V

    .line 246
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
    .line 198
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->updateMailPushFolders(Ljava/util/List;Lxv;)V

    .line 199
    return-void
.end method
