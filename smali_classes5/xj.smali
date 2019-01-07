.class public final Lxj;
.super Lyq;
.source "SyncFavTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lxg;

.field private d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Lyq;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lxj;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 54
    iput-object p1, p0, Lxj;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lxj;->b:Ljava/lang/String;

    .line 56
    new-instance v0, Lxg;

    invoke-direct {v0}, Lxg;-><init>()V

    iput-object v0, p0, Lxj;->c:Lxg;

    .line 57
    return-void
.end method

.method static synthetic a(Lxj;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Lxj;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 41
    iput-object p1, p0, Lxj;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method

.method static synthetic a(Lxj;)Lxg;
    .locals 1
    .param p0, "x0"    # Lxj;

    .prologue
    .line 41
    iget-object v0, p0, Lxj;->c:Lxg;

    return-object v0
.end method

.method static synthetic b(Lxj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lxj;

    .prologue
    .line 41
    iget-object v0, p0, Lxj;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final c()Z
    .locals 21

    .prologue
    .line 61
    new-instance v6, Lyc;

    const-string/jumbo v18, "favorite_sync"

    move-object/from16 v0, p0

    iget-object v0, v0, Lxj;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v6, v0, v1, v2}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    .local v6, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v5

    .line 64
    .local v5, "eventCenter":Lya;
    invoke-interface {v5, v6}, Lya;->a(Lyc;)V

    .line 66
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lxj;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v11

    .line 67
    .local v11, "mAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v11, :cond_0

    .line 68
    sget-object v18, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 69
    invoke-interface {v5, v6}, Lya;->a(Lyc;)V

    .line 70
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "not exist account: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lxj;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lzb;->e(Ljava/lang/String;)I

    .line 71
    const/16 v18, 0x1

    .line 170
    :goto_0
    return v18

    .line 73
    :cond_0
    new-instance v15, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v15}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 74
    .local v15, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lxj;->b:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 75
    const/16 v18, 0x16

    move/from16 v0, v18

    iput v0, v15, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 76
    const/16 v18, 0x14

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setWindowSize(I)V

    .line 78
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteSyncDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

    move-result-object v17

    .line 79
    .local v17, "syncDatasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;
    move-object/from16 v0, p0

    iget-object v0, v0, Lxj;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;->querySyncInfo(Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    move-result-object v8

    .line 80
    .local v8, "favoriteSyncModel":Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getSyncKey()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 81
    invoke-virtual {v8}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getSyncKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setSyncKey(Ljava/lang/String;)V

    .line 86
    :goto_1
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    move-result-object v4

    .line 87
    .local v4, "datasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
    if-eqz v8, :cond_4

    .line 88
    invoke-virtual {v8}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getModifiedTime()J

    move-result-wide v12

    .line 89
    .local v12, "modifiedTime":J
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-lez v18, :cond_4

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lxj;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v4, v0, v12, v13}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->queryByModifiedTime(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v10

    .line 91
    .local v10, "localUpdateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_4

    .line 92
    new-instance v14, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;

    invoke-direct {v14}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;-><init>()V

    .line 93
    .local v14, "queryParam":Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v9, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    .line 95
    .local v7, "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    invoke-virtual {v7}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getServerId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 96
    invoke-virtual {v7}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getServerId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    .end local v4    # "datasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
    .end local v7    # "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    .end local v9    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "localUpdateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    .end local v12    # "modifiedTime":J
    .end local v14    # "queryParam":Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
    :cond_2
    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setSyncKey(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    .restart local v4    # "datasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
    .restart local v9    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "localUpdateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    .restart local v12    # "modifiedTime":J
    .restart local v14    # "queryParam":Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_4

    .line 100
    invoke-virtual {v14, v9}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setExcludes(Ljava/util/List;)V

    .line 101
    invoke-virtual {v15, v14}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setQueryParam(Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;)V

    .line 107
    .end local v9    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "localUpdateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    .end local v12    # "modifiedTime":J
    .end local v14    # "queryParam":Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lxj;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getFavoriteService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;

    move-result-object v16

    .line 108
    .local v16, "rpcFavoriteService":Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;
    new-instance v18, Lxj$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v8, v4, v2}, Lxj$1;-><init>(Lxj;Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;->syncFavorites(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lxj;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 162
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v6, Lyc;->c:I

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lxj;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v6, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 164
    invoke-interface {v5, v6}, Lya;->a(Lyc;)V

    .line 170
    :goto_3
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 166
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v6, Lyc;->c:I

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lxj;->c:Lxg;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v6, Lyc;->g:Ljava/lang/Object;

    .line 168
    invoke-interface {v5, v6}, Lya;->a(Lyc;)V

    goto :goto_3
.end method
