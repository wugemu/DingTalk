.class final Lxk$1;
.super Ljava/lang/Object;
.source "UpdateFavTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxk;->c()Z
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
        "Lcom/alibaba/alimei/restfulapi/v2/response/FavoriteUpdateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

.field final synthetic c:Landroid/util/SparseArray;

.field final synthetic d:Lxk;


# direct methods
.method constructor <init>(Lxk;Landroid/util/SparseArray;Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lxk;

    .prologue
    .line 137
    iput-object p1, p0, Lxk$1;->d:Lxk;

    iput-object p2, p0, Lxk$1;->a:Landroid/util/SparseArray;

    iput-object p3, p0, Lxk$1;->b:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iput-object p4, p0, Lxk$1;->c:Landroid/util/SparseArray;

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
    .line 170
    iget-object v0, p0, Lxk$1;->d:Lxk;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lxk;->a(Lxk;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 171
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lxk$1;->d:Lxk;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lxk;->a(Lxk;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 166
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 137
    check-cast p1, Lcom/alibaba/alimei/restfulapi/v2/response/FavoriteUpdateResult;

    .line 1140
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/FavoriteUpdateResult;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1141
    const/4 v0, 0x0

    .line 1142
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/FavoriteUpdateResult;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/response/FavoriteUpdateResultItem;

    .line 1143
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/response/FavoriteUpdateResultItem;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1144
    iget-object v1, p0, Lxk$1;->a:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lxk$1;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    .line 1145
    iget-object v1, p0, Lxk$1;->b:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iget-object v0, p0, Lxk$1;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->deleteFavorite(J)Z

    .line 1153
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1154
    goto :goto_0

    .line 1147
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/response/FavoriteUpdateResultItem;->getValue()Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;

    move-result-object v1

    .line 1148
    iget-object v4, p0, Lxk$1;->b:Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    iget-object v0, p0, Lxk$1;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v6, v7, v1}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->updateFavorite(JLcom/alibaba/alimei/restfulapi/v2/data/Favorite;)V

    goto :goto_1

    .line 1151
    :cond_1
    iget-object v1, p0, Lxk$1;->d:Lxk;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/response/FavoriteUpdateResultItem;->getErrorCode()J

    move-result-wide v4

    invoke-static {v4, v5}, Lxh;->a(J)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    invoke-static {v1, v0}, Lxk;->a(Lxk;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 137
    :cond_2
    return-void
.end method
