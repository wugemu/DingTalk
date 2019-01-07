.class public Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryPegDraft.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbdingpegdraft"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final NAME_DING_CURSOR_INDICATOR:Ljava/lang/String; = "indicator"

.field public static final NAME_DING_PEG_DRAFT:Ljava/lang/String; = "pegdraft"

.field public static final TABLE_NAME:Ljava/lang/String; = "tbdingpegdraft"

.field public static final VALUE_INDICATOR:I = 0x1


# instance fields
.field public indicator:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "indicator"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tbdingpegdraft_indicator:1"
    .end annotation
.end field

.field public pegDraft:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "pegdraft"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "indicator"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "pegdraft"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;->indicator:I

    return-void
.end method
