.class public Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SyncMultipleMailsTaskCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final isPushSync:Z

.field private mFolderId:[J

.field private final mSyncType:I

.field private mUUID:Ljava/lang/String;

.field private task:Lyq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->TAG:Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mFolderId:[J

    .line 78
    iput-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->task:Lyq;

    .line 88
    iput-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mUUID:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mSyncType:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "len":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mFolderId:[J

    .line 74
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mFolderId:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->isPushSync:Z

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[JZ)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "syncType"    # I
    .param p3, "folderId"    # [J
    .param p4, "isPushSync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mFolderId:[J

    .line 78
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->task:Lyq;

    .line 88
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mUUID:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mSyncType:I

    .line 29
    iput-object p3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mFolderId:[J

    .line 30
    iput-boolean p4, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->isPushSync:Z

    .line 31
    return-void
.end method

.method public static buildHistoryMailTaskCommnad(Ljava/lang/String;[J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "folderId"    # [J

    .prologue
    .line 56
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;-><init>(Ljava/lang/String;I[JZ)V

    return-object v0
.end method

.method public static buildNewMailTaskCommnad(Ljava/lang/String;[J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "folderId"    # [J

    .prologue
    .line 47
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;-><init>(Ljava/lang/String;I[JZ)V

    return-object v0
.end method

.method public static buildTaskCommnad(Ljava/lang/String;[J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "folderId"    # [J

    .prologue
    .line 39
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;-><init>(Ljava/lang/String;I[JZ)V

    return-object v0
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->task:Lyq;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lahl;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mAccountName:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mSyncType:I

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mFolderId:[J

    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->isPushSync:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lahl;-><init>(Ljava/lang/String;I[JZ)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->task:Lyq;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->task:Lyq;

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mUUID:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mFolderId:[J

    array-length v1, v3

    .line 96
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 97
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mFolderId:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    iget v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mSyncType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mSyncType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mUUID:Ljava/lang/String;

    .line 105
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mUUID:Ljava/lang/String;

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 62
    iget v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mSyncType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mFolderId:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->mFolderId:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 65
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->isPushSync:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
