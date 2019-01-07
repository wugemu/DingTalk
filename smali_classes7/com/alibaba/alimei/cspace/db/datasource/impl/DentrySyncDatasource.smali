.class public Lcom/alibaba/alimei/cspace/db/datasource/impl/DentrySyncDatasource;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "DentrySyncDatasource.java"

# interfaces
.implements Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method private buildDentrySyncModel(Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;)Lcom/alibaba/alimei/cspace/model/DentrySyncModel;
    .locals 4
    .param p1, "entry"    # Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;-><init>()V

    .line 105
    .local v0, "syncModel":Lcom/alibaba/alimei/cspace/model/DentrySyncModel;
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setId(J)V

    .line 106
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->dentryId:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setDentryId(J)V

    .line 107
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->syncKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setSyncKey(Ljava/lang/String;)V

    .line 108
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->loadmoreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setLoadmoreId(Ljava/lang/String;)V

    .line 109
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->createTime:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setCreateTime(J)V

    .line 110
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->modifiedTime:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setModifiedTime(J)V

    .line 111
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setSpaceId(Ljava/lang/String;)V

    .line 112
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setPath(Ljava/lang/String;)V

    .line 113
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->totalDentry:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->setTotalDentry(J)V

    .line 116
    .end local v0    # "syncModel":Lcom/alibaba/alimei/cspace/model/DentrySyncModel;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDentryEntry(Lcom/alibaba/alimei/cspace/model/DentrySyncModel;)Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;
    .locals 4
    .param p1, "syncModel"    # Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    new-instance v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;-><init>()V

    .line 81
    .local v0, "syncEntry":Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->id:J

    .line 82
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getDentryId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->dentryId:J

    .line 83
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->syncKey:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getLoadmoreId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->loadmoreId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->createTime:J

    .line 86
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getModifiedTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->modifiedTime:J

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->spaceId:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->path:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->getTotalDentry()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->totalDentry:J

    .line 92
    .end local v0    # "syncEntry":Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteAll()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 97
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;

    const-string/jumbo v2, "cspace.db"

    const-string/jumbo v3, "dentry_sync_info"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 100
    return-void
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getCSpaceDataBaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDentrySyncModel(J)Lcom/alibaba/alimei/cspace/model/DentrySyncModel;
    .locals 5
    .param p1, "dentryId"    # J

    .prologue
    .line 32
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 33
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "dentry_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;

    .line 35
    .local v0, "entry":Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentrySyncDatasource;->buildDentrySyncModel(Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;)Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    move-result-object v2

    return-object v2
.end method

.method public getDentrySyncModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentrySyncModel;
    .locals 3
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 40
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 41
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "space_id"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;

    .line 44
    .local v0, "entry":Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentrySyncDatasource;->buildDentrySyncModel(Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;)Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    move-result-object v2

    return-object v2
.end method

.method public saveOrUpdate(Lcom/alibaba/alimei/cspace/model/DentrySyncModel;)V
    .locals 6
    .param p1, "dentrySyncModel"    # Lcom/alibaba/alimei/cspace/model/DentrySyncModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentrySyncDatasource;->getDentryEntry(Lcom/alibaba/alimei/cspace/model/DentrySyncModel;)Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;

    move-result-object v0

    .line 50
    .local v0, "entry":Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;
    if-eqz v0, :cond_2

    .line 51
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->modifiedTime:J

    .line 52
    iget-wide v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 54
    new-instance v1, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;

    const-string/jumbo v3, "cspace.db"

    const-string/jumbo v4, "dentry_sync_info"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v1, "update":Lcom/alibaba/alimei/orm/query/Update;
    iget-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->syncKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const-string/jumbo v2, "sync_key"

    iget-object v3, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->syncKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_0
    iget-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->loadmoreId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    const-string/jumbo v2, "loadmore_Id"

    iget-object v3, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->loadmoreId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    :cond_1
    const-string/jumbo v2, "modified_time"

    iget-wide v4, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->modifiedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string/jumbo v2, "space_id"

    iget-object v3, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->spaceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string/jumbo v2, "path"

    iget-object v3, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-string/jumbo v2, "total_dentry"

    iget-wide v4, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->totalDentry:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const-string/jumbo v2, "id"

    iget-wide v4, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 76
    .end local v1    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_2
    :goto_0
    return-void

    .line 71
    :cond_3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->createTime:J

    .line 72
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;->save()J

    goto :goto_0
.end method
