.class Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$11;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "FavoriteApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->deleteAllFavorite(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Integer;",
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
    .line 319
    iput-object p1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$11;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 2
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 323
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    move-result-object v0

    .line 324
    .local v0, "favoriteDatasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
    iget-object v1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$11;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$1900(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->deleteAllFavorite(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 325
    return-void
.end method
