.class public Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryFolderSelectExtra.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_folder_select_extra"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final COLUMN_FOLDER_ID:Ljava/lang/String; = "c_folder_id"

.field private static final COLUMN_IS_SELECTED:Ljava/lang/String; = "c_is_selected"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_folder_select_extra"


# instance fields
.field public mFolderId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_folder_id"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_folder_select_extra_id"
    .end annotation
.end field

.field public mSelected:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_is_selected"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "c_folder_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "c_is_selected"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static from(Lasm;)Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;
    .locals 2
    .param p0, "folderExtra"    # Lasm;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;-><init>()V

    .line 1014
    .local v0, "shareFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;
    iget-object v1, p0, Lasm;->a:Ljava/lang/String;

    .line 42
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;->mFolderId:Ljava/lang/String;

    .line 1022
    iget-boolean v1, p0, Lasm;->b:Z

    .line 43
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;->mSelected:Z

    goto :goto_0
.end method


# virtual methods
.method public toFolderSelectExtra()Lasm;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 49
    new-instance v0, Lasm;

    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;->mFolderId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;->mSelected:Z

    invoke-direct {v0, v1, v2}, Lasm;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
