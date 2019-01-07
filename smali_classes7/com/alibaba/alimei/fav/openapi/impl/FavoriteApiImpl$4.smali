.class Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "FavoriteApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;->updateFavorite(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V
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

.field final synthetic val$id:J

.field final synthetic val$summary:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;->this$0:Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;->val$id:J

    iput-object p5, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;->val$type:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;->val$content:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;->val$title:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;->val$summary:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 8
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 98
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getFavoriteDatasource()Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;->val$id:J

    iget-object v4, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;->val$type:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;->val$content:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;->val$title:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl$4;->val$summary:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;->updateFavorite(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteModel;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 99
    return-void
.end method
