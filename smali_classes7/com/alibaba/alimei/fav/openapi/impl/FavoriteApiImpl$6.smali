.class Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$6;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "FavoriteApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->getFavorite(JLxv;)V
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

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$6;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$6;->val$id:J

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 4
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 124
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$6;->val$id:J

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->getFavoriteModel(J)Lcom/alibaba/alimei/fav/model/FavoriteModel;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 125
    return-void
.end method
