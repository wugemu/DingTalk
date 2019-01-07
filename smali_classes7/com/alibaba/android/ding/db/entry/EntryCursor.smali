.class public Lcom/alibaba/android/ding/db/entry/EntryCursor;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryCursor.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbdingcursorNew"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final NAME_DING_ALL_FIRST:Ljava/lang/String; = "allFirst"

.field public static final NAME_DING_ALL_LAST:Ljava/lang/String; = "allLast"

.field public static final NAME_DING_CURSOR_INDICATOR:Ljava/lang/String; = "indicator"

.field public static final NAME_DING_DELETED_FIRST:Ljava/lang/String; = "deletedFirst"

.field public static final NAME_DING_DELETED_LAST:Ljava/lang/String; = "deletedLast"

.field public static final TABLE_NAME:Ljava/lang/String; = "tbdingcursorNew"

.field public static final VALUE_INDICATOR:I = 0x1


# instance fields
.field public allFirst:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "allFirst"
        sort = 0x2
    .end annotation
.end field

.field public allLast:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "allLast"
        sort = 0x3
    .end annotation
.end field

.field public deletedFirst:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "deletedFirst"
        sort = 0x4
    .end annotation
.end field

.field public deletedLast:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "deletedLast"
        sort = 0x5
    .end annotation
.end field

.field public indicator:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "indicator"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tbdingcursornew_indicator:1"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "indicator"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "allFirst"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "allLast"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "deletedFirst"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "deletedLast"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/db/entry/EntryCursor;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryCursor;->indicator:I

    return-void
.end method
