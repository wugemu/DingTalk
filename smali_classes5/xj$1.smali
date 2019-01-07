.class final Lxj$1;
.super Ljava/lang/Object;
.source "SyncFavTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxj;->c()Z
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
.field final synthetic a:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

.field final synthetic b:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

.field final synthetic c:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

.field final synthetic d:Lxj;


# direct methods
.method constructor <init>(Lxj;Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;)V
    .locals 0
    .param p1, "this$0"    # Lxj;

    .prologue
    .line 108
    iput-object p1, p0, Lxj$1;->d:Lxj;

    iput-object p2, p0, Lxj$1;->a:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    iput-object p3, p0, Lxj$1;->b:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iput-object p4, p0, Lxj$1;->c:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 157
    iget-object v0, p0, Lxj$1;->d:Lxj;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lxj;->a(Lxj;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 158
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lxj$1;->d:Lxj;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lxj;->a(Lxj;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 153
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    .line 108
    check-cast p1, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;

    .line 1111
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1112
    iget-object v0, p0, Lxj$1;->d:Lxj;

    invoke-static {v0}, Lxj;->a(Lxj;)Lxg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->isMore()Z

    move-result v1

    .line 2022
    iput-boolean v1, v0, Lxg;->a:Z

    .line 1113
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1114
    iget-object v0, p0, Lxj$1;->d:Lxj;

    invoke-static {v0}, Lxj;->a(Lxj;)Lxg;

    move-result-object v0

    .line 2030
    iput-boolean v10, v0, Lxg;->b:Z

    .line 1115
    iget-object v0, p0, Lxj$1;->a:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lxj$1;->a:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getModifiedTime()J

    move-result-wide v0

    .line 1116
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v6, v0

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;

    .line 1117
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getAction()I

    move-result v1

    if-eq v1, v10, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 1118
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getModifiedTime()J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-lez v1, :cond_2

    .line 1119
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getModifiedTime()J

    move-result-wide v6

    .line 1121
    :cond_2
    iget-object v1, p0, Lxj$1;->b:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iget-object v5, p0, Lxj$1;->d:Lxj;

    invoke-static {v5}, Lxj;->b(Lxj;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->insertFavorite(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;)Lcom/alibaba/alimei/fav/model/FavoriteModel;

    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 1115
    goto :goto_0

    .line 1122
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getAction()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 1123
    iget-object v1, p0, Lxj$1;->b:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iget-object v5, p0, Lxj$1;->d:Lxj;

    invoke-static {v5}, Lxj;->b(Lxj;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->deleteFavorite(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 1126
    :cond_5
    iget-object v1, p0, Lxj$1;->c:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

    iget-object v0, p0, Lxj$1;->a:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lxj$1;->a:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getId()J

    move-result-wide v2

    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getLoadMoreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;->updateSyncInfo(JLjava/lang/String;Ljava/lang/String;J)Z

    .line 1138
    :goto_2
    return-void

    .line 1128
    :cond_7
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 1129
    iget-object v0, p0, Lxj$1;->a:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    if-eqz v0, :cond_8

    .line 1130
    iget-object v0, p0, Lxj$1;->a:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getModifiedTime()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_8

    .line 1131
    iget-object v0, p0, Lxj$1;->a:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getModifiedTime()J

    move-result-wide v6

    .line 1134
    :cond_8
    iget-object v1, p0, Lxj$1;->c:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

    iget-object v0, p0, Lxj$1;->a:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lxj$1;->a:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getId()J

    move-result-wide v2

    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getLoadMoreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;->updateSyncInfo(JLjava/lang/String;Ljava/lang/String;J)Z

    goto :goto_2

    .line 1137
    :cond_a
    if-nez p1, :cond_b

    .line 1138
    iget-object v0, p0, Lxj$1;->d:Lxj;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->FavriteUnKnownError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lxj;->a(Lxj;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_2

    .line 1140
    :cond_b
    iget-object v0, p0, Lxj$1;->d:Lxj;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getErrorCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Lxh;->a(J)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lxj;->a(Lxj;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_2
.end method
