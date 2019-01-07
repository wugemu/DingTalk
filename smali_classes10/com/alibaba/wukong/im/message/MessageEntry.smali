.class public Lcom/alibaba/wukong/im/message/MessageEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "MessageEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbmsg"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tbmsg"


# instance fields
.field public atOpenIdObjectString:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "atOpenIdObjectListString"
        sort = 0x19
    .end annotation
.end field

.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "cid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_msg_cid_mid:1"
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "content"
        sort = 0xd
    .end annotation
.end field

.field public contentType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "1"
        name = "contentType"
        sort = 0xc
    .end annotation
.end field

.field public createdAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_msg_createdAt:1"
        name = "createdAt"
        nullable = false
        sort = 0x7
    .end annotation
.end field

.field public creatorType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "1"
        name = "creatorType"
        sort = 0x6
    .end annotation
.end field

.field public ext:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "ext"
        sort = 0x13
    .end annotation
.end field

.field public extension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extension"
        sort = 0xf
    .end annotation
.end field

.field public isRead:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "1"
        name = "isRead"
        sort = 0x12
    .end annotation
.end field

.field public lastModify:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "lastModify"
        nullable = false
        sort = 0x8
    .end annotation
.end field

.field public lastUpdateUnreadCount:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "lastUpdateUnreadCount"
        sort = 0x18
    .end annotation
.end field

.field public localId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "localId"
        sort = 0x2
    .end annotation
.end field

.field public memberExtension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "memberExtension"
        sort = 0x11
    .end annotation
.end field

.field public memberTag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "memberTag"
        sort = 0x10
    .end annotation
.end field

.field public messageStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "messageStatus"
        sort = 0x9
    .end annotation
.end field

.field public mid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_message_mid:1"
        name = "mid"
        nullable = false
        sort = 0x3
        uniqueIndexName = "idx_msg_cid_mid:2"
    .end annotation
.end field

.field public recall:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "recall"
        sort = 0x14
    .end annotation
.end field

.field public senderId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "senderId"
        nullable = false
        sort = 0x4
    .end annotation
.end field

.field public sentLocalTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "sentlocaltime"
        sort = 0x15
    .end annotation
.end field

.field public shieldStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "shieldStatus"
        sort = 0x17
    .end annotation
.end field

.field public tag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "tag"
        sort = 0xe
    .end annotation
.end field

.field public totalCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "totalCount"
        sort = 0xb
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "1"
        name = "type"
        sort = 0x5
    .end annotation
.end field

.field public unreadCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "unreadCount"
        sort = 0xa
    .end annotation
.end field

.field public viewStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "viewStatus"
        sort = 0x16
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 191
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->cid:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->localId:Ljava/lang/String;

    .line 167
    iput-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->mid:J

    .line 168
    iput-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->senderId:J

    .line 169
    iput v4, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->type:I

    .line 170
    iput v4, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->creatorType:I

    .line 171
    iput-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->createdAt:J

    .line 172
    iput-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->lastModify:J

    .line 173
    iput v1, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->messageStatus:I

    .line 174
    iput v1, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->unreadCount:I

    .line 175
    iput v1, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->totalCount:I

    .line 176
    iput v4, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->contentType:I

    .line 177
    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->content:Ljava/lang/String;

    .line 178
    iput-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->tag:J

    .line 179
    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->extension:Ljava/lang/String;

    .line 180
    iput-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->memberTag:J

    .line 181
    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->memberExtension:Ljava/lang/String;

    .line 182
    iput v4, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->isRead:I

    .line 183
    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->ext:Ljava/lang/String;

    .line 184
    iput v1, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->recall:I

    .line 185
    iput v1, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->shieldStatus:I

    .line 186
    iput v1, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->viewStatus:I

    .line 187
    iput-wide v2, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->lastUpdateUnreadCount:J

    .line 188
    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageEntry;->atOpenIdObjectString:Ljava/lang/String;

    .line 189
    return-void
.end method
