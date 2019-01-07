.class public Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryAliMailFolder.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_ali_mail_folder"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_ACCOUNT_NAME:Ljava/lang/String; = "c_account_name"

.field private static final COLUMN_COLOR:Ljava/lang/String; = "c_color"

.field private static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "c_display_name"

.field private static final COLUMN_FOLDER_ACL:Ljava/lang/String; = "c_folder_acl"

.field private static final COLUMN_FOLDER_ID:Ljava/lang/String; = "c_folder_id"

.field private static final COLUMN_IS_SELECTED:Ljava/lang/String; = "c_is_selected"

.field private static final COLUMN_IS_SHARE:Ljava/lang/String; = "c_is_share"

.field private static final COLUMN_SERVER_ID:Ljava/lang/String; = "c_server_id"

.field private static final COLUMN_SHARE_ACCOUNT:Ljava/lang/String; = "c_share_account"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_ali_mail_folder"


# instance fields
.field public mAccountName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_account_name"
        sort = 0x2
    .end annotation
.end field

.field public mColor:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_color"
        sort = 0x8
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_display_name"
        sort = 0x3
    .end annotation
.end field

.field public mFolderAcl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_folder_acl"
        sort = 0x9
    .end annotation
.end field

.field public mFolderId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_folder_id"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_ali_mail_folder_id"
    .end annotation
.end field

.field public mIsShare:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_is_share"
        sort = 0x6
    .end annotation
.end field

.field public mSelected:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_is_selected"
        sort = 0x7
    .end annotation
.end field

.field public mServerId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_server_id"
        sort = 0x5
    .end annotation
.end field

.field public mShareAccount:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_share_account"
        sort = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "c_folder_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "c_account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "c_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "c_share_account"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "c_server_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "c_is_share"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "c_is_selected"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "c_color"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "c_folder_acl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static from(Laro;)Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;
    .locals 2
    .param p0, "folder"    # Laro;

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;-><init>()V

    .line 1027
    .local v0, "entryAliMailFolder":Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;
    iget-object v1, p0, Laro;->a:Ljava/lang/String;

    .line 86
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mFolderId:Ljava/lang/String;

    .line 1035
    iget-object v1, p0, Laro;->b:Ljava/lang/String;

    .line 87
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mAccountName:Ljava/lang/String;

    .line 1043
    iget-object v1, p0, Laro;->c:Ljava/lang/String;

    .line 88
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mDisplayName:Ljava/lang/String;

    .line 1051
    iget-object v1, p0, Laro;->d:Ljava/lang/String;

    .line 89
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mShareAccount:Ljava/lang/String;

    .line 1059
    iget-object v1, p0, Laro;->e:Ljava/lang/String;

    .line 90
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mServerId:Ljava/lang/String;

    .line 1067
    iget-boolean v1, p0, Laro;->f:Z

    .line 91
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mIsShare:Z

    .line 1075
    iget-boolean v1, p0, Laro;->g:Z

    .line 92
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mSelected:Z

    .line 1083
    iget-object v1, p0, Laro;->h:Ljava/lang/String;

    .line 93
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mColor:Ljava/lang/String;

    .line 1091
    iget-object v1, p0, Laro;->i:Ljava/lang/String;

    .line 94
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mFolderAcl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toAliMailFolder()Laro;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 101
    new-instance v0, Laro;

    invoke-direct {v0}, Laro;-><init>()V

    .line 102
    .local v0, "aliMailFolder":Laro;
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mFolderId:Ljava/lang/String;

    .line 2031
    iput-object v1, v0, Laro;->a:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mAccountName:Ljava/lang/String;

    .line 2039
    iput-object v1, v0, Laro;->b:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mDisplayName:Ljava/lang/String;

    .line 2047
    iput-object v1, v0, Laro;->c:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mShareAccount:Ljava/lang/String;

    .line 2055
    iput-object v1, v0, Laro;->d:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mServerId:Ljava/lang/String;

    .line 2063
    iput-object v1, v0, Laro;->e:Ljava/lang/String;

    .line 107
    iget-boolean v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mIsShare:Z

    .line 2071
    iput-boolean v1, v0, Laro;->f:Z

    .line 108
    iget-boolean v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mSelected:Z

    .line 2079
    iput-boolean v1, v0, Laro;->g:Z

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mColor:Ljava/lang/String;

    .line 2087
    iput-object v1, v0, Laro;->h:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryAliMailFolder;->mFolderAcl:Ljava/lang/String;

    .line 2095
    iput-object v1, v0, Laro;->i:Ljava/lang/String;

    .line 112
    return-object v0
.end method
