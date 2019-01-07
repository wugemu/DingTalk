.class public Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryDingCommentRemind.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_ding_comment_remind"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final NAME_DING_COMMENT_AT_UIDS:Ljava/lang/String; = "commentAtUids"

.field public static final NAME_DING_COMMENT_CREATE_AT:Ljava/lang/String; = "commentCreateAt"

.field public static final NAME_DING_COMMENT_ID:Ljava/lang/String; = "commentId"

.field public static final NAME_DING_COMMENT_IS_ATTACHMENT:Ljava/lang/String; = "commentIsAttachment"

.field public static final NAME_DING_COMMENT_IS_DELETED:Ljava/lang/String; = "commentIsDeleted"

.field public static final NAME_DING_COMMENT_NOTICE:Ljava/lang/String; = "commentNote"

.field public static final NAME_DING_COMMENT_TYPE:Ljava/lang/String; = "commentType"

.field public static final NAME_DING_ID:Ljava/lang/String; = "dingId"

.field public static final NAME_DING_SENDER_ID:Ljava/lang/String; = "senderId"

.field public static final NAME_DING_TEXT_CONTENT:Ljava/lang/String; = "textContent"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_ding_comment_remind"


# instance fields
.field public commentAtUids:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "commentAtUids"
        sort = 0x7
    .end annotation
.end field

.field public commentCreateAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "commentCreateAt"
        nullable = false
        sort = 0x6
    .end annotation
.end field

.field public commentId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "commentId"
        nullable = false
        sort = 0x2
        uniqueIndexName = "idx_comment_remind_dingid_commentid:2"
    .end annotation
.end field

.field public commentIsAttachment:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "commentIsAttachment"
        sort = 0x9
    .end annotation
.end field

.field public commentIsDeleted:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "commentIsDeleted"
        sort = 0x8
    .end annotation
.end field

.field public commentNote:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "commentNote"
        sort = 0xa
    .end annotation
.end field

.field public commentType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "commentType"
        nullable = false
        sort = 0x4
    .end annotation
.end field

.field public dingId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingId"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_comment_remind_dingid_commentid:1"
    .end annotation
.end field

.field public senderId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "senderId"
        nullable = false
        sort = 0x3
    .end annotation
.end field

.field public textContent:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "textContent"
        sort = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "dingId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "commentId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "senderId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "commentType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "textContent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "commentCreateAt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "commentAtUids"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "commentIsDeleted"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "commentIsAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "commentNote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
