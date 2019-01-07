.class public final Lcom/alibaba/alimei/sdk/db/mail/MailConfigure;
.super Ljava/lang/Object;
.source "MailConfigure.java"


# static fields
.field public static final BODY_DATABASE_VERSION:I = 0xc

.field public static final DATABASE_BODY:Ljava/lang/String; = "EmailProviderBody.db"

.field public static final DATABASE_EMAIL:Ljava/lang/String; = "EmailProvider.db"

.field public static final DATABASE_VERSION:I = 0x47

.field private static final sConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/orm/Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/alibaba/alimei/sdk/db/mail/MailConfigure;->sConfigurations:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v5, "EmailProviderBody.db"

    const/16 v6, 0xc

    invoke-direct {v0, v5, v6}, Lcom/alibaba/alimei/orm/Configuration;-><init>(Ljava/lang/String;I)V

    .line 54
    .local v0, "body":Lcom/alibaba/alimei/orm/Configuration;
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 55
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Body$SaveTextContentToFileMigrate;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body$SaveTextContentToFileMigrate;-><init>()V

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 56
    sget-object v5, Lcom/alibaba/alimei/sdk/db/mail/MailConfigure;->sConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v5, "EmailProvider.db"

    const/16 v6, 0x47

    invoke-direct {v1, v5, v6}, Lcom/alibaba/alimei/orm/Configuration;-><init>(Ljava/lang/String;I)V

    .line 60
    .local v1, "email":Lcom/alibaba/alimei/orm/Configuration;
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 61
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 62
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 63
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 65
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 67
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 69
    const-class v5, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 71
    const-class v5, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 73
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 75
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 77
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/favorite_message_delete;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 78
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/favorite_message_favorite;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 79
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/favorite_message_insert;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 80
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/favorite_message_move;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 81
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/message_count_message_delete;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 82
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/message_count_message_insert;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 83
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/message_count_message_move;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 84
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/message_delete;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 85
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/unread_message_delete;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 86
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/unread_message_insert;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 87
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/unread_message_move;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 88
    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/trigger/unread_message_read;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 90
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment$AttachmentMigrationSpace;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment$AttachmentMigrationSpace;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 92
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment$AddImapColumnMigraton;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment$AddImapColumnMigraton;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 94
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageStatusCodeMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageStatusCodeMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 96
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageDelegateAccountMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageDelegateAccountMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 98
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry$MailReadStatusMigration1;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry$MailReadStatusMigration1;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 100
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MailSourceKey;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MailSourceKey;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 105
    new-instance v2, Lcom/alibaba/alimei/sdk/db/mail/MailConfigure$1;

    invoke-direct {v2}, Lcom/alibaba/alimei/sdk/db/mail/MailConfigure$1;-><init>()V

    .line 120
    .local v2, "migration":Lcom/alibaba/alimei/orm/migration/Migration;
    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 123
    new-instance v3, Lcom/alibaba/alimei/sdk/db/mail/MailConfigure$2;

    invoke-direct {v3}, Lcom/alibaba/alimei/sdk/db/mail/MailConfigure$2;-><init>()V

    .line 141
    .local v3, "migration1":Lcom/alibaba/alimei/orm/migration/Migration;
    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 143
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddConversationMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddConversationMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 145
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddExtDataMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddExtDataMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 147
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddReferencesMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddReferencesMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 149
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync$MessageSyncAddLongDataMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync$MessageSyncAddLongDataMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 150
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync$ExtendMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync$ExtendMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 152
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapHtmlPartIdMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapHtmlPartIdMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 153
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapUidMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapUidMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 154
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapTextPartIdMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapTextPartIdMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 155
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapHtmlEncodingMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapHtmlEncodingMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 156
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapTextEncodingMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapTextEncodingMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 157
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapHtmlContentTypeMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapHtmlContentTypeMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 158
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapTextContentTypeMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddImapTextContentTypeMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 159
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddDraftIdContentMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddDraftIdContentMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 160
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddCalenarPartMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddCalenarPartMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 161
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddSeparateAndTimingSendMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddSeparateAndTimingSendMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 163
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$AddDefaultTag;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$AddDefaultTag;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 165
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$AddUnreadTagMigrate;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$AddUnreadTagMigrate;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 167
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox$LastVisitTimeMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox$LastVisitTimeMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 169
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox$OrderMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox$OrderMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 171
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$CareOrderMigrate;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$CareOrderMigrate;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 173
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddCalendarBody;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddCalendarBody;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 174
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddPriorityMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddPriorityMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 176
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddLocalExt;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddLocalExt;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 177
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddExtHeader;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageAddExtHeader;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 179
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$LastVisitTimeMigration;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$LastVisitTimeMigration;-><init>()V

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 184
    new-instance v4, Lcom/alibaba/alimei/sdk/db/mail/MailConfigure$3;

    invoke-direct {v4}, Lcom/alibaba/alimei/sdk/db/mail/MailConfigure$3;-><init>()V

    .line 199
    .local v4, "migration2":Lcom/alibaba/alimei/orm/migration/Migration;
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 201
    sget-object v5, Lcom/alibaba/alimei/sdk/db/mail/MailConfigure;->sConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method public static getDatabaseConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/orm/Configuration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lcom/alibaba/alimei/sdk/db/mail/MailConfigure;->sConfigurations:Ljava/util/ArrayList;

    return-object v0
.end method
