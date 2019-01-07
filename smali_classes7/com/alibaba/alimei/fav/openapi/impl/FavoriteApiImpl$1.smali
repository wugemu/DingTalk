.class Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$1;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "FavoriteApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->addFavorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$summary:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$1;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$1;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$1;->val$content:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$1;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$1;->val$summary:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 6
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$1;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->access$000(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$1;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$1;->val$content:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$1;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$1;->val$summary:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->insertFavorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteModel;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 60
    return-void
.end method
