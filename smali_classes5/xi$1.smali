.class final Lxi$1;
.super Ljava/lang/Object;
.source "LoadMoreFavTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxi;->c()Z
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
.field final synthetic a:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

.field final synthetic b:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

.field final synthetic c:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

.field final synthetic d:Lxi;


# direct methods
.method constructor <init>(Lxi;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;)V
    .locals 0
    .param p1, "this$0"    # Lxi;

    .prologue
    .line 85
    iput-object p1, p0, Lxi$1;->d:Lxi;

    iput-object p2, p0, Lxi$1;->a:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iput-object p3, p0, Lxi$1;->b:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

    iput-object p4, p0, Lxi$1;->c:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

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
    .line 124
    iget-object v0, p0, Lxi$1;->d:Lxi;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lxi;->a(Lxi;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 125
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Lxi$1;->d:Lxi;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lxi;->a(Lxi;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 120
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 85
    check-cast p1, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;

    .line 1088
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1089
    iget-object v0, p0, Lxi$1;->d:Lxi;

    invoke-static {v0}, Lxi;->a(Lxi;)Lxe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->isMore()Z

    move-result v1

    .line 2047
    iput-boolean v1, v0, Lxe;->b:Z

    .line 1090
    iget-object v0, p0, Lxi$1;->d:Lxi;

    invoke-static {v0}, Lxi;->a(Lxi;)Lxe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getLoadMoreId()Ljava/lang/String;

    move-result-object v1

    .line 3039
    iput-object v1, v0, Lxe;->a:Ljava/lang/String;

    .line 1091
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1093
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;

    .line 1094
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 1095
    :cond_1
    iget-object v2, p0, Lxi$1;->a:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iget-object v3, p0, Lxi$1;->d:Lxi;

    invoke-static {v3}, Lxi;->b(Lxi;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->insertFavorite(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;)Lcom/alibaba/alimei/fav/model/FavoriteModel;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1098
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getLoadMoreId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1099
    iget-object v1, p0, Lxi$1;->b:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

    iget-object v0, p0, Lxi$1;->c:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lxi$1;->c:Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getId()J

    move-result-wide v2

    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getLoadMoreId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;->updateSyncInfo(JLjava/lang/String;Ljava/lang/String;J)Z

    .line 1101
    :cond_3
    iget-object v0, p0, Lxi$1;->d:Lxi;

    invoke-static {v0}, Lxi;->a(Lxi;)Lxe;

    move-result-object v0

    .line 3051
    iput-object v8, v0, Lxe;->c:Ljava/util/List;

    .line 1105
    :cond_4
    :goto_2
    return-void

    :cond_5
    move-wide v2, v6

    .line 1099
    goto :goto_1

    .line 1104
    :cond_6
    if-nez p1, :cond_7

    .line 1105
    iget-object v0, p0, Lxi$1;->d:Lxi;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->FavriteUnKnownError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lxi;->a(Lxi;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_2

    .line 1107
    :cond_7
    iget-object v0, p0, Lxi$1;->d:Lxi;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncFavoriteResult;->getErrorCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Lxh;->a(J)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lxi;->a(Lxi;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_2
.end method
