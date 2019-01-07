.class public interface abstract Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;
.super Ljava/lang/Object;
.source "IRecentOperationAPI.java"


# virtual methods
.method public abstract batchInsertRecentOperationFile(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentDentryModel;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteRecentOperations(J)I
.end method

.method public abstract insertOrIgnoreRecentOperation(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)J
.end method

.method public abstract insertOrIgnoreRecentOperationFile(JLcom/alibaba/alimei/cspace/model/RecentDentryModel;)J
.end method

.method public abstract queryLocalRecentOperationsDiffImage(IIII)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryRecentOperationByLocalId(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryRecentOperationFiles(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentDentryModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract updateRecentOperation(JIJ)V
.end method
