.class public Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryDingIdExchange.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbdingidexhcange"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final NAME_DING_ID:Ljava/lang/String; = "dingId"

.field public static final NAME_RECURRENCE_ID:Ljava/lang/String; = "recurrenceId"

.field public static final NAME_UNIQUE_ID:Ljava/lang/String; = "uniqueId"

.field public static final TABLE_NAME:Ljava/lang/String; = "tbdingidexhcange"


# instance fields
.field public dingId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingId"
        sort = 0x3
    .end annotation
.end field

.field public recurrenceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "recurrenceId"
        sort = 0x2
    .end annotation
.end field

.field public uniqueId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uniqueId"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tbdingidexhange:1"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "uniqueId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "recurrenceId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "dingId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
