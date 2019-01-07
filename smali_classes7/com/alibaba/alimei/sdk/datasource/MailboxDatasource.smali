.class public interface abstract Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
.super Ljava/lang/Object;
.source "MailboxDatasource.java"


# virtual methods
.method public abstract addDefaultFolderForAccount(J)Z
.end method

.method public abstract addLocalFolder(JLjava/lang/String;ILjava/lang/String;)J
.end method

.method public abstract changeNewMailStatus(JLjava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract getFolderSyncKey(J)Ljava/lang/String;
.end method

.method public abstract getTagSyncKey(J)Ljava/lang/String;
.end method

.method public abstract handleCareOrdersResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;)V
.end method

.method public abstract handleSyncFoldersResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;Z)Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
.end method

.method public abstract queryAccountStatus(J)Lcom/alibaba/alimei/sdk/model/AccountStatusModel;
.end method

.method public abstract queryAllMailPushableFolders(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllMailbox(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllPushFolders(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllUnReadCount(J)J
.end method

.method public abstract queryCalendarFolders(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryCollectionFolders(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryCustomMailFolders(JZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryFolderById(JJ)Lcom/alibaba/alimei/sdk/model/FolderModel;
.end method

.method public abstract queryFolderByMailServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;
.end method

.method public abstract queryFolderByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;
.end method

.method public abstract queryFolderByType(JI)Lcom/alibaba/alimei/sdk/model/FolderModel;
.end method

.method public varargs abstract queryFolderChildren(JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryFolderIdAndTypeById(JJ)Lcom/alibaba/alimei/sdk/model/FolderModel;
.end method

.method public abstract queryFolderOldestItemTime(J)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryHasNewMail(J)Z
.end method

.method public abstract queryMailPushFolders(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMailboxById(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
.end method

.method public abstract queryMailboxByIdForSyncKey(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
.end method

.method public abstract queryMailboxByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
.end method

.method public abstract queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
.end method

.method public abstract queryMailboxByTypeAndOwner(JILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
.end method

.method public abstract queryMailboxIdAndTypeByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
.end method

.method public varargs abstract queryMovableFolders(J[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySessionModelFolder(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySharedCalendarMailbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
.end method

.method public abstract querySharedCalendarMailbox(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySyncableFolders(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySystemMailFolders(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract queryVisibleFolders(JZZ[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract queryVisibleFoldersForDingTalk(JZZ[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateAllPushFoldersLastVisitTime(JLjava/lang/String;)V
.end method

.method public abstract updateLastVisitTime(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateMailPushFolders(JLjava/lang/String;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract updateSyncKey(JILjava/lang/String;)I
.end method

.method public abstract updateSyncKey(JJLjava/lang/String;J)I
.end method

.method public abstract updateSyncTime(JJJ)I
.end method
