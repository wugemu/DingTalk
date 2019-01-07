.class Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "FavoriteApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->searchFavoriteFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lxf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$offset:I

.field final synthetic val$pageSize:I

.field final synthetic val$spaceId:Ljava/lang/String;

.field final synthetic val$types:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$types:Ljava/util/List;

    iput p5, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$offset:I

    iput p6, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$pageSize:I

    iput-object p7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$spaceId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 10
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 225
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    move-result-object v0

    .line 226
    .local v0, "favoriteDatasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$key:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$types:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$types:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 227
    :cond_0
    new-instance v4, Lxf;

    invoke-direct {v4}, Lxf;-><init>()V

    .line 1028
    .local v4, "searchResult":Lxf;
    iput-boolean v9, v4, Lxf;->b:Z

    .line 229
    iget v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$offset:I

    iget v8, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$pageSize:I

    add-int/2addr v7, v8

    .line 1036
    iput v7, v4, Lxf;->c:I

    .line 230
    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v7}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$1300(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->queryAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2020
    iput-object v7, v4, Lxf;->a:Ljava/util/List;

    .line 231
    iput-object v4, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 293
    :goto_0
    return-void

    .line 235
    .end local v4    # "searchResult":Lxf;
    :cond_1
    iget v5, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$pageSize:I

    .line 236
    .local v5, "size":I
    iget v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$offset:I

    .line 237
    .local v2, "index":I
    iget v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$pageSize:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$pageSize:I

    const/16 v8, 0xa

    if-le v7, v8, :cond_3

    .line 238
    :cond_2
    const/16 v5, 0xa

    .line 241
    :cond_3
    iget v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$offset:I

    if-gez v7, :cond_4

    .line 242
    const/4 v2, 0x0

    .line 245
    :cond_4
    new-instance v6, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v6}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 246
    .local v6, "syncReqeustData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/16 v7, 0x26

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setDataScope(I)V

    .line 247
    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$spaceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setSpaceId(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setScopeId(Ljava/lang/String;)V

    .line 249
    new-instance v3, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;-><init>()V

    .line 250
    .local v3, "queryParam":Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$key:Ljava/lang/String;

    if-nez v7, :cond_6

    const-string/jumbo v7, ""

    :goto_1
    invoke-virtual {v3, v7}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setCondition(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setOffset(I)V

    .line 252
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setSize(I)V

    .line 253
    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$types:Ljava/util/List;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$types:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 254
    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$types:Ljava/util/List;

    invoke-virtual {v3, v7}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setTypes(Ljava/util/List;)V

    .line 256
    :cond_5
    invoke-virtual {v6, v3}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setQueryParam(Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;)V

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "favoriteModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    new-instance v4, Lxf;

    invoke-direct {v4}, Lxf;-><init>()V

    .line 261
    .restart local v4    # "searchResult":Lxf;
    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v7}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$1700(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getFavoriteService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;

    move-result-object v7

    new-instance v8, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;

    invoke-direct {v8, p0, v1, v0, v4}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;-><init>(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;Ljava/util/List;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;Lxf;)V

    invoke-interface {v7, v6, v8}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;->syncFavorites(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 290
    iget v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$offset:I

    add-int/2addr v7, v5

    .line 2036
    iput v7, v4, Lxf;->c:I

    .line 3020
    iput-object v1, v4, Lxf;->a:Ljava/util/List;

    .line 292
    iput-object v4, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 250
    .end local v1    # "favoriteModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    .end local v4    # "searchResult":Lxf;
    :cond_6
    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$key:Ljava/lang/String;

    goto :goto_1
.end method
