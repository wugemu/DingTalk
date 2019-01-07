.class public Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "MessageDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;
.implements Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;


# static fields
.field public static final BODY_QUOTED_PART_FORWARD:Ljava/lang/String; = "quoted-forward"

.field public static final BODY_QUOTED_PART_INTRO:Ljava/lang/String; = "quoted-intro"

.field public static final BODY_QUOTED_PART_REPLY:Ljava/lang/String; = "quoted-reply"

.field private static final DEFAULT_LOAD_HISTORY_MAIL_SIZE:I = 0x14

.field private static final MAX_BODY_SIZE:J = 0x100000L

.field private static final SQL_CONDITION_MESSAGE_MESSAGEID:Ljava/lang/String; = "accountKey = ? AND mailboxKey = ? AND messageId = ?"

.field private static final SQL_CONDITION_MESSAGE_SERVERID:Ljava/lang/String; = "syncServerId = ? AND accountKey = ? "

.field private static final TAG:Ljava/lang/String; = "MessageDatasource"

.field public static final sMailListColumnsWithoutAccountId:[Ljava/lang/String;

.field public static final sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

.field public static final sSimpleMailListColumns:[Ljava/lang/String;


# instance fields
.field private CRLF:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "syncServerId"

    aput-object v1, v0, v4

    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v5

    const-string/jumbo v1, "subject"

    aput-object v1, v0, v6

    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "flagAttachment"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "flagAttach"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "lastReadTime"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "messageTag"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "datastatus"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "sync_status"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "lstatus_code"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "draft_local_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "is_calendar_body_save_file"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "priority"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutAccountId:[Ljava/lang/String;

    .line 137
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "syncServerId"

    aput-object v1, v0, v4

    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v5

    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v6

    const-string/jumbo v1, "toList"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "ccList"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "messageTag"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "datastatus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "sync_status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "draft_local_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "is_calendar_body_save_file"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "priority"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sSimpleMailListColumns:[Ljava/lang/String;

    .line 145
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "syncServerId"

    aput-object v1, v0, v4

    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v5

    const-string/jumbo v1, "subject"

    aput-object v1, v0, v6

    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "flagAttachment"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "messageTag"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "datastatus"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "sync_status"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "lstatus_code"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "uid"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "draft_local_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "is_calendar_body_save_file"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "priority"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    .line 216
    const-string/jumbo v0, "(\r\n|\r|\n|\n\r)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->CRLF:Ljava/util/regex/Pattern;

    .line 156
    return-void
.end method

.method private addChangeMailTagSyncData(JZLjava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "isAddTag"    # Z
    .param p4, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "tagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x7

    const/4 v8, 0x6

    .line 4214
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4215
    const-string/jumbo v3, "MessageDatasource"

    const-string/jumbo v4, "addChangeMailTagSyncData serverId is null"

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    :cond_0
    :goto_0
    return-void

    .line 4219
    :cond_1
    if-eqz p5, :cond_2

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4220
    :cond_2
    const-string/jumbo v3, "MessageDatasource"

    const-string/jumbo v4, "addChangeMailTagSyncData tagList is empty"

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4224
    :cond_3
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "SyncMsg"

    invoke-direct {v0, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4225
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4227
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v4, "accountId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4228
    const-string/jumbo v4, "itemId"

    invoke-virtual {v0, v4, p4}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4229
    const-string/jumbo v4, "type"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Delete;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4230
    const-string/jumbo v4, "data"

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4231
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 4234
    new-instance v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    .line 4235
    .local v1, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    iput-wide p1, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 4236
    iput-object p4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    .line 4237
    if-eqz p3, :cond_4

    .line 4238
    iput v8, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 4242
    :goto_2
    iput-object v2, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    .line 4243
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    goto :goto_1

    .line 4240
    :cond_4
    iput v9, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    goto :goto_2
.end method

.method private addContactSearchModels(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;)V
    .locals 5
    .param p4, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3041
    .local p1, "addressModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .local p2, "resultModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .local p3, "addressSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3068
    :cond_0
    return-void

    .line 3045
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 3046
    .local v1, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iget-object v2, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 3047
    .local v2, "name":Ljava/lang/String;
    iget-object v0, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 3049
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3053
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3057
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3059
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3060
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3064
    :cond_3
    invoke-virtual {v0, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3065
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1691
    if-nez p1, :cond_0

    .line 1702
    :goto_0
    return-object p0

    .line 1694
    :cond_0
    if-nez p0, :cond_1

    .line 1695
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local p0    # "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 1697
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1698
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1700
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static buildMailAttachmentModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
    .locals 4
    .param p0, "message"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .prologue
    .line 2684
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;-><init>()V

    .line 2685
    .local v0, "mailAttModel":Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
    if-nez p0, :cond_0

    .line 2696
    :goto_0
    return-object v0

    .line 2688
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    .line 2689
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->date:J

    .line 2690
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->mailboxId:J

    .line 2691
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lair;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 2692
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagAttachment:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->hasAttach:Z

    .line 2693
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->subject:Ljava/lang/String;

    .line 2694
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSnippet:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->summary:Ljava/lang/String;

    goto :goto_0
.end method

.method private static buildMailBodyForDatabase(JLjava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Body;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "accountId"    # J
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "body"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .param p4, "msgHtml"    # Ljava/lang/String;
    .param p5, "msgText"    # Ljava/lang/String;

    .prologue
    const-wide/32 v8, 0x100000

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1456
    if-nez p3, :cond_1

    move v1, v3

    .line 1493
    :cond_0
    :goto_0
    return v1

    .line 1460
    :cond_1
    const/4 v1, 0x1

    .line 1462
    .local v1, "isSuccess":Z
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1463
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v0, v4

    .line 1464
    .local v0, "htmlLen":I
    int-to-long v4, v0

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    .line 1465
    invoke-static {p0, p1, v3, p2, p4}, Lail;->a(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    .line 1466
    iget-object v3, p3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1467
    iput-boolean v6, p3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveHtmlContentToFile:Z

    goto :goto_0

    .line 1469
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1472
    :cond_3
    iput-boolean v3, p3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveHtmlContentToFile:Z

    .line 1473
    iput-object p4, p3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_0

    .line 1475
    .end local v0    # "htmlLen":I
    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1476
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v2, v4

    .line 1477
    .local v2, "textLen":I
    int-to-long v4, v2

    cmp-long v4, v4, v8

    if-lez v4, :cond_6

    .line 1478
    invoke-static {p0, p1, v3, p2, p5}, Lail;->b(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    .line 1479
    iget-object v3, p3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1480
    iput-boolean v6, p3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveTextContentToFile:Z

    goto :goto_0

    .line 1482
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 1485
    :cond_6
    iput-boolean v3, p3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveTextContentToFile:Z

    .line 1486
    iput-object p5, p3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public static buildMailDetailModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 4
    .param p0, "message"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .prologue
    const/4 v1, 0x1

    .line 2674
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;-><init>(J)V

    .line 2675
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    invoke-static {p0, v0, v1, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->copyMessageToModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;ZZ)V

    .line 2676
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    invoke-static {v2}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    .line 2677
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mBcc:Ljava/lang/String;

    invoke-static {v2}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->bcc:Ljava/util/List;

    .line 2678
    iget v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagLoaded:I

    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    .line 2679
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    .line 2680
    return-object v0

    .line 2678
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 4
    .param p0, "message"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .prologue
    .line 2667
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;-><init>(J)V

    .line 2668
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->copyMessageToModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;ZZ)V

    .line 2669
    return-object v0
.end method

.method public static buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Z)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 4
    .param p0, "message"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .param p1, "isUnpackAddress"    # Z

    .prologue
    .line 2661
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;-><init>(J)V

    .line 2662
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->copyMessageToModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;ZZ)V

    .line 2663
    return-object v0
.end method

.method public static buildMessage(JJLcom/alibaba/alimei/restfulapi/data/Mail;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .locals 8
    .param p0, "accountId"    # J
    .param p2, "folderId"    # J
    .param p4, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1519
    new-instance v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;-><init>()V

    .line 1520
    .local v0, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    iput-wide p0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    .line 1521
    iput-wide p2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    .line 1522
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    .line 1523
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->summary:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSnippet:Ljava/lang/String;

    .line 1524
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->subject:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    .line 1525
    iget-wide v6, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->date:J

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    .line 1526
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->messageId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMessageId:Ljava/lang/String;

    .line 1527
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->references:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mReferences:Ljava/lang/String;

    .line 1529
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->sender:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->sender:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1530
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->sender:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-static {v2}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    .line 1535
    :goto_0
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->to:Ljava/util/List;

    invoke-static {v2}, Lair;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    .line 1536
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->cc:Ljava/util/List;

    invoke-static {v2}, Lair;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    .line 1537
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->bcc:Ljava/util/List;

    invoke-static {v2}, Lair;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mBcc:Ljava/lang/String;

    .line 1538
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->replyTo:Ljava/util/List;

    invoke-static {v2}, Lair;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mReplyTo:Ljava/lang/String;

    .line 1539
    invoke-static {p4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->hasAttachment(Lcom/alibaba/alimei/restfulapi/data/Mail;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagAttachment:Z

    .line 1540
    invoke-static {p4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->hasResourceAttach(Lcom/alibaba/alimei/restfulapi/data/Mail;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasResourceAttach:Z

    .line 1541
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 1542
    iput-boolean v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagRead:Z

    .line 1546
    :goto_1
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->replied:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 1547
    iput-boolean v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasReplied:Z

    .line 1551
    :goto_2
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->forwarded:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    .line 1552
    iput-boolean v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasForwarded:Z

    .line 1557
    :goto_3
    invoke-static {p4}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/Mail;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagFavorite:Z

    .line 1558
    invoke-static {}, Lair;->b()I

    move-result v2

    iput v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlags:I

    .line 1559
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    if-eqz v2, :cond_0

    .line 1560
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getCalendarBody(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarBody:Ljava/lang/String;

    .line 1562
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->setCalendarBody(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Ljava/lang/String;)V

    .line 1563
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-static {v2}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMeetingInfo:Ljava/lang/String;

    .line 1564
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getItemId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarId:Ljava/lang/String;

    .line 1567
    :cond_0
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->sessionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerConversationId:Ljava/lang/String;

    .line 1568
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getTags()Ljava/util/List;

    move-result-object v1

    .line 1569
    .local v1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    move v2, v3

    :goto_4
    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageHasTag:Z

    .line 1570
    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageHasTag:Z

    if-eqz v2, :cond_6

    .line 1571
    invoke-static {v1}, Lair;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageTags:Ljava/lang/String;

    .line 1576
    :goto_5
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getHtmlPartId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlPartId:Ljava/lang/String;

    .line 1577
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getTextPartId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextPartId:Ljava/lang/String;

    .line 1579
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getHtmlEncoding()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlEncoding:Ljava/lang/String;

    .line 1580
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getTextEncoding()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextEncoding:Ljava/lang/String;

    .line 1582
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getHtmlContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlConentType:Ljava/lang/String;

    .line 1583
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getTextContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextContentType:Ljava/lang/String;

    .line 1585
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getCalendarPartId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarPartId:Ljava/lang/String;

    .line 1586
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getCalendarEncoding()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarEncoding:Ljava/lang/String;

    .line 1587
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getCalendarContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarContentType:Ljava/lang/String;

    .line 1589
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getUid()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mUid:J

    .line 1590
    iget-boolean v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->separatedSend:Z

    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->separatedSend:Z

    .line 1591
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->timingSend:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->timingSend:Ljava/lang/String;

    .line 1592
    iget v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->priority:I

    iput v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->priority:I

    .line 1593
    return-object v0

    .line 1532
    .end local v1    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-static {v2}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    goto/16 :goto_0

    .line 1544
    :cond_2
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagRead:Z

    goto/16 :goto_1

    .line 1549
    :cond_3
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->replied:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasReplied:Z

    goto/16 :goto_2

    .line 1554
    :cond_4
    iget-object v2, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->forwarded:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasForwarded:Z

    goto/16 :goto_3

    .restart local v1    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move v2, v4

    .line 1569
    goto/16 :goto_4

    .line 1573
    :cond_6
    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageTags:Ljava/lang/String;

    goto :goto_5
.end method

.method public static buildMessageBody(JJLcom/alibaba/alimei/restfulapi/data/Mail;)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .locals 8
    .param p0, "accountId"    # J
    .param p2, "folderId"    # J
    .param p4, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;

    .prologue
    const/4 v7, 0x0

    .line 1418
    iget-object v4, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->bodyHTML:Ljava/lang/String;

    .line 1419
    .local v4, "msgHtml":Ljava/lang/String;
    iget-object v5, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->bodyPlain:Ljava/lang/String;

    .line 1421
    .local v5, "msgText":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    move-object v3, v7

    .line 1443
    :cond_2
    :goto_0
    return-object v3

    .line 1431
    :cond_3
    new-instance v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    invoke-direct {v3}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;-><init>()V

    .line 1432
    .local v3, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    const/4 v6, 0x1

    .line 1433
    .local v6, "isSuccess":Z
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1434
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v2

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailBodyForDatabase(JLjava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Body;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1443
    :goto_1
    if-nez v6, :cond_2

    move-object v3, v7

    goto :goto_0

    .line 1436
    :cond_4
    iput-object v4, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    .line 1437
    iput-object v5, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    goto :goto_1
.end method

.method public static buildMessageBodyFromPop3Message(Lcom/alibaba/alimei/sdk/db/mail/entry/Body;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Ljava/util/ArrayList;)Z
    .locals 12
    .param p0, "body"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .param p1, "localMessage"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Body;",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lvs;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1712
    .local p2, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    iget-wide v10, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    iput-wide v10, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mMessageKey:J

    .line 1714
    const/4 v4, 0x0

    .line 1715
    .local v4, "sbHtml":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 1718
    .local v6, "sbText":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 1720
    .local v5, "sbIntroText":Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvs;

    .line 1721
    .local v8, "viewable":Lvs;
    invoke-static {v8}, Lvj;->a(Lvs;)Ljava/lang/String;

    move-result-object v7

    .line 1722
    .local v7, "text":Ljava/lang/String;
    const-string/jumbo v10, "X-Android-Body-Quoted-Part"

    .line 1723
    invoke-interface {v8, v10}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1724
    .local v3, "replyTags":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1725
    .local v2, "replyTag":Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v10, v3

    if-lez v10, :cond_0

    .line 1726
    const/4 v10, 0x0

    aget-object v2, v3, v10

    .line 1729
    :cond_0
    const-string/jumbo v10, "text/html"

    .line 1730
    invoke-interface {v8}, Lvs;->e()Ljava/lang/String;

    move-result-object v11

    .line 1729
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1732
    .local v0, "isHtml":Z
    if-eqz v2, :cond_1

    .line 1737
    const-string/jumbo v10, "quoted-intro"

    .line 1738
    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1752
    .local v1, "isQuotedIntro":Z
    if-eqz v1, :cond_1

    .line 1753
    invoke-static {v5, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 1754
    goto :goto_0

    .line 1759
    .end local v1    # "isQuotedIntro":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 1760
    invoke-static {v4, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_0

    .line 1762
    :cond_2
    invoke-static {v6, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 1764
    goto :goto_0

    .line 1767
    .end local v0    # "isHtml":Z
    .end local v2    # "replyTag":Ljava/lang/String;
    .end local v3    # "replyTags":[Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "viewable":Lvs;
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1768
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1769
    .restart local v7    # "text":Ljava/lang/String;
    iput-object v7, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    .line 1772
    invoke-static {v7}, Lajc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSnippet:Ljava/lang/String;

    .line 1774
    .end local v7    # "text":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1775
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1776
    .restart local v7    # "text":Ljava/lang/String;
    iput-object v7, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    .line 1777
    iget-object v9, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSnippet:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 1779
    invoke-static {v7}, Lajc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSnippet:Ljava/lang/String;

    .line 1788
    .end local v7    # "text":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eqz v9, :cond_6

    .line 1789
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIntroText:Ljava/lang/String;

    .line 1791
    :cond_6
    const/4 v9, 0x1

    return v9
.end method

.method public static buildMessageFromPop3Message(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Lcom/alibaba/alimei/emailcommon/mail/Message;JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .locals 14
    .param p0, "localMessage"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "accountId"    # J
    .param p4, "folderId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1603
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->j()[Lvo;

    move-result-object v4

    .line 1604
    .local v4, "from":[Lvo;
    sget-object v11, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->TO:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v11}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v10

    .line 1605
    .local v10, "to":[Lvo;
    sget-object v11, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->CC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v11}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v3

    .line 1606
    .local v3, "cc":[Lvo;
    sget-object v11, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->BCC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v11}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v2

    .line 1607
    .local v2, "bcc":[Lvo;
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->k()[Lvo;

    move-result-object v7

    .line 1608
    .local v7, "replyTo":[Lvo;
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->i()Ljava/lang/String;

    move-result-object v9

    .line 1609
    .local v9, "subject":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->h()Ljava/util/Date;

    move-result-object v8

    .line 1610
    .local v8, "sentDate":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->q()Ljava/util/Date;

    move-result-object v5

    .line 1612
    .local v5, "internalDate":Ljava/util/Date;
    if-eqz v4, :cond_0

    array-length v11, v4

    if-lez v11, :cond_0

    const/4 v11, 0x0

    aget-object v11, v4, v11

    .line 8469
    iget-object v11, v11, Lvo;->a:Ljava/lang/String;

    .line 1612
    if-eqz v11, :cond_0

    .line 1613
    const/4 v11, 0x0

    aget-object v11, v4, v11

    .line 9469
    iget-object v11, v11, Lvo;->a:Ljava/lang/String;

    .line 1613
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDisplayName:Ljava/lang/String;

    .line 1615
    :cond_0
    if-eqz v8, :cond_1

    .line 1616
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    .line 1618
    :cond_1
    if-eqz v9, :cond_2

    .line 1619
    iput-object v9, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    .line 1621
    :cond_2
    sget-object v11, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {p1, v11}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagRead:Z

    .line 1629
    iget v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagLoaded:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 1630
    iget-object v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDisplayName:Ljava/lang/String;

    if-eqz v11, :cond_3

    const-string/jumbo v11, ""

    iget-object v12, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1631
    :cond_3
    const/4 v11, 0x0

    iput v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagLoaded:I

    .line 1636
    :cond_4
    :goto_0
    sget-object v11, Lcom/alibaba/alimei/emailcommon/mail/Flag;->FLAGGED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {p1, v11}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagFavorite:Z

    .line 1640
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    .line 1641
    if-eqz v5, :cond_5

    .line 1642
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerTimeStamp:J

    .line 1648
    :cond_5
    check-cast p1, Lvh;

    .end local p1    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    invoke-virtual {p1}, Lvh;->l()Ljava/lang/String;

    move-result-object v6

    .line 1649
    .local v6, "messageId":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 1650
    iput-object v6, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMessageId:Ljava/lang/String;

    .line 1654
    :cond_6
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    .line 1655
    move-wide/from16 v0, p2

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    .line 1657
    if-eqz v4, :cond_7

    array-length v11, v4

    if-lez v11, :cond_7

    .line 1658
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-static {v11}, Lair;->a(Lvo;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    .line 1661
    :cond_7
    invoke-static {v10}, Lair;->a([Lvo;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    .line 1662
    invoke-static {v3}, Lair;->a([Lvo;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    .line 1663
    invoke-static {v2}, Lair;->a([Lvo;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mBcc:Ljava/lang/String;

    .line 1664
    invoke-static {v7}, Lair;->a([Lvo;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mReplyTo:Ljava/lang/String;

    .line 1674
    const/4 v11, 0x0

    return-object v11

    .line 1633
    .end local v6    # "messageId":Ljava/lang/String;
    .restart local p1    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_8
    const/4 v11, 0x2

    iput v11, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagLoaded:I

    goto :goto_0
.end method

.method private changeFavoriteMails(Lcom/alibaba/alimei/sdk/model/MailGroupModel;Lcom/alibaba/alimei/orm/query/Update;JJLjava/util/List;)V
    .locals 11
    .param p1, "group"    # Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .param p2, "messageUpdate"    # Lcom/alibaba/alimei/orm/query/Update;
    .param p3, "accountId"    # J
    .param p5, "folderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailGroupModel;",
            "Lcom/alibaba/alimei/orm/query/Update;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1003
    .local p7, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    if-eqz p7, :cond_0

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1024
    :cond_0
    return-void

    .line 1006
    :cond_1
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Message"

    invoke-direct {v4, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/data/Mail;

    .line 1008
    .local v1, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "itemId":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 1010
    const-string/jumbo v6, "flagFavorite"

    invoke-static {v1}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/Mail;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p2, v6, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1011
    const-string/jumbo v6, "flags"

    invoke-static {}, Lair;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v6, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1012
    const-string/jumbo v8, "messageType"

    iget-object v6, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v8, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1013
    const-string/jumbo v6, "messageTag"

    iget-object v8, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    invoke-static {v8}, Lair;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v6, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1014
    const-string/jumbo v6, "syncServerId = ? AND accountKey = ? "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p2, v6, v8}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    invoke-virtual {p2}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v5

    .line 1016
    .local v5, "size":I
    if-lez v5, :cond_2

    if-eqz p1, :cond_2

    .line 1017
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 1018
    const-string/jumbo v6, "syncServerId = ? AND accountKey = ? "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v6, v8}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 1020
    .local v2, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v2}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v3

    .line 1021
    .local v3, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {p1, v3}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto/16 :goto_0

    .line 1012
    .end local v2    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v3    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v5    # "size":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private changeReadMails(Lcom/alibaba/alimei/sdk/model/MailGroupModel;Lcom/alibaba/alimei/orm/query/Update;JJLjava/util/List;)V
    .locals 9
    .param p1, "group"    # Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .param p2, "messageUpdate"    # Lcom/alibaba/alimei/orm/query/Update;
    .param p3, "accountId"    # J
    .param p5, "folderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailGroupModel;",
            "Lcom/alibaba/alimei/orm/query/Update;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p7, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    if-eqz p7, :cond_0

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1000
    :cond_0
    return-void

    .line 982
    :cond_1
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Message"

    invoke-direct {v2, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/Mail;

    .line 984
    .local v0, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    invoke-virtual {p2}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 985
    iget-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    if-nez v5, :cond_3

    .line 986
    const-string/jumbo v5, "flagRead"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 991
    :goto_1
    const-string/jumbo v5, "syncServerId = ? AND accountKey = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p2, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    invoke-virtual {p2}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v3

    .line 993
    .local v3, "size":I
    if-lez v3, :cond_2

    if-eqz p1, :cond_2

    .line 994
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 995
    const-string/jumbo v5, "syncServerId = ? AND accountKey = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 997
    .local v1, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0

    .line 988
    .end local v1    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v3    # "size":I
    :cond_3
    const-string/jumbo v5, "flagRead"

    iget-object v6, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static copy(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 2562
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;-><init>(J)V

    .line 2563
    .local v0, "copy":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    .line 2564
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 2565
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 2566
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    .line 2567
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    .line 2568
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    .line 2569
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 2570
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 2571
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    .line 2573
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    .line 2574
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->toAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->toAddress:Ljava/lang/String;

    .line 2575
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    .line 2576
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->ccAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->ccAddress:Ljava/lang/String;

    .line 2577
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 2578
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    .line 2579
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    .line 2580
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    .line 2581
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    .line 2582
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    .line 2583
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    .line 2584
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    .line 2585
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    .line 2586
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    .line 2587
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 2588
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 2589
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    .line 2590
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    .line 2591
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    .line 2592
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    .line 2593
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    .line 2594
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isCalendarBodySaveFile:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isCalendarBodySaveFile:Z

    .line 2595
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    .line 2597
    return-object v0
.end method

.method private static copyMessageToModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;ZZ)V
    .locals 6
    .param p0, "message"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p2, "isUnpackAddress"    # Z
    .param p3, "isUnpackCalendarBody"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2606
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    iput-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    .line 2607
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    iput-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 2608
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 2609
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMessageId:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    .line 2610
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSnippet:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    .line 2611
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    .line 2612
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    iput-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 2614
    if-eqz p2, :cond_1

    .line 2615
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lair;->g(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    move-result-object v0

    .line 2616
    .local v0, "address":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    if-eqz v0, :cond_0

    .line 2617
    new-instance v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v4, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 2623
    .end local v0    # "address":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 2624
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    .line 2629
    :goto_1
    if-eqz p2, :cond_3

    .line 2630
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    invoke-static {v1}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    .line 2635
    :goto_2
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagRead:Z

    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 2636
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagFavorite:Z

    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    .line 2637
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagAttachment:Z

    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    .line 2638
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasResourceAttach:Z

    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    .line 2639
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerConversationId:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    .line 2640
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarId:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendarServerId:Ljava/lang/String;

    .line 2641
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMeetingInfo:Ljava/lang/String;

    invoke-static {v1, p3}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->unpackMailCalendarModel(Ljava/lang/String;Z)Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    .line 2642
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mLastReadTime:J

    iput-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    .line 2643
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mReminder:I

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    .line 2644
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasForwarded:Z

    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    .line 2645
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasReplied:Z

    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    .line 2646
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageHasTag:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageTags:Ljava/lang/String;

    invoke-static {v1}, Lair;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_4
    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 2648
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->localStatusCode:I

    invoke-static {v1}, Laja;->f(I)I

    move-result v1

    iput v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 2649
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->conversationExtension:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    .line 2650
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mExtData:Ljava/lang/String;

    invoke-static {v1}, Lair;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    .line 2651
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mUid:J

    iput-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    .line 2653
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftLocalId:J

    iput-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    .line 2654
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarPartId:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarPartId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    :goto_5
    iput-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasCalendarPart:Z

    .line 2655
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mIsCalendarBodySaveFile:Z

    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isCalendarBodySaveFile:Z

    .line 2656
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->localExtension:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->localExtension:Ljava/lang/String;

    .line 2657
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->priority:I

    iput v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    .line 2658
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->separatedSend:Z

    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->separatedSend:Z

    .line 2659
    return-void

    .line 2620
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 2626
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->toAddress:Ljava/lang/String;

    goto/16 :goto_1

    .line 2632
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->ccAddress:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 2643
    goto :goto_3

    .line 2646
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    move v2, v3

    .line 2654
    goto :goto_5
.end method

.method private deleteMailBody(JJ)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "msgId"    # J

    .prologue
    .line 5141
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMailBodyById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    move-result-object v0

    .line 5142
    .local v0, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    const-string/jumbo v2, "MessageDatasource"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "deleteMailBody for msgId: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 5143
    if-eqz v0, :cond_1

    .line 5145
    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveHtmlContentToFile:Z

    if-eqz v2, :cond_2

    .line 5146
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    invoke-static {v2}, Lail;->b(Ljava/lang/String;)V

    .line 5151
    :cond_0
    :goto_0
    new-instance v1, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v3, "EmailProviderBody.db"

    const-string/jumbo v4, "Body"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 5152
    .local v1, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v2, "messageKey"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5153
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 5157
    .end local v1    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v3, "EmailProviderBody.db"

    const-string/jumbo v4, "Body"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 5158
    .restart local v1    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v2, "messageKey"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5159
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 5160
    return-void

    .line 5147
    .end local v1    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    :cond_2
    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveTextContentToFile:Z

    if-eqz v2, :cond_0

    .line 5148
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    invoke-static {v2}, Lail;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteMails(Lcom/alibaba/alimei/sdk/model/MailGroupModel;JJLjava/util/List;)V
    .locals 12
    .param p1, "group"    # Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .param p2, "accountId"    # J
    .param p4, "folderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailGroupModel;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1033
    .local p6, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    if-eqz p6, :cond_0

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 1092
    :cond_0
    return-void

    .line 1036
    :cond_1
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Message"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Message"

    invoke-direct {v0, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/data/Mail;

    .line 1041
    .local v2, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 1042
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->resetSelect()V

    .line 1045
    const-string/jumbo v6, "syncServerId=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    const-string/jumbo v6, "mailboxKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    const-string/jumbo v6, "accountKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1053
    if-eqz p1, :cond_4

    .line 1055
    :try_start_0
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    .local v3, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 1081
    :goto_1
    if-eqz v3, :cond_3

    .line 1082
    iget-wide v6, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-direct {p0, p2, p3, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->deleteMailBody(JJ)V

    .line 1083
    const-string/jumbo v6, "MessageDatasource"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "deleteMsg id: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v10, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ", mail itemId: "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, ", Message ItemId: "

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_3
    const-string/jumbo v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    goto/16 :goto_0

    .line 1056
    .end local v3    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :catch_0
    move-exception v1

    .line 1058
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v5, "handle_sync_mail_fail_for_large_mail"

    const/4 v6, 0x6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "db has large calendar mail, accountName: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1059
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAccountName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    .line 1058
    invoke-static {v5, v6, v7, v8}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string/jumbo v5, "handle_sync_mail_fail_for_large_mail"

    const-string/jumbo v6, "6"

    .line 1062
    invoke-static {v1}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 1061
    invoke-static {v5, v6, v7, v8}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    throw v1

    .line 1068
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    const-string/jumbo v6, "_id"

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 1070
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    goto/16 :goto_1

    .line 1071
    .end local v3    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :catch_1
    move-exception v1

    .line 1073
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v5, "handle_sync_mail_fail_for_large_mail"

    const/4 v6, 0x6

    const-string/jumbo v7, "db has large calendar mail"

    .line 1074
    invoke-static {v1}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    .line 1073
    invoke-static {v5, v6, v7, v8}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string/jumbo v5, "handle_sync_mail_fail_for_large_mail"

    const-string/jumbo v6, "6"

    .line 1076
    invoke-static {v1}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 1075
    invoke-static {v5, v6, v7, v8}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    throw v1
.end method

.method private executeUpdateMessageByMessageKey(JLcom/alibaba/alimei/orm/query/Update;JJLcom/alibaba/alimei/restfulapi/data/Mail;I)Z
    .locals 14
    .param p1, "messageKey"    # J
    .param p3, "update"    # Lcom/alibaba/alimei/orm/query/Update;
    .param p4, "accountId"    # J
    .param p6, "folderId"    # J
    .param p8, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;
    .param p9, "loadFlag"    # I

    .prologue
    .line 1294
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 1296
    invoke-static/range {p8 .. p8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->hasAttachment(Lcom/alibaba/alimei/restfulapi/data/Mail;)Z

    move-result v6

    .line 1297
    .local v6, "hasAttachment":Z
    invoke-static/range {p8 .. p8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->hasResourceAttach(Lcom/alibaba/alimei/restfulapi/data/Mail;)Z

    move-result v7

    .line 1300
    .local v7, "hasResourceAttach":Z
    const-wide/16 v10, -0x1

    cmp-long v9, p6, v10

    if-eqz v9, :cond_0

    .line 1301
    const-string/jumbo v9, "mailboxKey"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1303
    :cond_0
    const-string/jumbo v9, "syncServerId"

    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1304
    const-string/jumbo v9, "snippet"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->summary:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1305
    const-string/jumbo v9, "subject"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->subject:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1306
    const-string/jumbo v9, "timeStamp"

    move-object/from16 v0, p8

    iget-wide v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->date:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1307
    const-string/jumbo v9, "messageId"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->messageId:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1308
    const-string/jumbo v9, "datastatus"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->replied:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1309
    const-string/jumbo v9, "sync_status"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->forwarded:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1310
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sender:Ljava/util/List;

    if-eqz v9, :cond_6

    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sender:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 1311
    const-string/jumbo v10, "fromList"

    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sender:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-static {v9}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v9}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1315
    :goto_0
    const-string/jumbo v9, "toList"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->to:Ljava/util/List;

    invoke-static {v10}, Lair;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1316
    const-string/jumbo v9, "ccList"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->cc:Ljava/util/List;

    invoke-static {v10}, Lair;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1317
    const-string/jumbo v9, "bccList"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bcc:Ljava/util/List;

    invoke-static {v10}, Lair;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1318
    const-string/jumbo v9, "replyToList"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->replyTo:Ljava/util/List;

    invoke-static {v10}, Lair;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1319
    const-string/jumbo v9, "flagAttachment"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1320
    const-string/jumbo v9, "flagAttach"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1321
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    if-nez v9, :cond_7

    .line 1322
    const-string/jumbo v9, "flagRead"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1326
    :goto_1
    const-string/jumbo v9, "flagFavorite"

    invoke-static/range {p8 .. p8}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/Mail;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1327
    const-string/jumbo v9, "flags"

    invoke-static {}, Lair;->b()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1328
    const-string/jumbo v10, "messageType"

    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    if-eqz v9, :cond_8

    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v9}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1329
    const-string/jumbo v9, "messageTag"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    invoke-static {v10}, Lair;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1330
    const-string/jumbo v8, ""

    .line 1331
    .local v8, "meetingInfo":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 1332
    .local v3, "calendarId":Ljava/lang/String;
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    if-eqz v9, :cond_2

    .line 1333
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-static {v9}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getCalendarBody(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 1334
    .local v2, "calBody":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1335
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v0, p4

    invoke-direct {p0, v0, v1, v9, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->saveOrUpdateCalendarBody(JLjava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_1
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->setCalendarBody(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Ljava/lang/String;)V

    .line 1338
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-static {v9}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)Ljava/lang/String;

    move-result-object v8

    .line 1339
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-virtual {v9}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getItemId()Ljava/lang/String;

    move-result-object v3

    .line 1342
    .end local v2    # "calBody":Ljava/lang/String;
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1343
    const-string/jumbo v9, "meetingInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1345
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1346
    const-string/jumbo v9, "calendarId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1349
    :cond_4
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sessionId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1350
    const-string/jumbo v9, "conversationId"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sessionId:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1352
    :cond_5
    const-string/jumbo v9, "flagLoaded"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1355
    const-string/jumbo v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v9

    int-to-long v4, v9

    .line 1358
    .local v4, "count":J
    const-string/jumbo v9, "MessageDatasource"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "executeUpdateMessageByMessageKey messageKey: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, ", count: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 1359
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1358
    invoke-static {v10}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return v6

    .line 1313
    .end local v3    # "calendarId":Ljava/lang/String;
    .end local v4    # "count":J
    .end local v8    # "meetingInfo":Ljava/lang/String;
    :cond_6
    const-string/jumbo v9, "fromList"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-static {v10}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1324
    :cond_7
    const-string/jumbo v9, "flagRead"

    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1328
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2
.end method

.method private getBodySnippet(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "snipLen"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 5318
    const-string/jumbo v0, ""

    .line 5319
    .local v0, "body":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5320
    invoke-static {p1}, Lajc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5325
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 5326
    .local v1, "len":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5327
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5330
    :cond_1
    if-ge v1, p3, :cond_3

    .line 5334
    .end local v0    # "body":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 5321
    .end local v1    # "len":I
    .restart local v0    # "body":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5322
    invoke-static {p2}, Lajc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5334
    .restart local v1    # "len":I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getCalendarBody(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)Ljava/lang/String;
    .locals 5
    .param p0, "calendar"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .prologue
    const/4 v2, 0x0

    .line 2705
    if-nez p0, :cond_1

    .line 2716
    :cond_0
    :goto_0
    return-object v2

    .line 2709
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getEventList()Ljava/util/List;

    move-result-object v1

    .line 2710
    .local v1, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;

    .line 2711
    .local v0, "event":Lcom/alibaba/alimei/restfulapi/data/calendar/Event;
    iget-object v4, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->body:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2712
    iget-object v2, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->body:Ljava/lang/String;

    goto :goto_0
.end method

.method private getMailBoxOldestServerID(J)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5442
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Mailbox"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 5443
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "messageOldestServerId"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 5444
    const-string/jumbo v2, "_id=?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5445
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 5446
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mMessageOldesetServerId:Ljava/lang/String;

    goto :goto_0
.end method

.method private getMailTimeStamp(Ljava/lang/String;)J
    .locals 7
    .param p1, "serverId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5434
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Message"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 5435
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "timeStamp"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 5436
    const-string/jumbo v2, "syncServerId=?"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5437
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 5438
    .local v0, "m":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    goto :goto_0
.end method

.method private handleAddOrUpdateFrequentContacts(Ljava/lang/String;JLjava/util/List;)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "mailDate"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p4, "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getFrequentContactDataSource()Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;

    move-result-object v3

    .line 626
    .local v3, "frequentContactDataSource":Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;
    if-eqz v3, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 633
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    new-instance v2, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/data/AliAddress;-><init>()V

    .line 634
    .local v2, "aliAddress":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->setAddress(Ljava/lang/String;)V

    .line 635
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->setAlias(Ljava/lang/String;)V

    .line 636
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 639
    .end local v0    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v2    # "aliAddress":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    :cond_2
    invoke-interface {v3, p1, p2, p3, v1}, Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;->insertOrUpdateFrequentContactsInAddress(Ljava/lang/String;JLjava/util/List;)V

    goto :goto_0
.end method

.method private handleAddOrUpdateFrequentContacts(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p2, "addMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getFrequentContactDataSource()Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;

    move-result-object v0

    .line 884
    .local v0, "frequentContactDataSource":Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;
    if-nez v0, :cond_0

    .line 889
    :goto_0
    return-void

    .line 888
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;->insertOrUpdateFrequentContactsInMails(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method private handleAddOrUpdateMails(Lcom/alibaba/alimei/sdk/model/MailGroupModel;Lcom/alibaba/alimei/orm/query/Select;Lcom/alibaba/alimei/orm/query/Update;JLcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Ljava/util/List;)V
    .locals 28
    .param p1, "group"    # Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .param p2, "mailSelect"    # Lcom/alibaba/alimei/orm/query/Select;
    .param p3, "messageUpdate"    # Lcom/alibaba/alimei/orm/query/Update;
    .param p4, "accountId"    # J
    .param p6, "mailbox"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailGroupModel;",
            "Lcom/alibaba/alimei/orm/query/Select;",
            "Lcom/alibaba/alimei/orm/query/Update;",
            "J",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1143
    .local p7, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    if-eqz p7, :cond_0

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 1213
    :cond_0
    return-void

    .line 1147
    :cond_1
    const/4 v11, 0x0

    .line 1148
    .local v11, "additionalDatasource":Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_2
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/restfulapi/data/Mail;

    .line 1150
    .local v10, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 1163
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v23

    .line 1164
    .local v23, "itemId":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1165
    const-string/jumbo v5, "accountKey = ? AND mailboxKey = ? AND messageId = ?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getMessageId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v24

    check-cast v24, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    .local v24, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    const/16 v22, 0x1

    .line 1188
    .local v22, "isInsert":Z
    if-eqz v24, :cond_3

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_8

    .line 1189
    :cond_3
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v5, p0

    move-wide/from16 v6, p4

    invoke-direct/range {v5 .. v10}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->insertSingleMail(JJLcom/alibaba/alimei/restfulapi/data/Mail;)V

    .line 1195
    :goto_2
    if-eqz p1, :cond_4

    .line 1196
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v24

    .end local v24    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    check-cast v24, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 1197
    .restart local v24    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v22, :cond_9

    .line 1198
    invoke-static/range {v24 .. v24}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addAddedMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 1204
    :cond_4
    :goto_3
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getSentStatus()Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;

    move-result-object v25

    .line 1205
    .local v25, "sendStatus":Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;
    if-eqz v25, :cond_2

    .line 1206
    if-nez v11, :cond_5

    .line 1207
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    move-result-object v11

    .line 1209
    :cond_5
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v0, p4

    move-object/from16 v2, v25

    invoke-interface {v11, v0, v1, v5, v2}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->handleMailSendStatus(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;)I

    goto/16 :goto_0

    .line 1167
    .end local v22    # "isInsert":Z
    .end local v24    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v25    # "sendStatus":Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;
    :cond_6
    const-string/jumbo v5, "syncServerId = ? AND accountKey = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1173
    :catch_0
    move-exception v21

    .line 1175
    .local v21, "e":Ljava/lang/IllegalStateException;
    const/4 v4, 0x0

    .line 1176
    .local v4, "accountName":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 1177
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 1179
    :cond_7
    const-string/jumbo v5, "handle_sync_mail_fail_for_large_mail"

    const/4 v6, 0x6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "db has large calendar mail, accountName: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    .line 1180
    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v21 .. v21}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    .line 1179
    invoke-static {v5, v6, v7, v8}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string/jumbo v5, "handle_sync_mail_fail_for_large_mail"

    const-string/jumbo v6, "6"

    .line 1183
    invoke-static/range {v21 .. v21}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 1182
    invoke-static {v5, v6, v7, v8}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    throw v21

    .line 1191
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v21    # "e":Ljava/lang/IllegalStateException;
    .restart local v22    # "isInsert":Z
    .restart local v24    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_8
    const/16 v22, 0x0

    .line 1192
    move-object/from16 v0, v24

    iget-wide v13, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-object/from16 v0, p6

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-wide/from16 v18, v0

    move-object/from16 v12, p0

    move-object/from16 v15, p3

    move-wide/from16 v16, p4

    move-object/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->updateSingleMailByMessageKey(JLcom/alibaba/alimei/orm/query/Update;JJLcom/alibaba/alimei/restfulapi/data/Mail;)V

    goto/16 :goto_2

    .line 1200
    :cond_9
    invoke-static/range {v24 .. v24}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto/16 :goto_3
.end method

.method public static hasAttachment(Lcom/alibaba/alimei/restfulapi/data/Mail;)Z
    .locals 2
    .param p0, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;

    .prologue
    .line 1796
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getAttachList()Ljava/util/List;

    move-result-object v0

    .line 1797
    .local v0, "attaches":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1798
    const/4 v1, 0x1

    .line 1800
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasResourceAttach(Lcom/alibaba/alimei/restfulapi/data/Mail;)Z
    .locals 2
    .param p0, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;

    .prologue
    .line 1804
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getResourceList()Ljava/util/List;

    move-result-object v0

    .line 1805
    .local v0, "resouceAtts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1806
    const/4 v1, 0x1

    .line 1808
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private insertSingleMail(JJLcom/alibaba/alimei/restfulapi/data/Mail;)V
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "folderId"    # J
    .param p5, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;

    .prologue
    .line 1222
    invoke-static/range {p1 .. p5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMessageBody(JJLcom/alibaba/alimei/restfulapi/data/Mail;)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    move-result-object v0

    .line 1223
    .local v0, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    invoke-static/range {p1 .. p5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMessage(JJLcom/alibaba/alimei/restfulapi/data/Mail;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v11

    .line 1225
    .local v11, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v0, :cond_1

    .line 1226
    const/4 v2, 0x1

    iput v2, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagLoaded:I

    .line 1231
    :goto_0
    iget-object v10, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarBody:Ljava/lang/String;

    .line 1232
    .local v10, "calendarBody":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarBody:Ljava/lang/String;

    .line 1233
    invoke-virtual {v11}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->save()J

    move-result-wide v4

    .line 1234
    .local v4, "messageKey":J
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, v10}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->saveOrUpdateCalendarBody(JLjava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Save mail [serverId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ] fail!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->a(Ljava/lang/String;)I

    .line 1259
    :cond_0
    :goto_1
    return-void

    .line 1228
    .end local v4    # "messageKey":J
    .end local v10    # "calendarBody":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    iput v2, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagLoaded:I

    goto :goto_0

    .line 1241
    .restart local v4    # "messageKey":J
    .restart local v10    # "calendarBody":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Save mail [serverId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", messageKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->a(Ljava/lang/String;)I

    .line 1243
    if-eqz v0, :cond_3

    .line 1244
    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mMessageKey:J

    .line 1245
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->save()J

    move-result-wide v8

    .line 1246
    .local v8, "bodyId":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Save mail [serverId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", messageKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bodyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->a(Ljava/lang/String;)I

    .line 1250
    .end local v8    # "bodyId":J
    :cond_3
    iget-boolean v2, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagAttachment:Z

    if-nez v2, :cond_4

    iget-boolean v2, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasResourceAttach:Z

    if-eqz v2, :cond_0

    .line 1251
    :cond_4
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v1

    .line 1254
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getResourceList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    move-wide v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->handleAttach(JJLjava/util/List;I)V

    .line 1257
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getAttachList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->handleAttach(JJLjava/util/List;I)V

    goto/16 :goto_1
.end method

.method public static loadMailSnippetModel(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 8
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2282
    if-nez p0, :cond_1

    .line 2294
    :cond_0
    :goto_0
    return-void

    .line 2285
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Message"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v2, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2287
    const-string/jumbo v2, "_id=?"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    const-string/jumbo v2, "accountKey"

    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2290
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v0, :cond_0

    .line 2291
    invoke-static {v0, p0, v7, v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->copyMessageToModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;ZZ)V

    .line 2292
    iput-boolean v6, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    goto :goto_0
.end method

.method private queryMailDetail(JJLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "id"    # J
    .param p5, "serverId"    # Ljava/lang/String;

    .prologue
    .line 1868
    new-instance v11, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Message"

    invoke-direct {v11, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    .local v11, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "accountKey=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v11, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    const-wide/16 v2, -0x1

    cmp-long v1, p3, v2

    if-eqz v1, :cond_0

    .line 1872
    const-string/jumbo v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v11, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    :cond_0
    if-eqz p5, :cond_1

    .line 1875
    const-string/jumbo v1, "syncServerId=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    invoke-virtual {v11, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    :cond_1
    const/4 v10, 0x0

    .line 1879
    .local v10, "model":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v9

    check-cast v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 1880
    .local v9, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v9, :cond_6

    .line 1881
    invoke-static {v9}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailDetailModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v10

    .line 1882
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    iget-wide v2, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->folderId:J

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryFolderById(JJ)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v8

    .line 1883
    .local v8, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v8, :cond_2

    .line 1884
    iget v1, v8, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iput v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->folderType:I

    .line 1888
    :cond_2
    iget-boolean v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasAttachment:Z

    if-nez v1, :cond_3

    iget-boolean v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasResourceAttachment:Z

    if-eqz v1, :cond_4

    .line 1889
    :cond_3
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v1

    iget-wide v4, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    const/4 v6, -0x1

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAllAttachment(JJI)Ljava/util/List;

    move-result-object v1

    iput-object v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    .line 1893
    :cond_4
    iget-object v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    if-eqz v1, :cond_7

    iget-object v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->body:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isCalendarBodySaveFile:Z

    if-eqz v1, :cond_7

    .line 1894
    :cond_5
    iget-object v1, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarBody:Ljava/lang/String;

    invoke-static {v1}, Lail;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    .line 1895
    iget-object v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-static {v1}, Lair;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    .line 1896
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    .line 1916
    .end local v8    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_6
    :goto_0
    return-object v10

    .line 1899
    .restart local v8    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_7
    new-instance v7, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v2, "EmailProviderBody.db"

    const-string/jumbo v3, "Body"

    invoke-direct {v7, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    .local v7, "bodySelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "htmlContent"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "textContent"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "isSaveHtmlContentToFile"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "isSaveTextContentToFile"

    aput-object v3, v1, v2

    invoke-virtual {v7, v1}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1902
    const-string/jumbo v1, "messageKey=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v7, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    .line 1904
    .local v0, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    if-eqz v0, :cond_6

    .line 1905
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->readMailBody(Lcom/alibaba/alimei/sdk/db/mail/entry/Body;)V

    .line 1906
    iget-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1907
    iget-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    iput-object v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    .line 1908
    iget-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    invoke-static {v1}, Lair;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    goto :goto_0

    .line 1910
    :cond_8
    iget-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    iput-object v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    .line 1911
    iget-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    iput-object v1, v10, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    goto :goto_0
.end method

.method private queryMailSnippetById(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "mailId"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1936
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "Message"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "accountKey=?"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    const-string/jumbo v3, "_id=?"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    const/4 v1, 0x0

    .line 1940
    .local v1, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 1941
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v0, :cond_0

    .line 1942
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v1

    .line 1944
    :cond_0
    return-object v1
.end method

.method private queryMessageTagsByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    .line 3890
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Message"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3891
    .local v0, "messageSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "messageTag"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 3892
    const-string/jumbo v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3893
    const-string/jumbo v1, "syncServerId"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3894
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    return-object v1
.end method

.method private readMailBody(Lcom/alibaba/alimei/sdk/db/mail/entry/Body;)V
    .locals 2
    .param p1, "body"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1920
    if-nez p1, :cond_1

    .line 1921
    const-string/jumbo v0, "MessageDatasource"

    const-string/jumbo v1, "readMailBody fail for body is null"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1926
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveHtmlContentToFile:Z

    if-eqz v0, :cond_2

    .line 1928
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    invoke-static {v0}, Lail;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_0

    .line 1929
    :cond_2
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveTextContentToFile:Z

    if-eqz v0, :cond_0

    .line 1931
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    invoke-static {v0}, Lail;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    goto :goto_0
.end method

.method private saveOrUpdateCalendarBody(JLjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "calendarBody"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1269
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1270
    invoke-static {p1, p2, v5, p3, p4}, Lail;->a(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1271
    .local v0, "bodyPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1272
    new-instance v1, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Message"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    .local v1, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v2, "calendar_body"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1274
    const-string/jumbo v2, "is_calendar_body_save_file"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1275
    const-string/jumbo v2, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const-string/jumbo v2, "syncServerId"

    invoke-virtual {v1, v2, p3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v2

    .line 1281
    .end local v0    # "bodyPath":Ljava/lang/String;
    .end local v1    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static setCalendarBody(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Ljava/lang/String;)V
    .locals 4
    .param p0, "calendar"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 2725
    if-nez p0, :cond_1

    .line 2733
    :cond_0
    return-void

    .line 2729
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getEventList()Ljava/util/List;

    move-result-object v1

    .line 2730
    .local v1, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;

    .line 2731
    .local v0, "event":Lcom/alibaba/alimei/restfulapi/data/calendar/Event;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setBody(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unpackMailCalendarModel(Ljava/lang/String;Z)Lcom/alibaba/alimei/sdk/model/MailCalendarModel;
    .locals 10
    .param p0, "calendarContent"    # Ljava/lang/String;
    .param p1, "isParseBody"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2741
    invoke-static {p0}, Lair;->n(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    move-result-object v3

    .line 2742
    .local v3, "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    if-eqz v3, :cond_0

    .line 2743
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getEvent()Ljava/util/List;

    move-result-object v5

    .line 2744
    .local v5, "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2785
    .end local v5    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    :cond_0
    :goto_0
    return-object v6

    .line 2747
    .restart local v5    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    :cond_1
    new-instance v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    invoke-direct {v6}, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;-><init>()V

    .line 2748
    .local v6, "result":Lcom/alibaba/alimei/sdk/model/MailCalendarModel;
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getMethod()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->method:Ljava/lang/String;

    .line 2749
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;

    .line 2750
    .local v4, "event":Lcom/alibaba/alimei/restfulapi/data/calendar/Event;
    iget-object v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->location:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 2751
    iget-object v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->location:Ljava/lang/String;

    iput-object v8, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->location:Ljava/lang/String;

    .line 2753
    :cond_3
    iget-object v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerEmail:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 2754
    iget-object v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerEmail:Ljava/lang/String;

    iput-object v8, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->organizerEmail:Ljava/lang/String;

    .line 2755
    iget-boolean v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->allDayEvent:Z

    iput-boolean v8, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->allDayEvent:Z

    .line 2756
    iget-wide v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->endTime:J

    iput-wide v8, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->endTime:J

    .line 2757
    iget-wide v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->startTime:J

    iput-wide v8, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->startTime:J

    .line 2759
    :cond_4
    iget-object v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerName:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 2760
    iget-object v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerName:Ljava/lang/String;

    iput-object v8, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->organizerName:Ljava/lang/String;

    .line 2762
    :cond_5
    iget-object v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->subject:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 2763
    iget-object v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->subject:Ljava/lang/String;

    iput-object v8, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->subject:Ljava/lang/String;

    .line 2766
    :cond_6
    if-eqz p1, :cond_7

    iget-object v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->body:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 2767
    iget-object v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->body:Ljava/lang/String;

    iput-object v8, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->body:Ljava/lang/String;

    .line 2769
    :cond_7
    iget-object v8, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attendeeList:Ljava/util/List;

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->attendeeList:Ljava/util/List;

    if-nez v8, :cond_2

    .line 2770
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attendeeList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->attendeeList:Ljava/util/List;

    .line 2771
    iget-object v2, v4, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attendeeList:Ljava/util/List;

    .line 2772
    .local v2, "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;

    .line 2773
    .local v0, "ae":Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;
    new-instance v1, Lcom/alibaba/alimei/sdk/model/Attendee;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/Attendee;-><init>()V

    .line 2774
    .local v1, "attendee":Lcom/alibaba/alimei/sdk/model/Attendee;
    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->address:Ljava/lang/String;

    iput-object v9, v1, Lcom/alibaba/alimei/sdk/model/Attendee;->address:Ljava/lang/String;

    .line 2775
    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->alias:Ljava/lang/String;

    iput-object v9, v1, Lcom/alibaba/alimei/sdk/model/Attendee;->alias:Ljava/lang/String;

    .line 2776
    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->role:Ljava/lang/String;

    iput-object v9, v1, Lcom/alibaba/alimei/sdk/model/Attendee;->role:Ljava/lang/String;

    .line 2777
    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->status:Ljava/lang/String;

    iput-object v9, v1, Lcom/alibaba/alimei/sdk/model/Attendee;->status:Ljava/lang/String;

    .line 2778
    iget-object v9, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->attendeeList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2782
    .end local v0    # "ae":Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;
    .end local v1    # "attendee":Lcom/alibaba/alimei/sdk/model/Attendee;
    .end local v2    # "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;>;"
    .end local v4    # "event":Lcom/alibaba/alimei/restfulapi/data/calendar/Event;
    :cond_8
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getEventStatus()I

    move-result v7

    iput v7, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->eventStatus:I

    goto/16 :goto_0
.end method

.method private updateLocalAttachmetStatue(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;)V
    .locals 12
    .param p3, "mailResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3622
    .local p1, "uploadAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    .local p2, "uploadResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getAttachList()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getResourceList()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_1

    .line 3653
    :cond_0
    return-void

    .line 3626
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getAttachList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getAttachList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 3627
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getAttachList()Ljava/util/List;

    move-result-object v4

    .line 3628
    .local v4, "serverAttachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 3629
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/Attach;

    .line 3630
    .local v0, "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 3631
    .local v2, "localAttachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    iget-object v6, v0, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-wide v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 3632
    new-instance v3, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "Attachment"

    invoke-direct {v3, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3633
    .local v3, "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v6, "attachment_id"

    iget-object v7, v0, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3634
    const-string/jumbo v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3635
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 3628
    .end local v3    # "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3640
    .end local v0    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    .end local v1    # "i":I
    .end local v2    # "localAttachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .end local v4    # "serverAttachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    :cond_3
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getResourceList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getResourceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 3641
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getResourceList()Ljava/util/List;

    move-result-object v5

    .line 3642
    .local v5, "serverResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 3643
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/Attach;

    .line 3644
    .restart local v0    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 3645
    .restart local v2    # "localAttachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    iget-object v6, v0, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-wide v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 3646
    new-instance v3, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "Attachment"

    invoke-direct {v3, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3647
    .restart local v3    # "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v6, "attachment_id"

    iget-object v7, v0, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3648
    const-string/jumbo v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3649
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 3642
    .end local v3    # "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateSingleMailByMessageKey(JLcom/alibaba/alimei/orm/query/Update;JJLcom/alibaba/alimei/restfulapi/data/Mail;)V
    .locals 21
    .param p1, "messageKey"    # J
    .param p3, "update"    # Lcom/alibaba/alimei/orm/query/Update;
    .param p4, "accountId"    # J
    .param p6, "folderId"    # J
    .param p8, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;

    .prologue
    .line 1374
    new-instance v15, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    invoke-direct {v15, v4}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;)V

    .line 1375
    .local v15, "bodyDelete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v4, "messageKey = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v15, v4, v6}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    invoke-virtual {v15}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v18

    .line 1378
    .local v18, "count":I
    const-string/jumbo v4, "MessageDatasource"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "updateSingleMailByMessageKey delete old mail body for MessageKey: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 1379
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", delCnt: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1378
    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-static/range {p4 .. p8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMessageBody(JJLcom/alibaba/alimei/restfulapi/data/Mail;)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    move-result-object v14

    .line 1383
    .local v14, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    const/4 v13, 0x0

    .line 1384
    .local v13, "flagLoaded":I
    if-eqz v14, :cond_0

    .line 1386
    move-wide/from16 v0, p1

    iput-wide v0, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mMessageKey:J

    .line 1387
    invoke-virtual {v14}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->save()J

    move-result-wide v16

    .line 1389
    .local v16, "bodyId":J
    const-string/jumbo v4, "MessageDatasource"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "body is not null, save for MessageKey: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", bodyId: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 1390
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1389
    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const/4 v13, 0x1

    .end local v16    # "bodyId":J
    :cond_0
    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    .line 1396
    invoke-direct/range {v4 .. v13}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->executeUpdateMessageByMessageKey(JLcom/alibaba/alimei/orm/query/Update;JJLcom/alibaba/alimei/restfulapi/data/Mail;I)Z

    move-result v19

    .line 1398
    .local v19, "hasAttachment":Z
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v5

    .line 1400
    .local v5, "attachmentDatasource":Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;
    move-wide/from16 v0, p4

    move-wide/from16 v2, p1

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->deleteAttachmentByMessageId(JJ)V

    .line 1403
    if-eqz v19, :cond_1

    .line 1405
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getAttachList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    move-wide/from16 v6, p4

    move-wide/from16 v8, p1

    invoke-interface/range {v5 .. v11}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->handleAttach(JJLjava/util/List;I)V

    .line 1409
    :cond_1
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getResourceList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    move-wide/from16 v6, p4

    move-wide/from16 v8, p1

    invoke-interface/range {v5 .. v11}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->handleAttach(JJLjava/util/List;I)V

    .line 1410
    return-void
.end method

.method private updateSingleMailFlagByMessageKey(JLcom/alibaba/alimei/orm/query/Update;JJLcom/alibaba/alimei/restfulapi/data/Mail;)V
    .locals 5
    .param p1, "messageKey"    # J
    .param p3, "update"    # Lcom/alibaba/alimei/orm/query/Update;
    .param p4, "accountId"    # J
    .param p6, "folderId"    # J
    .param p8, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1103
    if-eqz p3, :cond_0

    if-nez p8, :cond_1

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 1108
    const-string/jumbo v0, "messageId"

    iget-object v3, p8, Lcom/alibaba/alimei/restfulapi/data/Mail;->messageId:Ljava/lang/String;

    invoke-virtual {p3, v0, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1109
    const-string/jumbo v0, "datastatus"

    iget-object v3, p8, Lcom/alibaba/alimei/restfulapi/data/Mail;->replied:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1110
    const-string/jumbo v0, "sync_status"

    iget-object v3, p8, Lcom/alibaba/alimei/restfulapi/data/Mail;->forwarded:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1111
    iget-object v0, p8, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 1112
    const-string/jumbo v0, "flagRead"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1116
    :goto_1
    const-string/jumbo v0, "flagFavorite"

    invoke-static {p8}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/Mail;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1117
    const-string/jumbo v0, "flags"

    invoke-static {}, Lair;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1118
    const-string/jumbo v3, "messageType"

    iget-object v0, p8, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p8, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1119
    const-string/jumbo v0, "messageTag"

    iget-object v3, p8, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    invoke-static {v3}, Lair;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1122
    iget-object v0, p8, Lcom/alibaba/alimei/restfulapi/data/Mail;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1123
    const-string/jumbo v0, "conversationId"

    iget-object v3, p8, Lcom/alibaba/alimei/restfulapi/data/Mail;->sessionId:Ljava/lang/String;

    invoke-virtual {p3, v0, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1127
    :cond_2
    const-string/jumbo v0, "_id=?"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    invoke-virtual {p3}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto/16 :goto_0

    .line 1114
    :cond_3
    const-string/jumbo v0, "flagRead"

    iget-object v3, p8, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1118
    goto :goto_2
.end method


# virtual methods
.method public addAndRemoveTags(JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 25
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
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

    .prologue
    .line 3957
    .local p4, "mailServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "addTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "removeTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3958
    :cond_0
    const-string/jumbo v18, "MessageDatasource"

    const-string/jumbo v19, "addAndRemoveTags fail for mailServerIds is null or empty"

    invoke-static/range {v18 .. v19}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    :cond_1
    :goto_0
    return-void

    .line 3962
    :cond_2
    if-eqz p5, :cond_3

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_3
    if-eqz p6, :cond_4

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 3963
    :cond_4
    const-string/jumbo v18, "MessageDatasource"

    const-string/jumbo v19, "addAndRemoveTags fail for tags is no changed"

    invoke-static/range {v18 .. v19}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3967
    :cond_5
    new-instance v12, Lcom/alibaba/alimei/orm/query/Select;

    const-class v18, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "Message"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v12, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    .local v12, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "messageTag"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "_id"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, "syncServerId"

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 3969
    const-string/jumbo v18, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3970
    const-string/jumbo v18, "syncServerId"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 3971
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v9

    .line 3972
    .local v9, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 3973
    :cond_6
    const-string/jumbo v18, "MessageDatasource"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "addAndRemoveTags fail for msgList is null or empty, mailServerIds: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3977
    :cond_7
    new-instance v17, Lcom/alibaba/alimei/orm/query/Update;

    const-class v18, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "Message"

    invoke-direct/range {v17 .. v20}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    .local v17, "update":Lcom/alibaba/alimei/orm/query/Update;
    new-instance v14, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v18, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "SyncMsg"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3979
    .local v14, "syncDelete":Lcom/alibaba/alimei/orm/query/Delete;
    const/4 v4, 0x0

    .line 3981
    .local v4, "count":I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_8
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 3982
    .local v8, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v8, :cond_8

    .line 3986
    const/4 v7, 0x0

    .line 3987
    .local v7, "isTagChanged":Z
    iget-object v11, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageTags:Ljava/lang/String;

    .line 3988
    .local v11, "msgTags":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 3989
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3994
    .local v16, "tagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    if-eqz p6, :cond_c

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_c

    .line 3995
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_9
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3996
    .local v15, "tag":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 4000
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 4001
    const-string/jumbo v20, "accountId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4002
    const-string/jumbo v20, "itemId"

    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4003
    const-string/jumbo v20, "type"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4004
    const-string/jumbo v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v15}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4005
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 4007
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 4008
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4009
    const/4 v7, 0x1

    .line 4013
    :cond_a
    new-instance v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v13}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    .line 4014
    .local v13, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    move-wide/from16 v0, p1

    iput-wide v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 4015
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    .line 4016
    const/16 v20, 0x7

    move/from16 v0, v20

    iput v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 4017
    iput-object v15, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    .line 4018
    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    goto/16 :goto_3

    .line 3991
    .end local v13    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "tagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    invoke-static {v11}, Lair;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .restart local v16    # "tagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_2

    .line 4022
    :cond_c
    if-eqz p5, :cond_f

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_f

    .line 4023
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_d
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4024
    .restart local v15    # "tag":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 4028
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 4029
    const-string/jumbo v20, "accountId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4030
    const-string/jumbo v20, "itemId"

    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4031
    const-string/jumbo v20, "type"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4032
    const-string/jumbo v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v15}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4033
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 4035
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 4036
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4037
    const/4 v7, 0x1

    .line 4041
    :cond_e
    new-instance v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v13}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    .line 4042
    .restart local v13    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    move-wide/from16 v0, p1

    iput-wide v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 4043
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    .line 4044
    const/16 v20, 0x6

    move/from16 v0, v20

    iput v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 4045
    iput-object v15, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    .line 4046
    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    goto/16 :goto_4

    .line 4050
    .end local v13    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    .end local v15    # "tag":Ljava/lang/String;
    :cond_f
    if-eqz v7, :cond_8

    .line 4051
    invoke-static/range {v16 .. v16}, Lair;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 4052
    if-eqz v16, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_10

    const/4 v6, 0x1

    .line 4053
    .local v6, "hasTags":Z
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 4054
    const-string/jumbo v19, "messageType"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4055
    const-string/jumbo v19, "messageTag"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4056
    const-string/jumbo v19, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4057
    const-string/jumbo v19, "syncServerId"

    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4058
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v19

    add-int v4, v4, v19

    goto/16 :goto_1

    .line 4052
    .end local v6    # "hasTags":Z
    :cond_10
    const/4 v6, 0x0

    goto :goto_5

    .line 4062
    .end local v7    # "isTagChanged":Z
    .end local v8    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v11    # "msgTags":Ljava/lang/String;
    .end local v16    # "tagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    if-lez v4, :cond_1

    .line 4063
    new-instance v10, Lcom/alibaba/alimei/orm/query/Select;

    const-class v18, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v19, "EmailProvider.db"

    const-string/jumbo v20, "Message"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v10, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4064
    .local v10, "msgSelect":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v18, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 4065
    const-string/jumbo v18, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4066
    const-string/jumbo v18, "syncServerId"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 4068
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v9

    .line 4069
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    .line 4070
    new-instance v5, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v18, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move/from16 v3, v18

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 4071
    .local v5, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4072
    .restart local v8    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_6

    .line 4074
    .end local v8    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_12
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    .line 4075
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    goto/16 :goto_0
.end method

.method public addChangeMailTagSyncData(JLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .param p1, "accountId"    # J
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

    .prologue
    .line 4281
    .local p3, "mailServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "addTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "removeTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4282
    :cond_0
    const-string/jumbo v0, "MessageDatasource"

    const-string/jumbo v1, "addChangeMailTagSyncData fail for mailServerIds is null or empty"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    :cond_1
    :goto_0
    return-void

    .line 4286
    :cond_2
    if-eqz p4, :cond_3

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    if-eqz p5, :cond_4

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4287
    :cond_4
    const-string/jumbo v0, "MessageDatasource"

    const-string/jumbo v1, "addChangeMailTagSyncData fail for has no tag changed"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4291
    :cond_5
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4292
    .local v6, "removeTag":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addChangeMailTagSyncData(JZLjava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 4295
    .end local v6    # "removeTag":Ljava/lang/String;
    :cond_6
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 4296
    .local v12, "addTag":Ljava/lang/String;
    const/4 v10, 0x1

    move-object v7, p0

    move-wide v8, p1

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addChangeMailTagSyncData(JZLjava/util/List;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public addChangeMailTagSyncData(JZLjava/util/List;Ljava/lang/String;)V
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "isAddTag"    # Z
    .param p5, "tag"    # Ljava/lang/String;
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

    .prologue
    .line 4250
    .local p4, "mailServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/Object;

    .line 4251
    .local v4, "objects":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 4252
    .local v3, "i":I
    new-instance v2, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v8, "EmailProvider.db"

    const-string/jumbo v9, "SyncMsg"

    invoke-direct {v2, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4254
    .local v2, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4255
    .local v5, "serverId":Ljava/lang/String;
    aput-object v5, v4, v3

    .line 4256
    add-int/lit8 v3, v3, 0x1

    .line 4259
    const-string/jumbo v8, "accountId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4260
    const-string/jumbo v8, "itemId"

    invoke-virtual {v2, v8, v5}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4261
    const-string/jumbo v8, "type"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Lcom/alibaba/alimei/orm/query/Delete;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4262
    const-string/jumbo v8, "data"

    move-object/from16 v0, p5

    invoke-virtual {v2, v8, v0}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4263
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 4266
    new-instance v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v6}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    .line 4267
    .local v6, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    iput-wide p1, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 4268
    iput-object v5, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    .line 4269
    if-eqz p3, :cond_0

    .line 4270
    const/4 v8, 0x6

    iput v8, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 4274
    :goto_1
    move-object/from16 v0, p5

    iput-object v0, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    .line 4275
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    goto :goto_0

    .line 4272
    :cond_0
    const/4 v8, 0x7

    iput v8, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    goto :goto_1

    .line 4277
    .end local v5    # "serverId":Ljava/lang/String;
    .end local v6    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_1
    return-void
.end method

.method public addMailTags(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 19
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "mailServerId"    # Ljava/lang/String;
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

    .prologue
    .line 3899
    .local p5, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_2

    .line 3900
    :cond_0
    const-string/jumbo v15, "MessageDatasource"

    const-string/jumbo v16, "addMailTags fail for tags is null or empty"

    invoke-static/range {v15 .. v16}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    :cond_1
    :goto_0
    return-void

    .line 3903
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageTagsByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v9

    .line 3904
    .local v9, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v9, :cond_1

    .line 3907
    iget-object v8, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageTags:Ljava/lang/String;

    .line 3908
    .local v8, "messageTags":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 3909
    .local v10, "newTags":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3910
    .local v6, "isTagChanged":Z
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 3911
    invoke-static/range {p5 .. p5}, Lair;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 3912
    const/4 v6, 0x1

    .line 3926
    :cond_3
    :goto_1
    if-eqz v6, :cond_1

    .line 3927
    new-instance v14, Lcom/alibaba/alimei/orm/query/Update;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v16, "EmailProvider.db"

    const-string/jumbo v17, "Message"

    invoke-direct/range {v14 .. v17}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3928
    .local v14, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v15, "messageType"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3929
    const-string/jumbo v15, "messageTag"

    invoke-virtual {v14, v15, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3930
    const-string/jumbo v15, "_id"

    iget-wide v0, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3931
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v4

    .line 3934
    .local v4, "count":I
    if-lez v4, :cond_1

    .line 3935
    new-instance v12, Lcom/alibaba/alimei/orm/query/Select;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v16, "EmailProvider.db"

    const-string/jumbo v17, "Message"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3936
    .local v12, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v15, "_id"

    iget-wide v0, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3938
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 3939
    .local v7, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v7, :cond_1

    .line 3940
    new-instance v5, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v15, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v5, v0, v1, v2, v15}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 3941
    .local v5, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-static {v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 3942
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 3943
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    goto/16 :goto_0

    .line 3914
    .end local v4    # "count":I
    .end local v5    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v7    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v12    # "select":Lcom/alibaba/alimei/orm/query/Select;
    .end local v14    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_4
    invoke-static {v8}, Lair;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 3915
    .local v11, "oldTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3916
    .local v13, "tag":Ljava/lang/String;
    invoke-interface {v11, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 3919
    const/4 v6, 0x1

    .line 3920
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3922
    .end local v13    # "tag":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_3

    .line 3923
    invoke-static {v11}, Lair;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1
.end method

.method public addMailTags(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
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

    .prologue
    .line 3952
    .local p4, "mailServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addAndRemoveTags(JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 3953
    return-void
.end method

.method public addOrUpdateMail(Ljava/lang/String;JLcom/alibaba/alimei/restfulapi/data/Mail;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;

    .prologue
    const/4 v8, 0x1

    .line 708
    new-instance v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v0, -0x9

    invoke-direct {v1, p2, p3, p1, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 710
    .local v1, "group":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Message"

    invoke-direct {v2, v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .local v2, "mailSelect":Lcom/alibaba/alimei/orm/query/Select;
    new-instance v3, Lcom/alibaba/alimei/orm/query/Update;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Message"

    invoke-direct {v3, v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    .local v3, "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    iget-object v4, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->folderId:Ljava/lang/String;

    invoke-interface {v0, p2, p3, v4}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v6

    .line 715
    .local v6, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v6, :cond_0

    .line 716
    new-instance v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .end local v6    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-direct {v6}, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;-><init>()V

    .line 717
    .restart local v6    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    const-wide/16 v4, -0x1

    iput-wide v4, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    .line 718
    iput-wide p2, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    .line 719
    iput v8, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    .line 721
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 722
    .local v7, "addMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    invoke-interface {v7, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-wide v4, p2

    .line 723
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->handleAddOrUpdateMails(Lcom/alibaba/alimei/sdk/model/MailGroupModel;Lcom/alibaba/alimei/orm/query/Select;Lcom/alibaba/alimei/orm/query/Update;JLcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Ljava/util/List;)V

    .line 724
    return-object v1
.end method

.method public changMailCalenderStatus(JLjava/lang/String;ILjava/lang/String;)V
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "mailServerIds"    # Ljava/lang/String;

    .prologue
    .line 3324
    new-instance v8, Lcom/alibaba/alimei/orm/query/Select;

    const-class v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v11, "EmailProvider.db"

    const-string/jumbo v12, "Message"

    invoke-direct {v8, v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3325
    .local v8, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v10, "syncServerId"

    move-object/from16 v0, p5

    invoke-virtual {v8, v10, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3326
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 3327
    .local v6, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v6, :cond_0

    .line 3328
    iget-object v2, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMeetingInfo:Ljava/lang/String;

    .line 3329
    .local v2, "calendarStr":Ljava/lang/String;
    invoke-static {v2}, Lair;->n(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    move-result-object v1

    .line 3330
    .local v1, "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getEventStatus()I

    move-result v10

    move/from16 v0, p4

    if-ne v0, v10, :cond_1

    .line 3348
    .end local v1    # "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .end local v2    # "calendarStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3333
    .restart local v1    # "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .restart local v2    # "calendarStr":Ljava/lang/String;
    :cond_1
    move/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setEventStatus(I)V

    .line 3335
    invoke-static {v1}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)Ljava/lang/String;

    move-result-object v7

    .line 3336
    .local v7, "newCalendarStr":Ljava/lang/String;
    new-instance v9, Lcom/alibaba/alimei/orm/query/Update;

    const-class v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v11, "EmailProvider.db"

    const-string/jumbo v12, "Message"

    invoke-direct {v9, v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3337
    .local v9, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v10, "meetingInfo"

    invoke-virtual {v9, v10, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3338
    const-string/jumbo v10, "syncServerId"

    move-object/from16 v0, p5

    invoke-virtual {v9, v10, v0}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3339
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v3

    .line 3340
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 3341
    iput-object v7, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMeetingInfo:Ljava/lang/String;

    .line 3342
    new-instance v4, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v10, -0x9

    move-object/from16 v0, p3

    invoke-direct {v4, p1, p2, v0, v10}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 3343
    .local v4, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-static {v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v5

    .line 3344
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 3345
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    goto :goto_0
.end method

.method public varargs changeMailFavorite(JLjava/lang/String;Z[Ljava/lang/String;)V
    .locals 21
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "isFavorite"    # Z
    .param p5, "mailServerIds"    # [Ljava/lang/String;

    .prologue
    .line 3362
    move-object/from16 v0, p5

    array-length v15, v0

    new-array v10, v15, [Ljava/lang/Object;

    .line 3363
    .local v10, "objects":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 3365
    .local v7, "i":I
    new-instance v5, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v16, "EmailProvider.db"

    const-string/jumbo v17, "SyncMsg"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v5, v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    .local v5, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v12, p5, v15

    .line 3367
    .local v12, "serverId":Ljava/lang/String;
    aput-object v12, v10, v7

    .line 3368
    add-int/lit8 v7, v7, 0x1

    .line 3371
    const-string/jumbo v17, "accountId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3372
    const-string/jumbo v17, "itemId"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3373
    const-string/jumbo v17, "type"

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3374
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 3377
    new-instance v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v13}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    .line 3378
    .local v13, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    move-wide/from16 v0, p1

    iput-wide v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 3379
    iput-object v12, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    .line 3380
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 3381
    move/from16 v0, p4

    iput-boolean v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data1:Z

    .line 3382
    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    .line 3366
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 3386
    .end local v12    # "serverId":Ljava/lang/String;
    .end local v13    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_0
    new-instance v14, Lcom/alibaba/alimei/orm/query/Update;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v16, "EmailProvider.db"

    const-string/jumbo v17, "Message"

    invoke-direct/range {v14 .. v17}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    .local v14, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v15, "flagFavorite"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3388
    const-string/jumbo v15, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3389
    const-string/jumbo v15, "syncServerId"

    invoke-virtual {v14, v15, v10}, Lcom/alibaba/alimei/orm/query/Update;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3390
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v4

    .line 3391
    .local v4, "count":I
    if-lez v4, :cond_2

    .line 3392
    new-instance v11, Lcom/alibaba/alimei/orm/query/Select;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v16, "EmailProvider.db"

    const-string/jumbo v17, "Message"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    .local v11, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v15, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3394
    const-string/jumbo v15, "syncServerId"

    invoke-virtual {v11, v15, v10}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3395
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v9

    .line 3396
    .local v9, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 3397
    new-instance v6, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v15, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v2, v15}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 3398
    .local v6, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 3399
    .local v8, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_1

    .line 3401
    .end local v8    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_1
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 3402
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 3406
    .end local v6    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v9    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .end local v11    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "changeMailFavorite "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " local mails"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lzb;->i(Ljava/lang/String;)I

    .line 3407
    return-void
.end method

.method public changeMailReadStatus(JLjava/lang/String;JLjava/lang/String;Z)V
    .locals 21
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "mailboxId"    # J
    .param p6, "oldestSerId"    # Ljava/lang/String;
    .param p7, "readStatus"    # Z

    .prologue
    .line 4470
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 4471
    new-instance v10, Lcom/alibaba/alimei/orm/query/Select;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "Message"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v10, v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4472
    .local v10, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v15, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

    invoke-virtual {v10, v15}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 4473
    const-string/jumbo v15, "syncServerId"

    move-object/from16 v0, p6

    invoke-virtual {v10, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4474
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4475
    .local v8, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v8, :cond_2

    .line 4476
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 4477
    const-string/jumbo v15, "mailboxKey"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4478
    const-string/jumbo v15, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4479
    const-string/jumbo v16, "flagRead"

    if-eqz p7, :cond_0

    const/4 v15, 0x0

    :goto_0
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4480
    const-string/jumbo v15, "timeStamp>=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-wide v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4481
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v9

    .line 4482
    .local v9, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 4483
    new-instance v6, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v15, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v2, v15}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 4484
    .local v6, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4485
    .local v4, "changeMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v7

    .line 4486
    .local v7, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move/from16 v0, p7

    iput-boolean v0, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 4487
    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_1

    .line 4479
    .end local v4    # "changeMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v6    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v7    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v9    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_0
    const/4 v15, 0x1

    goto :goto_0

    .line 4489
    .restart local v6    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .restart local v9    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_1
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 4490
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 4510
    .end local v6    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v8    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v9    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .end local v10    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_2
    new-instance v13, Lcom/alibaba/alimei/orm/query/Select;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v16, "EmailProvider.db"

    const-string/jumbo v17, "SyncMsg"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v13, v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4511
    .local v13, "syncSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v15, "accountId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4512
    const-string/jumbo v15, "type"

    const/16 v16, 0x9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4513
    const-string/jumbo v15, "extend_data"

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4514
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Select;->count()I

    move-result v12

    .line 4516
    .local v12, "syncCount":I
    if-gtz v12, :cond_3

    .line 4517
    new-instance v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v11}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    .line 4518
    .local v11, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    move-wide/from16 v0, p1

    iput-wide v0, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 4519
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->extenddata:Ljava/lang/String;

    .line 4520
    const/16 v15, 0x9

    iput v15, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 4521
    const-string/jumbo v15, "100"

    iput-object v15, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    .line 4522
    move/from16 v0, p7

    iput-boolean v0, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data1:Z

    .line 4523
    invoke-virtual {v11}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    .line 4544
    .end local v11    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_3
    new-instance v14, Lcom/alibaba/alimei/orm/query/Update;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "Message"

    invoke-direct/range {v14 .. v17}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4545
    .local v14, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v15, "flagRead"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4546
    const-string/jumbo v15, "mailboxKey"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4547
    const-string/jumbo v15, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4548
    const-string/jumbo v16, "flagRead"

    if-eqz p7, :cond_4

    const/4 v15, 0x0

    :goto_2
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4549
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v5

    .line 4550
    .local v5, "count":I
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "changeMailReadStatus "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " local mails"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lzb;->d(Ljava/lang/String;)I

    .line 4551
    return-void

    .line 4548
    .end local v5    # "count":I
    :cond_4
    const/4 v15, 0x1

    goto :goto_2
.end method

.method public varargs changeMailReadStatus(JLjava/lang/String;Z[Ljava/lang/String;)V
    .locals 21
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "readStatus"    # Z
    .param p5, "mailServerIds"    # [Ljava/lang/String;

    .prologue
    .line 3274
    move-object/from16 v0, p5

    array-length v15, v0

    new-array v10, v15, [Ljava/lang/Object;

    .line 3275
    .local v10, "objects":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 3276
    .local v7, "i":I
    new-instance v5, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v16, "EmailProvider.db"

    const-string/jumbo v17, "SyncMsg"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v5, v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    .local v5, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v12, p5, v15

    .line 3278
    .local v12, "serverId":Ljava/lang/String;
    aput-object v12, v10, v7

    .line 3279
    add-int/lit8 v7, v7, 0x1

    .line 3280
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 3283
    const-string/jumbo v17, "accountId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3284
    const-string/jumbo v17, "itemId"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3285
    const-string/jumbo v17, "type"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3286
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 3289
    new-instance v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v13}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    .line 3290
    .local v13, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    move-wide/from16 v0, p1

    iput-wide v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 3291
    iput-object v12, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    .line 3292
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 3293
    move/from16 v0, p4

    iput-boolean v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data1:Z

    .line 3294
    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    .line 3277
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 3298
    .end local v12    # "serverId":Ljava/lang/String;
    .end local v13    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_0
    new-instance v14, Lcom/alibaba/alimei/orm/query/Update;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v16, "EmailProvider.db"

    const-string/jumbo v17, "Message"

    invoke-direct/range {v14 .. v17}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3299
    .local v14, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v15, "flagRead"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3300
    const-string/jumbo v15, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3301
    const-string/jumbo v15, "syncServerId"

    invoke-virtual {v14, v15, v10}, Lcom/alibaba/alimei/orm/query/Update;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3302
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v4

    .line 3304
    .local v4, "count":I
    if-lez v4, :cond_2

    .line 3305
    new-instance v11, Lcom/alibaba/alimei/orm/query/Select;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v16, "EmailProvider.db"

    const-string/jumbo v17, "Message"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    .local v11, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v15, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3307
    const-string/jumbo v15, "syncServerId"

    invoke-virtual {v11, v15, v10}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3308
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v9

    .line 3309
    .local v9, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 3310
    new-instance v6, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v15, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v2, v15}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 3311
    .local v6, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 3312
    .local v8, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_1

    .line 3314
    .end local v8    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_1
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 3315
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 3319
    .end local v6    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v9    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .end local v11    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "changeMailReadStatus "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " local mails"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lzb;->i(Ljava/lang/String;)I

    .line 3320
    return-void
.end method

.method public changeMailReadStatusByTag(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 19
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "readStatus"    # Z

    .prologue
    .line 4734
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 4735
    const-string/jumbo v14, "MessageDatasource"

    const-string/jumbo v15, "changeMailReadStatusByTag fail for tag is empty!!!"

    invoke-static {v14, v15}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    :cond_0
    :goto_0
    return-void

    .line 4739
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 4740
    .local v12, "tagQueryBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v14, "%"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4741
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4742
    const-string/jumbo v14, "%"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4744
    new-instance v10, Lcom/alibaba/alimei/orm/query/Select;

    const-class v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "Message"

    move-object/from16 v0, v16

    invoke-direct {v10, v14, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4745
    .local v10, "msgSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v14, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4746
    const-string/jumbo v15, "flagRead"

    if-nez p5, :cond_3

    const/4 v14, 0x1

    :goto_1
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v10, v15, v14}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4747
    const-string/jumbo v14, "messageTag like ?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v10, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4748
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v9

    .line 4749
    .local v9, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v9, :cond_0

    .line 4754
    new-instance v4, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v14, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v15, "EmailProvider.db"

    const-string/jumbo v16, "SyncMsg"

    move-object/from16 v0, v16

    invoke-direct {v4, v14, v15, v0}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4755
    .local v4, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4756
    .local v6, "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4757
    .local v8, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagRead:Z

    .line 4758
    iget-wide v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 4759
    .local v7, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v7, :cond_2

    .line 4760
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4761
    .restart local v7    # "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-wide v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v6, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4763
    :cond_2
    invoke-static {v8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4765
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 4767
    const-string/jumbo v15, "accountId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4768
    const-string/jumbo v15, "itemId"

    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4769
    const-string/jumbo v15, "type"

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4770
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 4773
    new-instance v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v11}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    .line 4774
    .local v11, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    move-wide/from16 v0, p1

    iput-wide v0, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 4775
    iget-object v15, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    iput-object v15, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    .line 4776
    const/4 v15, 0x2

    iput v15, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 4777
    move/from16 v0, p5

    iput-boolean v0, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data1:Z

    .line 4778
    invoke-virtual {v11}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    goto :goto_2

    .line 4746
    .end local v4    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    .end local v6    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    .end local v7    # "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v8    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v9    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .end local v11    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 4781
    .restart local v4    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    .restart local v6    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    .restart local v9    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_4
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 4782
    new-instance v5, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v14, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v5, v0, v1, v2, v14}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 4783
    .local v5, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->setChangedMails(Ljava/util/Map;)V

    .line 4784
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 4787
    .end local v5    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    :cond_5
    new-instance v13, Lcom/alibaba/alimei/orm/query/Update;

    const-class v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "Message"

    invoke-direct/range {v13 .. v16}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4788
    .local v13, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v14, "flagRead"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4789
    const-string/jumbo v14, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4790
    const-string/jumbo v15, "flagRead"

    if-nez p5, :cond_6

    const/4 v14, 0x1

    :goto_3
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v15, v14}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4791
    const-string/jumbo v14, "messageTag like ?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4793
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto/16 :goto_0

    .line 4790
    :cond_6
    const/4 v14, 0x0

    goto :goto_3
.end method

.method public varargs changeMailReminder(JLjava/lang/String;Z[Ljava/lang/String;)V
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "isReminder"    # Z
    .param p5, "mailServerIds"    # [Ljava/lang/String;

    .prologue
    .line 2523
    new-instance v6, Lcom/alibaba/alimei/orm/query/Update;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v8, "EmailProvider.db"

    const-string/jumbo v9, "Message"

    invoke-direct {v6, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    .local v6, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v8, "reminder"

    if-eqz p4, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2525
    const-string/jumbo v7, "accountKey=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    const-string/jumbo v8, "syncServerId"

    move-object/from16 v7, p5

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v7}, Lcom/alibaba/alimei/orm/query/Update;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 2529
    .local v1, "count":I
    if-lez v1, :cond_2

    .line 2530
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v8, "EmailProvider.db"

    const-string/jumbo v9, "Message"

    invoke-direct {v5, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    .local v5, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v7, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    const-string/jumbo v7, "syncServerId"

    check-cast p5, [Ljava/lang/Object;

    .end local p5    # "mailServerIds":[Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-virtual {v5, v7, v0}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v4

    .line 2534
    .local v4, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 2535
    new-instance v2, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v7, -0x9

    move-object/from16 v0, p3

    invoke-direct {v2, p1, p2, v0, v7}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 2536
    .local v2, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2537
    .local v3, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_1

    .line 2524
    .end local v1    # "count":I
    .end local v2    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v3    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .end local v5    # "select":Lcom/alibaba/alimei/orm/query/Select;
    .restart local p5    # "mailServerIds":[Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 2539
    .end local p5    # "mailServerIds":[Ljava/lang/String;
    .restart local v1    # "count":I
    .restart local v2    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .restart local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .restart local v5    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2540
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 2544
    .end local v2    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .end local v5    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_2
    return-void
.end method

.method public changeMailTagsWithIds(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 29
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "mailServerId"    # Ljava/lang/String;
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

    .prologue
    .line 4136
    .local p5, "newTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p4, :cond_1

    .line 4137
    const/16 v26, 0x0

    .line 4210
    :cond_0
    :goto_0
    return v26

    .line 4140
    :cond_1
    new-instance v25, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Message"

    move-object/from16 v0, v25

    invoke-direct {v0, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4141
    .local v25, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4142
    const-string/jumbo v5, "syncServerId"

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4143
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v19

    check-cast v19, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4144
    .local v19, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v19, :cond_2

    .line 4145
    const-string/jumbo v5, "MessageDatasource"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "changeMailTagsWithIds fail, for has no mail with serverId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", accountName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    const/16 v26, 0x0

    goto :goto_0

    .line 4150
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4151
    .local v10, "toAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4152
    .local v16, "toDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 4153
    .local v23, "oldTagSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 4155
    .local v21, "newTagSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 4156
    .local v26, "tagChanged":Z
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageTags:Ljava/lang/String;

    invoke-static {v5}, Lair;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v24

    .line 4157
    .local v24, "oldTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4158
    invoke-virtual/range {v23 .. v24}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4161
    :cond_3
    if-eqz p5, :cond_4

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4162
    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4165
    :cond_4
    if-eqz v24, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 4166
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 4167
    .local v22, "oldTag":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4170
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4171
    const/16 v26, 0x1

    .line 4172
    goto :goto_1

    .line 4175
    .end local v22    # "oldTag":Ljava/lang/String;
    :cond_6
    if-eqz p5, :cond_8

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 4176
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 4177
    .local v20, "newTag":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 4180
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4181
    const/16 v26, 0x1

    .line 4182
    goto :goto_2

    .line 4185
    .end local v20    # "newTag":Ljava/lang/String;
    :cond_8
    if-eqz v26, :cond_0

    .line 4186
    if-eqz p5, :cond_b

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    const/16 v18, 0x1

    .line 4187
    .local v18, "hasTag":Z
    :goto_3
    new-instance v27, Lcom/alibaba/alimei/orm/query/Update;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Message"

    move-object/from16 v0, v27

    invoke-direct {v0, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4188
    .local v27, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v5, "messageType"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4189
    const-string/jumbo v5, "messageTag"

    invoke-static/range {p5 .. p5}, Lair;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4190
    const-string/jumbo v5, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4191
    const-string/jumbo v5, "syncServerId"

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4193
    invoke-virtual/range {v27 .. v27}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v4

    .line 4194
    .local v4, "count":I
    if-lez v4, :cond_9

    .line 4195
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v19

    .end local v19    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    check-cast v19, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4196
    .restart local v19    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    new-instance v17, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v5, -0x9

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 4197
    .local v17, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-static/range {v19 .. v19}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 4198
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 4201
    .end local v17    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    :cond_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 4202
    const/4 v8, 0x1

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addChangeMailTagSyncData(JZLjava/lang/String;Ljava/util/List;)V

    .line 4205
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4206
    const/4 v14, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    move-object/from16 v15, p4

    invoke-direct/range {v11 .. v16}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addChangeMailTagSyncData(JZLjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 4186
    .end local v4    # "count":I
    .end local v18    # "hasTag":Z
    .end local v27    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_3
.end method

.method public checkMailData(J)Ljava/lang/String;
    .locals 31
    .param p1, "accountId"    # J

    .prologue
    .line 5223
    const-string/jumbo v25, "EmailProviderBody.db"

    invoke-static/range {v25 .. v25}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v13

    .line 5224
    .local v13, "db":Lcom/alibaba/alimei/orm/IDatabase;
    if-nez v13, :cond_0

    .line 5225
    const-string/jumbo v25, "MessageDatasource"

    const-string/jumbo v26, "checkMailData fail for db is null"

    invoke-static/range {v25 .. v26}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    const-string/jumbo v25, ""

    .line 5314
    :goto_0
    return-object v25

    .line 5229
    :cond_0
    const/4 v12, 0x0

    .line 5230
    .local v12, "cursor":Landroid/database/Cursor;
    const-string/jumbo v23, "select count(*) from Body"

    .line 5232
    .local v23, "sql":Ljava/lang/String;
    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v13, v0, v1}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 5233
    if-eqz v12, :cond_1

    .line 5234
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 5235
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 5236
    .local v11, "count":I
    const-string/jumbo v25, "MessageDatasource"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "body has count: "

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v26 .. v26}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5242
    .end local v11    # "count":I
    :cond_1
    if-eqz v12, :cond_2

    .line 5243
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5244
    const/4 v12, 0x0

    .line 5248
    :cond_2
    :goto_1
    const-string/jumbo v23, "select * from Body where messageKey in (select messageKey from Body group by messageKey having count(messageKey) > 1)"

    .line 5249
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 5251
    .local v18, "msgBodyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const/16 v25, 0x0

    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v13, v0, v1}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 5252
    if-eqz v12, :cond_8

    .line 5253
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 5254
    .restart local v11    # "count":I
    const-string/jumbo v25, "MessageDatasource"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "checkMail body duplicate record cout: "

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v26 .. v26}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 5256
    const-string/jumbo v25, "messageKey"

    move-object/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 5257
    .local v20, "msgKey":J
    const-string/jumbo v25, "htmlContent"

    move-object/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 5258
    .local v15, "html":Ljava/lang/String;
    const-string/jumbo v25, "textContent"

    move-object/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 5259
    .local v10, "content":Ljava/lang/String;
    const/16 v25, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v15, v10, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getBodySnippet(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 5260
    .local v6, "body":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 5261
    invoke-static {v6}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5263
    :cond_3
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 5264
    .local v8, "bodyKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v8, :cond_4

    .line 5265
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "bodyKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 5266
    .restart local v8    # "bodyKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5268
    :cond_4
    const-string/jumbo v25, "_id"

    move-object/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 5271
    .end local v6    # "body":Ljava/lang/String;
    .end local v8    # "bodyKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v10    # "content":Ljava/lang/String;
    .end local v11    # "count":I
    .end local v15    # "html":Ljava/lang/String;
    .end local v20    # "msgKey":J
    :catch_0
    move-exception v24

    .line 5272
    .local v24, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v25, "MessageDatasource"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5274
    if-eqz v12, :cond_5

    .line 5275
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5280
    .end local v24    # "tr":Ljava/lang/Throwable;
    :cond_5
    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_e

    .line 5281
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 5282
    .local v22, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 5283
    .local v16, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_6
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 5284
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 5285
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 5286
    .local v9, "bodyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 5287
    .local v19, "msgKeyObj":Ljava/lang/Long;
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-lez v25, :cond_c

    .line 5288
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 5289
    .restart local v20    # "msgKey":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v17

    .line 5290
    .local v17, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v17, :cond_b

    .line 5291
    const-string/jumbo v25, "------begin msgId: "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "----------\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5292
    const-string/jumbo v25, "subject: "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5293
    const-string/jumbo v25, "mail Time: "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5294
    const-string/jumbo v25, "mail serverId: "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5295
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 5296
    .local v7, "bodyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 5297
    const-string/jumbo v25, "body: "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 5239
    .end local v7    # "bodyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v9    # "bodyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .end local v17    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v18    # "msgBodyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v19    # "msgKeyObj":Ljava/lang/Long;
    .end local v20    # "msgKey":J
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v24

    .line 5240
    .restart local v24    # "tr":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v25, "MessageDatasource"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5242
    if-eqz v12, :cond_2

    .line 5243
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5244
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 5242
    .end local v24    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v25

    if-eqz v12, :cond_7

    .line 5243
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5244
    :cond_7
    throw v25

    .line 5274
    .restart local v18    # "msgBodyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    :cond_8
    if-eqz v12, :cond_5

    .line 5275
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 5274
    :catchall_1
    move-exception v25

    if-eqz v12, :cond_9

    .line 5275
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5276
    :cond_9
    throw v25

    .line 5299
    .restart local v7    # "bodyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .restart local v9    # "bodyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .restart local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .restart local v17    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .restart local v19    # "msgKeyObj":Ljava/lang/Long;
    .restart local v20    # "msgKey":J
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    const-string/jumbo v25, "------end msgId: "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "----------\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5303
    .end local v7    # "bodyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    :goto_6
    const-string/jumbo v25, "Data consistency"

    const-string/jumbo v26, "1"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, ""

    .line 13053
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v29

    .line 13054
    if-eqz v29, :cond_6

    .line 13116
    move-object/from16 v0, v29

    iget-object v0, v0, Lxt;->f:Lyl;

    move-object/from16 v29, v0

    .line 13056
    if-eqz v29, :cond_6

    .line 13057
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-interface {v0, v1, v2, v3, v4}, Lyl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5301
    :cond_b
    const-string/jumbo v25, "------error!!! msg is null for msgId: "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "-------\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 5305
    .end local v17    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v20    # "msgKey":J
    :cond_c
    const-string/jumbo v25, "MessageDatasource"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "error msgKeyObj: "

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v26 .. v26}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 5309
    .end local v9    # "bodyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v19    # "msgKeyObj":Ljava/lang/Long;
    :cond_d
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_0

    .line 5311
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_e
    const-string/jumbo v25, "MessageDatasource"

    const-string/jumbo v26, "body table has no duplicate data"

    invoke-static/range {v25 .. v26}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 5314
    const-string/jumbo v25, ""

    goto/16 :goto_0
.end method

.method public cleanDeletedAccountMails()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 5452
    :try_start_0
    new-instance v8, Lcom/alibaba/alimei/orm/query/Select;

    const-class v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v10, "EmailProvider.db"

    const-string/jumbo v11, "Mailbox"

    invoke-direct {v8, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 5453
    .local v8, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v9, "accountKey"

    invoke-virtual {v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 5454
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v6

    .line 5455
    .local v6, "mailBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-nez v6, :cond_1

    .line 5487
    .end local v6    # "mailBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    .end local v8    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_0
    :goto_0
    return-void

    .line 5458
    .restart local v6    # "mailBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    .restart local v8    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAllAccount()Ljava/util/List;

    move-result-object v3

    .line 5459
    .local v3, "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    if-eqz v3, :cond_0

    .line 5462
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5463
    .local v2, "accountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 5464
    .local v0, "a":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v0, :cond_2

    .line 5467
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5484
    .end local v0    # "a":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .end local v2    # "accountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    .end local v3    # "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    .end local v6    # "mailBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    .end local v8    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :catch_0
    move-exception v4

    .line 5485
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "MessageDatasource"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5469
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "accountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    .restart local v3    # "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    .restart local v6    # "mailBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    .restart local v8    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_3
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5470
    .local v5, "mailBoxAccountIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 5471
    .local v7, "mb":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v7, :cond_4

    .line 5474
    iget-wide v10, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 5477
    iget-wide v10, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5478
    iget-wide v10, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 5479
    .local v1, "account":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v1, :cond_4

    .line 5480
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAccountAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/AccountAdditionalDatasource;

    move-result-object v10

    new-instance v11, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-wide v12, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    invoke-direct {v11, v12, v13}, Lcom/alibaba/alimei/framework/model/UserAccountModel;-><init>(J)V

    invoke-interface {v10, v11}, Lcom/alibaba/alimei/sdk/datasource/AccountAdditionalDatasource;->removeAccountRelativeData(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public cleanOldMails(II)V
    .locals 26
    .param p1, "folderMaxCount"    # I
    .param p2, "folderTargetCount"    # I

    .prologue
    .line 5340
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    new-array v8, v2, [Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryVisibleFolders(JZZ[Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 5342
    .local v17, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-nez v17, :cond_1

    .line 5431
    .end local v17    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :cond_0
    :goto_0
    return-void

    .line 5345
    .restart local v17    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 5346
    .local v15, "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v15, :cond_2

    .line 5349
    new-instance v25, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Message"

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 5350
    .local v25, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "mailboxKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v15}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5351
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/orm/query/Select;->count()I

    move-result v12

    .line 5352
    .local v12, "count":I
    move/from16 v0, p1

    if-le v12, v0, :cond_2

    .line 5353
    const-string/jumbo v2, "accountKey"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 5354
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 5355
    const-string/jumbo v2, "mailboxKey"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 5356
    const-string/jumbo v2, "syncServerId"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 5357
    const-string/jumbo v2, "timeStamp"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 5358
    const-string/jumbo v2, "timeStamp"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 5359
    sub-int v2, v12, p2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 5360
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v21

    .line 5361
    .local v21, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v21, :cond_0

    .line 5364
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 5365
    .local v16, "folderLastMailServerIDs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 5366
    .local v9, "account":Lcom/alibaba/alimei/framework/db/Account;
    const-wide/16 v10, -0x1

    .line 5367
    .local v10, "accountKey":J
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_8

    .line 5369
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 5370
    .local v19, "m":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v19, :cond_5

    .line 5373
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5374
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5376
    :cond_3
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    cmp-long v2, v10, v2

    if-eqz v2, :cond_4

    .line 5377
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v2

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    invoke-interface {v2, v6, v7}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->getAccountById(J)Lcom/alibaba/alimei/framework/db/Account;

    move-result-object v9

    .line 5378
    if-eqz v9, :cond_4

    .line 5379
    move-object/from16 v0, v19

    iget-wide v10, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    .line 5382
    :cond_4
    if-eqz v9, :cond_5

    .line 5383
    iget-object v5, v9, Lcom/alibaba/alimei/framework/db/Account;->mEmailAddress:Ljava/lang/String;

    .line 5384
    .local v5, "accountName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5385
    new-instance v13, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Message"

    invoke-direct {v13, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 5386
    .local v13, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5387
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 5388
    new-instance v13, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v13    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v3, "EmailProviderBody.db"

    const-string/jumbo v4, "Body"

    invoke-direct {v13, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 5389
    .restart local v13    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v2, "messageKey"

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5390
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 5367
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v13    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    :cond_5
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 5392
    .restart local v5    # "accountName":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->deleteMailById(JLjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 5427
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v9    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .end local v10    # "accountKey":J
    .end local v12    # "count":I
    .end local v15    # "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v16    # "folderLastMailServerIDs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v17    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v18    # "i":I
    .end local v19    # "m":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v21    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .end local v25    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :catch_0
    move-exception v14

    .line 5428
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MessageDatasource"

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5430
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->cleanDeletedAccountMails()V

    goto/16 :goto_0

    .line 5397
    .restart local v9    # "account":Lcom/alibaba/alimei/framework/db/Account;
    .restart local v10    # "accountKey":J
    .restart local v12    # "count":I
    .restart local v15    # "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v16    # "folderLastMailServerIDs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v17    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .restart local v18    # "i":I
    .restart local v21    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .restart local v25    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_8
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/orm/query/Select;->resetSelect()V

    .line 5398
    const-string/jumbo v2, "syncServerId"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 5399
    const-string/jumbo v2, "timeStamp"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 5400
    const-string/jumbo v2, "mailboxKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v15}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5401
    const-string/jumbo v2, "timeStamp"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 5402
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 5403
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v21

    .line 5404
    if-eqz v21, :cond_0

    .line 5407
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 5408
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 5409
    .restart local v19    # "m":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v19, :cond_2

    .line 5412
    invoke-virtual {v15}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getMailBoxOldestServerID(J)Ljava/lang/String;

    move-result-object v24

    .line 5413
    .local v24, "oldestID":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5414
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getMailTimeStamp(Ljava/lang/String;)J

    move-result-wide v22

    .line 5415
    .local v22, "oldTimeStamp":J
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    cmp-long v2, v22, v2

    if-gtz v2, :cond_2

    .line 5419
    .end local v22    # "oldTimeStamp":J
    :cond_9
    new-instance v20, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Mailbox"

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 5420
    .local v20, "mailboxUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v15}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5421
    const-string/jumbo v2, "messageOldestServerId"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5422
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/orm/query/Update;->execute()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public clearQuickReplyContent(JLjava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Z
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "mail"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .prologue
    .line 4971
    const-wide/16 v6, -0x1

    iput-wide v6, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftLocalId:J

    .line 4972
    const-string/jumbo v5, ""

    iput-object v5, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    .line 4974
    iget-object v5, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v1

    .line 4976
    .local v1, "replyMail":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v1, :cond_1

    .line 4977
    iget-wide v6, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftLocalId:J

    iput-wide v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftLocalId:J

    .line 4978
    iget-object v5, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftContent:Ljava/lang/String;

    .line 4980
    new-instance v3, Lcom/alibaba/alimei/orm/query/Update;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v6, "EmailProvider.db"

    const-string/jumbo v7, "Message"

    invoke-direct {v3, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4981
    .local v3, "sourceMessageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v5, "draft_local_id"

    iget-wide v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftLocalId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4982
    const-string/jumbo v5, "draft_content"

    iget-object v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftContent:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4983
    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4984
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v2

    .line 4986
    .local v2, "result":I
    if-lez v2, :cond_1

    .line 4987
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v5, -0x9

    invoke-direct {v0, p1, p2, p3, v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 4988
    .local v0, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v4

    .line 4989
    .local v4, "sourceSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 4991
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4992
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 4995
    :cond_0
    const/4 v5, 0x1

    .line 4999
    .end local v0    # "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v2    # "result":I
    .end local v3    # "sourceMessageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v4    # "sourceSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public deleteLocalDraft(JLjava/lang/String;Lagz;)V
    .locals 17
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "draft"    # Lagz;

    .prologue
    .line 4822
    new-instance v5, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v10, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v5, v0, v1, v2, v10}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 4824
    .local v5, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    move-object/from16 v0, p4

    iget-wide v10, v0, Lagz;->k:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 4825
    move-object/from16 v0, p4

    iget-wide v10, v0, Lagz;->k:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v7

    .line 4826
    .local v7, "replyMail":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftContent:Ljava/lang/String;

    .line 4827
    const-wide/16 v10, -0x1

    iput-wide v10, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftLocalId:J

    .line 4829
    if-eqz v7, :cond_0

    .line 4830
    new-instance v8, Lcom/alibaba/alimei/orm/query/Update;

    const-class v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v11, "EmailProvider.db"

    const-string/jumbo v12, "Message"

    invoke-direct {v8, v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4831
    .local v8, "sourceMessageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v10, "draft_local_id"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4832
    const-string/jumbo v10, "draft_content"

    const-string/jumbo v11, ""

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4833
    const-string/jumbo v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v14, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4834
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 4836
    invoke-static {v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v9

    .line 4837
    .local v9, "sourceSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v5, v9}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 4842
    .end local v7    # "replyMail":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v8    # "sourceMessageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v9    # "sourceSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_0
    move-object/from16 v0, p4

    iget-wide v10, v0, Lagz;->b:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMailSnippetById(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v6

    .line 4843
    .local v6, "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v6, :cond_1

    .line 4844
    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 4847
    :cond_1
    new-instance v4, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v11, "EmailProvider.db"

    const-string/jumbo v12, "Message"

    invoke-direct {v4, v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4848
    .local v4, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v10, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4849
    const-string/jumbo v10, "_id"

    move-object/from16 v0, p4

    iget-wide v12, v0, Lagz;->b:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4850
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 4852
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 4853
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 4855
    :cond_2
    return-void
.end method

.method public deleteMailById(JLjava/lang/String;J)V
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "messageId"    # J

    .prologue
    .line 3148
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "Message"

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    .local v5, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3150
    const-string/jumbo v6, "_id"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3152
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3153
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 3154
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 3155
    new-instance v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v6, -0x9

    invoke-direct {v1, p1, p2, p3, v6}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 3156
    .local v1, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 3157
    .local v2, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v2, :cond_0

    .line 3160
    invoke-static {v2}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v4

    .line 3162
    .local v4, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v8, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-direct {p0, p1, p2, v8, v9}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->deleteMailBody(JJ)V

    .line 3163
    const/4 v7, 0x0

    iput v7, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 3164
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0

    .line 3166
    .end local v2    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v4    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3167
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 3173
    .end local v1    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v3    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_2
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "Message"

    invoke-direct {v0, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v6, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3175
    const-string/jumbo v6, "_id"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Delete;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3176
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 3177
    return-void
.end method

.method public varargs deleteMailByServerIdByUser(JLjava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "mailServerIds"    # [Ljava/lang/String;

    .prologue
    .line 3142
    const/4 v5, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->deleteMailByServerIds(JLjava/lang/String;Z[Ljava/lang/String;)V

    .line 3143
    return-void
.end method

.method public varargs deleteMailByServerIds(JLjava/lang/String;Z[Ljava/lang/String;)V
    .locals 21
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "needSync"    # Z
    .param p5, "mailServerIds"    # [Ljava/lang/String;

    .prologue
    .line 3181
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v14, v0

    if-gtz v14, :cond_1

    .line 3182
    :cond_0
    const-string/jumbo v14, "MessageDatasource"

    const-string/jumbo v15, "deleteMailByServerId fail for mailServerIds is empty!!!"

    invoke-static {v14, v15}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    :goto_0
    return-void

    .line 3186
    :cond_1
    move-object/from16 v0, p5

    array-length v14, v0

    new-array v10, v14, [Ljava/lang/Object;

    .line 3187
    .local v10, "objects":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 3189
    .local v7, "i":I
    new-instance v11, Lcom/alibaba/alimei/orm/query/Select;

    const-class v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v15, "EmailProvider.db"

    const-string/jumbo v16, "Message"

    move-object/from16 v0, v16

    invoke-direct {v11, v14, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3190
    .local v11, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v14, "mailboxKey"

    invoke-virtual {v11, v14}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 3191
    const-string/jumbo v14, "_id"

    invoke-virtual {v11, v14}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 3192
    const-string/jumbo v14, "draft_local_id"

    invoke-virtual {v11, v14}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 3195
    if-eqz p4, :cond_2

    .line 3196
    new-instance v5, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v14, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v15, "EmailProvider.db"

    const-string/jumbo v16, "SyncMsg"

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v0}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    .local v5, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    move-object/from16 v0, p5

    array-length v15, v0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_2

    aget-object v12, p5, v14

    .line 3198
    .local v12, "serverId":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 3199
    const-string/jumbo v16, "accountId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3200
    const-string/jumbo v16, "itemId"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v12}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3201
    const-string/jumbo v16, "type"

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const/16 v19, 0x7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3197
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 3205
    .end local v5    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    .end local v12    # "serverId":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v17, v0

    const/4 v14, 0x0

    move/from16 v16, v14

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    aget-object v12, p5, v16

    .line 3206
    .restart local v12    # "serverId":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 3209
    aput-object v12, v10, v7

    .line 3210
    add-int/lit8 v7, v7, 0x1

    .line 3212
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 3213
    const-string/jumbo v14, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3214
    const-string/jumbo v14, "syncServerId"

    invoke-virtual {v11, v14, v12}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 3217
    .local v8, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v8, :cond_3

    .line 3219
    iget-wide v14, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->deleteMailBody(JJ)V

    .line 3222
    :cond_3
    if-eqz p4, :cond_4

    .line 3224
    new-instance v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v13}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    .line 3225
    .local v13, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    move-wide/from16 v0, p1

    iput-wide v0, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 3226
    iput-object v12, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    .line 3227
    const/4 v14, 0x4

    iput v14, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 3228
    if-nez v8, :cond_5

    const-wide/16 v14, -0x1

    :goto_3
    iput-wide v14, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data2:J

    .line 3229
    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v14

    iput-wide v14, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    .line 3205
    .end local v8    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v13    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_4
    add-int/lit8 v14, v16, 0x1

    move/from16 v16, v14

    goto :goto_2

    .line 3228
    .restart local v8    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .restart local v13    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_5
    iget-wide v14, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    goto :goto_3

    .line 3233
    .end local v8    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v12    # "serverId":Ljava/lang/String;
    .end local v13    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_6
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->resetSelect()V

    .line 3234
    const-string/jumbo v14, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3235
    const-string/jumbo v14, "syncServerId"

    invoke-virtual {v11, v14, v10}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3237
    new-instance v6, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v14, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v2, v14}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 3240
    .local v6, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3241
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v9

    .line 3242
    .local v9, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 3244
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 3245
    .restart local v8    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_4

    .line 3250
    .end local v8    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v9    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_7
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 3251
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 3255
    :cond_8
    new-instance v5, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v15, "EmailProvider.db"

    const-string/jumbo v16, "Message"

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v0}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    .restart local v5    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v14, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3257
    const-string/jumbo v14, "syncServerId"

    invoke-virtual {v5, v14, v10}, Lcom/alibaba/alimei/orm/query/Delete;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3258
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v4

    .line 3260
    .local v4, "count":I
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Delete "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " local mails"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lzb;->i(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getAllFolderStateCount()Ljava/util/HashMap;
    .locals 8
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3808
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3809
    .local v5, "status":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, " SELECT count(a._id) as count,mailboxKey,b.displayName,b.serverId FROM message a left join mailbox b on a.mailboxKey = b._id where a.flagread=0 group by mailboxKey union SELECT count(a._id) as count,mailboxKey,b.displayName,b.serverId FROM message a left join mailbox b on a.mailboxKey = b._id  where b.type = 3 group by mailboxKey  union SELECT count(a._id) as count,mailboxKey,b.displayName,b.serverId FROM message a left join mailbox b on a.mailboxKey = b._id  where b.type = 4 group by mailboxKey "

    .line 3818
    .local v4, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3820
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 3822
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3823
    const-string/jumbo v6, "mailboxKey"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v2, v6

    .line 3824
    .local v2, "mailboxKey":J
    const-string/jumbo v6, "count"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3825
    .local v0, "count":I
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3829
    .end local v0    # "count":I
    .end local v2    # "mailboxKey":J
    :catch_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3832
    :cond_0
    :goto_1
    return-object v5

    .line 3829
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1414
    const-string/jumbo v0, "EmailProvider.db"

    return-object v0
.end method

.method public getFolderStateCount(JJLagw;)I
    .locals 15
    .param p1, "accountId"    # J
    .param p3, "folderId"    # J
    .param p5, "filterModel"    # Lagw;

    .prologue
    .line 3837
    if-nez p5, :cond_0

    .line 3838
    const/4 v2, 0x0

    .line 3885
    :goto_0
    return v2

    .line 3841
    :cond_0
    new-instance v9, Lcom/alibaba/alimei/orm/query/Select;

    const-class v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "Mailbox"

    invoke-direct {v9, v11, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3842
    .local v9, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v11, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3843
    const-string/jumbo v11, "_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3844
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 3845
    .local v7, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v7, :cond_1

    .line 3846
    const/4 v2, 0x0

    goto :goto_0

    .line 3849
    :cond_1
    const/4 v10, 0x0

    .line 3850
    .local v10, "sql":Ljava/lang/String;
    iget v6, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    .line 3851
    .local v6, "folderType":I
    const/4 v11, 0x4

    if-eq v6, v11, :cond_2

    const/4 v11, 0x3

    if-ne v6, v11, :cond_3

    .line 3852
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "SELECT count(_id) as count FROM message where mailboxKey = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3872
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v10, v12}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 3873
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_5

    .line 3875
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3876
    const-string/jumbo v11, "count"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3882
    .local v2, "count":I
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3854
    .end local v2    # "count":I
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p5

    iget v5, v0, Lagw;->a:I

    .line 3855
    .local v5, "filterType":I
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 3858
    :pswitch_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "SELECT count(_id) as count FROM message where mailboxKey = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " and flagread=0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3859
    goto :goto_1

    .line 3861
    :pswitch_1
    move-object/from16 v0, p5

    iget-object v11, v0, Lagw;->b:Ljava/lang/String;

    invoke-static {v11}, Lair;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3862
    .local v8, "packTagStr":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "SELECT count(_id) as count FROM message where mailboxKey = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " and flagread=0 and messageTag"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " like %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3864
    goto :goto_1

    .line 3866
    .end local v8    # "packTagStr":Ljava/lang/String;
    :pswitch_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "SELECT count(_id) as count FROM message where mailboxKey = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " and flagread=0 and flagAttachment"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "=1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 3882
    .end local v5    # "filterType":I
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3885
    :cond_5
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3879
    :catch_0
    move-exception v4

    .line 3880
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v11, "MessageDatasource"

    const-string/jumbo v12, "getFolderStateCount fail for exception"

    invoke-static {v11, v12, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3882
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v11

    .line 3855
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleLoadMailDetail(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/data/Mail;)V
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;

    .prologue
    .line 1813
    new-instance v10, Lcom/alibaba/alimei/orm/query/Select;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Message"

    invoke-direct {v10, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    .local v10, "mailSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "syncServerId"

    aput-object v2, v0, v1

    invoke-virtual {v10, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1816
    new-instance v3, Lcom/alibaba/alimei/orm/query/Update;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Message"

    invoke-direct {v3, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    .local v3, "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v0, "syncServerId = ? AND accountKey = ? "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    :try_start_0
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v11

    check-cast v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    .local v11, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v11, :cond_0

    iget-wide v0, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 1835
    :cond_0
    const-wide/16 v4, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->insertSingleMail(JJLcom/alibaba/alimei/restfulapi/data/Mail;)V

    .line 1839
    :goto_0
    return-void

    .line 1823
    .end local v11    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :catch_0
    move-exception v9

    .line 1825
    .local v9, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "handle_sync_mail_fail_for_large_mail"

    const/4 v1, 0x6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "handleLoadMailDetail fail, db has large calendar mail, accountName: "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p3, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "svrId:"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 1826
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1827
    invoke-static {v9}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 1825
    invoke-static {v0, v1, v2, v4}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string/jumbo v0, "handle_sync_mail_fail_for_large_mail"

    const-string/jumbo v1, "6"

    .line 1830
    invoke-static {v9}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 1829
    invoke-static {v0, v1, v2, v4}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    throw v9

    .line 1837
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    .restart local v11    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_1
    iget-wide v1, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-wide v4, p1

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->updateSingleMailByMessageKey(JLcom/alibaba/alimei/orm/query/Update;JJLcom/alibaba/alimei/restfulapi/data/Mail;)V

    goto :goto_0
.end method

.method public handleLoadSearchMailDetail(Ljava/lang/String;JLcom/alibaba/alimei/restfulapi/data/Mail;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;

    .prologue
    .line 1843
    new-instance v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v0, -0x9

    invoke-direct {v1, p2, p3, p1, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 1845
    .local v1, "group":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Message"

    invoke-direct {v2, v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    .local v2, "mailSelect":Lcom/alibaba/alimei/orm/query/Select;
    new-instance v3, Lcom/alibaba/alimei/orm/query/Update;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Message"

    invoke-direct {v3, v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    .local v3, "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    iget-object v4, p4, Lcom/alibaba/alimei/restfulapi/data/Mail;->folderId:Ljava/lang/String;

    invoke-interface {v0, p2, p3, v4}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v6

    .line 1850
    .local v6, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    new-instance v7, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1851
    .local v7, "addMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    invoke-interface {v7, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-wide v4, p2

    .line 1852
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->handleAddOrUpdateMails(Lcom/alibaba/alimei/sdk/model/MailGroupModel;Lcom/alibaba/alimei/orm/query/Select;Lcom/alibaba/alimei/orm/query/Update;JLcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Ljava/util/List;)V

    .line 1854
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->handleLoadMailDetail(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/data/Mail;)V

    .line 1855
    return-void
.end method

.method public handleMailDetailDownloadFail(JLjava/lang/String;)V
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    .line 2121
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Message"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "flagLoaded"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2123
    const-string/jumbo v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    const-string/jumbo v1, "syncServerId"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 2126
    return-void
.end method

.method public declared-synchronized handleMailSyncResults(JLjava/lang/String;JZZLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;ZZZILcom/alibaba/alimei/sdk/api/MailApi;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .locals 50
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "folderId"    # J
    .param p6, "forceFullSync"    # Z
    .param p7, "isUpdateSyncKey"    # Z
    .param p8, "syncResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    .param p9, "isSaveOldestItemId"    # Z
    .param p10, "isNotifyFolderChanged"    # Z
    .param p11, "isPushSync"    # Z
    .param p12, "imapSyncType"    # I
    .param p13, "mailApi"    # Lcom/alibaba/alimei/sdk/api/MailApi;

    .prologue
    .line 732
    monitor-enter p0

    if-eqz p11, :cond_0

    .line 733
    const/4 v10, 0x3

    .line 740
    .local v10, "reason":I
    :goto_0
    if-eqz p9, :cond_2

    .line 741
    :try_start_0
    new-instance v4, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;JI)V

    .line 746
    .local v4, "group":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    :goto_1
    const-string/jumbo v5, "MessageDatasource"

    const-string/jumbo v6, "-------begin handleMailSyncResults-------"

    invoke-static {v5, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string/jumbo v5, "MessageDatasource"

    const/16 v6, 0xe

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "folderId: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", forceFullSync: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, ", isUpdateSyncKey: "

    aput-object v8, v6, v7

    const/4 v7, 0x5

    .line 748
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, ", isSaveOldestItemId: "

    aput-object v8, v6, v7

    const/4 v7, 0x7

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string/jumbo v8, ", isNotifyFolderChanged: "

    aput-object v8, v6, v7

    const/16 v7, 0x9

    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v8, ", isPushSync: "

    aput-object v8, v6, v7

    const/16 v7, 0xb

    .line 749
    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string/jumbo v8, ", imapSyncType: "

    aput-object v8, v6, v7

    const/16 v7, 0xd

    invoke-static/range {p12 .. p12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 747
    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getMails()Ljava/util/List;

    move-result-object v47

    .line 752
    .local v47, "totalMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    if-nez v47, :cond_3

    const/16 v48, 0x0

    .line 754
    .local v48, "totalSize":I
    :goto_2
    if-nez v48, :cond_4

    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_4

    .line 873
    :goto_3
    monitor-exit p0

    return-object v4

    .line 734
    .end local v4    # "group":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v10    # "reason":I
    .end local v47    # "totalMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    .end local v48    # "totalSize":I
    :cond_0
    if-lez p12, :cond_1

    .line 735
    move/from16 v10, p12

    .restart local v10    # "reason":I
    goto/16 :goto_0

    .line 737
    .end local v10    # "reason":I
    :cond_1
    const/4 v10, 0x1

    .restart local v10    # "reason":I
    goto/16 :goto_0

    .line 743
    :cond_2
    :try_start_1
    new-instance v4, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2, v10}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .restart local v4    # "group":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    goto/16 :goto_1

    .line 752
    .restart local v47    # "totalMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    :cond_3
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v48

    goto :goto_2

    .line 758
    .restart local v48    # "totalSize":I
    :cond_4
    const-string/jumbo v5, "MessageDatasource"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "totalMails: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->beginTransaction()V

    .line 762
    if-eqz p6, :cond_5

    .line 763
    new-instance v28, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Message"

    move-object/from16 v0, v28

    invoke-direct {v0, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    .local v28, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v5, "mailboxKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const-string/jumbo v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Delete;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 770
    .end local v28    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    :cond_5
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getDeleteMails()Ljava/util/List;

    move-result-object v18

    move-object/from16 v12, p0

    move-object v13, v4

    move-wide/from16 v14, p1

    move-wide/from16 v16, p4

    invoke-direct/range {v12 .. v18}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->deleteMails(Lcom/alibaba/alimei/sdk/model/MailGroupModel;JJLjava/util/List;)V

    .line 773
    new-instance v14, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Message"

    invoke-direct {v14, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .local v14, "mailSelect":Lcom/alibaba/alimei/orm/query/Select;
    new-instance v15, Lcom/alibaba/alimei/orm/query/Update;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Message"

    invoke-direct {v15, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .local v15, "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-interface {v5, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxById(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v18

    .line 779
    .local v18, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v18, :cond_6

    .line 780
    new-instance v18, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .end local v18    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-direct/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;-><init>()V

    .line 781
    .restart local v18    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    move-wide/from16 v0, p4

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    .line 784
    :cond_6
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getAddedMails()Ljava/util/List;

    move-result-object v19

    .local v19, "addMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    move-object/from16 v12, p0

    move-object v13, v4

    move-wide/from16 v16, p1

    .line 785
    invoke-direct/range {v12 .. v19}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->handleAddOrUpdateMails(Lcom/alibaba/alimei/sdk/model/MailGroupModel;Lcom/alibaba/alimei/orm/query/Select;Lcom/alibaba/alimei/orm/query/Update;JLcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Ljava/util/List;)V

    .line 787
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->handleAddOrUpdateFrequentContacts(Ljava/lang/String;Ljava/util/List;)V

    .line 790
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getChangedMails()Ljava/util/List;

    move-result-object v27

    .local v27, "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    move-object/from16 v20, p0

    move-object/from16 v21, v4

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-wide/from16 v24, p1

    move-object/from16 v26, v18

    .line 791
    invoke-direct/range {v20 .. v27}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->handleAddOrUpdateMails(Lcom/alibaba/alimei/sdk/model/MailGroupModel;Lcom/alibaba/alimei/orm/query/Select;Lcom/alibaba/alimei/orm/query/Update;JLcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Ljava/util/List;)V

    .line 794
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getChangeReadMails()Ljava/util/List;

    move-result-object v36

    move-object/from16 v29, p0

    move-object/from16 v30, v4

    move-object/from16 v31, v15

    move-wide/from16 v32, p1

    move-wide/from16 v34, p4

    invoke-direct/range {v29 .. v36}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->changeReadMails(Lcom/alibaba/alimei/sdk/model/MailGroupModel;Lcom/alibaba/alimei/orm/query/Update;JJLjava/util/List;)V

    .line 797
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getChangeFavoriteMails()Ljava/util/List;

    move-result-object v36

    move-object/from16 v29, p0

    move-object/from16 v30, v4

    move-object/from16 v31, v15

    move-wide/from16 v32, p1

    move-wide/from16 v34, p4

    invoke-direct/range {v29 .. v36}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->changeFavoriteMails(Lcom/alibaba/alimei/sdk/model/MailGroupModel;Lcom/alibaba/alimei/orm/query/Update;JJLjava/util/List;)V

    .line 800
    new-instance v42, Lcom/alibaba/alimei/orm/query/Update;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Mailbox"

    move-object/from16 v0, v42

    invoke-direct {v0, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .local v42, "mailboxUpdate":Lcom/alibaba/alimei/orm/query/Update;
    if-eqz p7, :cond_7

    .line 803
    const-string/jumbo v5, "syncKey"

    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    const-string/jumbo v5, "unreadCount"

    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getUnreadCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 805
    const-string/jumbo v5, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 809
    :cond_7
    if-eqz p9, :cond_9

    .line 810
    sget-object v5, Lagy;->a:Lagy;

    .line 8030
    iget v0, v5, Lagy;->b:I

    move/from16 v49, v0

    .line 811
    .local v49, "windowSize":I
    move/from16 v0, v48

    move/from16 v1, v49

    if-lt v0, v1, :cond_d

    const/16 v39, 0x1

    .line 812
    .local v39, "hasMoreHistoryMail":Z
    :goto_4
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getOldestItemId()Ljava/lang/String;

    move-result-object v43

    .line 814
    .local v43, "oldestItemId":Ljava/lang/String;
    if-eqz v39, :cond_e

    .line 815
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 816
    const/4 v5, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/alibaba/alimei/restfulapi/data/Mail;

    .line 817
    .local v41, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    if-eqz v41, :cond_8

    .line 818
    invoke-virtual/range {v41 .. v41}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v43

    .line 824
    .end local v41    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    :cond_8
    :goto_5
    const-string/jumbo v5, "messageOldestServerId"

    invoke-static/range {v43 .. v43}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 827
    const-string/jumbo v5, "hasMoreMessage"

    invoke-static/range {v39 .. v39}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getBooleanIntValue(Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 830
    .end local v39    # "hasMoreHistoryMail":Z
    .end local v43    # "oldestItemId":Ljava/lang/String;
    .end local v49    # "windowSize":I
    :cond_9
    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    if-nez p7, :cond_a

    if-eqz p9, :cond_b

    .line 833
    :cond_a
    invoke-virtual/range {v42 .. v42}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 836
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->setTransactionSuccessful()V

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->endTransaction()V

    .line 840
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getSendStatusMails()Ljava/util/List;

    move-result-object v46

    .line 841
    .local v46, "sentStatusMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    if-eqz v46, :cond_11

    invoke-interface/range {v46 .. v46}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_11

    .line 842
    const/16 v38, 0x0

    .line 843
    .local v38, "hasHandleSentStatusMail":Z
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    move-result-object v11

    .line 844
    .local v11, "additionalDatasource":Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
    if-eqz v11, :cond_10

    .line 845
    invoke-interface/range {v46 .. v46}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/alibaba/alimei/restfulapi/data/Mail;

    .line 846
    .restart local v41    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    invoke-virtual/range {v41 .. v41}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v40

    .line 847
    .local v40, "itemId":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getSentStatus()Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;

    move-result-object v45

    .line 848
    .local v45, "sendStatus":Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;
    if-eqz v40, :cond_c

    if-eqz v45, :cond_c

    .line 849
    move-wide/from16 v0, p1

    move-object/from16 v2, v40

    move-object/from16 v3, v45

    invoke-interface {v11, v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->handleMailSendStatus(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;)I

    move-result v44

    .line 851
    .local v44, "result":I
    if-lez v44, :cond_c

    .line 852
    const/16 v38, 0x1

    goto :goto_6

    .line 811
    .end local v11    # "additionalDatasource":Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
    .end local v38    # "hasHandleSentStatusMail":Z
    .end local v40    # "itemId":Ljava/lang/String;
    .end local v41    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    .end local v44    # "result":I
    .end local v45    # "sendStatus":Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;
    .end local v46    # "sentStatusMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    .restart local v49    # "windowSize":I
    :cond_d
    const/16 v39, 0x0

    goto/16 :goto_4

    .line 822
    .restart local v39    # "hasMoreHistoryMail":Z
    .restart local v43    # "oldestItemId":Ljava/lang/String;
    :cond_e
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    const/16 v39, 0x1

    :goto_7
    goto/16 :goto_5

    :cond_f
    const/16 v39, 0x0

    goto :goto_7

    .line 857
    .end local v39    # "hasMoreHistoryMail":Z
    .end local v43    # "oldestItemId":Ljava/lang/String;
    .end local v49    # "windowSize":I
    .restart local v11    # "additionalDatasource":Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
    .restart local v38    # "hasHandleSentStatusMail":Z
    .restart local v46    # "sentStatusMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    :cond_10
    if-eqz v38, :cond_11

    .line 858
    new-instance v37, Lyc;

    const-string/jumbo v5, "ptcpUnreadCountChanged"

    const/4 v6, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1, v6}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 860
    .local v37, "eventMessage":Lyc;
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-interface {v5, v0}, Lya;->a(Lyc;)V

    .line 864
    .end local v11    # "additionalDatasource":Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
    .end local v37    # "eventMessage":Lyc;
    .end local v38    # "hasHandleSentStatusMail":Z
    :cond_11
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 871
    const-string/jumbo v5, "MessageDatasource"

    const-string/jumbo v6, "-------end handleMailSyncResults-------"

    invoke-static {v5, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 732
    .end local v4    # "group":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v14    # "mailSelect":Lcom/alibaba/alimei/orm/query/Select;
    .end local v15    # "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v18    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v19    # "addMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    .end local v27    # "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    .end local v42    # "mailboxUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v46    # "sentStatusMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    .end local v47    # "totalMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    .end local v48    # "totalSize":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized handleMailSyncResults(JLjava/lang/String;[J[Z[Z[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;[Z[ZZILcom/alibaba/alimei/sdk/api/MailApi;)V
    .locals 17
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "folderId"    # [J
    .param p5, "forceFullSync"    # [Z
    .param p6, "isUpdateSyncKey"    # [Z
    .param p7, "syncResult"    # [Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    .param p8, "isSaveOldestItemId"    # [Z
    .param p9, "isNotifyFolderChanged"    # [Z
    .param p10, "isPushSync"    # Z
    .param p11, "imapSyncType"    # I
    .param p12, "mailApi"    # Lcom/alibaba/alimei/sdk/api/MailApi;

    .prologue
    .line 894
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p4

    array-length v15, v0

    .line 895
    .local v15, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v15, :cond_0

    .line 896
    aget-wide v5, p4, v16

    aget-boolean v7, p5, v16

    aget-boolean v8, p6, v16

    aget-object v9, p7, v16

    aget-boolean v10, p8, v16

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v1 .. v14}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->handleMailSyncResults(JLjava/lang/String;JZZLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;ZZZILcom/alibaba/alimei/sdk/api/MailApi;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 899
    :cond_0
    monitor-exit p0

    return-void

    .line 894
    .end local v15    # "count":I
    .end local v16    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public handleMessageSyncResult(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V
    .locals 11
    .param p3, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "successList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;>;"
    .local p2, "failureList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;>;"
    const/4 v5, 0x0

    .line 3667
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3668
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "SyncMsg"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3669
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 3670
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 3671
    .local v8, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 3672
    const-string/jumbo v1, "accountId"

    iget-wide v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3673
    const-string/jumbo v1, "itemId"

    iget-object v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3674
    const-string/jumbo v1, "type"

    iget v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3675
    iget v1, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    packed-switch v1, :pswitch_data_0

    .line 3669
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3678
    :pswitch_0
    const-string/jumbo v1, "data1"

    iget-boolean v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data1:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3679
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    goto :goto_1

    .line 3682
    :pswitch_1
    const-string/jumbo v1, "data"

    iget-object v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3683
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 3686
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->getMailResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->getMailResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v7, :cond_0

    .line 3687
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->getMailResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getResultCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 3689
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    iget-wide v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->queryAccount(J)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v10

    .line 3691
    .local v10, "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v10, :cond_0

    .line 3692
    iget-wide v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    iget-object v4, v10, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    iget-object v1, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    aput-object v1, v6, v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->deleteMailByServerIds(JLjava/lang/String;Z[Ljava/lang/String;)V

    goto :goto_1

    .line 3697
    .end local v10    # "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :pswitch_2
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    goto :goto_1

    .line 3701
    :pswitch_3
    const-string/jumbo v1, "data"

    iget-object v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3702
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    goto :goto_1

    .line 3710
    .end local v0    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    .end local v7    # "i":I
    .end local v8    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 3711
    new-instance v9, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "SyncMsg"

    invoke-direct {v9, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3712
    .local v9, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 3713
    .restart local v8    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 3714
    const-string/jumbo v2, "synccount"

    iget v3, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->synccount:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3715
    const-string/jumbo v2, "lastsynctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3716
    const-string/jumbo v2, "accountId"

    iget-wide v4, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3717
    const-string/jumbo v2, "itemId"

    iget-object v3, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3718
    const-string/jumbo v2, "type"

    iget v3, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3719
    iget v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    packed-switch v2, :pswitch_data_1

    .line 3730
    :goto_3
    :pswitch_4
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto :goto_2

    .line 3722
    :pswitch_5
    const-string/jumbo v2, "data1"

    iget-boolean v3, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data1:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3725
    :pswitch_6
    const-string/jumbo v2, "data"

    iget-object v3, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3733
    .end local v8    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    .end local v9    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_2
    return-void

    .line 3675
    .line 3719
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public handleSearchMailResult(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V
    .locals 31
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "tagId"    # Ljava/lang/String;
    .param p5, "searchMailResult"    # Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    .prologue
    .line 905
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getTagDatasource()Lcom/alibaba/alimei/sdk/datasource/TagDatasource;

    move-result-object v4

    .line 906
    .local v4, "tagDatasource":Lcom/alibaba/alimei/sdk/datasource/TagDatasource;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide/from16 v5, p1

    move-object/from16 v7, p4

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/alimei/sdk/datasource/TagDatasource;->updateSyncTime(JLjava/lang/String;J)V

    .line 908
    if-nez p5, :cond_1

    const/16 v24, 0x0

    .line 909
    .local v24, "mailList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    :goto_0
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 969
    :cond_0
    :goto_1
    return-void

    .line 908
    .end local v24    # "mailList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->getMailList()Ljava/util/List;

    move-result-object v24

    goto :goto_0

    .line 912
    .restart local v24    # "mailList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    :cond_2
    new-instance v25, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Message"

    move-object/from16 v0, v25

    invoke-direct {v0, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    .local v25, "mailSelect":Lcom/alibaba/alimei/orm/query/Select;
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 914
    .local v27, "mailboxes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v11

    .line 915
    .local v11, "datsource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    new-instance v22, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v5, -0x9

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 916
    .local v22, "group":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_3
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/restfulapi/data/Mail;

    .line 918
    .local v10, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getFolderId()Ljava/lang/String;

    move-result-object v21

    .line 919
    .local v21, "folderServerId":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 920
    .local v26, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v26, :cond_4

    .line 922
    move-wide/from16 v0, p1

    move-object/from16 v2, v21

    invoke-interface {v11, v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v26

    .line 923
    if-eqz v26, :cond_3

    .line 924
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    :cond_4
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 934
    const/4 v5, 0x3

    move-object/from16 v0, v26

    iget v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    if-eq v5, v6, :cond_6

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 935
    const-string/jumbo v5, "accountKey = ? AND mailboxKey = ? AND messageId = ?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getMessageId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    :goto_3
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v28

    check-cast v28, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 940
    .local v28, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    const/16 v23, 0x1

    .line 942
    .local v23, "isInsert":Z
    if-eqz v28, :cond_5

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    .line 943
    :cond_5
    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->insertSingleMail(JJLcom/alibaba/alimei/restfulapi/data/Mail;)V

    .line 951
    :goto_4
    if-eqz v23, :cond_9

    .line 952
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v28

    .end local v28    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    check-cast v28, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 953
    .restart local v28    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v28, :cond_8

    const/16 v29, 0x0

    .line 954
    .local v29, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :goto_5
    if-eqz v29, :cond_3

    .line 955
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addAddedMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto/16 :goto_2

    .line 937
    .end local v23    # "isInsert":Z
    .end local v28    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v29    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_6
    const-string/jumbo v5, "syncServerId = ? AND accountKey = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 945
    .restart local v23    # "isInsert":Z
    .restart local v28    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_7
    const/16 v23, 0x0

    .line 946
    new-instance v15, Lcom/alibaba/alimei/orm/query/Update;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Message"

    invoke-direct {v15, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    .local v15, "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    move-object/from16 v0, v28

    iget-wide v13, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-wide/from16 v18, v0

    move-object/from16 v12, p0

    move-wide/from16 v16, p1

    move-object/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->updateSingleMailFlagByMessageKey(JLcom/alibaba/alimei/orm/query/Update;JJLcom/alibaba/alimei/restfulapi/data/Mail;)V

    goto :goto_4

    .line 953
    .end local v15    # "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :cond_8
    invoke-static/range {v28 .. v28}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v29

    goto :goto_5

    .line 958
    :cond_9
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v28

    .end local v28    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    check-cast v28, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 959
    .restart local v28    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v28, :cond_a

    const/16 v29, 0x0

    .line 960
    .restart local v29    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :goto_6
    if-eqz v29, :cond_3

    .line 961
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto/16 :goto_2

    .line 959
    .end local v29    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_a
    invoke-static/range {v28 .. v28}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v29

    goto :goto_6

    .line 966
    .end local v10    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    .end local v21    # "folderServerId":Ljava/lang/String;
    .end local v23    # "isInsert":Z
    .end local v26    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v28    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_b
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 967
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    goto/16 :goto_1
.end method

.method public handleSendMailFailureResult(JJJI)V
    .locals 3
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J
    .param p5, "folderId"    # J
    .param p7, "errorCode"    # I

    .prologue
    .line 3798
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 3799
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "lstatus_code"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3800
    const-string/jumbo v1, "_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3801
    const-string/jumbo v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3802
    const-string/jumbo v1, "mailboxKey"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3803
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 3804
    return-void
.end method

.method public final handleSendMailOrDraftLocalDataStatus(ZJLjava/lang/String;JJLjava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;)V
    .locals 27
    .param p1, "isSyncMailDraft"    # Z
    .param p2, "accountId"    # J
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "sendMailboxId"    # J
    .param p7, "messageLocalId"    # J
    .param p11, "mailResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
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

    .prologue
    .line 3508
    .local p9, "uploadAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    .local p10, "uploadResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    new-instance v17, Lcom/alibaba/alimei/orm/query/Update;

    const-class v22, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v23, "EmailProvider.db"

    const-string/jumbo v24, "Message"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3512
    .local v17, "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    invoke-virtual/range {p11 .. p11}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getItemId()Ljava/lang/String;

    move-result-object v20

    .line 3514
    .local v20, "serverId":Ljava/lang/String;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_0

    .line 3515
    const-string/jumbo v22, "syncServerId"

    invoke-virtual/range {p11 .. p11}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getItemId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3520
    :cond_0
    invoke-virtual/range {p11 .. p11}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getMessageId()Ljava/lang/String;

    move-result-object v16

    .line 3521
    .local v16, "messageId":Ljava/lang/String;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_1

    .line 3522
    const-string/jumbo v22, "messageId"

    invoke-virtual/range {p11 .. p11}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getMessageId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3523
    const-string/jumbo v22, "flagLoaded"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3527
    :cond_1
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v7

    .line 3528
    .local v7, "config":Lafy;
    const/4 v11, 0x0

    .line 3529
    .local v11, "isAutoSaveIntoSend":Z
    if-eqz v7, :cond_2

    .line 12257
    iget-boolean v11, v7, Lafy;->h:Z

    .line 3534
    :cond_2
    if-eqz p1, :cond_4

    .line 3536
    new-instance v6, Lcom/alibaba/alimei/orm/query/Update;

    const-class v22, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v23, "EmailProviderBody.db"

    const-string/jumbo v24, "Body"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v6, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3537
    .local v6, "bodyUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v22, "sourceMessageKey"

    const/16 v23, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3538
    const-string/jumbo v22, "messageKey"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3539
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 3540
    const-string/jumbo v22, "source_key"

    const/16 v23, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3592
    .end local v6    # "bodyUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :cond_3
    :goto_0
    if-eqz p1, :cond_a

    .line 3593
    const-string/jumbo v22, "_id=?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3595
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 3596
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->updateLocalAttachmetStatue(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;)V

    .line 3613
    :goto_1
    return-void

    .line 3544
    :cond_4
    const-string/jumbo v22, "mailboxKey"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3548
    new-instance v12, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v22, -0x9

    move-wide/from16 v0, p2

    move-object/from16 v2, p4

    move/from16 v3, v22

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 3549
    .local v12, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v10

    .line 3550
    .local v10, "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v15

    .line 3551
    .local v15, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    const/4 v8, 0x0

    .line 3552
    .local v8, "conversationId":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 3553
    invoke-static {v15}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v13

    .line 3554
    .local v13, "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget v0, v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_9

    const/16 v18, 0x1

    .line 3555
    .local v18, "reply":Z
    :goto_2
    if-eqz v18, :cond_5

    .line 3556
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMailSourceMessage(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v21

    .line 3558
    .local v21, "sourceMessage":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v21, :cond_5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerConversationId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 3559
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerConversationId:Ljava/lang/String;

    .line 3560
    const-string/jumbo v22, "conversationId"

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerConversationId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3563
    .end local v21    # "sourceMessage":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_5
    const/16 v22, 0x4

    move-wide/from16 v0, p2

    move/from16 v2, v22

    invoke-interface {v10, v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v14

    .line 3565
    .local v14, "mailboxOutbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget-wide v0, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v13, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 3566
    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    .line 3567
    iput-object v8, v13, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    .line 3568
    invoke-virtual {v12, v13}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 3571
    if-eqz v11, :cond_8

    .line 3572
    invoke-static {v13}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->copy(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v19

    .line 3573
    .local v19, "sendedMail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual/range {p11 .. p11}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getMessageId()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 3574
    invoke-virtual/range {p11 .. p11}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getMessageId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    .line 3576
    :cond_6
    invoke-virtual/range {p11 .. p11}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getItemId()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 3577
    invoke-virtual/range {p11 .. p11}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getItemId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 3580
    :cond_7
    const-wide/16 v22, -0x1

    cmp-long v22, p5, v22

    if-eqz v22, :cond_8

    .line 3581
    move-wide/from16 v0, p5

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 3582
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addAddedMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 3586
    .end local v13    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v14    # "mailboxOutbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v18    # "reply":Z
    .end local v19    # "sendedMail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_8
    invoke-virtual {v12}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_3

    .line 3587
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    goto/16 :goto_0

    .line 3554
    .restart local v13    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 3600
    .end local v8    # "conversationId":Ljava/lang/String;
    .end local v10    # "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .end local v12    # "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v13    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v15    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_a
    if-eqz v11, :cond_b

    const-wide/16 v22, -0x1

    cmp-long v22, p5, v22

    if-eqz v22, :cond_b

    .line 3601
    const-string/jumbo v22, "_id=?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3603
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 3604
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->updateLocalAttachmetStatue(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;)V

    goto/16 :goto_1

    .line 3608
    :cond_b
    new-instance v9, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v22, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v23, "EmailProvider.db"

    const-string/jumbo v24, "Message"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v9, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3609
    .local v9, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v22, "_id=?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3610
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    goto/16 :goto_1
.end method

.method public handleSendMailOrDraftSyncResult(ZLcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;Z)V
    .locals 6
    .param p1, "isSuccess"    # Z
    .param p2, "sourceSync"    # Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    .param p3, "shouldPlusSyncCount"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3778
    if-nez p2, :cond_0

    .line 3794
    :goto_0
    return-void

    .line 3781
    :cond_0
    if-eqz p1, :cond_1

    .line 3782
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v0, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;)V

    .line 3783
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v2, "_id"

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3784
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    goto :goto_0

    .line 3786
    .end local v0    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 3787
    .local v1, "update":Lcom/alibaba/alimei/orm/query/Update;
    if-eqz p3, :cond_2

    .line 3788
    const-string/jumbo v2, "synccount"

    iget v3, p2, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->synccount:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3790
    :cond_2
    const-string/jumbo v2, "lastsynctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3791
    const-string/jumbo v2, "_id"

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3792
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto :goto_0
.end method

.method public hasLocalTagMail(JLjava/lang/String;)Z
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2450
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2458
    :goto_0
    return v1

    .line 2453
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Message"

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "accountKey=?"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2456
    const-string/jumbo v1, "messageType"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "messageTag LIKE \'%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lair;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;)Ljava/lang/Object;

    .line 2458
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v1

    goto :goto_0
.end method

.method public loadHistoryMailsFromDB(JJLjava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J
    .param p5, "oldestServerId"    # Ljava/lang/String;
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

    .prologue
    .line 4555
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 4556
    const/4 v5, 0x0

    .line 4604
    :cond_0
    :goto_0
    return-object v5

    .line 4559
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v11

    move-wide/from16 v0, p1

    invoke-interface {v11, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryFolderOldestItemTime(J)Ljava/util/Map;

    move-result-object v8

    .line 4560
    .local v8, "oldestItemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v10, Lcom/alibaba/alimei/orm/query/Select;

    const-class v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "Message"

    invoke-direct {v10, v11, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4561
    .local v10, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v11, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4562
    const-string/jumbo v11, "mailboxKey"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4563
    const-string/jumbo v11, "syncServerId"

    move-object/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4565
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v9

    check-cast v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4566
    .local v9, "oldestMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v9, :cond_2

    .line 4567
    const/4 v5, 0x0

    goto :goto_0

    .line 4570
    :cond_2
    const-wide/high16 v2, -0x8000000000000000L

    .line 4571
    .local v2, "folderOldestItemTime":J
    if-eqz v8, :cond_3

    .line 4572
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4573
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4577
    :cond_3
    iget-wide v12, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    cmp-long v11, v12, v2

    if-gez v11, :cond_4

    .line 4578
    const/4 v5, 0x0

    goto :goto_0

    .line 4581
    :cond_4
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 4582
    sget-object v11, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 4583
    const-string/jumbo v11, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4584
    const-string/jumbo v11, "mailboxKey"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4585
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->offset(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 4586
    const/16 v11, 0x14

    invoke-virtual {v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 4587
    const-string/jumbo v11, "syncServerId!=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p5, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4588
    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v11, v2, v12

    if-eqz v11, :cond_6

    .line 4589
    const-string/jumbo v11, "timeStamp>=? and timeStamp<=?"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-wide v14, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4593
    :goto_1
    const-string/jumbo v11, "timeStamp DESC "

    invoke-virtual {v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 4594
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v7

    .line 4595
    .local v7, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4596
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4591
    .end local v7    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_6
    const-string/jumbo v11, "timeStamp<=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-wide v14, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4598
    .restart local v7    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 4599
    .local v5, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4600
    .local v6, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v4

    .line 4601
    .local v4, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public loadHistoryMailsFromDB(J[J[Ljava/lang/String;Ljava/util/List;)Z
    .locals 25
    .param p1, "accountId"    # J
    .param p3, "mailboxIds"    # [J
    .param p4, "oldestServerIds"    # [Ljava/lang/String;
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

    .prologue
    .line 4609
    .local p5, "outList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    if-gtz v18, :cond_1

    .line 4610
    :cond_0
    const/16 v18, 0x0

    .line 4675
    .end local p4    # "oldestServerIds":[Ljava/lang/String;
    :goto_0
    return v18

    .line 4613
    .restart local p4    # "oldestServerIds":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p3

    array-length v8, v0

    .line 4614
    .local v8, "length":I
    if-eqz p3, :cond_2

    if-gtz v8, :cond_3

    .line 4615
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 4618
    :cond_3
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryFolderOldestItemTime(J)Ljava/util/Map;

    move-result-object v14

    .line 4619
    .local v14, "oldestItemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 4620
    .local v10, "mailboxMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_4

    .line 4621
    aget-wide v18, p3, v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4620
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4624
    :cond_4
    new-instance v17, Lcom/alibaba/alimei/orm/query/Select;

    const-class v18, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "Message"

    invoke-direct/range {v17 .. v20}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4625
    .local v17, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v18, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 4626
    const-string/jumbo v18, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4627
    const-string/jumbo v18, "syncServerId"

    check-cast p4, [Ljava/lang/Object;

    .end local p4    # "oldestServerIds":[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4628
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v16

    .line 4629
    .local v16, "oldestMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v16, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 4630
    :cond_5
    const/16 v18, 0x0

    goto :goto_0

    .line 4633
    :cond_6
    const/4 v9, 0x0

    .line 4634
    .local v9, "mailboxBit":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4635
    .local v15, "oldestMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 4636
    const-wide/high16 v4, -0x8000000000000000L

    .line 4637
    .local v4, "folderOldestItemTime":J
    if-eqz v14, :cond_8

    .line 4638
    iget-wide v0, v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 4639
    iget-wide v0, v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 4643
    :cond_8
    iget-wide v0, v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    move-wide/from16 v20, v0

    cmp-long v18, v20, v4

    if-ltz v18, :cond_7

    .line 4646
    sget-object v18, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 4647
    const-string/jumbo v18, "mailboxKey"

    iget-wide v0, v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4648
    const-string/jumbo v18, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4649
    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v18, v4, v20

    if-eqz v18, :cond_a

    .line 4650
    const-string/jumbo v18, "timeStamp>=? and timeStamp<=?"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    iget-wide v0, v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4654
    :goto_2
    const-string/jumbo v18, "syncServerId!=?"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4655
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/alimei/orm/query/Select;->offset(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 4656
    const/16 v18, 0x14

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 4657
    const-string/jumbo v18, "timeStamp DESC "

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 4658
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v13

    .line 4659
    .local v13, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v13, :cond_7

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_7

    .line 4662
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4663
    .local v7, "index":I
    const/16 v18, 0x14

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    .line 4664
    const/16 v18, 0x1

    shl-int v18, v18, v7

    or-int v9, v9, v18

    .line 4666
    :cond_9
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4667
    .local v12, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v12}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v11

    .line 4668
    .local v11, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4652
    .end local v7    # "index":I
    .end local v11    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v12    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v13    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_a
    const-string/jumbo v18, "timeStamp<=?"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-wide v0, v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4671
    .end local v4    # "folderOldestItemTime":J
    .end local v15    # "oldestMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_b
    if-eqz v9, :cond_c

    .line 4672
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 4675
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public loadHistoryMailsFromDBByTag(JLjava/lang/String;J)Ljava/util/List;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "tagId"    # Ljava/lang/String;
    .param p4, "endTime"    # J
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

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 4680
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4704
    :cond_0
    return-object v0

    .line 4684
    :cond_1
    invoke-static {p3}, Lair;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4685
    .local v3, "packTagStr":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Message"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4686
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v5, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 4687
    const-string/jumbo v5, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4688
    const-string/jumbo v5, "timeStamp<="

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4689
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "messageTag like %"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 4690
    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/orm/query/Select;->offset(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 4691
    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 4692
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 4693
    .local v2, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4697
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 4698
    .local v0, "mailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4699
    .local v1, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v1, :cond_2

    .line 4702
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public moveMailToLocalFolder(JLjava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;J)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p5, "folderId"    # J

    .prologue
    .line 5129
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Message"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 5130
    .local v0, "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "mailboxKey"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5131
    const-string/jumbo v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p4}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5132
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 5133
    return-void
.end method

.method public varargs moveMailToNewFolder(JLjava/lang/String;JLjava/lang/String;Z[Ljava/lang/String;)V
    .locals 23
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "targetFolderId"    # J
    .param p6, "targetServerId"    # Ljava/lang/String;
    .param p7, "sync2Server"    # Z
    .param p8, "mailServerIds"    # [Ljava/lang/String;

    .prologue
    .line 3426
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/Object;

    .line 3427
    .local v13, "objects":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 3429
    .local v7, "i":I
    new-instance v5, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v18, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v19, "EmailProvider.db"

    const-string/jumbo v20, "SyncMsg"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3430
    .local v5, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    new-instance v9, Lcom/alibaba/alimei/orm/query/Select;

    const-class v18, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v19, "EmailProvider.db"

    const-string/jumbo v20, "Message"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v9, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3431
    .local v9, "messageSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v18, "mailboxKey"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 3433
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v21, v0

    const/16 v18, 0x0

    move/from16 v20, v18

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    aget-object v15, p8, v20

    .line 3434
    .local v15, "serverId":Ljava/lang/String;
    aput-object v15, v13, v7

    .line 3435
    add-int/lit8 v7, v7, 0x1

    .line 3438
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 3440
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 3441
    const-string/jumbo v18, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3442
    const-string/jumbo v18, "syncServerId"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v15}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3443
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v11

    check-cast v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 3446
    .local v11, "messge":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    const-string/jumbo v18, "accountId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3447
    const-string/jumbo v18, "itemId"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v15}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3448
    const-string/jumbo v18, "type"

    const/16 v19, 0x5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3449
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 3452
    if-eqz p7, :cond_0

    .line 3453
    new-instance v16, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    .line 3454
    .local v16, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    move-wide/from16 v0, p1

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 3455
    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    .line 3456
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 3457
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    .line 3458
    if-nez v11, :cond_1

    const-wide/16 v18, -0x1

    :goto_1
    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data2:J

    .line 3460
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    .line 3433
    .end local v11    # "messge":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v16    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_0
    add-int/lit8 v18, v20, 0x1

    move/from16 v20, v18

    goto/16 :goto_0

    .line 3458
    .restart local v11    # "messge":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .restart local v16    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_1
    iget-wide v0, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    move-wide/from16 v18, v0

    goto :goto_1

    .line 3466
    .end local v11    # "messge":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v15    # "serverId":Ljava/lang/String;
    .end local v16    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_2
    new-instance v14, Lcom/alibaba/alimei/orm/query/Select;

    const-class v18, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v19, "EmailProvider.db"

    const-string/jumbo v20, "Message"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3467
    .local v14, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v18, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3468
    const-string/jumbo v18, "syncServerId"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v13}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3469
    const-string/jumbo v18, "mailboxKey != ?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3471
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 3472
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v10

    .line 3473
    .local v10, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_4

    .line 3474
    new-instance v6, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v18, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move/from16 v3, v18

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 3475
    .local v6, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 3477
    .local v8, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 3480
    invoke-static {v8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v12

    .line 3481
    .local v12, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move-wide/from16 v0, p4

    iput-wide v0, v12, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 3482
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 3483
    invoke-virtual {v6, v12}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addAddedMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_2

    .line 3485
    .end local v8    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v12    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_3
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_4

    .line 3486
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 3493
    .end local v6    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v10    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_4
    new-instance v17, Lcom/alibaba/alimei/orm/query/Update;

    const-class v18, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v19, "EmailProvider.db"

    const-string/jumbo v20, "Message"

    invoke-direct/range {v17 .. v20}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3494
    .local v17, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v18, "mailboxKey"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3495
    const-string/jumbo v18, "reminder"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3496
    const-string/jumbo v18, "lstatus_code"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3497
    const-string/jumbo v18, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3498
    const-string/jumbo v18, "syncServerId"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lcom/alibaba/alimei/orm/query/Update;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3499
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v4

    .line 3500
    .local v4, "count":I
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "moveMailToNewFolder "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " local mails"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lzb;->i(Ljava/lang/String;)I

    .line 3501
    return-void
.end method

.method public varargs moveMailToNewFolder(JLjava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "targetFolderId"    # J
    .param p6, "targetFolderServerId"    # Ljava/lang/String;
    .param p7, "mailServerIds"    # [Ljava/lang/String;

    .prologue
    .line 3420
    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->moveMailToNewFolder(JLjava/lang/String;JLjava/lang/String;Z[Ljava/lang/String;)V

    .line 3421
    return-void
.end method

.method public queryAllLocalFavoriteMails(J)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2381
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2382
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v6, "EmailProvider.db"

    const-string/jumbo v7, "Message"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "accountKey=?"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    const-string/jumbo v5, "flagFavorite=?"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2385
    const-string/jumbo v5, "timeStamp DESC "

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2386
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 2387
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-nez v1, :cond_1

    .line 2394
    :cond_0
    return-object v3

    .line 2390
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2391
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v2

    .line 2392
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryAllLocalMails(JI)Ljava/util/List;
    .locals 17
    .param p1, "accountId"    # J
    .param p3, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 2254
    new-instance v9, Lcom/alibaba/alimei/orm/query/Select;

    const-class v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v11, "EmailProvider.db"

    const-string/jumbo v12, "Message"

    invoke-direct {v9, v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    .local v9, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v10, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutAccountId:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2256
    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/orm/query/Select;->offset(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 2257
    const-string/jumbo v10, "accountKey=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    const-string/jumbo v10, "timeStamp DESC "

    invoke-virtual {v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2261
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v5

    .line 2262
    .local v5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-nez v5, :cond_0

    .line 2263
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    .local v7, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    move-object v8, v7

    .line 2278
    .end local v7    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local v8, "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_0
    return-object v8

    .line 2266
    .end local v8    # "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 2267
    .restart local v7    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v3, 0x1

    .line 2268
    .local v3, "isUpack":Z
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v2

    .line 2269
    .local v2, "config":Lafy;
    if-eqz v2, :cond_1

    .line 10314
    iget-boolean v3, v2, Lafy;->l:Z

    .line 2272
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2273
    .local v4, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v4, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Z)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v6

    .line 2274
    .local v6, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move-wide/from16 v0, p1

    iput-wide v0, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    .line 2275
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v4    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v6    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    move-object v8, v7

    .line 2278
    .restart local v8    # "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    goto :goto_0
.end method

.method public queryAllLocalMails(JJLjava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "folderId"    # J
    .param p5, "conversationId"    # Ljava/lang/String;
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

    .prologue
    .line 2182
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "Message"

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    .local v5, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "accountKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    const-string/jumbo v6, "mailboxKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 2186
    const-string/jumbo v6, "conversationId=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p5, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    :cond_0
    const-string/jumbo v6, "timeStamp DESC "

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2192
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 2193
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-nez v1, :cond_1

    .line 2194
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    move-object v4, v3

    .line 2202
    .end local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local v4, "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_0
    return-object v4

    .line 2197
    .end local v4    # "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2198
    .restart local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2199
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v2

    .line 2200
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v2    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    move-object v4, v3

    .line 2202
    .restart local v4    # "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    goto :goto_0
.end method

.method public queryAllLocalMailsByTag(JLjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "tag"    # Ljava/lang/String;
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

    .prologue
    .line 2418
    const-wide/16 v4, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryLocalMailsByTag(JJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAllRecentReadMails(J)Ljava/util/List;
    .locals 9
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2399
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2400
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v6, "EmailProvider.db"

    const-string/jumbo v7, "Message"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    const-string/jumbo v5, "lastReadTime > 0"

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;)Ljava/lang/Object;

    .line 2403
    const-string/jumbo v5, "lastReadTime DESC "

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2404
    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 2405
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 2406
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-nez v1, :cond_1

    .line 2413
    :cond_0
    return-object v3

    .line 2409
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2410
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v2

    .line 2411
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryAllUnloadedMails(J)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2230
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "Message"

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    .local v5, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "accountKey=?"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    const-string/jumbo v6, "flagLoaded =?"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    const-string/jumbo v6, "timeStamp DESC "

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2236
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 2237
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-nez v1, :cond_0

    .line 2238
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    move-object v4, v3

    .line 2249
    .end local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    .local v4, "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    :goto_0
    return-object v4

    .line 2241
    .end local v4    # "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2242
    .restart local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2243
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailDetailModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v2

    .line 2245
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    iget-object v7, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    invoke-static {v7}, Lair;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2246
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v2    # "model":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    :cond_2
    move-object v4, v3

    .line 2249
    .restart local v4    # "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    goto :goto_0
.end method

.method public queryAllWaitingDeleteList(J)Ljava/util/List;
    .locals 5
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3265
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "SyncMsg"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "accountId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3267
    const-string/jumbo v1, "type"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3268
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryChangeMailTagStatusList(J)Ljava/util/List;
    .locals 7
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4302
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "SyncMsg"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4303
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "accountId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4304
    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4305
    const-string/jumbo v1, "synccount<= ?"

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4306
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryCommunicateMails(JLjava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "targetEmail"    # Ljava/lang/String;
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

    .prologue
    .line 2464
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2465
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "Message"

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    .local v5, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "accountKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2469
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "( fromList"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    const-string/jumbo v6, " LIKE \'%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%\' OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2471
    const-string/jumbo v6, "toList"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2472
    const-string/jumbo v6, " LIKE \'%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%\' )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2474
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;)Ljava/lang/Object;

    .line 2475
    const-string/jumbo v6, "timeStamp DESC "

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2476
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 2477
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-nez v1, :cond_1

    .line 2484
    :cond_0
    return-object v3

    .line 2480
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2481
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v2

    .line 2482
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryHtmlPartId(JJ)Lahb;
    .locals 7
    .param p1, "accoutId"    # J
    .param p3, "messageId"    # J

    .prologue
    .line 4415
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "Message"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4416
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "html_part_id"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 4417
    const-string/jumbo v3, "text_part_id"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 4418
    const-string/jumbo v3, "_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4419
    const-string/jumbo v3, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4421
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4422
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4423
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    new-instance v1, Lahb;

    invoke-direct {v1}, Lahb;-><init>()V

    .line 4424
    .local v1, "partIdModel":Lahb;
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlPartId:Ljava/lang/String;

    .line 13016
    iput-object v3, v1, Lahb;->a:Ljava/lang/String;

    .line 4425
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextPartId:Ljava/lang/String;

    .line 13024
    iput-object v3, v1, Lahb;->b:Ljava/lang/String;

    .line 4428
    .end local v0    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v1    # "partIdModel":Lahb;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryImapMesssageUids(JJJJ)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "folderId"    # J
    .param p5, "startUid"    # J
    .param p7, "endUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4443
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4444
    .local v3, "messageUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 4445
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v5, "select uid from message where accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4446
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 4447
    const-string/jumbo v5, " and mailboxKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4448
    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 4449
    const-string/jumbo v5, " and uid>="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4450
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 4451
    const-string/jumbo v5, " and uid<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4452
    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 4453
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4454
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 4456
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4457
    const-string/jumbo v5, "uid"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4458
    .local v6, "uid":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4462
    .end local v6    # "uid":J
    :catch_0
    move-exception v5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4465
    :cond_0
    :goto_1
    return-object v3

    .line 4462
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public queryLocalMails(IJ)Ljava/util/List;
    .locals 10
    .param p1, "size"    # I
    .param p2, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2207
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "Message"

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    .local v5, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v6, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutAccountId:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2209
    const-string/jumbo v6, "accountKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    const-string/jumbo v6, "timeStamp DESC "

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2211
    invoke-virtual {v5, p1}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 2214
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 2215
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-nez v1, :cond_0

    .line 2216
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    move-object v4, v3

    .line 2225
    .end local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    .local v4, "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    :goto_0
    return-object v4

    .line 2219
    .end local v4    # "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2220
    .restart local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2221
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailDetailModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v2

    .line 2222
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    iput-wide p2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->accountId:J

    .line 2223
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v2    # "model":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    :cond_1
    move-object v4, v3

    .line 2225
    .restart local v4    # "models":Ljava/lang/Object;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    goto :goto_0
.end method

.method public queryLocalMailsByPage(JLjava/lang/String;ZII)Ljava/util/List;
    .locals 17
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "isWholeListModel"    # Z
    .param p5, "pageSize"    # I
    .param p6, "offset"    # I
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

    .prologue
    .line 2300
    :try_start_0
    new-instance v9, Lcom/alibaba/alimei/orm/query/Select;

    const-class v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v12, "EmailProvider.db"

    const-string/jumbo v13, "Message"

    invoke-direct {v9, v11, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    .local v9, "select":Lcom/alibaba/alimei/orm/query/Select;
    if-eqz p4, :cond_2

    .line 2303
    const/4 v10, 0x0

    .line 2304
    .local v10, "shouldLoadData":Z
    sget-object v11, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2309
    :goto_0
    if-lez p5, :cond_0

    .line 2310
    move/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 2312
    :cond_0
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/orm/query/Select;->offset(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 2313
    const-string/jumbo v11, "accountKey=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v9, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    const-string/jumbo v11, "timeStamp DESC "

    invoke-virtual {v9, v11}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2317
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v6

    .line 2318
    .local v6, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-nez v6, :cond_3

    .line 2319
    new-instance v8, Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 2345
    .end local v6    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .end local v9    # "select":Lcom/alibaba/alimei/orm/query/Select;
    .end local v10    # "shouldLoadData":Z
    :cond_1
    :goto_1
    return-object v8

    .line 2306
    .restart local v9    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_2
    const/4 v10, 0x1

    .line 2307
    .restart local v10    # "shouldLoadData":Z
    sget-object v11, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sSimpleMailListColumns:[Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2336
    .end local v9    # "select":Lcom/alibaba/alimei/orm/query/Select;
    .end local v10    # "shouldLoadData":Z
    :catch_0
    move-exception v3

    .line 2338
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v11, "handle_sync_mail_fail_for_large_mail"

    const/4 v12, 0x6

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "read mailList from db, db has large calendar mail, accountName: "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p3, v13, v14

    .line 2339
    invoke-static {v13}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    .line 2338
    invoke-static {v11, v12, v13, v14}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2341
    const-string/jumbo v11, "handle_sync_mail_fail_for_large_mail"

    const-string/jumbo v12, "6"

    .line 2342
    invoke-static {v3}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 2341
    invoke-static {v11, v12, v13, v14}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    const/4 v8, 0x0

    goto :goto_1

    .line 2322
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .restart local v6    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .restart local v9    # "select":Lcom/alibaba/alimei/orm/query/Select;
    .restart local v10    # "shouldLoadData":Z
    :cond_3
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 2323
    .local v8, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v4, 0x1

    .line 2324
    .local v4, "isUpack":Z
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v2

    .line 2325
    .local v2, "config":Lafy;
    if-eqz v2, :cond_4

    .line 11314
    iget-boolean v4, v2, Lafy;->l:Z

    .line 2328
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2329
    .local v5, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v5, v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Z)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v7

    .line 2330
    .local v7, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iput-boolean v10, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    .line 2331
    move-wide/from16 v0, p1

    iput-wide v0, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    .line 2332
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public queryLocalMailsByTag(JJLjava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "folderId"    # J
    .param p5, "tag"    # Ljava/lang/String;
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

    .prologue
    const/4 v9, 0x1

    .line 2424
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2425
    const/4 v3, 0x0

    .line 2445
    :cond_0
    return-object v3

    .line 2427
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2428
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v6, "EmailProvider.db"

    const-string/jumbo v7, "Message"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "accountKey=?"

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2430
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-lez v5, :cond_2

    .line 2431
    const-string/jumbo v5, "mailboxKey"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    :cond_2
    const-string/jumbo v5, "messageType"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "messageTag LIKE \'%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Lair;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;)Ljava/lang/Object;

    .line 2436
    const-string/jumbo v5, "timeStamp DESC "

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2437
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 2438
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v1, :cond_0

    .line 2441
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2442
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v2

    .line 2443
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryMailBody(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 2130
    const/4 v3, 0x0

    .line 2131
    .local v3, "model":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v6, "EmailProvider.db"

    const-string/jumbo v7, "Message"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "_id"

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2133
    const-string/jumbo v5, "accountKey=?"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2134
    const-string/jumbo v5, "syncServerId=?"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p3, v6, v10

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2137
    .local v2, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v2, :cond_0

    .line 2138
    new-instance v3, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .end local v3    # "model":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    iget-wide v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-direct {v3, v6, v7}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;-><init>(J)V

    .line 2139
    .restart local v3    # "model":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v6, "EmailProviderBody.db"

    const-string/jumbo v7, "Body"

    invoke-direct {v1, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    .local v1, "bodySelect":Lcom/alibaba/alimei/orm/query/Select;
    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "htmlContent"

    aput-object v6, v5, v10

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2141
    const-string/jumbo v5, "textContent"

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 2142
    const-string/jumbo v5, "isSaveHtmlContentToFile"

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 2143
    const-string/jumbo v5, "isSaveTextContentToFile"

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 2144
    const-string/jumbo v5, "messageKey=?"

    new-array v6, v8, [Ljava/lang/Object;

    iget-wide v8, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    .line 2146
    .local v0, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    if-eqz v0, :cond_0

    .line 2147
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->readMailBody(Lcom/alibaba/alimei/sdk/db/mail/entry/Body;)V

    .line 2148
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    .line 2149
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    .line 2152
    .end local v0    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .end local v1    # "bodySelect":Lcom/alibaba/alimei/orm/query/Select;
    :cond_0
    return-object v3
.end method

.method public queryMailBodyById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 191
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v4, "EmailProviderBody.db"

    const-string/jumbo v5, "Body"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v1, "bodySelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "messageKey=?"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .local v0, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    :goto_0
    if-eqz v0, :cond_0

    .line 207
    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveHtmlContentToFile:Z

    if-eqz v3, :cond_1

    .line 208
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    invoke-static {v3}, Lail;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    .line 213
    :cond_0
    :goto_1
    return-object v0

    .line 196
    .end local v0    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "handle_sync_mail_fail_for_large_mail"

    const/4 v4, 0x6

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "read mailList from db, db has large mail"

    aput-object v6, v5, v7

    .line 199
    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-static {v3, v4, v5, v6}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v3, "handle_sync_mail_fail_for_large_mail"

    const-string/jumbo v4, "6"

    .line 202
    invoke-static {v2}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 201
    invoke-static {v3, v4, v5, v6}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v3, v7

    const-string/jumbo v4, "messageKey"

    aput-object v4, v3, v8

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    .restart local v0    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    goto :goto_0

    .line 209
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveTextContentToFile:Z

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    invoke-static {v3}, Lail;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    goto :goto_1
.end method

.method public queryMailDetailById(JJ)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "id"    # J

    .prologue
    .line 1864
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMailDetail(JJLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    return-object v0
.end method

.method public queryMailDetailByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    .line 1859
    const-wide/16 v4, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMailDetail(JJLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    return-object v0
.end method

.method public queryMailDraft(JJ)Lagz;
    .locals 19
    .param p1, "accountId"    # J
    .param p3, "id"    # J

    .prologue
    .line 644
    new-instance v14, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v6, "EmailProvider.db"

    const-string/jumbo v7, "Message"

    invoke-direct {v14, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .local v14, "messageSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string/jumbo v5, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v13

    check-cast v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 648
    .local v13, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v13, :cond_6

    .line 649
    new-instance v15, Lagz;

    invoke-direct {v15}, Lagz;-><init>()V

    .line 650
    .local v15, "model":Lagz;
    iget-wide v6, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    iput-wide v6, v15, Lagz;->b:J

    .line 651
    iget-object v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    iput-object v5, v15, Lagz;->c:Ljava/lang/String;

    .line 652
    iget-object v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    iput-object v5, v15, Lagz;->g:Ljava/lang/String;

    .line 653
    iget-wide v6, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    iput-wide v6, v15, Lagz;->j:J

    .line 654
    iget-object v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 655
    iget-object v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    invoke-static {v5}, Lair;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v16

    .line 656
    .local v16, "proxy":Lcom/alibaba/alimei/sdk/model/AddressModel;
    move-object/from16 v0, v16

    iput-object v0, v15, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 659
    .end local v16    # "proxy":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_0
    iget-object v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    invoke-static {v5}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v15, Lagz;->d:Ljava/util/List;

    .line 660
    iget-object v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    invoke-static {v5}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v15, Lagz;->e:Ljava/util/List;

    .line 661
    iget-object v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mBcc:Ljava/lang/String;

    invoke-static {v5}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v15, Lagz;->f:Ljava/util/List;

    .line 662
    iget v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlags:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-nez v5, :cond_3

    const/4 v12, 0x1

    .line 663
    .local v12, "includeQuotedText":Z
    :goto_0
    iput-boolean v12, v15, Lagz;->n:Z

    .line 664
    iget-object v5, v15, Lagz;->c:Ljava/lang/String;

    invoke-static {v5}, Lair;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 665
    iget v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v15, Lagz;->t:Z

    .line 666
    iget v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, v15, Lagz;->m:Z

    .line 667
    iget-wide v6, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->sourceId:J

    iput-wide v6, v15, Lagz;->k:J

    .line 669
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v5

    iget-wide v8, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    const/4 v10, -0x1

    move-wide/from16 v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAllAttachment(JJI)Ljava/util/List;

    move-result-object v5

    iput-object v5, v15, Lagz;->p:Ljava/util/List;

    .line 671
    iget-object v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->conversationExtension:Ljava/lang/String;

    iput-object v5, v15, Lagz;->w:Ljava/lang/String;

    .line 672
    iget-boolean v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->separatedSend:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v15, Lagz;->z:Ljava/lang/Boolean;

    .line 673
    iget-object v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->timingSend:Ljava/lang/String;

    iput-object v5, v15, Lagz;->A:Ljava/lang/String;

    .line 674
    iget-object v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->localExtension:Ljava/lang/String;

    iput-object v5, v15, Lagz;->B:Ljava/lang/String;

    .line 675
    iget v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->priority:I

    iput v5, v15, Lagz;->a:I

    .line 676
    iget-object v5, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->extendHeader:Ljava/lang/String;

    iput-object v5, v15, Lagz;->C:Ljava/lang/String;

    .line 679
    new-instance v11, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v6, "EmailProviderBody.db"

    const-string/jumbo v7, "Body"

    invoke-direct {v11, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .local v11, "bodySelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "htmlContent"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "textContent"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "sourceMessageKey"

    aput-object v7, v5, v6

    invoke-virtual {v11, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 681
    const-string/jumbo v5, "messageKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v11, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    .line 683
    .local v4, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    if-eqz v4, :cond_2

    .line 684
    iget-object v5, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    iput-object v5, v15, Lagz;->i:Ljava/lang/String;

    .line 685
    iget-object v5, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    iput-object v5, v15, Lagz;->h:Ljava/lang/String;

    .line 687
    if-eqz v12, :cond_2

    .line 688
    iget-wide v6, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mSourceKey:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageBodyById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    move-result-object v17

    .line 689
    .local v17, "sourceBody":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    if-eqz v17, :cond_2

    .line 690
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    iput-object v5, v15, Lagz;->r:Ljava/lang/String;

    .line 697
    .end local v4    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .end local v11    # "bodySelect":Lcom/alibaba/alimei/orm/query/Select;
    .end local v12    # "includeQuotedText":Z
    .end local v15    # "model":Lagz;
    .end local v17    # "sourceBody":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    :cond_2
    :goto_3
    return-object v15

    .line 662
    .restart local v15    # "model":Lagz;
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 665
    .restart local v12    # "includeQuotedText":Z
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 666
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 697
    .end local v12    # "includeQuotedText":Z
    .end local v15    # "model":Lagz;
    :cond_6
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public varargs queryMailFoldersByServerId(J[Ljava/lang/String;)Ljava/util/Map;
    .locals 15
    .param p1, "accountId"    # J
    .param p3, "serverIds"    # [Ljava/lang/String;
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

    .prologue
    .line 3112
    new-instance v10, Lcom/alibaba/alimei/orm/query/Select;

    const-class v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v12, "EmailProvider.db"

    const-string/jumbo v13, "Message"

    invoke-direct {v10, v11, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3113
    .local v10, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "mailboxKey"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "syncServerId"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 3114
    const-string/jumbo v11, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3115
    const-string/jumbo v11, "syncServerId"

    check-cast p3, [Ljava/lang/Object;

    .end local p3    # "serverIds":[Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3116
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v9

    .line 3117
    .local v9, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v2

    .line 3118
    .local v2, "datsource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 3119
    new-instance v7, Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 3120
    .local v7, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 3121
    .local v6, "folderIdMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 3122
    .local v8, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    iget-wide v4, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    .line 3123
    .local v4, "folderId":J
    iget-wide v12, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 3124
    .local v3, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v3, :cond_1

    .line 3125
    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryFolderById(JJ)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v3

    .line 3126
    if-eqz v3, :cond_1

    .line 3127
    iget-wide v12, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3130
    :cond_1
    if-eqz v3, :cond_0

    .line 3131
    iget-object v12, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v7, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3136
    .end local v3    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v4    # "folderId":J
    .end local v6    # "folderIdMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v7    # "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v8    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_2
    const/4 v7, 0x0

    :cond_3
    return-object v7
.end method

.method public queryMailHtmlBody(JLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2100
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v5, "EmailProvider.db"

    const-string/jumbo v6, "Message"

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2102
    const-string/jumbo v4, "accountKey=?"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    const-string/jumbo v4, "syncServerId=?"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p3, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2106
    .local v2, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v2, :cond_0

    .line 2107
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v5, "EmailProviderBody.db"

    const-string/jumbo v6, "Body"

    invoke-direct {v1, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    .local v1, "bodySelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "htmlContent"

    aput-object v5, v4, v8

    const-string/jumbo v5, "textContent"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "isSaveHtmlContentToFile"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "isSaveTextContentToFile"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2109
    const-string/jumbo v4, "messageKey=?"

    new-array v5, v7, [Ljava/lang/Object;

    iget-wide v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2110
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    .line 2111
    .local v0, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    if-eqz v0, :cond_0

    .line 2112
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->readMailBody(Lcom/alibaba/alimei/sdk/db/mail/entry/Body;)V

    .line 2113
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    .line 2116
    .end local v0    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .end local v1    # "bodySelect":Lcom/alibaba/alimei/orm/query/Select;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public queryMailItemIdsByFolderId(JJ)Ljava/util/List;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 4797
    cmp-long v4, p1, v6

    if-ltz v4, :cond_0

    cmp-long v4, p3, v6

    if-gez v4, :cond_1

    .line 4816
    :cond_0
    return-object v2

    .line 4801
    :cond_1
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Message"

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4802
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v4, "syncServerId"

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 4803
    const-string/jumbo v4, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4804
    const-string/jumbo v4, "mailboxKey"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4805
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 4807
    .local v1, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4811
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4812
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4813
    .local v0, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryMailSourceMessage(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "id"    # J

    .prologue
    .line 2157
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v5, "EmailProviderBody.db"

    const-string/jumbo v6, "Body"

    invoke-direct {v1, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    .local v1, "bodySelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "sourceMessageKey"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2159
    const-string/jumbo v4, "messageKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    .line 2161
    .local v0, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mSourceKey:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 2162
    const-string/jumbo v4, "MessageDatasource"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "queryMailSourceMessage msgId: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", sourceKey: "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mSourceKey:J

    .line 2163
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2162
    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mSourceKey:J

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v3

    .line 2177
    :goto_0
    return-object v3

    .line 2167
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v2

    .line 2168
    .local v2, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v2, :cond_1

    iget-wide v4, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->sourceId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 2169
    const-string/jumbo v4, "MessageDatasource"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "queryMailSourceMessage msgId: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", msg sourceId: "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-wide v8, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->sourceId:J

    .line 2170
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2169
    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    iget-wide v4, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->sourceId:J

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v3

    .line 2172
    .local v3, "sourceMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    goto :goto_0

    .line 2175
    .end local v3    # "sourceMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_1
    const-string/jumbo v4, "MessageDatasource"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "queryMailSourceMessage msgId: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", no sourceId"

    aput-object v7, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public queryMaxImapUid(JJ)J
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "folderId"    # J

    .prologue
    .line 4311
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4312
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "select max(uid) as max_uid from message where accountKey = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4313
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 4314
    const-string/jumbo v4, " and mailboxKey = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4315
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 4316
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4317
    .local v0, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, -0x1

    .line 4318
    .local v2, "maxUid":J
    if-eqz v0, :cond_1

    .line 4320
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4321
    const-string/jumbo v4, "max_uid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4325
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4328
    :cond_1
    :goto_0
    return-wide v2

    .line 4325
    :catch_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public queryMessageBodyById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J

    .prologue
    .line 176
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v3, "EmailProviderBody.db"

    const-string/jumbo v4, "Body"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v1, "bodySelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "messageKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    .line 179
    .local v0, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    if-eqz v0, :cond_0

    .line 180
    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveHtmlContentToFile:Z

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    invoke-static {v2}, Lail;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    .line 186
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :cond_1
    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveTextContentToFile:Z

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    invoke-static {v2}, Lail;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J

    .prologue
    .line 160
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Message"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v0, "messageSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    return-object v1
.end method

.method public queryMessageByMessageId(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2365
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Message"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "_id=?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2367
    const-string/jumbo v2, "accountKey=?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2368
    const-string/jumbo v2, "timeStamp DESC "

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2370
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2371
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v0, :cond_0

    .line 2372
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v2

    .line 2374
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Message"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v0, "messageSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v1, "syncServerId"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    return-object v1
.end method

.method public queryMessageByServerId(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 5
    .param p1, "serverId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2351
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Message"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "syncServerId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2353
    const-string/jumbo v2, "timeStamp DESC "

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2354
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2355
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v0, :cond_0

    .line 2356
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v2

    .line 2358
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public queryMinImapUid(JJ)J
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "folderId"    # J

    .prologue
    .line 4333
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4334
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4335
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "select min(uid) as min_uid from message where accountKey = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4336
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 4337
    const-string/jumbo v4, " and mailboxKey = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4338
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 4339
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4340
    .local v0, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, -0x1

    .line 4341
    .local v2, "maxUid":J
    if-eqz v0, :cond_1

    .line 4343
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4344
    const-string/jumbo v4, "min_uid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4348
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4351
    :cond_1
    :goto_0
    return-wide v2

    .line 4348
    :catch_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public queryNewMailCounts()Ljava/util/Map;
    .locals 30
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

    .prologue
    .line 5062
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v4

    .line 5063
    .local v4, "accountDatasource":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    invoke-interface {v4}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAllAccount()Ljava/util/List;

    move-result-object v9

    .line 5064
    .local v9, "accountModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 5065
    :cond_0
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 5124
    :cond_1
    :goto_0
    return-object v18

    .line 5068
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5070
    .local v5, "accountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 5071
    .local v22, "sltSb":Ljava/lang/StringBuilder;
    const-string/jumbo v26, " and b.accountKey in("

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5072
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 5073
    .local v8, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    invoke-virtual {v8}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    iget-object v0, v8, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5074
    invoke-virtual {v8}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v28

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5075
    const-string/jumbo v27, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5077
    .end local v8    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 5078
    const-string/jumbo v26, ") "

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5079
    const-string/jumbo v26, " group by mailboxKey"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5081
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 5083
    .local v21, "selection":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 5084
    .local v20, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v26, "SELECT count(a._id) as count,mailboxKey,b.accountKey,b.displayName,b.serverId,b.syncInterval,b.type FROM message a left join mailbox b on a.mailboxKey = b._id where a.flagread=0 and a.timeStamp > b.lastVisitTime and b.type != 4 "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5085
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5086
    const-string/jumbo v26, " union SELECT count(a._id) as count,mailboxKey,b.accountKey,b.displayName,b.serverId,b.syncInterval,b.type FROM message a left join mailbox b on a.mailboxKey = b._id where a.timeStamp > b.lastVisitTime and b.type=4 "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5087
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5089
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 5091
    .local v23, "sql":Ljava/lang/String;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 5092
    .local v18, "newMailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Laha;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5093
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 5095
    :try_start_0
    const-string/jumbo v26, "MessageDatasource"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "cursor count: "

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v27 .. v27}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5096
    :cond_4
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 5097
    const-string/jumbo v26, "mailboxKey"

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 5098
    .local v16, "mailboxKey":J
    const-string/jumbo v26, "accountKey"

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 5099
    .local v6, "accountKey":J
    const-string/jumbo v26, "count"

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v0, v26

    int-to-long v12, v0

    .line 5100
    .local v12, "count":J
    const-string/jumbo v26, "syncInterval"

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 5101
    .local v24, "syncInterval":I
    const-string/jumbo v26, "type"

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 5102
    .local v25, "type":I
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 5103
    .local v10, "accountName":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 5104
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Laha;

    .line 5105
    .local v19, "newMailNumModel":Laha;
    if-nez v19, :cond_5

    .line 5106
    new-instance v19, Laha;

    .end local v19    # "newMailNumModel":Laha;
    invoke-direct/range {v19 .. v19}, Laha;-><init>()V

    .line 5107
    .restart local v19    # "newMailNumModel":Laha;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5109
    :cond_5
    invoke-static/range {v24 .. v24}, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->isPushFolder(I)Z

    move-result v15

    .line 5110
    .local v15, "isPushFolder":Z
    if-eqz v15, :cond_6

    .line 13036
    move-object/from16 v0, v19

    iget-object v0, v0, Laha;->a:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 5117
    .end local v6    # "accountKey":J
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v12    # "count":J
    .end local v15    # "isPushFolder":Z
    .end local v16    # "mailboxKey":J
    .end local v19    # "newMailNumModel":Laha;
    .end local v24    # "syncInterval":I
    .end local v25    # "type":I
    :catch_0
    move-exception v14

    .line 5118
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v26, "MessageDatasource"

    const-string/jumbo v27, "queryNewMailCounts fail"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v14}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5120
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5112
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v6    # "accountKey":J
    .restart local v10    # "accountName":Ljava/lang/String;
    .restart local v12    # "count":J
    .restart local v15    # "isPushFolder":Z
    .restart local v16    # "mailboxKey":J
    .restart local v19    # "newMailNumModel":Laha;
    .restart local v24    # "syncInterval":I
    .restart local v25    # "type":I
    :cond_6
    :try_start_2
    invoke-static/range {v25 .. v25}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder(I)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 13040
    move-object/from16 v0, v19

    iget-object v0, v0, Laha;->b:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 5120
    .end local v6    # "accountKey":J
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v12    # "count":J
    .end local v15    # "isPushFolder":Z
    .end local v16    # "mailboxKey":J
    .end local v19    # "newMailNumModel":Laha;
    .end local v24    # "syncInterval":I
    .end local v25    # "type":I
    :catchall_0
    move-exception v26

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v26

    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public queryNewMailCounts(J)Ljava/util/Map;
    .locals 13
    .param p1, "accountId"    # J
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

    .prologue
    .line 5005
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5007
    .local v6, "newMailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " SELECT count(a._id) as count,mailboxKey,b.displayName,b.serverId FROM message a left join mailbox b on a.mailboxKey = b._id where a.flagread=0 and a.timeStamp > b.lastVisitTime and b.accountKey="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " group by mailboxKey union "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "SELECT count(a._id) as count,mailboxKey,b.displayName,b.serverId FROM message a left join mailbox b on a.mailboxKey = b._id  where b.type=4 and a.timeStamp > b.lastVisitTime and b.accountKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5012
    .local v7, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v7, v9}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5014
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 5016
    :try_start_0
    const-string/jumbo v8, "MessageDatasource"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "cursor count: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5017
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5018
    const-string/jumbo v8, "mailboxKey"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 5019
    .local v4, "mailboxKey":J
    const-string/jumbo v8, "count"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v0, v8

    .line 5020
    .local v0, "count":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5022
    .end local v0    # "count":J
    .end local v4    # "mailboxKey":J
    :catch_0
    move-exception v3

    .line 5023
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "MessageDatasource"

    const-string/jumbo v9, "queryNewMailCounts fail"

    invoke-static {v8, v9, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5025
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5029
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v6

    .line 5025
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v8
.end method

.method public queryOldestMail(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J

    .prologue
    .line 4709
    const-string/jumbo v4, "select * from Message where accountKey=? and mailboxKey=? order by timeStamp limit 0,1"

    .line 4714
    .local v4, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4715
    .local v0, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 4717
    .local v2, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v4, v6}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4718
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4719
    new-instance v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-direct {v3}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4720
    .end local v2    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .local v3, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :try_start_1
    const-string/jumbo v5, "syncServerId"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 4725
    .end local v3    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .restart local v2    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_0
    if-eqz v0, :cond_1

    .line 4726
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4729
    :cond_1
    :goto_0
    return-object v2

    .line 4722
    :catch_0
    move-exception v1

    .line 4723
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v5, "query oldestmail failed"

    invoke-static {v5, v1}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4725
    if-eqz v0, :cond_1

    .line 4726
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4725
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v0, :cond_2

    .line 4726
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5

    .line 4725
    .end local v2    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .restart local v3    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .restart local v2    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    goto :goto_2

    .line 4722
    .end local v2    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .restart local v3    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .restart local v2    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    goto :goto_1
.end method

.method public queryRelatedMails(JLjava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "targetEmail"    # Ljava/lang/String;
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

    .prologue
    .line 2490
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2491
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "Message"

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    .local v5, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "accountKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2496
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "( fromList"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2497
    const-string/jumbo v6, " LIKE \'%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%\' OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    const-string/jumbo v6, "toList"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    const-string/jumbo v6, " LIKE \'%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%\' OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2502
    const-string/jumbo v6, "ccList"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    const-string/jumbo v6, " LIKE \'%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%\' OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2505
    const-string/jumbo v6, "bccList"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2506
    const-string/jumbo v6, " LIKE \'%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%\' )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2508
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;)Ljava/lang/Object;

    .line 2509
    const-string/jumbo v6, "timeStamp DESC "

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2510
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 2511
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-nez v1, :cond_1

    .line 2518
    :cond_0
    return-object v3

    .line 2514
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2515
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v2

    .line 2516
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public querySendMailOrDraftSync(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J

    .prologue
    .line 3768
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SyncMsg"

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3769
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "accountId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3770
    const-string/jumbo v2, "itemId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3771
    const-string/jumbo v2, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3772
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 3773
    .local v1, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    return-object v1
.end method

.method public querySessionIdByMessageIds(JLjava/util/List;)Ljava/lang/String;
    .locals 15
    .param p1, "accountId"    # J
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

    .prologue
    .local p3, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x64

    .line 4356
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 4357
    :cond_0
    const/4 v1, 0x0

    .line 4410
    :cond_1
    :goto_0
    return-object v1

    .line 4359
    :cond_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 4360
    .local v9, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v11, "SELECT "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4361
    const-string/jumbo v11, "conversationId"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4362
    const-string/jumbo v11, " FROM "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4363
    const-string/jumbo v11, "Message"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4364
    const-string/jumbo v11, " WHERE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4365
    const-string/jumbo v11, "accountKey=? AND ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4367
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v5, :cond_4

    .line 4369
    .local v5, "maxQuery":I
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4370
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4371
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_6

    .line 4372
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 4373
    .local v6, "messageId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 4376
    const-string/jumbo v11, "mail_references LIKE ?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4377
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "%"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4378
    .local v10, "sbParam":Ljava/lang/StringBuilder;
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4379
    const-string/jumbo v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4380
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4381
    add-int/lit8 v11, v5, -0x1

    if-ge v4, v11, :cond_5

    .line 4382
    const-string/jumbo v11, " OR "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4371
    .end local v10    # "sbParam":Ljava/lang/StringBuilder;
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4367
    .end local v4    # "i":I
    .end local v5    # "maxQuery":I
    .end local v6    # "messageId":Ljava/lang/String;
    .end local v7    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    .line 4384
    .restart local v4    # "i":I
    .restart local v5    # "maxQuery":I
    .restart local v6    # "messageId":Ljava/lang/String;
    .restart local v7    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "sbParam":Ljava/lang/StringBuilder;
    :cond_5
    const-string/jumbo v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 4387
    .end local v6    # "messageId":Ljava/lang/String;
    .end local v10    # "sbParam":Ljava/lang/StringBuilder;
    :cond_6
    const-string/jumbo v11, " ORDER BY "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4388
    const-string/jumbo v11, "timeStamp"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4389
    const-string/jumbo v11, " ASC"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4391
    const/4 v1, 0x0

    .line 4393
    .local v1, "conversationId":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4394
    .local v8, "referSql":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4396
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-interface {v12, v8, v11}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4398
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4399
    const-string/jumbo v11, "conversationId"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4400
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "references session = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lzb;->g(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4405
    :cond_7
    if-eqz v2, :cond_1

    .line 4406
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4402
    :catch_0
    move-exception v3

    .line 4403
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v11, "MessageDatasource"

    const-string/jumbo v12, "querySessionIdByMessageIds"

    invoke-static {v11, v12, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4405
    if-eqz v2, :cond_1

    .line 4406
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4405
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v2, :cond_8

    .line 4406
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v11
.end method

.method public queryTagNewMailCounts(JLjava/lang/String;Z)I
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "tag_id"    # Ljava/lang/String;
    .param p4, "isConversation"    # Z

    .prologue
    .line 5034
    const/4 v0, 0x0

    .line 5036
    .local v0, "count":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "select count(a._id) as count from Message a left join tags b left join mailbox c on b._id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and c._id = a.mailboxkey  where a.conversationId  in (select DISTINCT conversationId  from  Message where messageTag LIKE \"%@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@%\") and a.accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and b.account_key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and a.timeStamp > b.last_visit_time and  a.timeStamp > c.lastVisitTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5039
    .local v3, "sql":Ljava/lang/String;
    if-nez p4, :cond_0

    .line 5040
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "select count(a._id) as count from Message a left join tags b left join mailbox c  on b._id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and c._id = a.mailboxkey  where messageTag LIKE \"%@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@%\" and a.accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and b.account_key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and a.timeStamp > b.last_visit_time and  a.timeStamp > c.lastVisitTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5043
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5044
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 5046
    :try_start_0
    const-string/jumbo v4, "MessageDatasource"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "cursor count: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5048
    const-string/jumbo v4, "count"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 5053
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5057
    :cond_2
    :goto_1
    return v0

    .line 5050
    :catch_0
    move-exception v2

    .line 5051
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "MessageDatasource"

    const-string/jumbo v5, "queryNewMailCounts fail"

    invoke-static {v4, v5, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5053
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public queryWaitingSyncFavoriteList(J)Ljava/util/List;
    .locals 5
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3411
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "SyncMsg"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "accountId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3413
    const-string/jumbo v1, "type"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3414
    const-string/jumbo v1, "synccount<= ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3415
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryWaitingSyncMoveList(J)Ljava/util/List;
    .locals 5
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3657
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "SyncMsg"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3658
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "accountId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3659
    const-string/jumbo v1, "type"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3660
    const-string/jumbo v1, "synccount<= ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3661
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryWaitingSyncReadStatusList(J)Ljava/util/List;
    .locals 5
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3352
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "SyncMsg"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3353
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "accountId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3354
    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3355
    const-string/jumbo v1, "synccount<= ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3356
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public removeMailTags(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 21
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "mailServerId"    # Ljava/lang/String;
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

    .prologue
    .line 4083
    .local p5, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 4084
    :cond_0
    const-string/jumbo v16, "MessageDatasource"

    const-string/jumbo v17, "removeMailTags fail for tags is null or empty"

    invoke-static/range {v16 .. v17}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    :cond_1
    :goto_0
    return-void

    .line 4087
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageTagsByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v11

    .line 4088
    .local v11, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v11, :cond_1

    iget-object v0, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageTags:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 4091
    iget-object v8, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageTags:Ljava/lang/String;

    .line 4092
    .local v8, "messageTags":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4093
    .local v6, "isTagChanged":Z
    invoke-static {v8}, Lair;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 4094
    .local v12, "newTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 4095
    .local v14, "tag":Ljava/lang/String;
    invoke-interface {v12, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 4096
    invoke-interface {v12, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4097
    const/4 v6, 0x1

    goto :goto_1

    .line 4101
    .end local v14    # "tag":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_1

    .line 4102
    new-instance v15, Lcom/alibaba/alimei/orm/query/Update;

    const-class v16, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v17, "EmailProvider.db"

    const-string/jumbo v18, "Message"

    invoke-direct/range {v15 .. v18}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4103
    .local v15, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v17, "messageType"

    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_5

    const/16 v16, 0x1

    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4104
    const-string/jumbo v16, "messageTag"

    invoke-static {v12}, Lair;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4105
    const-string/jumbo v16, "_id"

    iget-wide v0, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4106
    invoke-virtual {v15}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v4

    .line 4109
    .local v4, "count":I
    if-lez v4, :cond_1

    .line 4110
    new-instance v13, Lcom/alibaba/alimei/orm/query/Select;

    const-class v16, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v17, "EmailProvider.db"

    const-string/jumbo v18, "Message"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v13, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4111
    .local v13, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v16, "_id"

    iget-wide v0, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4113
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v9

    .line 4114
    .local v9, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 4115
    new-instance v5, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v16, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move/from16 v3, v16

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 4116
    .local v5, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4117
    .local v7, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v10

    .line 4118
    .local v10, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 4119
    invoke-virtual {v5, v10}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_3

    .line 4103
    .end local v4    # "count":I
    .end local v5    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v7    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v9    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .end local v10    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v13    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 4121
    .restart local v4    # "count":I
    .restart local v5    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .restart local v9    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .restart local v13    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_6
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1

    .line 4122
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    goto/16 :goto_0
.end method

.method public removeMailTags(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
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

    .prologue
    .line 4131
    .local p4, "mailServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addAndRemoveTags(JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 4132
    return-void
.end method

.method public resetFoldersSyncKey(JLjava/lang/String;)V
    .locals 19
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 4892
    new-instance v13, Lcom/alibaba/alimei/orm/query/Select;

    const-class v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v15, "EmailProvider.db"

    const-string/jumbo v16, "Mailbox"

    invoke-direct/range {v13 .. v16}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4893
    .local v13, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v14, "_id"

    invoke-virtual {v13, v14}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 4894
    const-string/jumbo v14, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4896
    const-string/jumbo v14, "type < 11 and type <> 4"

    invoke-virtual {v13, v14}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;)Ljava/lang/Object;

    .line 4898
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v8

    .line 4899
    .local v8, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    new-instance v9, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v14, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v9, v0, v1, v2, v14}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 4900
    .local v9, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 4901
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4902
    .local v6, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 4903
    .local v5, "folder":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget-wide v0, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4906
    new-instance v10, Lcom/alibaba/alimei/orm/query/Select;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v16, "EmailProvider.db"

    const-string/jumbo v17, "Message"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v10, v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4907
    .local v10, "mailSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v15, "_id"

    invoke-virtual {v10, v15}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 4908
    const-string/jumbo v15, "mailboxKey"

    invoke-virtual {v10, v15}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 4909
    const-string/jumbo v15, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4910
    const-string/jumbo v15, "mailboxKey"

    iget-wide v0, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4911
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v11

    .line 4912
    .local v11, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4913
    .local v12, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v12}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_1

    .line 4916
    .end local v12    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_0
    new-instance v4, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v16, "EmailProvider.db"

    const-string/jumbo v17, "Message"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v4, v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4917
    .local v4, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v15, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4918
    const-string/jumbo v15, "mailboxKey"

    iget-wide v0, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4919
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    goto/16 :goto_0

    .line 4922
    .end local v4    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    .end local v5    # "folder":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v10    # "mailSelect":Lcom/alibaba/alimei/orm/query/Select;
    .end local v11    # "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_1
    new-instance v7, Lcom/alibaba/alimei/orm/query/Update;

    const-class v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v15, "EmailProvider.db"

    const-string/jumbo v16, "Mailbox"

    move-object/from16 v0, v16

    invoke-direct {v7, v14, v15, v0}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4923
    .local v7, "folderUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v14, "syncKey"

    const-string/jumbo v15, ""

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4924
    const-string/jumbo v14, "messageOldestServerId"

    const-string/jumbo v15, ""

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4925
    const-string/jumbo v14, "_id"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/alimei/orm/query/Update;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4926
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 4929
    .end local v6    # "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v7    # "folderUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :cond_2
    invoke-virtual {v9}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    .line 4930
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 4932
    :cond_3
    return-void
.end method

.method public resetImapUid(JLjava/lang/String;)V
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 4859
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v8, "EmailProvider.db"

    const-string/jumbo v9, "Message"

    invoke-direct {v6, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4860
    .local v6, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v7, "mailboxKey"

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 4861
    const-string/jumbo v7, "_id"

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 4863
    const-string/jumbo v7, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4864
    const-string/jumbo v7, "uid <> 0"

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 4866
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v4

    .line 4867
    .local v4, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4868
    .local v3, "mailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v7, -0x9

    invoke-direct {v2, p1, p2, p3, v7}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 4869
    .local v2, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 4870
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 4871
    .local v5, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    iget-wide v8, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4872
    invoke-static {v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0

    .line 4875
    .end local v5    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v8, "EmailProviderBody.db"

    const-string/jumbo v9, "Body"

    invoke-direct {v1, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4876
    .local v1, "deleteBody":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v7, "messageKey"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/alimei/orm/query/Delete;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4877
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 4880
    .end local v1    # "deleteBody":Lcom/alibaba/alimei/orm/query/Delete;
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v8, "EmailProvider.db"

    const-string/jumbo v9, "Message"

    invoke-direct {v0, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4881
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v7, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4882
    const-string/jumbo v7, "uid <> 0"

    invoke-virtual {v0, v7}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 4883
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 4885
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 4886
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 4888
    :cond_2
    return-void
.end method

.method public saveOrUpdateDraft(JLjava/lang/String;ZLcom/alibaba/alimei/sdk/model/AddressModel;Lagz;Z)J
    .locals 59
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "isNotifyChanged"    # Z
    .param p5, "currentAccount"    # Lcom/alibaba/alimei/sdk/model/AddressModel;
    .param p6, "newMail"    # Lagz;
    .param p7, "isSendMailOperation"    # Z

    .prologue
    .line 223
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->d:Ljava/util/List;

    invoke-static {v6}, Lair;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v37

    .line 225
    .local v37, "packToAddress":Ljava/lang/String;
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->e:Ljava/util/List;

    invoke-static {v6}, Lair;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v34

    .line 227
    .local v34, "packCCAddress":Ljava/lang/String;
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->f:Ljava/util/List;

    invoke-static {v6}, Lair;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v33

    .line 229
    .local v33, "packBCCAddress":Ljava/lang/String;
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->x:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    invoke-static {v6}, Lair;->a(Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;)Ljava/lang/String;

    move-result-object v35

    .line 231
    .local v35, "packExtData":Ljava/lang/String;
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->s:Ljava/util/List;

    invoke-static {v6}, Lair;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v36

    .line 232
    .local v36, "packMailTags":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    const/16 v21, 0x1

    .line 235
    .local v21, "hasMailTags":Z
    :goto_0
    const/4 v13, 0x0

    .line 236
    .local v13, "delegateAccount":Ljava/lang/String;
    new-instance v18, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 237
    .local v18, "from":Lcom/alibaba/alimei/sdk/model/AddressModel;
    move-object/from16 v0, p6

    iget-object v0, v0, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-object/from16 v38, v0

    .line 239
    .local v38, "proxy":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v38, :cond_1a

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 240
    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 241
    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 242
    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 248
    :goto_1
    invoke-static/range {v18 .. v18}, Lair;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)Ljava/lang/String;

    move-result-object v19

    .line 250
    .local v19, "fromAddress":Ljava/lang/String;
    move-object/from16 v0, p6

    iget-wide v0, v0, Lagz;->j:J

    move-wide/from16 v54, v0

    .line 251
    .local v54, "timeStamp":J
    const-wide/16 v6, 0x0

    cmp-long v6, v54, v6

    if-gtz v6, :cond_0

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    .line 257
    :cond_0
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->i:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 258
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->h:Ljava/lang/String;

    if-nez v6, :cond_1b

    const/16 v25, 0x0

    .line 264
    .local v25, "htmlContent":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p6

    iget-wide v6, v0, Lagz;->k:J

    const-wide/16 v10, -0x1

    cmp-long v6, v6, v10

    if-nez v6, :cond_1d

    const/16 v42, 0x0

    .line 265
    .local v42, "replyMailBody":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    :goto_3
    move-object/from16 v0, p6

    iget-wide v6, v0, Lagz;->k:J

    const-wide/16 v10, -0x1

    cmp-long v6, v6, v10

    if-nez v6, :cond_1e

    const/16 v41, 0x0

    .line 266
    .local v41, "replyMail":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :goto_4
    if-eqz v42, :cond_1f

    const/16 v22, 0x1

    .line 267
    .local v22, "hasReplyBody":Z
    :goto_5
    if-eqz v41, :cond_20

    const/16 v23, 0x1

    .line 269
    .local v23, "hasReplyMail":Z
    :goto_6
    if-eqz v41, :cond_23

    .line 270
    move-object/from16 v0, p6

    iget-boolean v6, v0, Lagz;->m:Z

    if-eqz v6, :cond_21

    .line 271
    const/16 v17, 0x2

    .line 276
    .local v17, "flags":I
    :goto_7
    move-object/from16 v0, p6

    iget-boolean v6, v0, Lagz;->n:Z

    if-eqz v6, :cond_22

    .line 277
    const v6, -0x20001

    and-int v17, v17, v6

    .line 286
    :goto_8
    move-object/from16 v0, p6

    iget-object v12, v0, Lagz;->u:Ljava/lang/String;

    .line 287
    .local v12, "calItemId":Ljava/lang/String;
    move-object/from16 v0, p6

    iget-boolean v6, v0, Lagz;->t:Z

    if-eqz v6, :cond_1

    .line 288
    const/high16 v6, 0x200000

    or-int v17, v17, v6

    .line 291
    :cond_1
    move-object/from16 v0, p6

    iget-boolean v6, v0, Lagz;->o:Z

    if-eqz v6, :cond_24

    .line 292
    const/high16 v6, 0x100000

    or-int v17, v17, v6

    .line 297
    :goto_9
    const/16 v39, 0x0

    .line 298
    .local v39, "references":Ljava/lang/String;
    if-eqz v41, :cond_2

    .line 299
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mReferences:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 6295
    :cond_2
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->p:Ljava/util/List;

    if-eqz v6, :cond_25

    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_25

    .line 6296
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 6297
    if-eqz v6, :cond_3

    .line 6301
    iget v6, v6, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    if-nez v6, :cond_3

    .line 6302
    const/16 v20, 0x1

    .line 6319
    .local v20, "hasAttachment":Z
    :goto_a
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->p:Ljava/util/List;

    if-eqz v6, :cond_27

    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_27

    .line 6320
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 6321
    if-eqz v6, :cond_4

    .line 6325
    iget v6, v6, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    const/4 v10, 0x1

    if-ne v6, v10, :cond_4

    .line 6326
    const/16 v24, 0x1

    .line 304
    .local v24, "hasResourceAttachment":Z
    :goto_b
    const/16 v43, 0x0

    .line 305
    .local v43, "replyServerId":Ljava/lang/String;
    if-eqz v41, :cond_5

    .line 306
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 309
    :cond_5
    const-string/jumbo v6, "MessageDatasource"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "saveOrSendMail hasReplyBody: "

    aput-object v11, v7, v10

    const/4 v10, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string/jumbo v11, ", hasReplyMail: "

    aput-object v11, v7, v10

    const/4 v10, 0x3

    .line 310
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const-string/jumbo v11, ", flags: "

    aput-object v11, v7, v10

    const/4 v10, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x6

    const-string/jumbo v11, ", hasAttachment: "

    aput-object v11, v7, v10

    const/4 v10, 0x7

    .line 311
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/16 v10, 0x8

    const-string/jumbo v11, ", replyServerId: "

    aput-object v11, v7, v10

    const/16 v10, 0x9

    aput-object v43, v7, v10

    .line 309
    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    move-object/from16 v0, p6

    iget-wide v8, v0, Lagz;->b:J

    .line 315
    .local v8, "targetMessageId":J
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v16

    .line 316
    .local v16, "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    const/4 v6, 0x4

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2, v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v30

    .line 317
    .local v30, "mailboxOutbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    const/4 v6, 0x3

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2, v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v29

    .line 320
    .local v29, "mailboxDrafts":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v46

    .line 321
    .local v46, "settingDatasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    const/4 v6, 0x3

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v6}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getIsFolderTypeSync2Server(Ljava/lang/String;I)Z

    move-result v51

    .line 322
    .local v51, "sync2Server":Z
    const/4 v6, 0x3

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v6}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getFolderByUserDefineType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v53

    .line 323
    .local v53, "userDefineDraftServerId":Ljava/lang/String;
    if-eqz v51, :cond_6

    invoke-static/range {v53 .. v53}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 324
    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    move-object/from16 v3, v53

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v29

    .line 327
    :cond_6
    new-instance v27, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v6, -0x9

    move-object/from16 v0, v27

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 329
    .local v27, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    move-object/from16 v0, p6

    iget-object v0, v0, Lagz;->h:Ljava/lang/String;

    move-object/from16 v47, v0

    .line 330
    .local v47, "snippetContent":Ljava/lang/String;
    if-nez v47, :cond_7

    .line 331
    move-object/from16 v47, v25

    .line 334
    :cond_7
    if-eqz v47, :cond_a

    .line 335
    invoke-static/range {v47 .. v47}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v50

    .line 336
    .local v50, "span":Landroid/text/Spanned;
    if-eqz v50, :cond_8

    .line 337
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v47

    .line 339
    :cond_8
    sget-object v6, Lagy;->a:Lagy;

    .line 7051
    iget v0, v6, Lagy;->d:I

    move/from16 v52, v0

    .line 340
    .local v52, "targetSize":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->CRLF:Ljava/util/regex/Pattern;

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 341
    .local v26, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 342
    const-string/jumbo v6, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 344
    :cond_9
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, v52

    if-le v6, v0, :cond_a

    .line 345
    const/4 v6, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v52

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v47

    .line 349
    .end local v26    # "m":Ljava/util/regex/Matcher;
    .end local v50    # "span":Landroid/text/Spanned;
    .end local v52    # "targetSize":I
    :cond_a
    const-wide/16 v6, -0x1

    cmp-long v6, v8, v6

    if-eqz v6, :cond_29

    .line 352
    new-instance v32, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v10, "Message"

    move-object/from16 v0, v32

    invoke-direct {v0, v6, v7, v10}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .local v32, "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v6, "fromList"

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    const-string/jumbo v6, "delegate_acc"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    const-string/jumbo v6, "toList"

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    const-string/jumbo v6, "ccList"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    const-string/jumbo v6, "bccList"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    const-string/jumbo v6, "subject"

    move-object/from16 v0, p6

    iget-object v7, v0, Lagz;->g:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    const-string/jumbo v6, "snippet"

    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    const-string/jumbo v6, "timeStamp"

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    const-string/jumbo v6, "flagAttachment"

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    const-string/jumbo v6, "flagAttach"

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    const-string/jumbo v6, "flags"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    const-string/jumbo v6, "separated_send"

    move-object/from16 v0, p6

    iget-object v7, v0, Lagz;->z:Ljava/lang/Boolean;

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    const-string/jumbo v6, "timing_send"

    move-object/from16 v0, p6

    iget-object v7, v0, Lagz;->A:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    const-string/jumbo v6, "local_extension"

    move-object/from16 v0, p6

    iget-object v7, v0, Lagz;->B:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    const-string/jumbo v6, "priority"

    move-object/from16 v0, p6

    iget v7, v0, Lagz;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    const-string/jumbo v6, "extend_header"

    move-object/from16 v0, p6

    iget-object v7, v0, Lagz;->C:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    const-string/jumbo v6, "calendarId"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v12}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    const-string/jumbo v6, "source_key"

    move-object/from16 v0, p6

    iget-wide v10, v0, Lagz;->k:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    if-eqz v39, :cond_b

    .line 373
    const-string/jumbo v6, "mail_references"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    :cond_b
    if-eqz v35, :cond_c

    .line 376
    const-string/jumbo v6, "extention_data"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    :cond_c
    if-eqz v21, :cond_d

    .line 379
    const-string/jumbo v6, "messageTag"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    :cond_d
    const-string/jumbo v6, "messageType"

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    if-eqz p7, :cond_e

    .line 384
    const-string/jumbo v6, "mailboxKey"

    move-object/from16 v0, v30

    iget-wide v10, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    :cond_e
    const-string/jumbo v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p6

    iget-wide v0, v0, Lagz;->b:J

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 390
    new-instance v4, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v7, "EmailProviderBody.db"

    const-string/jumbo v10, "Body"

    invoke-direct {v4, v6, v7, v10}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .local v4, "bodyUpdate":Lcom/alibaba/alimei/orm/query/Update;
    if-eqz v42, :cond_12

    .line 392
    const-string/jumbo v6, "MessageDatasource"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "update mail getBodySizeDesc: "

    aput-object v11, v7, v10

    const/4 v10, 0x1

    invoke-virtual/range {v42 .. v42}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->getBodySizeDesc()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 394
    .local v40, "replyHtml":Ljava/lang/String;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v44, v0

    .line 395
    .local v44, "replyText":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 396
    const-string/jumbo v44, ""

    .line 399
    :cond_f
    invoke-static/range {v40 .. v40}, Lail;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 400
    const-string/jumbo v40, ""

    .line 403
    :cond_10
    invoke-static/range {v44 .. v44}, Lail;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 404
    const-string/jumbo v44, ""

    .line 407
    :cond_11
    const-string/jumbo v6, "htmlReply"

    move-object/from16 v0, v40

    invoke-virtual {v4, v6, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    const-string/jumbo v6, "textReply"

    move-object/from16 v0, v44

    invoke-virtual {v4, v6, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    const-string/jumbo v6, "sourceMessageKey"

    move-object/from16 v0, p6

    iget-wide v10, v0, Lagz;->k:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    .end local v40    # "replyHtml":Ljava/lang/String;
    .end local v44    # "replyText":Ljava/lang/String;
    :cond_12
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 413
    const-string/jumbo v6, ""

    move-object/from16 v0, p6

    iput-object v6, v0, Lagz;->h:Ljava/lang/String;

    .line 415
    :cond_13
    const-string/jumbo v6, "textContent"

    move-object/from16 v0, p6

    iget-object v7, v0, Lagz;->h:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    const-string/jumbo v6, "htmlContent"

    move-object/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->r:Ljava/lang/String;

    invoke-static {v6}, Lail;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 418
    const-string/jumbo v6, ""

    move-object/from16 v0, p6

    iput-object v6, v0, Lagz;->r:Ljava/lang/String;

    .line 420
    :cond_14
    const-string/jumbo v6, "introText"

    move-object/from16 v0, p6

    iget-object v7, v0, Lagz;->r:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    const-string/jumbo v6, "messageKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p6

    iget-wide v0, v0, Lagz;->b:J

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v45

    .line 423
    .local v45, "ret":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "MessageDatasourcesaveOrUpdateDraft update ret: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyx;->b(Ljava/lang/String;)I

    .line 426
    if-eqz v41, :cond_15

    .line 427
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftLocalId:J

    const-wide/16 v10, -0x1

    cmp-long v6, v6, v10

    if-eqz v6, :cond_15

    .line 428
    const-wide/16 v6, -0x1

    move-object/from16 v0, v41

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftLocalId:J

    .line 429
    const-string/jumbo v6, ""

    move-object/from16 v0, v41

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftContent:Ljava/lang/String;

    .line 431
    new-instance v48, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v10, "Message"

    move-object/from16 v0, v48

    invoke-direct {v0, v6, v7, v10}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .local v48, "sourceMessageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v6, "draft_local_id"

    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftLocalId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 433
    const-string/jumbo v6, "draft_content"

    move-object/from16 v0, v41

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftContent:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    const-string/jumbo v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-virtual/range {v48 .. v48}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 439
    .end local v48    # "sourceMessageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :cond_15
    if-eqz p4, :cond_16

    .line 440
    move-object/from16 v0, p6

    iget-wide v6, v0, Lagz;->b:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMailSnippetById(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v28

    .line 441
    .local v28, "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v28, :cond_16

    .line 442
    if-eqz p7, :cond_28

    .line 444
    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, v28

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 445
    invoke-virtual/range {v27 .. v28}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addAddedMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 447
    invoke-static/range {v28 .. v28}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->copy(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v15

    .line 448
    .local v15, "draftDeleteMail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    iput-wide v6, v15, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 449
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 451
    if-eqz v41, :cond_16

    .line 452
    invoke-static/range {v41 .. v41}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v49

    .line 453
    .local v49, "sourceSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 597
    .end local v4    # "bodyUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v15    # "draftDeleteMail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v28    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v32    # "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v45    # "ret":I
    .end local v49    # "sourceSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_16
    :goto_c
    const-wide/16 v6, -0x1

    cmp-long v6, v8, v6

    if-eqz v6, :cond_17

    .line 598
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v5

    .line 600
    .local v5, "attachmentDatasource":Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;
    invoke-virtual/range {p6 .. p6}, Lagz;->d()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 601
    move-object/from16 v0, p6

    iget-object v10, v0, Lagz;->p:Ljava/util/List;

    move-object/from16 v0, p6

    iget-object v11, v0, Lagz;->q:Ljava/util/List;

    move-wide/from16 v6, p1

    invoke-interface/range {v5 .. v11}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->handleMessageAttachment(JJLjava/util/List;Ljava/util/List;)V

    .line 609
    .end local v5    # "attachmentDatasource":Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;
    :cond_17
    :goto_d
    if-eqz p4, :cond_18

    invoke-virtual/range {v27 .. v27}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_18

    .line 610
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 614
    :cond_18
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->d:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, v54

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->handleAddOrUpdateFrequentContacts(Ljava/lang/String;JLjava/util/List;)V

    .line 615
    return-wide v8

    .line 232
    .end local v8    # "targetMessageId":J
    .end local v12    # "calItemId":Ljava/lang/String;
    .end local v13    # "delegateAccount":Ljava/lang/String;
    .end local v16    # "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .end local v17    # "flags":I
    .end local v18    # "from":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v19    # "fromAddress":Ljava/lang/String;
    .end local v20    # "hasAttachment":Z
    .end local v21    # "hasMailTags":Z
    .end local v22    # "hasReplyBody":Z
    .end local v23    # "hasReplyMail":Z
    .end local v24    # "hasResourceAttachment":Z
    .end local v25    # "htmlContent":Ljava/lang/String;
    .end local v27    # "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v29    # "mailboxDrafts":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v30    # "mailboxOutbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v38    # "proxy":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v39    # "references":Ljava/lang/String;
    .end local v41    # "replyMail":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v42    # "replyMailBody":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .end local v43    # "replyServerId":Ljava/lang/String;
    .end local v46    # "settingDatasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    .end local v47    # "snippetContent":Ljava/lang/String;
    .end local v51    # "sync2Server":Z
    .end local v53    # "userDefineDraftServerId":Ljava/lang/String;
    .end local v54    # "timeStamp":J
    :cond_19
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 244
    .restart local v13    # "delegateAccount":Ljava/lang/String;
    .restart local v18    # "from":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .restart local v21    # "hasMailTags":Z
    .restart local v38    # "proxy":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_1a
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 245
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    goto/16 :goto_1

    .line 258
    .restart local v19    # "fromAddress":Ljava/lang/String;
    .restart local v54    # "timeStamp":J
    :cond_1b
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->h:Ljava/lang/String;

    .line 259
    invoke-static {v6}, Lair;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_2

    .line 261
    :cond_1c
    move-object/from16 v0, p6

    iget-object v0, v0, Lagz;->i:Ljava/lang/String;

    move-object/from16 v25, v0

    .restart local v25    # "htmlContent":Ljava/lang/String;
    goto/16 :goto_2

    .line 264
    :cond_1d
    move-object/from16 v0, p6

    iget-wide v6, v0, Lagz;->k:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageBodyById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    move-result-object v42

    goto/16 :goto_3

    .line 265
    .restart local v42    # "replyMailBody":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    :cond_1e
    move-object/from16 v0, p6

    iget-wide v6, v0, Lagz;->k:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v41

    goto/16 :goto_4

    .line 266
    .restart local v41    # "replyMail":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_1f
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 267
    .restart local v22    # "hasReplyBody":Z
    :cond_20
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 273
    .restart local v23    # "hasReplyMail":Z
    :cond_21
    const/16 v17, 0x1

    .restart local v17    # "flags":I
    goto/16 :goto_7

    .line 279
    :cond_22
    const/high16 v6, 0x20000

    or-int v17, v17, v6

    goto/16 :goto_8

    .line 282
    .end local v17    # "flags":I
    :cond_23
    const/high16 v17, 0x20000

    .restart local v17    # "flags":I
    goto/16 :goto_8

    .line 294
    .restart local v12    # "calItemId":Ljava/lang/String;
    :cond_24
    const v6, -0x100001

    and-int v17, v17, v6

    goto/16 :goto_9

    .line 6307
    .restart local v39    # "references":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->q:Ljava/util/List;

    if-eqz v6, :cond_26

    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->q:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_26

    .line 6308
    const/16 v20, 0x1

    goto/16 :goto_a

    .line 6311
    :cond_26
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 6331
    .restart local v20    # "hasAttachment":Z
    :cond_27
    const/16 v24, 0x0

    goto/16 :goto_b

    .line 457
    .restart local v4    # "bodyUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .restart local v8    # "targetMessageId":J
    .restart local v16    # "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .restart local v24    # "hasResourceAttachment":Z
    .restart local v27    # "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .restart local v28    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .restart local v29    # "mailboxDrafts":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .restart local v30    # "mailboxOutbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .restart local v32    # "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .restart local v43    # "replyServerId":Ljava/lang/String;
    .restart local v45    # "ret":I
    .restart local v46    # "settingDatasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    .restart local v47    # "snippetContent":Ljava/lang/String;
    .restart local v51    # "sync2Server":Z
    .restart local v53    # "userDefineDraftServerId":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p6

    iget-boolean v6, v0, Lagz;->y:Z

    if-nez v6, :cond_16

    .line 458
    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, v28

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 459
    invoke-virtual/range {v27 .. v28}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto/16 :goto_c

    .line 466
    .end local v4    # "bodyUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v28    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v32    # "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v45    # "ret":I
    :cond_29
    new-instance v31, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-direct/range {v31 .. v31}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;-><init>()V

    .line 468
    .local v31, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->c:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    .line 469
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 470
    invoke-static {}, Lair;->a()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    .line 473
    :cond_2a
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMessageId:Ljava/lang/String;

    .line 474
    if-eqz p7, :cond_36

    .line 475
    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, v31

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    .line 479
    :cond_2b
    :goto_e
    move-wide/from16 v0, p1

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    .line 480
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    .line 482
    move-object/from16 v0, v31

    iput-object v13, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->delegateByAccount:Ljava/lang/String;

    .line 483
    move-object/from16 v0, v37

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    .line 484
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    .line 485
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mBcc:Ljava/lang/String;

    .line 486
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->g:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    .line 487
    move-object/from16 v0, v47

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSnippet:Ljava/lang/String;

    .line 488
    move-wide/from16 v0, v54

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    .line 489
    move/from16 v0, v20

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagAttachment:Z

    .line 490
    move/from16 v0, v24

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasResourceAttach:Z

    .line 491
    move/from16 v0, v17

    move-object/from16 v1, v31

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlags:I

    .line 493
    const/4 v6, 0x1

    move-object/from16 v0, v31

    iput v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagLoaded:I

    .line 494
    const/4 v6, 0x1

    move-object/from16 v0, v31

    iput-boolean v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagRead:Z

    .line 495
    const/4 v6, 0x0

    move-object/from16 v0, v31

    iput-boolean v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagFavorite:Z

    .line 496
    move-object/from16 v0, v31

    iput-object v12, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarId:Ljava/lang/String;

    .line 497
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->w:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->conversationExtension:Ljava/lang/String;

    .line 498
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mExtData:Ljava/lang/String;

    .line 499
    move-object/from16 v0, v36

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageTags:Ljava/lang/String;

    .line 500
    move/from16 v0, v21

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageHasTag:Z

    .line 501
    move-object/from16 v0, v39

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mReferences:Ljava/lang/String;

    .line 502
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->z:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, v31

    iput-boolean v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->separatedSend:Z

    .line 503
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->A:Ljava/lang/String;

    if-eqz v6, :cond_37

    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->A:Ljava/lang/String;

    :goto_f
    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->timingSend:Ljava/lang/String;

    .line 504
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->B:Ljava/lang/String;

    if-eqz v6, :cond_38

    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->B:Ljava/lang/String;

    :goto_10
    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->localExtension:Ljava/lang/String;

    .line 505
    move-object/from16 v0, p6

    iget v6, v0, Lagz;->a:I

    move-object/from16 v0, v31

    iput v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->priority:I

    .line 506
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->C:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->extendHeader:Ljava/lang/String;

    .line 507
    move-object/from16 v0, p6

    iget-wide v6, v0, Lagz;->k:J

    move-object/from16 v0, v31

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->sourceId:J

    .line 510
    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->save()J

    move-result-wide v6

    move-object/from16 v0, v31

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    .line 511
    move-object/from16 v0, v31

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    .line 514
    new-instance v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    invoke-direct {v14}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;-><init>()V

    .line 515
    .local v14, "draftBody":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    move-object/from16 v0, v31

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    iput-wide v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mMessageKey:J

    .line 517
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->h:Ljava/lang/String;

    iput-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    .line 518
    move-object/from16 v0, v25

    iput-object v0, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    .line 519
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 521
    const-string/jumbo v6, ""

    iput-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    .line 523
    :cond_2c
    if-eqz v42, :cond_2d

    .line 524
    move-object/from16 v0, v42

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    iput-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlReply:Ljava/lang/String;

    .line 528
    :cond_2d
    if-eqz v41, :cond_2e

    .line 529
    move-object/from16 v0, p6

    iget-wide v6, v0, Lagz;->k:J

    iput-wide v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mSourceKey:J

    .line 532
    :cond_2e
    iget-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextReply:Ljava/lang/String;

    invoke-static {v6}, Lail;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 533
    const-string/jumbo v6, ""

    iput-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextReply:Ljava/lang/String;

    .line 536
    :cond_2f
    iget-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlReply:Ljava/lang/String;

    invoke-static {v6}, Lail;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 537
    const-string/jumbo v6, ""

    iput-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlReply:Ljava/lang/String;

    .line 540
    :cond_30
    move-object/from16 v0, p6

    iget-object v6, v0, Lagz;->r:Ljava/lang/String;

    iput-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIntroText:Ljava/lang/String;

    .line 541
    iget-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIntroText:Ljava/lang/String;

    invoke-static {v6}, Lail;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 542
    const-string/jumbo v6, ""

    iput-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIntroText:Ljava/lang/String;

    .line 545
    :cond_31
    const-string/jumbo v6, "MessageDatasource"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "new mail getBodySizeDesc: "

    aput-object v11, v7, v10

    const/4 v10, 0x1

    invoke-virtual {v14}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->getBodySizeDesc()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    invoke-static {v6}, Lail;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 548
    const-string/jumbo v6, "MessageDatasource"

    const-string/jumbo v7, "new mail textContent is large body, save file"

    invoke-static {v6, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v6, 0x0

    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    iget-object v10, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v6, v7, v10}, Lail;->b(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    .line 550
    const/4 v6, 0x1

    iput-boolean v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveTextContentToFile:Z

    .line 553
    :cond_32
    iget-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    invoke-static {v6}, Lail;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 554
    const-string/jumbo v6, "MessageDatasource"

    const-string/jumbo v7, "new mail html content is large body, save file"

    invoke-static {v6, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v6, 0x0

    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    iget-object v10, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v6, v7, v10}, Lail;->a(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    .line 556
    const/4 v6, 0x1

    iput-boolean v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveHtmlContentToFile:Z

    .line 559
    :cond_33
    const-string/jumbo v6, "EmailProviderBody.db"

    const-string/jumbo v7, "Body"

    invoke-static {v6, v7, v14}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mId:J

    .line 560
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v10, "MessageDatasource"

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v10, "saveOrUpdateDraft save body id="

    aput-object v10, v6, v7

    const/4 v7, 0x2

    iget-wide v10, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v10, " msgId: "

    aput-object v10, v6, v7

    const/4 v7, 0x4

    move-object/from16 v0, v31

    iget-wide v10, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyx;->b(Ljava/lang/String;)I

    .line 561
    const-string/jumbo v6, "MessageDatasource"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "after save new mail body, body desc: "

    aput-object v11, v7, v10

    const/4 v10, 0x1

    invoke-virtual {v14}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->getBodySizeDesc()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-eqz v41, :cond_34

    .line 565
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftLocalId:J

    const-wide/16 v10, -0x1

    cmp-long v6, v6, v10

    if-eqz v6, :cond_34

    .line 566
    const-string/jumbo v6, ""

    move-object/from16 v0, v41

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftContent:Ljava/lang/String;

    .line 567
    const-wide/16 v6, -0x1

    move-object/from16 v0, v41

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftLocalId:J

    .line 569
    new-instance v48, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v10, "Message"

    move-object/from16 v0, v48

    invoke-direct {v0, v6, v7, v10}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .restart local v48    # "sourceMessageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v6, "draft_local_id"

    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftLocalId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 571
    const-string/jumbo v6, "draft_content"

    move-object/from16 v0, v41

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftContent:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    const-string/jumbo v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-virtual/range {v48 .. v48}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 577
    .end local v48    # "sourceMessageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :cond_34
    if-eqz p4, :cond_16

    .line 578
    invoke-static/range {v31 .. v31}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v28

    .line 579
    .restart local v28    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz p7, :cond_39

    .line 581
    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, v28

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 582
    invoke-virtual/range {v27 .. v28}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addAddedMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 590
    :cond_35
    :goto_11
    if-eqz v41, :cond_16

    .line 591
    invoke-static/range {v41 .. v41}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v49

    .line 592
    .restart local v49    # "sourceSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto/16 :goto_c

    .line 476
    .end local v14    # "draftBody":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .end local v28    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v49    # "sourceSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_36
    move-object/from16 v0, p6

    iget-boolean v6, v0, Lagz;->y:Z

    if-nez v6, :cond_2b

    .line 477
    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, v31

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    goto/16 :goto_e

    .line 503
    :cond_37
    const-string/jumbo v6, ""

    goto/16 :goto_f

    .line 504
    :cond_38
    const-string/jumbo v6, ""

    goto/16 :goto_10

    .line 584
    .restart local v14    # "draftBody":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .restart local v28    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_39
    move-object/from16 v0, p6

    iget-boolean v6, v0, Lagz;->y:Z

    if-nez v6, :cond_35

    .line 585
    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, v28

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 586
    invoke-virtual/range {v27 .. v28}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addAddedMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_11

    .line 605
    .end local v14    # "draftBody":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .end local v28    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v31    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .restart local v5    # "attachmentDatasource":Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;
    :cond_3a
    move-wide/from16 v0, p1

    invoke-interface {v5, v0, v1, v8, v9}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->deleteAttachmentByMessageId(JJ)V

    goto/16 :goto_d
.end method

.method public saveQuickReplyContent(JLjava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Z
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "mail"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .prologue
    .line 4937
    iget-wide v6, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftLocalId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 4938
    const-wide/16 v6, 0x1

    iput-wide v6, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftLocalId:J

    .line 4941
    :cond_0
    iget-object v5, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v1

    .line 4943
    .local v1, "replyMail":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v1, :cond_2

    .line 4944
    iget-wide v6, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftLocalId:J

    iput-wide v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftLocalId:J

    .line 4945
    iget-object v5, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mDraftContent:Ljava/lang/String;

    .line 4947
    new-instance v3, Lcom/alibaba/alimei/orm/query/Update;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v6, "EmailProvider.db"

    const-string/jumbo v7, "Message"

    invoke-direct {v3, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4948
    .local v3, "sourceMessageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v5, "draft_local_id"

    iget-wide v6, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftLocalId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4949
    const-string/jumbo v5, "draft_content"

    iget-object v6, p4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4950
    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4951
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v2

    .line 4953
    .local v2, "result":I
    if-lez v2, :cond_2

    .line 4954
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v5, -0x9

    invoke-direct {v0, p1, p2, p3, v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 4955
    .local v0, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v4

    .line 4956
    .local v4, "sourceSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 4958
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4959
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 4962
    :cond_1
    const/4 v5, 0x1

    .line 4966
    .end local v0    # "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v2    # "result":I
    .end local v3    # "sourceMessageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v4    # "sourceSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public saveSendMailOrDraftSyncMessage(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J

    .prologue
    .line 3737
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->saveSendMailOrDraftSyncMessage(JJLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    move-result-object v0

    return-object v0
.end method

.method public saveSendMailOrDraftSyncMessage(JJLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J
    .param p5, "srcServerId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3742
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v0, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 3743
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "accountId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3744
    const-string/jumbo v3, "itemId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3745
    const-string/jumbo v3, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3747
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 3748
    .local v1, "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    if-nez v1, :cond_0

    .line 3749
    new-instance v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .end local v1    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    .line 3750
    .restart local v1    # "sync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    iput-wide p1, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 3751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    .line 3752
    iput-object p5, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->extenddata:Ljava/lang/String;

    .line 3753
    iput v5, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 3754
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    .line 3763
    :goto_0
    return-object v1

    .line 3756
    :cond_0
    new-instance v2, Lcom/alibaba/alimei/orm/query/Update;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 3757
    .local v2, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v3, "synccount"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3758
    const-string/jumbo v3, "lastsynctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3759
    const-string/jumbo v3, "_id"

    iget-wide v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3760
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 3761
    iput v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->synccount:I

    goto :goto_0
.end method

.method public searchLocalContactsByPage(JLjava/lang/String;III)Lagv;
    .locals 17
    .param p1, "accountId"    # J
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "searchType"    # I
    .param p5, "offset"    # I
    .param p6, "limit"    # I

    .prologue
    .line 2961
    new-instance v12, Lcom/alibaba/alimei/orm/query/Select;

    const-class v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "Message"

    move-object/from16 v0, v16

    invoke-direct {v12, v14, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2962
    .local v12, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "toList"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "fromList"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "ccList"

    aput-object v16, v14, v15

    invoke-virtual {v12, v14}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2963
    const-string/jumbo v14, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2964
    packed-switch p4, :pswitch_data_0

    .line 2977
    :goto_0
    move/from16 v0, p5

    invoke-virtual {v12, v0}, Lcom/alibaba/alimei/orm/query/Select;->offset(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 2978
    move/from16 v0, p6

    invoke-virtual {v12, v0}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 2979
    const-string/jumbo v14, "timeStamp desc"

    invoke-virtual {v12, v14}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2981
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v8

    .line 2982
    .local v8, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2983
    :cond_0
    const/4 v9, 0x0

    .line 3037
    :goto_1
    return-object v9

    .line 2966
    .end local v8    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :pswitch_0
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "fromList like \"%"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 2969
    :pswitch_1
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "toList like \"%"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\" or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "ccList like \"%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 2973
    :pswitch_2
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "fromList like \"%"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\" or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "toList like \"%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\" or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "ccList like \"%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2986
    .restart local v8    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2987
    .local v3, "addressModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2991
    .local v4, "addressSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2992
    .local v7, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v7, :cond_2

    .line 2996
    packed-switch p4, :pswitch_data_1

    goto :goto_2

    .line 2998
    :pswitch_3
    iget-object v15, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    invoke-static {v15}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2999
    .local v6, "fromList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v3, v4, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addContactSearchModels(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_2

    .line 3002
    .end local v6    # "fromList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :pswitch_4
    iget-object v15, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    invoke-static {v15}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 3003
    .local v13, "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v3, v4, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addContactSearchModels(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;)V

    .line 3005
    iget-object v15, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    invoke-static {v15}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 3006
    .local v5, "ccList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v3, v4, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addContactSearchModels(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_2

    .line 3009
    .end local v5    # "ccList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .end local v13    # "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :pswitch_5
    iget-object v15, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    invoke-static {v15}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 3010
    .restart local v6    # "fromList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v3, v4, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addContactSearchModels(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;)V

    .line 3012
    iget-object v15, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    invoke-static {v15}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 3013
    .restart local v13    # "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v3, v4, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addContactSearchModels(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;)V

    .line 3015
    iget-object v15, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    invoke-static {v15}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 3016
    .restart local v5    # "ccList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v3, v4, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->addContactSearchModels(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_2

    .line 3021
    .end local v5    # "ccList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .end local v6    # "fromList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .end local v7    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v13    # "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3022
    .local v11, "searchModelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 3023
    .local v2, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v2, :cond_4

    .line 3026
    new-instance v10, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    invoke-direct {v10}, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;-><init>()V

    .line 3027
    .local v10, "searchModel":Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;
    iget-object v15, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v15, v10, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    .line 3028
    iget-object v15, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v15, v10, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->alias:Ljava/lang/String;

    .line 3029
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3032
    .end local v2    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v10    # "searchModel":Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;
    :cond_5
    new-instance v9, Lagv;

    invoke-direct {v9}, Lagv;-><init>()V

    .line 3033
    .local v9, "resultModel":Lagv;
    iput-object v11, v9, Lagv;->d:Ljava/util/List;

    .line 3034
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    add-int v14, v14, p5

    int-to-long v14, v14

    iput-wide v14, v9, Lagv;->b:J

    .line 3035
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v0, p6

    if-lt v14, v0, :cond_6

    const/4 v14, 0x1

    :goto_4
    iput-boolean v14, v9, Lagv;->c:Z

    goto/16 :goto_1

    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    .line 2964
    .line 2996
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public searchLocalContactsByPage(Ljava/lang/String;Ljava/lang/String;II)Lagv;
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "limit"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3072
    new-instance v4, Lagv;

    invoke-direct {v4}, Lagv;-><init>()V

    .line 3073
    .local v4, "resultModel":Lagv;
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "frequent_contact"

    invoke-direct {v6, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    .local v6, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v7, "account_id"

    invoke-virtual {v6, v7, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3075
    invoke-virtual {v6, p3}, Lcom/alibaba/alimei/orm/query/Select;->offset(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 3076
    invoke-virtual {v6, p4}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 3077
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "display_name like \"%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%\" or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mail_address like \"%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 3079
    const-string/jumbo v7, "modify_time desc"

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 3080
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 3081
    .local v2, "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3106
    :cond_0
    :goto_0
    return-object v4

    .line 3085
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v4, Lagv;->a:I

    .line 3086
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3087
    .local v3, "contactSearchModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3088
    .local v0, "addressSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    .line 3089
    .local v1, "contact":Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;
    if-eqz v1, :cond_2

    .line 3093
    iget-object v8, v1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->mailAddress:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3097
    iget-object v8, v1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->mailAddress:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3098
    new-instance v5, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;-><init>()V

    .line 3099
    .local v5, "searchModel":Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;
    iget-object v8, v1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->mailAddress:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    .line 3100
    iget-object v8, v1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->displayName:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->alias:Ljava/lang/String;

    .line 3101
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3104
    .end local v1    # "contact":Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;
    .end local v5    # "searchModel":Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;
    :cond_3
    iput-object v3, v4, Lagv;->d:Ljava/util/List;

    goto :goto_0
.end method

.method public searchLocalMailAttachmentsByPage(JLjava/lang/String;II)Ljava/util/List;
    .locals 19
    .param p1, "accountId"    # J
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "limit"    # I
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

    .prologue
    .line 2899
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "Attachment"

    invoke-direct {v2, v13, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    .local v2, "attSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v13, "attachment_type"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2901
    const-string/jumbo v13, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2902
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/orm/query/Select;->offset(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 2903
    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 2904
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "fileName like \"%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 2905
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v4

    .line 2907
    .local v4, "attachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2908
    :cond_0
    const/4 v6, 0x0

    .line 2956
    :cond_1
    :goto_0
    return-object v6

    .line 2911
    :cond_2
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 2912
    .local v9, "msgKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 2913
    .local v3, "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    if-eqz v3, :cond_3

    iget-wide v14, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMessageKey:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 2917
    iget-wide v14, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMessageKey:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2920
    .end local v3    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    :cond_4
    new-instance v12, Lcom/alibaba/alimei/orm/query/Select;

    const-class v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "Message"

    invoke-direct {v12, v13, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    .local v12, "msgSelect":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v13, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2922
    const-string/jumbo v13, "_id"

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v12, v13, v14}, Lcom/alibaba/alimei/orm/query/Select;->andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 2923
    const-string/jumbo v13, "timeStamp desc"

    invoke-virtual {v12, v13}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2924
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v10

    .line 2926
    .local v10, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2927
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 2930
    :cond_6
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2931
    .local v11, "msgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2932
    .local v8, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v8, :cond_7

    .line 2936
    iget-wide v14, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2939
    .end local v8    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 2940
    .local v6, "mailAttachList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_9
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 2941
    .restart local v3    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    if-eqz v3, :cond_9

    iget-wide v14, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMessageKey:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_9

    .line 2945
    iget-wide v14, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMessageKey:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2946
    .restart local v8    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v8, :cond_9

    .line 2950
    invoke-static {v3}, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;->buildAttachmentModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v5

    .line 2951
    .local v5, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    invoke-static {v8}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailAttachmentModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    move-result-object v7

    .line 2952
    .local v7, "mailAttachSearchModel":Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
    iput-object v5, v7, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 2953
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public searchLocalMails(JLjava/lang/String;I)Ljava/util/List;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "type"    # I
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

    .prologue
    const/4 v6, -0x1

    .line 2791
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->searchLocalMailsByPage(JLjava/lang/String;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public searchLocalMailsByPage(JLjava/lang/String;III)Ljava/util/List;
    .locals 17
    .param p1, "accountId"    # J
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "limit"    # I
    .param p6, "offset"    # I
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

    .prologue
    .line 2796
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2797
    .local v9, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v11, Lcom/alibaba/alimei/orm/query/Select;

    const-class v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v14, "EmailProvider.db"

    const-string/jumbo v15, "Message"

    invoke-direct {v11, v13, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    .local v11, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v13, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->sMailListColumnsWithoutToReadTime:[Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2799
    const-string/jumbo v13, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2801
    packed-switch p4, :pswitch_data_0

    .line 2877
    :goto_0
    :pswitch_0
    if-lez p5, :cond_0

    .line 2878
    move/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 2881
    :cond_0
    if-ltz p6, :cond_1

    .line 2882
    move/from16 v0, p6

    invoke-virtual {v11, v0}, Lcom/alibaba/alimei/orm/query/Select;->offset(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 2885
    :cond_1
    const-string/jumbo v13, "timeStamp DESC "

    invoke-virtual {v11, v13}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 2886
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v7

    .line 2887
    .local v7, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-nez v7, :cond_9

    .line 2894
    :cond_2
    return-object v9

    .line 2803
    .end local v7    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :pswitch_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, " ( toList like \'%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%\' or fromList"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " like \'%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%\' or subject"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " like \'%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%\' ) "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 2808
    :pswitch_2
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "Currently, don\'t support for searching mail by content."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2810
    :pswitch_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "(toList like \'%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%\'  or "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ccList like \'%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%\' )"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2814
    :pswitch_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "fromList like \'%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%\' "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2817
    :pswitch_5
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "(toList like \'%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%\'  or "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "fromList like \'%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%\'  or "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ccList like \'%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%\' )"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2822
    :pswitch_6
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "subject like \'%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%\' "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2825
    :pswitch_7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2826
    .local v2, "accountAliasSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getContactDatasource()Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-interface {v13, v0, v1}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource;->queryUserSelfContact(J)Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    move-result-object v3

    .line 2827
    .local v3, "accountModel":Lcom/alibaba/alimei/contact/model/UserSelfContactModel;
    if-eqz v3, :cond_4

    .line 2828
    iget-object v5, v3, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    .line 2829
    .local v5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 2830
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2831
    .local v4, "alias":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 2834
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2838
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-interface {v13, v0, v1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAccountById(J)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v12

    .line 2839
    .local v12, "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v12, :cond_5

    iget-object v13, v12, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2840
    iget-object v13, v12, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2844
    .end local v12    # "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2846
    .local v10, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    .line 2847
    const-string/jumbo v13, "("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2849
    .restart local v4    # "alias":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 2853
    const-string/jumbo v14, "("

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2854
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "(fromList like \'%"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\' "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2855
    const-string/jumbo v14, " and "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2856
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "(toList like \'%"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\' or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2857
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "ccList like \'%"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\')) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2859
    const-string/jumbo v14, " or "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "(fromList like \'%"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\' "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2861
    const-string/jumbo v14, " and "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "(toList like \'%"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\' or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "ccList like \'%"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%\')) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    const-string/jumbo v14, ")"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    const-string/jumbo v14, " or "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2868
    .end local v4    # "alias":Ljava/lang/String;
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2869
    const-string/jumbo v13, ")"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    :cond_8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2890
    .end local v2    # "accountAliasSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "accountModel":Lcom/alibaba/alimei/contact/model/UserSelfContactModel;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2891
    .local v6, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v8

    .line 2892
    .local v8, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public updateImapPartId(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J
    .param p5, "htmlPartId"    # Ljava/lang/String;
    .param p6, "textPartId"    # Ljava/lang/String;

    .prologue
    .line 4432
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Message"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 4433
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "html_part_id"

    invoke-virtual {v0, v1, p5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4434
    const-string/jumbo v1, "text_part_id"

    invoke-virtual {v0, v1, p6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4435
    const-string/jumbo v1, "_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4436
    const-string/jumbo v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4437
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 4438
    return-void
.end method

.method public updateMailBody(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "mailHtmlBody"    # Ljava/lang/String;
    .param p5, "mailTextBody"    # Ljava/lang/String;

    .prologue
    .line 2011
    new-instance v11, Lcom/alibaba/alimei/orm/query/Select;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v1, "EmailProvider.db"

    const-string/jumbo v2, "Message"

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    .local v11, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "flagLoaded"

    aput-object v2, v0, v1

    invoke-virtual {v11, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2013
    const-string/jumbo v0, "accountKey=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    const-string/jumbo v0, "syncServerId=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2017
    .local v10, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v10, :cond_0

    .line 2018
    new-instance v12, Lcom/alibaba/alimei/orm/query/Select;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v1, "EmailProviderBody.db"

    const-string/jumbo v2, "Body"

    invoke-direct {v12, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    .local v12, "selectBody":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    invoke-virtual {v12, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2020
    const-string/jumbo v0, "messageKey=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    .line 2023
    .local v3, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    if-eqz v3, :cond_2

    .line 2024
    new-instance v13, Lcom/alibaba/alimei/orm/query/Update;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v1, "EmailProviderBody.db"

    const-string/jumbo v2, "Body"

    invoke-direct {v13, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .local v13, "update":Lcom/alibaba/alimei/orm/query/Update;
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 2025
    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailBodyForDatabase(JLjava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Body;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 2026
    .local v9, "isSuccess":Z
    if-eqz v9, :cond_1

    .line 2027
    const-string/jumbo v0, "htmlContent"

    iget-object v1, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2028
    const-string/jumbo v0, "textContent"

    iget-object v1, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2029
    const-string/jumbo v0, "isSaveTextContentToFile"

    iget-boolean v1, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveTextContentToFile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2030
    const-string/jumbo v0, "isSaveHtmlContentToFile"

    iget-boolean v1, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveHtmlContentToFile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2031
    const-string/jumbo v0, "introText"

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2032
    const-string/jumbo v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v8

    .line 2034
    .local v8, "count":I
    const-string/jumbo v0, "MessageDatasource"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "updateMailBody success for messageKey: "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-wide v4, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v4, ", count: "

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 2035
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 2034
    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    .end local v8    # "count":I
    .end local v13    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :goto_0
    if-eqz v9, :cond_0

    const/4 v0, 0x1

    iget v1, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagLoaded:I

    if-eq v0, v1, :cond_0

    .line 2054
    new-instance v14, Lcom/alibaba/alimei/orm/query/Update;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v1, "EmailProvider.db"

    const-string/jumbo v2, "Message"

    invoke-direct {v14, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    .local v14, "updateMessage":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v0, "flagLoaded"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2056
    const-string/jumbo v0, "accountKey=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    const-string/jumbo v0, "syncServerId=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 2061
    .end local v3    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .end local v9    # "isSuccess":Z
    .end local v12    # "selectBody":Lcom/alibaba/alimei/orm/query/Select;
    .end local v14    # "updateMessage":Lcom/alibaba/alimei/orm/query/Update;
    :cond_0
    return-void

    .line 2037
    .restart local v3    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .restart local v9    # "isSuccess":Z
    .restart local v12    # "selectBody":Lcom/alibaba/alimei/orm/query/Select;
    .restart local v13    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_1
    const-string/jumbo v0, "MessageDatasource"

    const-string/jumbo v1, "updateMailBody fail for buildMailBodyForDatabase fail on update body"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2040
    .end local v9    # "isSuccess":Z
    .end local v13    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_2
    new-instance v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    .end local v3    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    invoke-direct {v3}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;-><init>()V

    .line 2041
    .restart local v3    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    iget-wide v0, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    iput-wide v0, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mMessageKey:J

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 2042
    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailBodyForDatabase(JLjava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Body;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 2043
    .restart local v9    # "isSuccess":Z
    if-eqz v9, :cond_3

    .line 2044
    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->save()J

    move-result-wide v6

    .line 2045
    .local v6, "bodyId":J
    const-string/jumbo v0, "MessageDatasource"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "updateMailBody success for messageKey: "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-wide v4, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v4, ", bodyId: "

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 2046
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 2045
    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2048
    .end local v6    # "bodyId":J
    :cond_3
    const-string/jumbo v0, "MessageDatasource"

    const-string/jumbo v1, "updateMailBody fail for buildMailBodyForDatabase fail on saveBody"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateMailCalendar(JLjava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)V
    .locals 21
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "message"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .param p5, "calendar"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .prologue
    .line 5164
    new-instance v10, Lcom/alibaba/alimei/orm/query/Update;

    const-class v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v15, "EmailProvider.db"

    const-string/jumbo v16, "Message"

    move-object/from16 v0, v16

    invoke-direct {v10, v14, v15, v0}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 5166
    .local v10, "messageUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v9, ""

    .line 5167
    .local v9, "meetingInfo":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 5168
    .local v6, "calendarId":Ljava/lang/String;
    if-eqz p5, :cond_3

    .line 5169
    invoke-static/range {p5 .. p5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->getCalendarBody(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)Ljava/lang/String;

    move-result-object v5

    .line 5170
    .local v5, "calendarBody":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v14}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->setCalendarBody(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Ljava/lang/String;)V

    .line 5171
    invoke-static/range {p5 .. p5}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)Ljava/lang/String;

    move-result-object v9

    .line 5172
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getItemId()Ljava/lang/String;

    move-result-object v6

    .line 5174
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 5175
    const/4 v14, 0x1

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v14, v15, v5}, Lail;->a(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5176
    .local v4, "bodyPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 5177
    const-string/jumbo v14, "calendar_body"

    invoke-virtual {v10, v14, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5178
    const-string/jumbo v14, "is_calendar_body_save_file"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5181
    :cond_0
    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSnippet:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 5182
    const/4 v14, 0x0

    invoke-static {v5, v14}, Lair;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5184
    .local v12, "summary":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 5185
    sget-object v14, Lagy;->a:Lagy;

    .line 13051
    iget v13, v14, Lagy;->d:I

    .line 5186
    .local v13, "targetSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->CRLF:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 5187
    .local v8, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5188
    const-string/jumbo v14, " "

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5190
    :cond_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v13, :cond_2

    .line 5191
    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 5194
    :cond_2
    const-string/jumbo v14, "snippet"

    invoke-virtual {v10, v14, v12}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5200
    .end local v4    # "bodyPath":Ljava/lang/String;
    .end local v5    # "calendarBody":Ljava/lang/String;
    .end local v8    # "m":Ljava/util/regex/Matcher;
    .end local v12    # "summary":Ljava/lang/String;
    .end local v13    # "targetSize":I
    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 5201
    const-string/jumbo v14, "meetingInfo"

    invoke-virtual {v10, v14, v9}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5203
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 5204
    const-string/jumbo v14, "calendarId"

    invoke-virtual {v10, v14, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5207
    :cond_5
    const-string/jumbo v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v10, v14, v15}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5208
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v14

    if-lez v14, :cond_6

    .line 5209
    new-instance v7, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v14, -0x9

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v7, v0, v1, v2, v14}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 5211
    .local v7, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMeetingInfo:Ljava/lang/String;

    .line 5212
    move-object/from16 v0, p4

    iput-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarId:Ljava/lang/String;

    .line 5214
    invoke-static/range {p4 .. p4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v11

    .line 5215
    .local v11, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v7, v11}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 5217
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v14

    invoke-virtual {v14, v7}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 5219
    .end local v7    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v11    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_6
    return-void
.end method

.method public updateMailHtmlBody(JLjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "mailHtmlBody"    # Ljava/lang/String;

    .prologue
    .line 1953
    new-instance v11, Lcom/alibaba/alimei/orm/query/Select;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v1, "EmailProvider.db"

    const-string/jumbo v2, "Message"

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    .local v11, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "flagLoaded"

    aput-object v2, v0, v1

    invoke-virtual {v11, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1955
    const-string/jumbo v0, "accountKey=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    const-string/jumbo v0, "syncServerId=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 1959
    .local v10, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v10, :cond_0

    .line 1960
    new-instance v12, Lcom/alibaba/alimei/orm/query/Select;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v1, "EmailProviderBody.db"

    const-string/jumbo v2, "Body"

    invoke-direct {v12, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    .local v12, "selectBody":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    invoke-virtual {v12, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1962
    const-string/jumbo v0, "messageKey=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    .line 1965
    .local v3, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    if-eqz v3, :cond_2

    .line 1966
    new-instance v13, Lcom/alibaba/alimei/orm/query/Update;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v1, "EmailProviderBody.db"

    const-string/jumbo v2, "Body"

    invoke-direct {v13, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    .local v13, "update":Lcom/alibaba/alimei/orm/query/Update;
    const/4 v5, 0x0

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailBodyForDatabase(JLjava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Body;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 1968
    .local v9, "isSuccess":Z
    if-eqz v9, :cond_1

    .line 1969
    const-string/jumbo v0, "htmlContent"

    iget-object v1, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1970
    const-string/jumbo v0, "textContent"

    iget-object v1, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1971
    const-string/jumbo v0, "isSaveTextContentToFile"

    iget-boolean v1, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveTextContentToFile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1972
    const-string/jumbo v0, "isSaveHtmlContentToFile"

    iget-boolean v1, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIsSaveHtmlContentToFile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1973
    const-string/jumbo v0, "introText"

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1974
    const-string/jumbo v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v8

    .line 1976
    .local v8, "count":I
    const-string/jumbo v0, "MessageDatasource"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "updateMailHtmlBody success for msgId: "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-wide v4, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v4, ", body id: "

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-wide v4, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v4, ", count: "

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 1977
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1976
    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    .end local v8    # "count":I
    .end local v13    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :goto_0
    if-eqz v9, :cond_0

    const/4 v0, 0x1

    iget v1, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagLoaded:I

    if-eq v0, v1, :cond_0

    .line 1996
    new-instance v14, Lcom/alibaba/alimei/orm/query/Update;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v1, "EmailProvider.db"

    const-string/jumbo v2, "Message"

    invoke-direct {v14, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    .local v14, "updateMessage":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v0, "flagLoaded"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1998
    const-string/jumbo v0, "accountKey=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    const-string/jumbo v0, "syncServerId=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 2003
    .end local v3    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .end local v9    # "isSuccess":Z
    .end local v12    # "selectBody":Lcom/alibaba/alimei/orm/query/Select;
    .end local v14    # "updateMessage":Lcom/alibaba/alimei/orm/query/Update;
    :cond_0
    return-void

    .line 1979
    .restart local v3    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .restart local v9    # "isSuccess":Z
    .restart local v12    # "selectBody":Lcom/alibaba/alimei/orm/query/Select;
    .restart local v13    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_1
    const-string/jumbo v0, "MessageDatasource"

    const-string/jumbo v1, "updateMailHtmlBody fail for buildMailBodyForDatabase fail on update body"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1982
    .end local v9    # "isSuccess":Z
    .end local v13    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_2
    new-instance v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    .end local v3    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    invoke-direct {v3}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;-><init>()V

    .line 1983
    .restart local v3    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    const/4 v5, 0x0

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailBodyForDatabase(JLjava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Body;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 1984
    .restart local v9    # "isSuccess":Z
    iget-wide v0, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    iput-wide v0, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mMessageKey:J

    .line 1985
    if-eqz v9, :cond_3

    .line 1986
    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->save()J

    move-result-wide v6

    .line 1987
    .local v6, "bodyId":J
    const-string/jumbo v0, "MessageDatasource"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "updateMailHtmlBody success for body, messageKey: "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-wide v4, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v4, ", bodyId: "

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 1988
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1987
    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1990
    .end local v6    # "bodyId":J
    :cond_3
    const-string/jumbo v0, "MessageDatasource"

    const-string/jumbo v1, "updateMailHtmlBody fail for buildMailBodyForDatabase fail on saveBody"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateMailReadTimestamp(JLjava/lang/String;J)I
    .locals 6
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2549
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Message"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "lastReadTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2551
    const-string/jumbo v1, "accountKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    const-string/jumbo v1, "syncServerId=?"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2553
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    return v1
.end method

.method public updateMailSummary(JLjava/lang/String;JLjava/lang/String;)V
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "messageId"    # J
    .param p6, "summary"    # Ljava/lang/String;

    .prologue
    .line 2065
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2066
    sget-object v9, Lagy;->a:Lagy;

    .line 10051
    iget v7, v9, Lagy;->d:I

    .line 2067
    .local v7, "targetSize":I
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->CRLF:Ljava/util/regex/Pattern;

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2068
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2069
    const-string/jumbo v9, " "

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 2071
    :cond_0
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v7, :cond_1

    .line 2072
    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p6

    .line 2076
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "targetSize":I
    :cond_1
    new-instance v8, Lcom/alibaba/alimei/orm/query/Update;

    const-class v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v10, "EmailProvider.db"

    const-string/jumbo v11, "Message"

    invoke-direct {v8, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    .local v8, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v9, "snippet"

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2078
    const-string/jumbo v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 2081
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 2082
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v10, "EmailProvider.db"

    const-string/jumbo v11, "Message"

    invoke-direct {v6, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    .local v6, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v9, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    const-string/jumbo v9, "_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v5

    .line 2086
    .local v5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 2087
    new-instance v2, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    const/16 v9, -0x9

    move-object/from16 v0, p3

    invoke-direct {v2, p1, p2, v0, v9}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 2088
    .local v2, "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 2089
    .local v4, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0

    .line 2091
    .end local v4    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 2092
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 2096
    .end local v2    # "groupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v5    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .end local v6    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_3
    return-void
.end method
