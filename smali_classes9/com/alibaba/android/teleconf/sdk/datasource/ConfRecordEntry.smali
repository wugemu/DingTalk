.class public Lcom/alibaba/android/teleconf/sdk/datasource/ConfRecordEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "ConfRecordEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbconfrecord"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final NAME_DETAIL_ID:Ljava/lang/String; = "detail_id"

.field public static final NAME_ENTRY_TYPE:Ljava/lang/String; = "entry_type"

.field public static final NAME_IKEY:Ljava/lang/String; = "ikey"

.field public static final NAME_LAST_TIME:Ljava/lang/String; = "last_time"

.field public static final NAME_NOANSWER_COUNT:Ljava/lang/String; = "noanswer_count"

.field public static final NAME_OWNER_UID:Ljava/lang/String; = "ownerid"

.field public static final NAME_TARGET_NICKS:Ljava/lang/String; = "target_nicks"

.field public static final NAME_TARGET_NUMBER:Ljava/lang/String; = "target_number"

.field public static final NAME_TARGET_TITLE:Ljava/lang/String; = "target_title"

.field public static final NAME_TARGET_UIDS:Ljava/lang/String; = "target_uids"

.field public static final TABLE_NAME:Ljava/lang/String; = "tbconfrecord"


# instance fields
.field public id:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "detail_id"
        sort = 0x9
    .end annotation
.end field

.field public ikey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "ikey"
        nullable = false
        sort = 0x2
    .end annotation
.end field

.field public lastBeginTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "last_time"
        sort = 0x8
    .end annotation
.end field

.field public noAnswerCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "noanswer_count"
        sort = 0x7
    .end annotation
.end field

.field public ownerUid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "ownerid"
        nullable = false
        sort = 0x1
    .end annotation
.end field

.field public targetNicks:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "target_nicks"
        sort = 0x4
    .end annotation
.end field

.field public targetNumber:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "target_number"
        sort = 0x3
    .end annotation
.end field

.field public targetTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "target_title"
        sort = 0x5
    .end annotation
.end field

.field public targetUids:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "target_uids"
        sort = 0x6
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "entry_type"
        sort = 0xa
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ownerid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ikey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "target_number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "target_nicks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "target_title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "target_uids"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "noanswer_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "last_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/datasource/ConfRecordEntry;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
