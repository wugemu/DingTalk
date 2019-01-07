.class Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$10;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "FavoriteApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->searchFavoriteFromLocal(Ljava/lang/String;Ljava/util/List;Lxv;)V
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

.field final synthetic val$types:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$10;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$10;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$10;->val$types:Ljava/util/List;

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
    const/4 v2, 0x0

    .line 305
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    move-result-object v0

    .line 306
    .local v0, "favoriteDatasource":Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
    new-instance v1, Lxf;

    invoke-direct {v1}, Lxf;-><init>()V

    .line 1028
    .local v1, "searchResult":Lxf;
    iput-boolean v2, v1, Lxf;->b:Z

    .line 1036
    iput v2, v1, Lxf;->c:I

    .line 309
    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$10;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$1800(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$10;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$10;->val$types:Ljava/util/List;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->searchFavorites(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2020
    iput-object v2, v1, Lxf;->a:Ljava/util/List;

    .line 310
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 311
    return-void
.end method
