.class public interface abstract Lcom/alibaba/alimei/sdk/api/FolderApi;
.super Ljava/lang/Object;
.source "FolderApi.java"


# virtual methods
.method public abstract changeFolderHashNewMail(Ljava/lang/String;ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasInvalidInboxFolder()Z
.end method

.method public abstract queryAccountStatus(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AccountStatusModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryAllFolderMsgCountStatus(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryAllMailPushableFolders(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryAllMailPushableFoldersSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllPushFolders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllPushFolders(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryAllUnReadCount(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryCalendarFolders(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryCollectionFolders(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryCustomMailFolders(ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryFolderById(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryFolderByMailServerId(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryFolderByServerId(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;
.end method

.method public abstract queryFolderByServerId(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryFolderByType(ILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryFolderMsgUnreadCountStatus(JLagw;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lagw;",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryHasNewMail(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryInboxFolder(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMailPushFolders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMailPushFolders(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public varargs abstract queryMovableFolders(Lxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract queryNewMailCounts(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract querySessionFolder(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract querySystemMailFolders(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public varargs abstract queryVisibleFolderChildren(Ljava/lang/String;Lxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract queryVisibleFolders(ZLxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract queryVisibleFoldersForDingTalk(ZLxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract queryVisibleFoldersIncludeVirtual(ZLxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract refreshByFullWay(Lxv;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;>;Z)V"
        }
    .end annotation
.end method

.method public abstract refreshByIncrementWay(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderGroupModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startSyncFolder(Z)V
.end method

.method public abstract syncCareFolderOrders(Lxv;)V
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

.method public abstract updateAllPushFoldersLastVisitTime(Lxv;)V
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

.method public abstract updateLastVisitTime(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateMailPushFolders(Ljava/util/List;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
