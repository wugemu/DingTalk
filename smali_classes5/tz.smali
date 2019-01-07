.class public final Ltz;
.super Lto;
.source "SearchDentryTask.java"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p2, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0xa

    .line 36
    const-string/jumbo v0, "cspace_dentry_search"

    const-string/jumbo v1, "SearchDentryTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltz;->m:Ljava/util/List;

    .line 37
    iput-object p3, p0, Ltz;->i:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Ltz;->j:Ljava/util/List;

    .line 39
    iput p4, p0, Ltz;->k:I

    .line 40
    iput p5, p0, Ltz;->l:I

    .line 41
    iget v0, p0, Ltz;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Ltz;->l:I

    if-le v0, v2, :cond_1

    .line 42
    :cond_0
    iput v2, p0, Ltz;->l:I

    .line 45
    :cond_1
    iget v0, p0, Ltz;->k:I

    if-gez v0, :cond_2

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ltz;->k:I

    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method protected final a(JLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Lto;->a(JLjava/lang/String;)V

    .line 113
    const-wide/32 v0, 0xc6ab65

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab61

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 114
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySearchError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltz;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 121
    :cond_1
    :goto_0
    iget-object v0, p0, Ltz;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_2

    .line 122
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySearchError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltz;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 124
    :cond_2
    return-void

    .line 115
    :cond_3
    const-wide/32 v0, 0xc6bb02

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 116
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySearchError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltz;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 117
    :cond_4
    const-wide/32 v0, 0xc6b719

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySearchError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltz;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V
    .locals 6
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 83
    invoke-super {p0, p1}, Lto;->a(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    .line 88
    .local v0, "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    new-instance v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v4, p0, Ltz;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v0    # "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v2    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getErrorCode()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3}, Ltz;->a(JLjava/lang/String;)V

    .line 96
    :cond_1
    return-void
.end method

.method protected final f()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v3, p0, Ltz;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 77
    :goto_0
    return v3

    .line 58
    :cond_0
    iget-object v3, p0, Ltz;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    const/16 v5, 0x26

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setDataScope(I)V

    .line 59
    iget-object v3, p0, Ltz;->j:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ltz;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 60
    iget-object v5, p0, Ltz;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    iget-object v3, p0, Ltz;->j:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setSpaceId(Ljava/lang/String;)V

    .line 62
    :cond_1
    iget-object v3, p0, Ltz;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setScopeId(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;-><init>()V

    .line 64
    .local v0, "queryParam":Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
    iget-object v3, p0, Ltz;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setCondition(Ljava/lang/String;)V

    .line 65
    iget v3, p0, Ltz;->k:I

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setOffset(I)V

    .line 66
    iget v3, p0, Ltz;->l:I

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setSize(I)V

    .line 67
    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setExcludeFolders(Z)V

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v2, "spaceLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Ltz;->j:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 70
    iget-object v3, p0, Ltz;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "spaceId":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    .end local v1    # "spaceId":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setSpaceIds(Ljava/util/List;)V

    .line 76
    iget-object v3, p0, Ltz;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setQueryParam(Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;)V

    .line 77
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected final g()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Ltz;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Ltz;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v1, p0, Ltz;->i:Ljava/lang/String;

    iget v2, p0, Ltz;->k:I

    iget v3, p0, Ltz;->l:I

    iget-object v4, p0, Ltz;->j:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->searchDentry(Ljava/lang/String;IILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltz;->m:Ljava/util/List;

    .line 103
    :cond_0
    iget-object v0, p0, Ltz;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltz;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Ltz;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 106
    :cond_1
    iget-object v0, p0, Ltz;->m:Ljava/util/List;

    invoke-virtual {p0, v0}, Ltz;->a(Ljava/lang/Object;)V

    .line 107
    return-void
.end method
