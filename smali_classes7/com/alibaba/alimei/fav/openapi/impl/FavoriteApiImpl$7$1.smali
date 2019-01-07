.class Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7$1;
.super Ljava/lang/Object;
.source "FavoriteApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FavoriteApiImpl NetworkException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;

    .prologue
    .line 163
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p1, Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FavoriteApiImpl onServiceException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;)V
    .locals 5
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 149
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/data/Space;

    .line 151
    .local v0, "space":Lcom/alibaba/alimei/restfulapi/v2/data/Space;
    const-string/jumbo v2, "FAVORITES"

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->getBizType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    iget-object v1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;

    iget-object v1, v1, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$400(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;

    iget-object v2, v2, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$900(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteSyncDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7$1;->this$1:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;

    iget-object v2, v2, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$1000(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->getBizType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Space;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;->insertSyncInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0    # "space":Lcom/alibaba/alimei/restfulapi/v2/data/Space;
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p1, Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;)V

    return-void
.end method
