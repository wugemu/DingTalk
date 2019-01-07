.class public Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SyncImapFolderTaskCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isFullSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->isFullSync:Z

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "isFullSync"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 22
    iput-boolean p2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->isFullSync:Z

    .line 23
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
    .line 39
    new-instance v0, Lqy;

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->mAccountName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->isFullSync:Z

    invoke-direct {v0, v1, v2}, Lqy;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "SyncCommonFolderTaskCommand"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "uuid":Ljava/lang/String;
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 28
    iget-boolean v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->isFullSync:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFolderTaskCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    return-void
.end method
