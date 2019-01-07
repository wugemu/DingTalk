.class public Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SyncMailsTaskCommnad.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final isPushSync:Z

.field private final mFolderId:J

.field private final mSyncType:I

.field private mUUID:Ljava/lang/String;

.field private task:Lyq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->task:Lyq;

    .line 105
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mUUID:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->buildFromParcel(Landroid/os/Parcel;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mSyncType:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mFolderId:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->isPushSync:Z

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJZ)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "syncType"    # I
    .param p3, "folderId"    # J
    .param p5, "isPushSync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 95
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->task:Lyq;

    .line 105
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mUUID:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mSyncType:I

    .line 27
    iput-wide p3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mFolderId:J

    .line 28
    iput-boolean p5, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->isPushSync:Z

    .line 29
    return-void
.end method

.method public static buildHistoryMailTaskCommnad(Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
    .locals 7
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "folderId"    # J

    .prologue
    .line 76
    new-instance v1, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    const/4 v3, 0x4

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;-><init>(Ljava/lang/String;IJZ)V

    return-object v1
.end method

.method public static buildNewMailTaskCommnad(Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
    .locals 7
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "folderId"    # J

    .prologue
    .line 57
    new-instance v1, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    const/4 v3, 0x3

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;-><init>(Ljava/lang/String;IJZ)V

    return-object v1
.end method

.method public static buildPushNewMailTaskCommand(Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
    .locals 7
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "folderId"    # J

    .prologue
    .line 67
    new-instance v1, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    const/4 v3, 0x3

    const/4 v6, 0x1

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;-><init>(Ljava/lang/String;IJZ)V

    return-object v1
.end method

.method public static buildTaskCommnad(Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
    .locals 7
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "folderId"    # J

    .prologue
    .line 37
    new-instance v1, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;-><init>(Ljava/lang/String;IJZ)V

    return-object v1
.end method

.method public static buildTaskCommnadForIncrement(Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
    .locals 7
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "folderId"    # J

    .prologue
    .line 46
    new-instance v1, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;-><init>(Ljava/lang/String;IJZ)V

    .line 48
    .local v1, "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
    return-object v1
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->task:Lyq;

    if-nez v0, :cond_0

    .line 100
    new-instance v1, Lahk;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mAccountName:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mSyncType:I

    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mFolderId:J

    iget-boolean v6, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->isPushSync:Z

    invoke-direct/range {v1 .. v6}, Lahk;-><init>(Ljava/lang/String;IJZ)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->task:Lyq;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->task:Lyq;

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mUUID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mFolderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mSyncType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->isPushSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mUUID:Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 82
    iget v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mSyncType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->mFolderId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->isPushSync:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method
