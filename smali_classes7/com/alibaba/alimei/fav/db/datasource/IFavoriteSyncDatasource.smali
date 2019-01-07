.class public interface abstract Lcom/alibaba/alimei/fav/db/datasource/IFavoriteSyncDatasource;
.super Ljava/lang/Object;
.source "IFavoriteSyncDatasource.java"


# virtual methods
.method public abstract clearLoadMoreSyncInfo()V
.end method

.method public abstract insertSyncInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract querySyncInfo(Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;
.end method

.method public abstract resetSyncInfo(J)Z
.end method

.method public abstract updateSyncInfo(JLjava/lang/String;Ljava/lang/String;J)Z
.end method
