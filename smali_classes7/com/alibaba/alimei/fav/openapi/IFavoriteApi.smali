.class public interface abstract Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;
.super Ljava/lang/Object;
.source "IFavoriteApi.java"


# virtual methods
.method public abstract addFavorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addFavorites(Ljava/util/List;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract clearSyncKey(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteAllFavorite(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteFavorite(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFavorite(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFavoriteList(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getFavoriteSpaceId(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadMore(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract save2Server(Ljava/lang/String;)V
.end method

.method public abstract searchFavoriteFromLocal(Ljava/lang/String;Ljava/util/List;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lxv",
            "<",
            "Lxf;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchFavoriteFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Lxv",
            "<",
            "Lxf;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract syncFavorite(Ljava/lang/String;)V
.end method

.method public abstract updateFavorite(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;)V"
        }
    .end annotation
.end method
