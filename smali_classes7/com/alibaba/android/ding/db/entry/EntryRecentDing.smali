.class public Lcom/alibaba/android/ding/db/entry/EntryRecentDing;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryRecentDing.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_ding_receiver"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final NAME_CREATE_TIME:Ljava/lang/String; = "createAt"

.field public static final NAME_DING_ID:Ljava/lang/String; = "dingId"

.field public static final NAME_SORT_UIDS:Ljava/lang/String; = "sortUids"

.field public static final NAME_UIDS:Ljava/lang/String; = "uids"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_ding_receiver"


# instance fields
.field public createAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "createAt"
        nullable = false
        sort = 0x4
    .end annotation
.end field

.field public dingId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingId"
        nullable = false
        sort = 0x2
    .end annotation
.end field

.field public sortUidsHash:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "sortUids"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_ding_sort_uids:1"
    .end annotation
.end field

.field public uids:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uids"
        nullable = false
        sort = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "sortUids"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "dingId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "uids"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "createAt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
