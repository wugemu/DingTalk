.class public Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryFolderExtra.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_folder_extra_v2"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final COLUMN_FOLDER_ID:Ljava/lang/String; = "e_folder_id"

.field private static final COLUMN_HAS_GAP:Ljava/lang/String; = "e_has_gap"

.field private static final COLUMN_INSTANCE_REGION_END:Ljava/lang/String; = "e_instance_region_end"

.field private static final COLUMN_INSTANCE_REGION_START:Ljava/lang/String; = "e_instance_region_start"

.field private static final COLUMN_MAX_VERSION:Ljava/lang/String; = "e_max_version"

.field private static final COLUMN_NON_REPEAT_START_ANCHOR:Ljava/lang/String; = "e_non_repeat_start_anchor"

.field private static final COLUMN_REPEAT_CREATE_ANCHOR:Ljava/lang/String; = "e_repeat_create_anchor"

.field private static final COLUMN_REPEAT_HAS_MORE:Ljava/lang/String; = "e_repeat_has_more"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_folder_extra_v2"


# instance fields
.field public mFolderId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_folder_id"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_folder_extra_id"
    .end annotation
.end field

.field public mHasGap:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_has_gap"
        sort = 0x3
    .end annotation
.end field

.field public mInstanceRegionEnd:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_instance_region_end"
        sort = 0x8
    .end annotation
.end field

.field public mInstanceRegionStart:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_instance_region_start"
        sort = 0x7
    .end annotation
.end field

.field public mMaxVersion:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_max_version"
        sort = 0x2
    .end annotation
.end field

.field public mNonRepeatStartAnchor:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_non_repeat_start_anchor"
        sort = 0x6
    .end annotation
.end field

.field public mRepeatCreateAnchor:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_repeat_create_anchor"
        sort = 0x4
    .end annotation
.end field

.field public mRepeatHasMore:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_repeat_has_more"
        sort = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "e_folder_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "e_max_version"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "e_has_gap"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "e_repeat_create_anchor"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "e_repeat_has_more"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "e_non_repeat_start_anchor"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "e_instance_region_start"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "e_instance_region_end"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static from(Lasj;)Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    .locals 4
    .param p0, "folderExtra"    # Lasj;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;-><init>()V

    .line 1050
    .local v0, "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    iget-object v1, p0, Lasj;->a:Ljava/lang/String;

    .line 77
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mFolderId:Ljava/lang/String;

    .line 1058
    iget-wide v2, p0, Lasj;->b:J

    .line 78
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mMaxVersion:J

    .line 1066
    iget-boolean v1, p0, Lasj;->c:Z

    .line 79
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mHasGap:Z

    .line 1074
    iget-wide v2, p0, Lasj;->d:J

    .line 80
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mRepeatCreateAnchor:J

    .line 1082
    iget-boolean v1, p0, Lasj;->e:Z

    .line 81
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mRepeatHasMore:Z

    .line 1090
    iget-wide v2, p0, Lasj;->f:J

    .line 82
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mNonRepeatStartAnchor:J

    .line 1098
    iget-wide v2, p0, Lasj;->g:J

    .line 83
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mInstanceRegionStart:J

    .line 1106
    iget-wide v2, p0, Lasj;->h:J

    .line 84
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mInstanceRegionEnd:J

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EntryFolderExtra{mFolderId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMaxVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mMaxVersion:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mHasGap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mHasGap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRepeatCreateAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mRepeatCreateAnchor:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRepeatHasMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mRepeatHasMore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNonRepeatStartAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mNonRepeatStartAnchor:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInstanceRegionStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mInstanceRegionStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInstanceRegionEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mInstanceRegionEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
