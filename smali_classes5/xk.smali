.class public final Lxk;
.super Lyq;
.source "UpdateFavTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lyq;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxk;->c:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lxk;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 49
    iput-object p1, p0, Lxk;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lxk;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic a(Lxk;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Lxk;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 38
    iput-object p1, p0, Lxk;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method


# virtual methods
.method protected final c()Z
    .locals 24

    .prologue
    .line 55
    new-instance v8, Lyc;

    const-string/jumbo v19, "favorite_update"

    move-object/from16 v0, p0

    iget-object v0, v0, Lxk;->a:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v8, v0, v1, v2}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    .local v8, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v7

    .line 58
    .local v7, "eventCenter":Lya;
    invoke-interface {v7, v8}, Lya;->a(Lyc;)V

    .line 60
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lxk;->a:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v14

    .line 61
    .local v14, "mAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v14, :cond_0

    .line 62
    sget-object v19, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static/range {v19 .. v19}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 63
    invoke-interface {v7, v8}, Lya;->a(Lyc;)V

    .line 64
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "not exist account: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lxk;->a:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lzb;->e(Ljava/lang/String;)I

    .line 65
    const/16 v19, 0x1

    .line 183
    :goto_0
    return v19

    .line 67
    :cond_0
    new-instance v15, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-direct {v15}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;-><init>()V

    .line 68
    .local v15, "requestData":Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lxk;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->spaceId:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    move-result-object v5

    .line 72
    .local v5, "datasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
    move-object/from16 v0, p0

    iget-object v0, v0, Lxk;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->queryDirtyFavorite(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 73
    .local v6, "dirtyModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_3

    .line 74
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lxk;->c:Z

    .line 81
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v9, "excuteIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lxk;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getFavoriteService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;

    move-result-object v18

    .line 83
    .local v18, "rpcFavoriteService":Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lxk;->c:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 84
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v17, "requestItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;>;"
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 86
    .local v11, "idMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 87
    .local v4, "actionMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .line 88
    .local v12, "index":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    .line 89
    .local v10, "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    const/16 v20, 0x5

    move/from16 v0, v20

    if-lt v12, v0, :cond_4

    .line 90
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lxk;->c:Z

    .line 131
    .end local v10    # "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setItems(Ljava/util/List;)V

    .line 133
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    if-eqz v19, :cond_9

    .line 137
    new-instance v19, Lxk$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v11}, Lxk$1;-><init>(Lxk;Landroid/util/SparseArray;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;Landroid/util/SparseArray;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v1}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;->updateFavorites(Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto :goto_1

    .line 76
    .end local v4    # "actionMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    .end local v9    # "excuteIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "idMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v12    # "index":I
    .end local v17    # "requestItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;>;"
    .end local v18    # "rpcFavoriteService":Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v8, Lyc;->c:I

    .line 77
    invoke-interface {v7, v8}, Lya;->a(Lyc;)V

    .line 78
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 93
    .restart local v4    # "actionMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    .restart local v9    # "excuteIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v10    # "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    .restart local v11    # "idMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .restart local v12    # "index":I
    .restart local v17    # "requestItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;>;"
    .restart local v18    # "rpcFavoriteService":Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;
    :cond_4
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v20

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 94
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lxk;->c:Z

    .line 97
    :cond_5
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 100
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v16, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;-><init>()V

    .line 103
    .local v16, "requestItem":Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->isDelete()Z

    move-result v20

    if-nez v20, :cond_7

    .line 104
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->setType(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getContent()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->setContent(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getServerId()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 108
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->setAction(I)V

    .line 114
    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->getAction()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .local v13, "index":I
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v12, v13

    .end local v13    # "index":I
    .restart local v12    # "index":I
    goto/16 :goto_2

    .line 111
    :cond_6
    const/16 v20, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->setAction(I)V

    .line 112
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getServerId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->setId(Ljava/lang/String;)V

    goto :goto_3

    .line 118
    :cond_7
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getServerId()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 120
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-interface {v5, v0, v1}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->deleteFavorite(J)Z

    goto/16 :goto_2

    .line 122
    :cond_8
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getServerId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->setId(Ljava/lang/String;)V

    .line 123
    const/16 v20, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->setAction(I)V

    .line 124
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;->getAction()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .restart local v13    # "index":I
    invoke-virtual {v10}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v12, v13

    .line 130
    .end local v13    # "index":I
    .restart local v12    # "index":I
    goto/16 :goto_2

    .line 175
    .end local v4    # "actionMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    .end local v10    # "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    .end local v11    # "idMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v12    # "index":I
    .end local v16    # "requestItem":Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;
    .end local v17    # "requestItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/FavoriteRequestItem;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lxk;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 176
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v8, Lyc;->c:I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lxk;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v8, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 178
    invoke-interface {v7, v8}, Lya;->a(Lyc;)V

    .line 183
    :goto_4
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 180
    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v8, Lyc;->c:I

    .line 181
    invoke-interface {v7, v8}, Lya;->a(Lyc;)V

    goto :goto_4
.end method
