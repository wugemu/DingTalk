.class public final Ltv;
.super Lto;
.source "LoadMoreDentryTask.java"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

.field private o:Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

.field private p:Ltl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "loadMoreId"    # Ljava/lang/String;
    .param p5, "loadFromLocal"    # Z
    .param p6, "length"    # I

    .prologue
    .line 42
    const-string/jumbo v0, "cspace_dentry_loadmore"

    const-string/jumbo v1, "LoadMoreDentryTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Ltv;->i:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Ltv;->j:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Ltv;->k:Ljava/lang/String;

    .line 46
    iput-boolean p5, p0, Ltv;->l:Z

    .line 47
    iput p6, p0, Ltv;->m:I

    .line 48
    new-instance v0, Ltl;

    invoke-direct {v0}, Ltl;-><init>()V

    iput-object v0, p0, Ltv;->p:Ltl;

    .line 49
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "newLoadMoreId"    # Ljava/lang/String;
    .param p2, "total"    # J

    .prologue
    .line 191
    iget-object v0, p0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setTotalDentry(J)V

    .line 193
    iget-object v0, p0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setLoadmoreId(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Ltv;->o:Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

    iget-object v1, p0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;->saveOrUpdate(Lcom/alibaba/alimei/cspace/model/DentrySyncModel;)V

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;-><init>()V

    iput-object v0, p0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    .line 197
    iget-object v0, p0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    iget-object v1, p0, Ltv;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setSpaceId(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    iget-object v1, p0, Ltv;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setPath(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setTotalDentry(J)V

    .line 200
    iget-object v0, p0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setLoadmoreId(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Ltv;->o:Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

    iget-object v1, p0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;->saveOrUpdate(Lcom/alibaba/alimei/cspace/model/DentrySyncModel;)V

    goto :goto_0
.end method

.method private b(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V
    .locals 9
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 138
    iget-object v3, p0, Ltv;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v4, p0, Ltv;->b:Ljava/lang/String;

    iget-object v5, p0, Ltv;->i:Ljava/lang/String;

    iget-object v6, p0, Ltv;->j:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->deleteByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getLoadMoreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getTotal()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Ltv;->a(Ljava/lang/String;J)V

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v2, "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    .line 143
    .local v0, "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    new-instance v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v4, p0, Ltv;->b:Ljava/lang/String;

    iget-object v5, p0, Ltv;->i:Ljava/lang/String;

    invoke-direct {v1, v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v0    # "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 147
    iget-object v3, p0, Ltv;->p:Ltl;

    iget-object v4, p0, Ltv;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v5, p0, Ltv;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 9035
    iput-object v4, v3, Ltl;->d:Ljava/util/List;

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Ltv;->m:I

    if-ge v3, v4, :cond_2

    .line 150
    iget-object v3, p0, Ltv;->p:Ltl;

    .line 9059
    iput-boolean v7, v3, Ltl;->c:Z

    .line 154
    :goto_1
    iget-object v3, p0, Ltv;->p:Ltl;

    .line 11043
    iput-boolean v8, v3, Ltl;->a:Z

    .line 155
    iget-object v3, p0, Ltv;->p:Ltl;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getLoadMoreId()Ljava/lang/String;

    move-result-object v4

    .line 11051
    iput-object v4, v3, Ltl;->b:Ljava/lang/String;

    .line 156
    iget-object v3, p0, Ltv;->p:Ltl;

    .line 12035
    iput-object v2, v3, Ltl;->d:Ljava/util/List;

    .line 157
    return-void

    .line 152
    :cond_2
    iget-object v3, p0, Ltv;->p:Ltl;

    .line 10059
    iput-boolean v8, v3, Ltl;->c:Z

    goto :goto_1
.end method

.method private c(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)Ljava/util/List;
    .locals 8
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    .line 162
    .local v0, "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    new-instance v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v6, p0, Ltv;->b:Ljava/lang/String;

    iget-object v7, p0, Ltv;->i:Ljava/lang/String;

    invoke-direct {v1, v0, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v6, p0, Ltv;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v7, p0, Ltv;->b:Ljava/lang/String;

    invoke-interface {v6, v7, v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    move-result-wide v4

    .line 164
    .local v4, "id":J
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setId(J)V

    .line 165
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v0    # "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v4    # "id":J
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lto;->a()V

    .line 73
    return-void
.end method

.method protected final a(JLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Lto;->a(JLjava/lang/String;)V

    .line 216
    const-wide/32 v0, 0xc6ab63

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab60

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab61

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 217
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySyncError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltv;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 222
    :cond_1
    :goto_0
    iget-object v0, p0, Ltv;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_2

    .line 223
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySyncError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltv;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 226
    :cond_2
    return-void

    .line 218
    :cond_3
    const-wide/32 v0, 0xc6bb00

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 219
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltv;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V
    .locals 18
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;

    .prologue
    .line 77
    invoke-super/range {p0 .. p1}, Lto;->a(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    .line 78
    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->o:Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv;->j:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;->getDentrySyncModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->isForceFullSync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-direct/range {p0 .. p1}, Ltv;->b(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    .line 135
    :goto_0
    return-void

    .line 86
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Ltv;->m:I

    if-ge v2, v3, :cond_1

    .line 90
    invoke-direct/range {p0 .. p1}, Ltv;->b(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    goto :goto_0

    .line 92
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    if-eqz v2, :cond_a

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getTotalDentry()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getTotal()J

    move-result-wide v4

    long-to-int v3, v4

    sub-int v11, v2, v3

    .line 94
    .local v11, "diff":I
    move-object/from16 v0, p0

    iget v2, v0, Ltv;->m:I

    if-ge v11, v2, :cond_2

    if-gez v11, :cond_3

    .line 96
    :cond_2
    invoke-direct/range {p0 .. p1}, Ltv;->b(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    goto :goto_0

    .line 98
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv;->j:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    add-int/lit8 v8, v11, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->queryByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v12

    .line 99
    .local v12, "existModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 101
    .local v16, "serverPath":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 102
    .local v15, "localPath":Ljava/lang/String;
    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 104
    if-lez v11, :cond_5

    .line 105
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v14, "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    .line 108
    .local v9, "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    new-instance v10, Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv;->i:Ljava/lang/String;

    invoke-direct {v10, v9, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v10, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 111
    .end local v9    # "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    .end local v10    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v14}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 115
    .end local v13    # "i":I
    .end local v14    # "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_5
    if-lez v11, :cond_7

    const/4 v2, 0x1

    .line 1171
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getTotal()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setTotalDentry(J)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->o:Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;->saveOrUpdate(Lcom/alibaba/alimei/cspace/model/DentrySyncModel;)V

    .line 1176
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->p:Ltl;

    const/4 v3, 0x1

    .line 2059
    iput-boolean v3, v2, Ltl;->c:Z

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->p:Ltl;

    const/4 v3, 0x1

    .line 3043
    iput-boolean v3, v2, Ltl;->a:Z

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->p:Ltl;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv;->n:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getLoadmoreId()Ljava/lang/String;

    move-result-object v3

    .line 3051
    iput-object v3, v2, Ltl;->b:Ljava/lang/String;

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv;->p:Ltl;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv;->j:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->queryByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 4035
    move-object/from16 v0, v17

    iput-object v2, v0, Ltl;->d:Ljava/util/List;

    goto/16 :goto_0

    .line 115
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 118
    :cond_8
    invoke-direct/range {p0 .. p1}, Ltv;->b(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    goto/16 :goto_0

    .line 121
    .end local v15    # "localPath":Ljava/lang/String;
    .end local v16    # "serverPath":Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p1}, Ltv;->b(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    goto/16 :goto_0

    .line 125
    .end local v11    # "diff":I
    .end local v12    # "existModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_a
    invoke-direct/range {p0 .. p1}, Ltv;->b(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    goto/16 :goto_0

    .line 4183
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getLoadMoreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getTotal()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Ltv;->a(Ljava/lang/String;J)V

    .line 4184
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv;->p:Ltl;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Ltv;->m:I

    if-ge v2, v4, :cond_c

    const/4 v2, 0x0

    .line 5059
    :goto_3
    iput-boolean v2, v3, Ltl;->c:Z

    .line 4185
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->p:Ltl;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getLoadMoreId()Ljava/lang/String;

    move-result-object v3

    .line 6051
    iput-object v3, v2, Ltl;->b:Ljava/lang/String;

    .line 4186
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->p:Ltl;

    const/4 v3, 0x0

    .line 7043
    iput-boolean v3, v2, Ltl;->a:Z

    .line 4187
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv;->p:Ltl;

    invoke-direct/range {p0 .. p1}, Ltv;->c(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)Ljava/util/List;

    move-result-object v3

    .line 8035
    iput-object v3, v2, Ltl;->d:Ljava/util/List;

    goto/16 :goto_0

    .line 4184
    :cond_c
    const/4 v2, 0x1

    goto :goto_3

    .line 133
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getErrorCode()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Ltv;->a(JLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final f()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 53
    iget-boolean v1, p0, Ltv;->l:Z

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 66
    :goto_0
    return v1

    .line 56
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentrySyncDatasource()Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

    move-result-object v1

    iput-object v1, p0, Ltv;->o:Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

    .line 58
    iget-object v1, p0, Ltv;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    iget-object v2, p0, Ltv;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setSpaceId(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Ltv;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setDataScope(I)V

    .line 60
    iget-object v1, p0, Ltv;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setScopeId(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;-><init>()V

    .line 62
    .local v0, "queryParam":Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
    iget-object v1, p0, Ltv;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setPath(Ljava/lang/String;)V

    .line 63
    iget v1, p0, Ltv;->m:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setLength(I)V

    .line 64
    iget-object v1, p0, Ltv;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setLoadMoreId(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Ltv;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setQueryParam(Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;)V

    .line 66
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv;->p:Ltl;

    iget-object v2, p0, Ltv;->p:Ltl;

    invoke-virtual {p0, v1, v2, v0, v0}, Ltv;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method
