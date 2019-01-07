.class public final Lua;
.super Lto;
.source "ShowSharedFileTask.java"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/alibaba/alimei/cspace/model/DentryModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string/jumbo v0, "cspace_dentry_info"

    const-string/jumbo v1, "ShowSharedFileTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lua;->i:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lua;->j:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method protected final a(JLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Lto;->a(JLjava/lang/String;)V

    .line 66
    const-wide/32 v0, 0xc6ab63

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab60

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab61

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 67
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryFileInfoError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lua;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 78
    :cond_1
    :goto_0
    iget-object v0, p0, Lua;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_2

    .line 79
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryFileInfoError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lua;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 81
    :cond_2
    return-void

    .line 68
    :cond_3
    const-wide/32 v0, 0xc6ab65

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 69
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNotAuth:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lua;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 70
    :cond_4
    const-wide/32 v0, 0xc6bb02

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 71
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNameTooLong:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lua;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 72
    :cond_5
    const-wide/32 v0, 0xc6b719

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 73
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNameIllegal:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lua;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 74
    :cond_6
    const-wide/32 v0, 0xc6b718

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 75
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lua;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V
    .locals 6
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 40
    invoke-super {p0, p1}, Lto;->a(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    .line 42
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 43
    new-instance v3, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    iget-object v4, p0, Lua;->b:Ljava/lang/String;

    iget-object v5, p0, Lua;->i:Ljava/lang/String;

    invoke-direct {v3, v2, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lua;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 44
    iget-object v2, p0, Lua;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v3, p0, Lua;->b:Ljava/lang/String;

    iget-object v4, p0, Lua;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v2, v3, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    move-result-wide v0

    .line 45
    .local v0, "id":J
    iget-object v2, p0, Lua;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 46
    iget-object v2, p0, Lua;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-interface {v2, v0, v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryById(J)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    iput-object v2, p0, Lua;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 55
    .end local v0    # "id":J
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    iput-object v2, p0, Lua;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 50
    iget-object v2, p0, Lua;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v3, p0, Lua;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lua;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v3, p0, Lua;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lua;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v3, p0, Lua;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getErrorCode()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lua;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 32
    iget-object v0, p0, Lua;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setDataScope(I)V

    .line 33
    iget-object v0, p0, Lua;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    iget-object v1, p0, Lua;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setSpaceId(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lua;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    iget-object v1, p0, Lua;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setScopeId(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method protected final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lua;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p0, Lua;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p0, v0, v1}, Lua;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    return-void
.end method
