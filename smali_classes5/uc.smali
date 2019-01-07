.class public final Luc;
.super Lto;
.source "SyncDentryTask.java"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

.field private l:Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

.field private m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string/jumbo v0, "cspace_dentry_sync"

    const-string/jumbo v1, "SyncDentryTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Luc;->i:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Luc;->j:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected final a(JLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3}, Lto;->a(JLjava/lang/String;)V

    .line 140
    const-wide/32 v0, 0xc6ab63

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab61

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 141
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySyncError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Luc;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    const-wide/32 v0, 0xc6ab65

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 143
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNotAuth:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Luc;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 144
    :cond_3
    const-wide/32 v0, 0xc6bb02

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 145
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNameTooLong:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Luc;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 146
    :cond_4
    const-wide/32 v0, 0xc6bb00

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 147
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryParentDirNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Luc;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V
    .locals 14
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 67
    invoke-super {p0, p1}, Lto;->a(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    .line 69
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->setForceFullSync(Z)V

    .line 73
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->isForceFullSync()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 75
    iget-object v9, p0, Luc;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v10, p0, Luc;->b:Ljava/lang/String;

    iget-object v11, p0, Luc;->i:Ljava/lang/String;

    iget-object v12, p0, Luc;->j:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->queryByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 77
    .local v4, "existList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v6, "fullPathKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    .line 79
    .local v0, "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    .end local v0    # "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v5, "existPathKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 84
    .local v2, "dentryModelItem":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 86
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 87
    iget-object v10, p0, Luc;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v12

    invoke-interface {v10, v12, v13}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->delete(J)Z

    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 96
    .end local v2    # "dentryModelItem":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v7, "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v8, "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    .line 99
    .restart local v0    # "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    new-instance v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v10, p0, Luc;->b:Ljava/lang/String;

    iget-object v11, p0, Luc;->i:Ljava/lang/String;

    invoke-direct {v1, v0, v10, v11}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 101
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_3
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 103
    :cond_4
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 108
    .end local v0    # "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 109
    iget-object v9, p0, Luc;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v10, p0, Luc;->b:Ljava/lang/String;

    invoke-interface {v9, v10, v8}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateDentrys(Ljava/lang/String;Ljava/util/List;)V

    .line 111
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 112
    iget-object v9, p0, Luc;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v10, p0, Luc;->b:Ljava/lang/String;

    invoke-interface {v9, v10, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 122
    .end local v4    # "existList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v5    # "existPathKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "fullPathKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v8    # "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_7
    iget-object v9, p0, Luc;->k:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    if-nez v9, :cond_8

    .line 123
    new-instance v9, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-direct {v9}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;-><init>()V

    iput-object v9, p0, Luc;->k:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    .line 124
    iget-object v9, p0, Luc;->k:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    iget-wide v10, p0, Luc;->m:J

    invoke-virtual {v9, v10, v11}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setDentryId(J)V

    .line 126
    :cond_8
    iget-object v9, p0, Luc;->k:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getSyncKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setSyncKey(Ljava/lang/String;)V

    .line 127
    iget-object v9, p0, Luc;->l:Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

    iget-object v10, p0, Luc;->k:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-interface {v9, v10}, Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;->saveOrUpdate(Lcom/alibaba/alimei/cspace/model/DentrySyncModel;)V

    .line 129
    iget-object v9, p0, Luc;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    const/4 v10, 0x1

    invoke-interface {v9, v3, v10}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 134
    .end local v3    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :goto_4
    return-void

    .line 116
    .restart local v3    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    .line 117
    .restart local v0    # "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    new-instance v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v10, p0, Luc;->b:Ljava/lang/String;

    iget-object v11, p0, Luc;->i:Ljava/lang/String;

    invoke-direct {v1, v0, v10, v11}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .restart local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v10, p0, Luc;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v11, p0, Luc;->b:Ljava/lang/String;

    invoke-interface {v10, v11, v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    .line 119
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 132
    .end local v0    # "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v3    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getErrorCode()J

    move-result-wide v10

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v10, v11, v9}, Luc;->a(JLjava/lang/String;)V

    goto :goto_4
.end method

.method protected final f()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 45
    iget-object v1, p0, Luc;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v2, p0, Luc;->b:Ljava/lang/String;

    iget-object v3, p0, Luc;->i:Ljava/lang/String;

    iget-object v4, p0, Luc;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 46
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentrySyncDatasource()Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

    move-result-object v1

    iput-object v1, p0, Luc;->l:Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Luc;->m:J

    .line 49
    iget-object v1, p0, Luc;->l:Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;->getDentrySyncModel(J)Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    move-result-object v1

    iput-object v1, p0, Luc;->k:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    .line 51
    :cond_0
    iget-object v1, p0, Luc;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    iget-object v2, p0, Luc;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setSpaceId(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Luc;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setDataScope(I)V

    .line 53
    iget-object v1, p0, Luc;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    iget-object v2, p0, Luc;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setScopeId(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Luc;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    iget-object v1, p0, Luc;->k:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Luc;->k:Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setSyncKey(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Luc;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setWindowSize(I)V

    .line 56
    const/4 v1, 0x1

    return v1

    .line 54
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method protected final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Luc;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Luc;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, v0}, Luc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-void
.end method
