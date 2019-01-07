.class public Lcom/alibaba/android/ding/db/entry/EntryDraft;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryDraft.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_ding_draft_v2"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final NAME_DING_DRAFT:Ljava/lang/String; = "draft"

.field public static final NAME_DRAFT_DING_ID:Ljava/lang/String; = "draft_ding_id"

.field public static final NAME_DRAFT_TYPE:Ljava/lang/String; = "draft_type"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_ding_draft_v2"

.field public static final VALUE_DEFAULT_TYPE:I


# instance fields
.field public dingId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "draft_ding_id"
        sort = 0x3
    .end annotation
.end field

.field public draft:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "draft"
        sort = 0x2
    .end annotation
.end field

.field public draftType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "draft_type"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_ding_draft_v2:1"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "draft_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "draft"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "draft_ding_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/db/entry/EntryDraft;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDraft;->draftType:I

    return-void
.end method

.method public static createMeetingMinutesEntryDraft(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/ding/db/entry/EntryDraft;
    .locals 2
    .param p0, "dingId"    # Ljava/lang/String;
    .param p1, "draft"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/android/ding/db/entry/EntryDraft;

    invoke-direct {v0}, Lcom/alibaba/android/ding/db/entry/EntryDraft;-><init>()V

    .line 49
    .local v0, "entryDraft":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    iput-object p0, v0, Lcom/alibaba/android/ding/db/entry/EntryDraft;->dingId:Ljava/lang/String;

    .line 50
    iput-object p1, v0, Lcom/alibaba/android/ding/db/entry/EntryDraft;->draft:Ljava/lang/String;

    .line 51
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/ding/db/entry/EntryDraft;->draftType:I

    .line 52
    return-object v0
.end method
