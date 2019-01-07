.class Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;
.super Ljava/lang/Object;
.source "FavoriteApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;

.field final synthetic val$favoriteDatasource:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

.field final synthetic val$favoriteModels:Ljava/util/List;

.field final synthetic val$searchResult:Lxf;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;Ljava/util/List;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;Lxf;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;

    iput-object p2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->val$favoriteModels:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->val$favoriteDatasource:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iput-object p4, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->val$searchResult:Lxf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 5
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->val$favoriteModels:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->val$favoriteDatasource:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;

    iget-object v2, v2, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$1600(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;

    iget-object v3, v3, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;

    iget-object v4, v4, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$types:Ljava/util/List;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->searchFavorites(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;

    .prologue
    .line 277
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 261
    check-cast p1, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 5
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->val$favoriteModels:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->val$favoriteDatasource:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;

    iget-object v2, v2, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$1500(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;

    iget-object v3, v3, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;

    iget-object v4, v4, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$types:Ljava/util/List;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->searchFavorites(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;)V
    .locals 5
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 264
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 266
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;

    .line 267
    .local v0, "favorite":Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;
    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->val$favoriteModels:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->val$favoriteDatasource:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iget-object v4, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;

    iget-object v4, v4, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$1400(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->insertFavorite(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;)Lcom/alibaba/alimei/fav/model/FavoriteModel;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    .end local v0    # "favorite":Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->val$searchResult:Lxf;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;

    iget v3, v3, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9;->val$pageSize:I

    if-lt v1, v3, :cond_2

    const/4 v1, 0x1

    .line 1028
    :goto_1
    iput-boolean v1, v2, Lxf;->b:Z

    .line 272
    :cond_1
    return-void

    .line 269
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 261
    check-cast p1, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$9$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;)V

    return-void
.end method
