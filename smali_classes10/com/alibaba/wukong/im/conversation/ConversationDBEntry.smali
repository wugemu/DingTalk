.class public Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "ConversationDBEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbconversation"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tbconversation"


# instance fields
.field public atAllType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "atAllType"
        sort = 0x26
    .end annotation
.end field

.field public atStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "atStatus"
        sort = 0xf
    .end annotation
.end field

.field public authority:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "authority"
        sort = 0x14
    .end annotation
.end field

.field public banWordsTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "banWordsTime"
        sort = 0x22
    .end annotation
.end field

.field public banWordsType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "banWordsType"
        sort = 0x1f
    .end annotation
.end field

.field public category:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "category"
        sort = 0x17
    .end annotation
.end field

.field public categoryId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "categoryId"
        sort = 0x27
    .end annotation
.end field

.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "cid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_convertab_cid:1"
    .end annotation
.end field

.field public configuration:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "configuration"
        sort = 0x29
    .end annotation
.end field

.field public createAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "createAt"
        sort = 0xd
    .end annotation
.end field

.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "desc"
        sort = 0x10
    .end annotation
.end field

.field public draftContent:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "draftContent"
        sort = 0x8
    .end annotation
.end field

.field public entranceId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        indexName = "idx_convertab_entid"
        name = "entranceId"
        sort = 0x28
    .end annotation
.end field

.field public ext:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "ext"
        sort = 0xb
    .end annotation
.end field

.field public extInfo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extInfo"
        sort = 0x18
    .end annotation
.end field

.field public groupIcon:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "groupIcon"
        sort = 0x1c
    .end annotation
.end field

.field public groupIconTag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "groupIconTag"
        sort = 0x1d
    .end annotation
.end field

.field public groupIconType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "groupIconType"
        sort = 0x1b
    .end annotation
.end field

.field public groupId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "groupId"
        sort = 0x23
    .end annotation
.end field

.field public groupIdSearchable:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "groupIdSearchable"
        sort = 0x25
    .end annotation
.end field

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "icon"
        sort = 0x6
    .end annotation
.end field

.field public inBanBlack:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "inBanBlack"
        sort = 0x21
    .end annotation
.end field

.field public inBanWhite:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "inBanWhite"
        sort = 0x20
    .end annotation
.end field

.field public isNotification:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "1"
        name = "isNotification"
        sort = 0xe
    .end annotation
.end field

.field public joinValidationType:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "joinValidationType"
        sort = 0x1a
    .end annotation
.end field

.field public lastMid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "lastMid"
        sort = 0x5
    .end annotation
.end field

.field public lastModify:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "lastModify"
        sort = 0x12
    .end annotation
.end field

.field public memberCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "memberCount"
        sort = 0xa
    .end annotation
.end field

.field public memberExt:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "memberExt"
        sort = 0xc
    .end annotation
.end field

.field public memberLimit:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "memberLimit"
        sort = 0x16
    .end annotation
.end field

.field public members:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "members"
        sort = 0x15
    .end annotation
.end field

.field public notificationSound:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "notificationSound"
        sort = 0x13
    .end annotation
.end field

.field public ownerId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "ownerId"
        sort = 0x19
    .end annotation
.end field

.field public showHistoryType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "showHistoryType"
        sort = 0x1e
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "status"
        sort = 0x9
    .end annotation
.end field

.field public tag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "tag"
        sort = 0x2
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "title"
        sort = 0x4
    .end annotation
.end field

.field public titleSearchable:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "titleSearchable"
        sort = 0x24
    .end annotation
.end field

.field public top:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "top"
        sort = 0x11
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "type"
        sort = 0x3
    .end annotation
.end field

.field public unreadCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "unreadCount"
        sort = 0x7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 306
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 263
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->cid:Ljava/lang/String;

    .line 264
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->tag:J

    .line 265
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->type:I

    .line 266
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->title:Ljava/lang/String;

    .line 267
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->lastMid:J

    .line 268
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->icon:Ljava/lang/String;

    .line 269
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->unreadCount:I

    .line 270
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->draftContent:Ljava/lang/String;

    .line 271
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->status:I

    .line 272
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->memberCount:I

    .line 273
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->ext:Ljava/lang/String;

    .line 274
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->memberExt:Ljava/lang/String;

    .line 275
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->createAt:J

    .line 276
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->isNotification:I

    .line 277
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->atStatus:I

    .line 278
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->desc:Ljava/lang/String;

    .line 279
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->top:J

    .line 280
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->lastModify:J

    .line 281
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->notificationSound:Ljava/lang/String;

    .line 282
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->authority:I

    .line 283
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->members:Ljava/lang/String;

    .line 284
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->memberLimit:I

    .line 285
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->category:I

    .line 286
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->extInfo:Ljava/lang/String;

    .line 287
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->ownerId:J

    .line 288
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->joinValidationType:J

    .line 289
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->groupIconType:I

    .line 290
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->groupIcon:Ljava/lang/String;

    .line 291
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->groupIconTag:J

    .line 292
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->showHistoryType:I

    .line 293
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->banWordsType:I

    .line 294
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->inBanWhite:I

    .line 295
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->inBanBlack:I

    .line 296
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->banWordsTime:J

    .line 297
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->groupId:J

    .line 298
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->groupIdSearchable:I

    .line 299
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->titleSearchable:I

    .line 300
    iput v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->atAllType:I

    .line 301
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->categoryId:J

    .line 302
    iput-wide v4, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->entranceId:J

    .line 303
    iput-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->configuration:Ljava/lang/String;

    .line 304
    return-void
.end method
