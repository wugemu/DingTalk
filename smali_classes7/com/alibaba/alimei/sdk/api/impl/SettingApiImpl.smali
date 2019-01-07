.class public Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "SettingApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/api/SettingApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAutoDownloadMailDetailStatus()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 156
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 157
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getAutoDownloadMailDetail(Ljava/lang/String;)I

    move-result v1

    .line 158
    .local v1, "status":I
    return v1
.end method

.method public getCopySendMail2Sent()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 93
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getIsCopySentMail(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getFolderSync2Server(I)Z
    .locals 2
    .param p1, "folderType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 145
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getIsFolderTypeSync2Server(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public getSelectedFolderByType(I)Ljava/lang/String;
    .locals 2
    .param p1, "folderType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 124
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 125
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getFolderByUserDefineType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShownType()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 57
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 58
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    invoke-interface {v0}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getShownType()I

    move-result v1

    return v1
.end method

.method public querySenderMail(Lxv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;)V

    .line 38
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 39
    return-void
.end method

.method public selectFolderAsType(Ljava/lang/String;ILxv;)V
    .locals 1
    .param p1, "folderServerId"    # Ljava/lang/String;
    .param p2, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$5;-><init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;Ljava/lang/String;I)V

    .line 106
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 107
    return-void
.end method

.method public setAutoDownloadMailDetail(ILxv;)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$6;-><init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;I)V

    .line 119
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 120
    return-void
.end method

.method public setCopySendMail2Sent(ZLxv;)V
    .locals 4
    .param p1, "copySendMail2Sent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 76
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    const-string/jumbo v1, "setting"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "account:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " setCopySendMail2Sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$4;-><init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;Z)V

    .line 87
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 88
    return-void
.end method

.method public setFolderSync2Server(IZLxv;)V
    .locals 1
    .param p1, "folderType"    # I
    .param p2, "sync2Server"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$7;-><init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;IZ)V

    .line 139
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 140
    return-void
.end method

.method public setSenderMail(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p1, "senderMail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$2;-><init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;Ljava/lang/String;)V

    .line 52
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 53
    return-void
.end method

.method public setShownType(ILxv;)V
    .locals 1
    .param p1, "shownType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl$3;-><init>(Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;I)V

    .line 71
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 72
    return-void
.end method

.method public showAdvanceSetting()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 150
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 151
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getShowAdvanceSetting(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
