.class public Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SyncFolderTaskCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isForceFullSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->isForceFullSync:Z

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "isForceFullSync"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 21
    iput-boolean p2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->isForceFullSync:Z

    .line 22
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    new-instance v0, Lahi;

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->isForceFullSync:Z

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->mAccountName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lahi;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "SyncFolderCommand"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-boolean v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->isForceFullSync:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "uuid":Ljava/lang/String;
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 27
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->isForceFullSync:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncFolderTaskCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    return-void
.end method
