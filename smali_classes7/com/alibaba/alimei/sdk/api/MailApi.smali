.class public interface abstract Lcom/alibaba/alimei/sdk/api/MailApi;
.super Ljava/lang/Object;
.source "MailApi.java"


# static fields
.field public static final CANCEL_OUTGOING_MAIL_DEFAULT:I = 0x0

.field public static final CANCEL_OUTGOING_MAIL_TODRAFT:I = 0x1


# virtual methods
.method public abstract autoSetCopySendMail2SentFolder(Lxv;)V
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

.method public abstract cancelAutoDownloadMailDetailTask()V
.end method

.method public abstract cancelOutgoingMail(JILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract changeCalendarStatus(Ljava/lang/String;Ljava/lang/String;IILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract changeMailAllReadStatus(JZLjava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract changeMailFavorite(ZLxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract changeMailReadStatus(ZLxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract changeMailReadStatusByTag(Ljava/lang/String;ZLxv;)V
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

.method public abstract changeMailReadTimestamp(Lxv;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation
.end method

.method public varargs abstract changeMailReminder(ZLxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract checkMailData(Lxv;)V
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

.method public abstract clearQuickReplyContent(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteLocalMailDraft(Lagz;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagz;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract deleteMailByServerId(Lxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract fetchSearchMailFromServer(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOnlinePreviewUrl(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasLocalTagMail(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasMoreHistoryMails(JILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasMoreHistoryMails(JI)Z
.end method

.method public abstract loadHistoryMails(JILjava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadMailBodyFromServer(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadMailHistoryByTag(Ljava/lang/String;JJLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadMailHtmlBodyFromServer(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadMultipleHistoryMails([J[I[Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[I[",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadSearchMailFromServer(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract moveMailToNewFolder(JLxv;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract queryAllLocalFavoriteMails(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryAllLocalMails(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryAllLocalMails(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryAllLocalMailsByTag(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryAllLocalRecentReadMails(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryAllUnloadedMails(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryAttachmentByContentUri(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;
.end method

.method public abstract queryAttachmentByContentUri(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryLocalCommunicateEmails(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryLocalMails(ILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryLocalMailsByConversationId(JLjava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryLocalMailsByTag(JLjava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryMailAttachmentNumber(Ljava/lang/String;Z)I
.end method

.method public abstract queryMailAttachmentNumber(Ljava/lang/String;ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMailAttachments(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryMailById(J)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
.end method

.method public abstract queryMailById(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMailByTagFromServer(Ljava/lang/String;JJLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMailDetail(Landroid/content/Context;Landroid/net/Uri;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMailDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMailDetail(Ljava/lang/String;Ljava/lang/String;ZZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMailDetail(Ljava/lang/String;ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMailDetailById(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMailDraft(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lagz;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryMailNormalAttachments(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryMailResourceAttachments(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract queryRelatedMails(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract refreshMails(JILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailGroupModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract refreshMailsAndQueryAllLocal(JILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract reportOrTrustSpamMail(Ljava/lang/String;ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportSpam(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resetFoldersSyncStatus(Lxv;)V
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

.method public abstract saveMailDraft(Lagz;ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagz;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveQuickReplyContent(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchAttachmentFromServer(Ljava/lang/String;IILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Lagu;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchLocalAttachmentByPage(Ljava/lang/String;IILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
            ">;>;>;)V"
        }
    .end annotation
.end method

.method public abstract searchLocalContactsByPage(Ljava/lang/String;IIILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lagv;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract searchLocalMail(Ljava/lang/String;ILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract searchLocalMailByPage(Ljava/lang/String;IIILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;>;)V"
        }
    .end annotation
.end method

.method public abstract searchLocalMailByPage(Ljava/lang/String;IILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;>;)V"
        }
    .end annotation
.end method

.method public abstract searchMailFromServer(Ljava/lang/String;IIILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMail(Lagz;)V
.end method

.method public abstract sendMail(Lagz;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagz;",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMailById(J)V
.end method

.method public abstract startAutoDownloadMailDetailTask()V
.end method

.method public abstract startSyncHistoryMails(JI)V
.end method

.method public abstract startSyncHistoryMails([J[I)V
.end method

.method public abstract startSyncMailByTagFromServer(Ljava/lang/String;JJ)V
.end method

.method public abstract startSyncMails(JIZ)V
.end method

.method public abstract startSyncNewMails(JI)V
.end method

.method public abstract startSyncNewMails([J[I)V
.end method

.method public abstract updateImapMailStatus(Ljava/lang/String;JJJ)V
.end method
