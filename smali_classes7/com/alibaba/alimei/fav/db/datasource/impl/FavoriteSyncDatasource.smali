.class public Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteSyncDatasource;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "FavoriteSyncDatasource.java"

# interfaces
.implements Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLoadMoreSyncInfo()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 78
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "loadmore_Id"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string/jumbo v1, "sync_key"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string/jumbo v1, "modified_time"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 82
    return-void
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getCSpaceDataBaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavoriteSyncEntry(Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;)Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;
    .locals 4
    .param p1, "model"    # Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 85
    new-instance v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;

    invoke-direct {v0}, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;-><init>()V

    .line 86
    .local v0, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getAccountName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->accountName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getBizType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->bizType:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->spaceId:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getLoadMoreId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->loadMoreId:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->syncKey:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getModifiedTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->modifiedTime:J

    .line 94
    :cond_0
    return-object v0
.end method

.method public insertSyncInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "spaceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 41
    new-instance v2, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    invoke-direct {v2, p1, p2, p3}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v2, "syncModel":Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteSyncDatasource;->querySyncInfo(Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    move-result-object v1

    .line 43
    .local v1, "exist":Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;
    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteSyncDatasource;->getFavoriteSyncEntry(Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;)Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;

    move-result-object v0

    .line 45
    .local v0, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;
    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->save()J

    .line 47
    .end local v0    # "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;
    :cond_0
    return-void
.end method

.method public querySyncInfo(Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 28
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;

    invoke-direct {v1, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 29
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "account_name"

    invoke-virtual {v1, v3, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v3, "biz_type"

    const-string/jumbo v4, "FAVORITES"

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;

    .line 32
    .local v0, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;
    const/4 v2, 0x0

    .line 33
    .local v2, "syncModel":Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;
    if-eqz v0, :cond_0

    .line 34
    new-instance v2, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    .end local v2    # "syncModel":Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;
    invoke-direct {v2, v0}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;-><init>(Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;)V

    .line 36
    .restart local v2    # "syncModel":Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;
    :cond_0
    return-object v2
.end method

.method public resetSyncInfo(J)Z
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v3, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;

    invoke-direct {v0, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 68
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v3, "loadmore_Id"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const-string/jumbo v3, "sync_key"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string/jumbo v3, "modified_time"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string/jumbo v3, "id=?"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public updateSyncInfo(JLjava/lang/String;Ljava/lang/String;J)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "loadMoreId"    # Ljava/lang/String;
    .param p4, "syncKey"    # Ljava/lang/String;
    .param p5, "modifiedTime"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v3, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;

    invoke-direct {v0, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 52
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    const-string/jumbo v3, "loadmore_Id"

    invoke-virtual {v0, v3, p3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    const-string/jumbo v3, "sync_key"

    invoke-virtual {v0, v3, p4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v3, p5, v4

    if-lez v3, :cond_2

    .line 59
    const-string/jumbo v3, "modified_time"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :cond_2
    const-string/jumbo v3, "id=?"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v3

    if-lez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method
