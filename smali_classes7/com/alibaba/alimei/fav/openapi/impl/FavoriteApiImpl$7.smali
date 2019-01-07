.class Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "FavoriteApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->getFavoriteSpaceId(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 5
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 137
    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$400(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$300(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$400(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$500(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 177
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteSyncDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$600(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;->querySyncInfo(Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;

    move-result-object v0

    .line 142
    .local v0, "syncModel":Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$400(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$700(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$400(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$1100(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$800(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    move-result-object v1

    .line 146
    .local v1, "syncService":Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;
    const-string/jumbo v2, "FAVORITES"

    new-instance v3, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7$1;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7$1;-><init>(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$7;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;->syncSpaceByBizType(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto :goto_1
.end method
