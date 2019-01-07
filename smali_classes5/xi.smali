.class public final Lxi;
.super Lyq;
.source "LoadMoreFavTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field private e:Lxe;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "loadMoreId"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Lyq;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lxi;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 50
    iput-object p1, p0, Lxi;->a:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lxi;->b:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lxi;->c:Ljava/lang/String;

    .line 53
    new-instance v0, Lxe;

    invoke-direct {v0, p2}, Lxe;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lxi;->e:Lxe;

    .line 54
    return-void
.end method

.method static synthetic a(Lxi;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Lxi;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 37
    iput-object p1, p0, Lxi;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method

.method static synthetic a(Lxi;)Lxe;
    .locals 1
    .param p0, "x0"    # Lxi;

    .prologue
    .line 37
    iget-object v0, p0, Lxi;->e:Lxe;

    return-object v0
.end method

.method static synthetic b(Lxi;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lxi;

    .prologue
    .line 37
    iget-object v0, p0, Lxi;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final c()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 58
    new-instance v2, Lyc;

    const-string/jumbo v8, "favorite_loadmore"

    iget-object v9, p0, Lxi;->a:Ljava/lang/String;

    invoke-direct {v2, v8, v9, v11}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    .local v2, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v1

    .line 61
    .local v1, "eventCenter":Lya;
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 63
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v8

    iget-object v9, p0, Lxi;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v4

    .line 64
    .local v4, "mAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v4, :cond_0

    .line 65
    sget-object v8, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v8}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v8

    iput-object v8, v2, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 66
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "not exist account: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lxi;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lzb;->e(Ljava/lang/String;)I

    .line 137
    :goto_0
    return v10

    .line 71
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteSyncDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

    move-result-object v7

    .line 72
    .local v7, "syncDatasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;
    iget-object v8, p0, Lxi;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;->querySyncInfo(Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    move-result-object v3

    .line 74
    .local v3, "favoriteSyncModel":Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;
    new-instance v5, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 75
    .local v5, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    iget-object v8, p0, Lxi;->b:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 76
    const/16 v8, 0x16

    iput v8, v5, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 77
    iget-object v8, p0, Lxi;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 78
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getLoadMoreId()Ljava/lang/String;

    move-result-object v8

    :goto_1
    iput-object v8, p0, Lxi;->c:Ljava/lang/String;

    .line 80
    :cond_1
    iget-object v8, p0, Lxi;->c:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setLoadMoreId(Ljava/lang/String;)V

    .line 81
    const/16 v8, 0x14

    invoke-virtual {v5, v8}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setWindowSize(I)V

    .line 83
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    move-result-object v0

    .line 84
    .local v0, "datasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
    iget-object v8, p0, Lxi;->a:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getFavoriteService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;

    move-result-object v6

    .line 85
    .local v6, "rpcFavoriteService":Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;
    new-instance v8, Lxi$1;

    invoke-direct {v8, p0, v0, v7, v3}, Lxi$1;-><init>(Lxi;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;)V

    invoke-interface {v6, v5, v8}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;->syncFavorites(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 128
    iget-object v8, p0, Lxi;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v8, :cond_3

    .line 129
    const/4 v8, 0x2

    iput v8, v2, Lyc;->c:I

    .line 130
    iget-object v8, p0, Lxi;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iput-object v8, v2, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 131
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    goto :goto_0

    .line 78
    .end local v0    # "datasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
    .end local v6    # "rpcFavoriteService":Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 133
    .restart local v0    # "datasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
    .restart local v6    # "rpcFavoriteService":Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;
    :cond_3
    iput v10, v2, Lyc;->c:I

    .line 134
    iget-object v8, p0, Lxi;->e:Lxe;

    iput-object v8, v2, Lyc;->g:Ljava/lang/Object;

    .line 135
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    goto :goto_0
.end method
