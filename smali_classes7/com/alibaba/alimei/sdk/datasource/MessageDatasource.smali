.class public interface abstract Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
.super Ljava/lang/Object;
.source "MessageDatasource.java"


# virtual methods
.method public abstract addAndRemoveTags(JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addChangeMailTagSyncData(JLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addChangeMailTagSyncData(JZLjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addMailTags(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addMailTags(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addOrUpdateMail(Ljava/lang/String;JLcom/alibaba/alimei/restfulapi/data/Mail;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;
.end method

.method public abstract changMailCalenderStatus(JLjava/lang/String;ILjava/lang/String;)V
.end method

.method public varargs abstract changeMailFavorite(JLjava/lang/String;Z[Ljava/lang/String;)V
.end method

.method public abstract changeMailReadStatus(JLjava/lang/String;JLjava/lang/String;Z)V
.end method

.method public varargs abstract changeMailReadStatus(JLjava/lang/String;Z[Ljava/lang/String;)V
.end method

.method public abstract changeMailReadStatusByTag(JLjava/lang/String;Ljava/lang/String;Z)V
.end method

.method public varargs abstract changeMailReminder(JLjava/lang/String;Z[Ljava/lang/String;)V
.end method

.method public abstract changeMailTagsWithIds(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract checkMailData(J)Ljava/lang/String;
.end method

.method public abstract cleanDeletedAccountMails()V
.end method

.method public abstract cleanOldMails(II)V
.end method

.method public abstract clearQuickReplyContent(JLjava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Z
.end method

.method public abstract deleteLocalDraft(JLjava/lang/String;Lagz;)V
.end method

.method public abstract deleteMailById(JLjava/lang/String;J)V
.end method

.method public varargs abstract deleteMailByServerIdByUser(JLjava/lang/String;[Ljava/lang/String;)V
.end method

.method public varargs abstract deleteMailByServerIds(JLjava/lang/String;Z[Ljava/lang/String;)V
.end method

.method public abstract getAllFolderStateCount()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFolderStateCount(JJLagw;)I
.end method

.method public abstract handleLoadMailDetail(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/data/Mail;)V
.end method

.method public abstract handleLoadSearchMailDetail(Ljava/lang/String;JLcom/alibaba/alimei/restfulapi/data/Mail;)V
.end method

.method public abstract handleMailDetailDownloadFail(JLjava/lang/String;)V
.end method

.method public abstract handleMailSyncResults(JLjava/lang/String;JZZLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;ZZZILcom/alibaba/alimei/sdk/api/MailApi;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;
.end method

.method public abstract handleMailSyncResults(JLjava/lang/String;[J[Z[Z[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;[Z[ZZILcom/alibaba/alimei/sdk/api/MailApi;)V
.end method

.method public abstract handleMessageSyncResult(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handleSearchMailResult(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V
.end method

.method public abstract handleSendMailFailureResult(JJJI)V
.end method

.method public abstract handleSendMailOrDraftLocalDataStatus(ZJLjava/lang/String;JJLjava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handleSendMailOrDraftSyncResult(ZLcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;Z)V
.end method

.method public abstract hasLocalTagMail(JLjava/lang/String;)Z
.end method

.method public abstract loadHistoryMailsFromDB(JJLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadHistoryMailsFromDB(J[J[Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[J[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract loadHistoryMailsFromDBByTag(JLjava/lang/String;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract moveMailToLocalFolder(JLjava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;J)V
.end method

.method public varargs abstract moveMailToNewFolder(JLjava/lang/String;JLjava/lang/String;Z[Ljava/lang/String;)V
.end method

.method public varargs abstract moveMailToNewFolder(JLjava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract queryAllLocalFavoriteMails(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllLocalMails(JI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllLocalMails(JJLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllLocalMailsByTag(JLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllRecentReadMails(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllUnloadedMails(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllWaitingDeleteList(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryChangeMailTagStatusList(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryCommunicateMails(JLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryHtmlPartId(JJ)Lahb;
.end method

.method public abstract queryImapMesssageUids(JJJJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryLocalMails(IJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryLocalMailsByPage(JLjava/lang/String;ZII)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "ZII)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryLocalMailsByTag(JJLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMailBody(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
.end method

.method public abstract queryMailBodyById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
.end method

.method public abstract queryMailDetailById(JJ)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
.end method

.method public abstract queryMailDetailByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
.end method

.method public abstract queryMailDraft(JJ)Lagz;
.end method

.method public varargs abstract queryMailFoldersByServerId(J[Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMailHtmlBody(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryMailItemIdsByFolderId(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMailSourceMessage(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
.end method

.method public abstract queryMaxImapUid(JJ)J
.end method

.method public abstract queryMessageBodyById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
.end method

.method public abstract queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
.end method

.method public abstract queryMessageByMessageId(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
.end method

.method public abstract queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
.end method

.method public abstract queryMessageByServerId(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
.end method

.method public abstract queryMinImapUid(JJ)J
.end method

.method public abstract queryNewMailCounts()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laha;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryNewMailCounts(J)Ljava/util/Map;
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

.method public abstract queryOldestMail(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
.end method

.method public abstract queryRelatedMails(JLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySendMailOrDraftSync(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
.end method

.method public abstract querySessionIdByMessageIds(JLjava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract queryTagNewMailCounts(JLjava/lang/String;Z)I
.end method

.method public abstract queryWaitingSyncFavoriteList(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryWaitingSyncMoveList(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryWaitingSyncReadStatusList(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeMailTags(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeMailTags(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetFoldersSyncKey(JLjava/lang/String;)V
.end method

.method public abstract resetImapUid(JLjava/lang/String;)V
.end method

.method public abstract saveOrUpdateDraft(JLjava/lang/String;ZLcom/alibaba/alimei/sdk/model/AddressModel;Lagz;Z)J
.end method

.method public abstract saveQuickReplyContent(JLjava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Z
.end method

.method public abstract saveSendMailOrDraftSyncMessage(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
.end method

.method public abstract saveSendMailOrDraftSyncMessage(JJLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
.end method

.method public abstract searchLocalContactsByPage(JLjava/lang/String;III)Lagv;
.end method

.method public abstract searchLocalContactsByPage(Ljava/lang/String;Ljava/lang/String;II)Lagv;
.end method

.method public abstract searchLocalMailAttachmentsByPage(JLjava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchLocalMails(JLjava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchLocalMailsByPage(JLjava/lang/String;III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateImapPartId(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateMailBody(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateMailCalendar(JLjava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)V
.end method

.method public abstract updateMailHtmlBody(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateMailReadTimestamp(JLjava/lang/String;J)I
.end method

.method public abstract updateMailSummary(JLjava/lang/String;JLjava/lang/String;)V
.end method
