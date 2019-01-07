.class public Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryFolderGroupExtra.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_folder_group_extra"
.end annotation


# static fields
.field public static final COLUMN_GROUP_ID:Ljava/lang/String; = "e_group_id"

.field private static final COLUMN_IS_FOLDED:Ljava/lang/String; = "e_is_ecollapsed"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_folder_group_extra"


# instance fields
.field public mGroupId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_group_id"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_folder_group_extra_id"
    .end annotation
.end field

.field public mIsFolded:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_is_ecollapsed"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static from(JZ)Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;
    .locals 2
    .param p0, "groupId"    # J
    .param p2, "isFolded"    # Z

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;-><init>()V

    .line 32
    .local v0, "entryFolderGroupExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;
    iput-wide p0, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;->mGroupId:J

    .line 33
    iput-boolean p2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroupExtra;->mIsFolded:Z

    .line 35
    return-object v0
.end method
