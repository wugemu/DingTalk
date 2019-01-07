.class public Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;
.super Ljava/lang/Object;
.source "DatasourceCenter.java"


# static fields
.field private static mInstance:Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    return-object v0
.end method

.method public static getDentrySyncDatasource()Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentrySyncDatasource;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/db/datasource/IDentrySyncDatasource;

    return-object v0
.end method

.method public static getDentryVersionDatasource()Lcom/alibaba/alimei/cspace/db/datasource/IDentryVersionDatasource;
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryVersionDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/db/datasource/IDentryVersionDatasource;

    return-object v0
.end method

.method public static getFavoriteDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    return-object v0
.end method

.method public static getFavoriteSyncDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteSyncDatasource;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->mInstance:Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->mInstance:Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;

    .line 36
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->mInstance:Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;

    return-object v0
.end method


# virtual methods
.method public getCSpaceDataBaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "cspace.db"

    return-object v0
.end method

.method public notifyDentryDataChanged(Lcom/alibaba/alimei/cspace/model/DentryGroupModel;)V
    .locals 2
    .param p1, "dentryGroupModel"    # Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 41
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->postContentChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V

    .line 42
    return-void
.end method
