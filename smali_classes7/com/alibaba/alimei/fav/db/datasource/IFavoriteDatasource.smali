.class public interface abstract Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
.super Ljava/lang/Object;
.source "IFavoriteDatasource.java"


# virtual methods
.method public abstract clearData()V
.end method

.method public abstract deleteAllFavorite(Ljava/lang/String;)I
.end method

.method public abstract deleteFavorite(J)Z
.end method

.method public abstract deleteFavorite(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getFavoriteModel(J)Lcom/alibaba/alimei/fav/model/FavoriteModel;
.end method

.method public abstract insertFavorite(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;)Lcom/alibaba/alimei/fav/model/FavoriteModel;
.end method

.method public abstract insertFavorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteModel;
.end method

.method public abstract insertFavorites(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract markAsDelete(J)Z
.end method

.method public abstract queryAll(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryByModifiedTime(Ljava/lang/String;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryDirtyFavorite(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchFavorites(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateFavorite(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteModel;
.end method

.method public abstract updateFavorite(JLcom/alibaba/alimei/restfulapi/v2/data/Favorite;)V
.end method
