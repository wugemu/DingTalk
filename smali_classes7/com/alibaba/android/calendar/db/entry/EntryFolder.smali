.class public Lcom/alibaba/android/calendar/db/entry/EntryFolder;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryFolder.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_folder"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_CAN_SHARE:Ljava/lang/String; = "c_can_share"

.field private static final COLUMN_COLOR:Ljava/lang/String; = "c_color"

.field public static final COLUMN_FOLDER_ID:Ljava/lang/String; = "c_folder_id"

.field private static final COLUMN_FOLDER_ORDER:Ljava/lang/String; = "c_folder_order"

.field public static final COLUMN_GROUP_ID:Ljava/lang/String; = "c_group_id"

.field private static final COLUMN_IS_SHARE:Ljava/lang/String; = "c_is_share"

.field private static final COLUMN_NAME:Ljava/lang/String; = "c_name"

.field private static final COLUMN_OWNER_ID:Ljava/lang/String; = "c_ownerId"

.field private static final COLUMN_PRIVILEGE:Ljava/lang/String; = "c_privilege"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_folder"


# instance fields
.field private mCanShare:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_can_share"
        sort = 0x6
    .end annotation
.end field

.field private mColor:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_color"
        sort = 0x5
    .end annotation
.end field

.field public mFolderId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tb_folder_id"
        name = "c_folder_id"
        nullable = false
        sort = 0x1
    .end annotation
.end field

.field private mFolderOrder:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_folder_order"
        sort = 0x8
    .end annotation
.end field

.field private mGroupId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tb_group_id"
        name = "c_group_id"
        sort = 0x9
    .end annotation
.end field

.field private mIsShare:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_is_share"
        sort = 0x7
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_name"
        sort = 0x2
    .end annotation
.end field

.field private mOwnerId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_ownerId"
        sort = 0x3
    .end annotation
.end field

.field private mPrivilege:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_privilege"
        sort = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "c_folder_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "c_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "c_ownerId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "c_privilege"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "c_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "c_can_share"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "c_is_share"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "c_folder_order"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "c_group_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromCalendarObject(JLasl;)Lcom/alibaba/android/calendar/db/entry/EntryFolder;
    .locals 4
    .param p0, "groupId"    # J
    .param p2, "folderObject"    # Lasl;

    .prologue
    .line 84
    if-nez p2, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/db/entry/EntryFolder;-><init>()V

    .line 1042
    .local v0, "entryFolder":Lcom/alibaba/android/calendar/db/entry/EntryFolder;
    iget-object v1, p2, Lasl;->a:Ljava/lang/String;

    .line 89
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mFolderId:Ljava/lang/String;

    .line 1050
    iget-object v1, p2, Lasl;->b:Ljava/lang/String;

    .line 90
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mName:Ljava/lang/String;

    .line 1058
    iget-wide v2, p2, Lasl;->c:J

    .line 91
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mOwnerId:J

    .line 1066
    iget-object v1, p2, Lasl;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 92
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->getValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mPrivilege:I

    .line 1074
    iget-object v1, p2, Lasl;->e:Ljava/lang/String;

    .line 93
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mColor:Ljava/lang/String;

    .line 1082
    iget-boolean v1, p2, Lasl;->f:Z

    .line 94
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mCanShare:Z

    .line 1090
    iget-boolean v1, p2, Lasl;->g:Z

    .line 95
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mIsShare:Z

    .line 96
    iput-wide p0, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mGroupId:J

    .line 1098
    iget v1, p2, Lasl;->h:I

    .line 97
    iput v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mFolderOrder:I

    goto :goto_0
.end method


# virtual methods
.method public toFolderObject()Lasl;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 104
    new-instance v0, Lasl;

    invoke-direct {v0}, Lasl;-><init>()V

    .line 105
    .local v0, "folderObject":Lasl;
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mFolderId:Ljava/lang/String;

    .line 2046
    iput-object v1, v0, Lasl;->a:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mName:Ljava/lang/String;

    .line 2054
    iput-object v1, v0, Lasl;->b:Ljava/lang/String;

    .line 107
    iget-wide v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mOwnerId:J

    .line 2062
    iput-wide v2, v0, Lasl;->c:J

    .line 108
    iget v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mPrivilege:I

    invoke-static {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->from(I)Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    move-result-object v1

    .line 2070
    iput-object v1, v0, Lasl;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mColor:Ljava/lang/String;

    .line 2078
    iput-object v1, v0, Lasl;->e:Ljava/lang/String;

    .line 110
    iget-boolean v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mCanShare:Z

    .line 2086
    iput-boolean v1, v0, Lasl;->f:Z

    .line 111
    iget-boolean v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mIsShare:Z

    .line 2094
    iput-boolean v1, v0, Lasl;->g:Z

    .line 112
    iget v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryFolder;->mFolderOrder:I

    .line 2102
    iput v1, v0, Lasl;->h:I

    .line 114
    return-object v0
.end method
