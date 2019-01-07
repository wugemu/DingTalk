.class public Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryFolderGroup.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_folder_group"
.end annotation


# static fields
.field private static final COLUMN_GROUP_COLLAPSE_DISABLE:Ljava/lang/String; = "c_group_collapse_disable"

.field public static final COLUMN_GROUP_ID:Ljava/lang/String; = "c_group_id"

.field private static final COLUMN_GROUP_NAME:Ljava/lang/String; = "c_group_name"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_folder_group"


# instance fields
.field public mCollapseDisable:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_group_collapse_disable"
        sort = 0x3
    .end annotation
.end field

.field public mGroupId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_group_id"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_folder_group_id"
    .end annotation
.end field

.field public mGroupName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_group_name"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromCalendarObject(Lask;)Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;
    .locals 4
    .param p0, "folderGroupObject"    # Lask;

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;-><init>()V

    .line 1084
    .local v0, "entryFolder":Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;
    iget-wide v2, p0, Lask;->d:J

    .line 43
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;->mGroupId:J

    .line 2051
    iget-object v1, p0, Lask;->a:Ljava/lang/String;

    .line 44
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;->mGroupName:Ljava/lang/String;

    .line 2092
    iget-boolean v1, p0, Lask;->e:Z

    .line 45
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;->mCollapseDisable:Z

    goto :goto_0
.end method


# virtual methods
.method public toFolderGroupObject()Lask;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    new-instance v0, Lask;

    invoke-direct {v0}, Lask;-><init>()V

    .line 51
    .local v0, "folderGroupObject":Lask;
    iget-wide v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;->mGroupId:J

    .line 3088
    iput-wide v2, v0, Lask;->d:J

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;->mGroupName:Ljava/lang/String;

    .line 4055
    iput-object v1, v0, Lask;->a:Ljava/lang/String;

    .line 53
    iget-boolean v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderGroup;->mCollapseDisable:Z

    .line 4096
    iput-boolean v1, v0, Lask;->e:Z

    .line 54
    const/4 v1, 0x0

    .line 4104
    iput-boolean v1, v0, Lask;->f:Z

    .line 55
    return-object v0
.end method
