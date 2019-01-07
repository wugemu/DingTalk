.class public Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
.super Lcom/alibaba/alimei/sdk/db/mail/entry/MailTableEntry;
.source "Message.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MailSourceKey;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddExtHeader;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddLocalExt;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddCalendarBody;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddPriorityMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddSeparateAndTimingSendMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddCalenarPartMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddDraftIdContentMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapUidMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapTextContentTypeMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapHtmlContentTypeMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapTextEncodingMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapHtmlEncodingMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapTextPartIdMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapHtmlPartIdMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddReferencesMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddConversationMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddExtDataMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageDelegateAccountMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageStatusCodeMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageFlag;
    }
.end annotation


# static fields
.field public static final FLAG_LOADED_COMPLETE:I = 0x1

.field public static final FLAG_LOADED_DELETED:I = 0x3

.field public static final FLAG_LOADED_FAIL:I = 0x4

.field public static final FLAG_LOADED_PARTIAL:I = 0x2

.field public static final FLAG_LOADED_UNLOADED:I = 0x0

.field public static final PRIORITY_NOMAL:I = 0x3

.field public static final PRIORITY_URGENT:I = 0x1


# instance fields
.field public conversationExtension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x20
        name = "conversation_extension"
    .end annotation
.end field

.field public delegateByAccount:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1f
        name = "delegate_acc"
    .end annotation
.end field

.field public extendHeader:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x32
        name = "extend_header"
    .end annotation
.end field

.field public hasForwarded:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1d
        defaultValue = "0"
        name = "sync_status"
    .end annotation
.end field

.field public hasReplied:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1c
        defaultValue = "0"
        name = "datastatus"
    .end annotation
.end field

.field public hasResourceAttach:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "flagAttach"
    .end annotation
.end field

.field public localExtension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x31
        name = "local_extension"
    .end annotation
.end field

.field public localStatusCode:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1e
        defaultValue = "0"
        name = "lstatus_code"
    .end annotation
.end field

.field public mAccountKey:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xe
        indexGroups = {
            "page_query_index"
        }
        name = "accountKey"
    .end annotation
.end field

.field public mBcc:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x12
        name = "bccList"
    .end annotation
.end field

.field public mCalendarBody:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2c
        name = "calendar_body"
    .end annotation
.end field

.field public mCalendarContentType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2b
        name = "calendar_content_type"
    .end annotation
.end field

.field public mCalendarEncoding:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2b
        name = "calendar_encoding"
    .end annotation
.end field

.field public mCalendarId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x18
        name = "calendarId"
    .end annotation
.end field

.field public mCalendarPartId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2b
        name = "calendar_part_id"
    .end annotation
.end field

.field public mCc:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x11
        name = "ccList"
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        name = "displayName"
    .end annotation
.end field

.field public mDraftContent:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2b
        name = "draft_content"
    .end annotation
.end field

.field public mDraftLocalId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2a
        name = "draft_local_id"
    .end annotation
.end field

.field public mExtData:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x29
        name = "extention_data"
    .end annotation
.end field

.field public mFlagAttachment:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "flagAttachment"
    .end annotation
.end field

.field public mFlagFavorite:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "flagFavorite"
    .end annotation
.end field

.field public mFlagLoaded:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        defaultValue = "0"
        name = "flagLoaded"
        nullable = false
    .end annotation
.end field

.field public mFlagRead:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        index = true
        indexName = "msg_flagread_index"
        name = "flagRead"
    .end annotation
.end field

.field public mFlags:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "flags"
    .end annotation
.end field

.field public mFrom:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xf
        name = "fromList"
    .end annotation
.end field

.field public mHtmlConentType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x26
        name = "html_content_type"
    .end annotation
.end field

.field public mHtmlEncoding:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x24
        name = "html_encoding"
    .end annotation
.end field

.field public mHtmlPartId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x22
        name = "html_part_id"
    .end annotation
.end field

.field public mIsCalendarBodySaveFile:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2d
        defaultValue = "0"
        name = "is_calendar_body_save_file"
    .end annotation
.end field

.field public mLastReadTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x16
        name = "lastReadTime"
    .end annotation
.end field

.field public mMailboxKey:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xd
        index = true
        indexName = "idx_message_mailboxKey"
        name = "mailboxKey"
    .end annotation
.end field

.field public mMeetingInfo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x14
        name = "meetingInfo"
    .end annotation
.end field

.field public mMessageId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xc
        index = true
        indexName = "idx_message_messageId"
        name = "messageId"
    .end annotation
.end field

.field public mReferences:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x21
        name = "mail_references"
    .end annotation
.end field

.field public mReminder:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x17
        defaultValue = "0"
        name = "reminder"
    .end annotation
.end field

.field public mReplyTo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x13
        name = "replyToList"
    .end annotation
.end field

.field public mServerConversationId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x19
        name = "conversationId"
    .end annotation
.end field

.field public mServerId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        index = true
        indexName = "idx_message_syncServerId"
        name = "syncServerId"
    .end annotation
.end field

.field public mServerTimeStamp:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        name = "syncServerTimeStamp"
    .end annotation
.end field

.field public mSnippet:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x15
        name = "snippet"
    .end annotation
.end field

.field public mSubject:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "subject"
    .end annotation
.end field

.field public mTextContentType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x27
        name = "text_content_type"
    .end annotation
.end field

.field public mTextEncoding:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x25
        name = "text_encoding"
    .end annotation
.end field

.field public mTextPartId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x23
        name = "text_part_id"
    .end annotation
.end field

.field public mTimeStamp:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        indexGroups = {
            "page_query_index"
        }
        name = "timeStamp"
    .end annotation
.end field

.field public mTo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x10
        name = "toList"
    .end annotation
.end field

.field public mUid:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x28
        name = "uid"
    .end annotation
.end field

.field public messageHasTag:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1a
        index = true
        name = "messageType"
    .end annotation
.end field

.field public messageTags:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1b
        name = "messageTag"
    .end annotation
.end field

.field public priority:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x30
        defaultValue = "3"
        name = "priority"
    .end annotation
.end field

.field public separatedSend:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2e
        name = "separated_send"
    .end annotation
.end field

.field public sourceId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x33
        name = "source_key"
    .end annotation
.end field

.field public timingSend:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2f
        name = "timing_send"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/db/mail/entry/MailTableEntry;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagRead:Z

    .line 80
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagFavorite:Z

    .line 83
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagAttachment:Z

    .line 89
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasResourceAttach:Z

    .line 92
    iput v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlags:I

    .line 164
    iput v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->localStatusCode:I

    return-void
.end method
